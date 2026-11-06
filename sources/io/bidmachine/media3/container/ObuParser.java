package io.bidmachine.media3.container;

import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.ParsableBitArray;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ObuParser {

    public static final class Obu {
        public final ByteBuffer payload;
        public final int type;

        public Obu(int i, ByteBuffer byteBuffer) {
            this.type = i;
            this.payload = byteBuffer;
        }
    }

    public static List<Obu> split(ByteBuffer byteBuffer) {
        int iRemaining;
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (byteBufferAsReadOnlyBuffer.hasRemaining()) {
            byte b = byteBufferAsReadOnlyBuffer.get();
            int i = (b >> 3) & 15;
            if (((b >> 2) & 1) != 0) {
                byteBufferAsReadOnlyBuffer.get();
            }
            if (((b >> 1) & 1) != 0) {
                iRemaining = leb128(byteBufferAsReadOnlyBuffer);
            } else {
                iRemaining = byteBufferAsReadOnlyBuffer.remaining();
            }
            ByteBuffer byteBufferDuplicate = byteBufferAsReadOnlyBuffer.duplicate();
            byteBufferDuplicate.limit(byteBufferAsReadOnlyBuffer.position() + iRemaining);
            arrayList.add(new Obu(i, byteBufferDuplicate));
            byteBufferAsReadOnlyBuffer.position(byteBufferAsReadOnlyBuffer.position() + iRemaining);
        }
        return arrayList;
    }

    public static int leb128(ByteBuffer byteBuffer) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            byte b = byteBuffer.get();
            i |= (b & 127) << (i2 * 7);
            if ((b & 128) == 0) {
                return i;
            }
        }
        return i;
    }

    public static final class SequenceHeader {
        public final boolean decoderModelInfoPresentFlag;
        public final boolean frameIdNumbersPresentFlag;
        public final int orderHintBits;
        public final boolean reducedStillPictureHeader;
        public final boolean seqForceIntegerMv;
        public final boolean seqForceScreenContentTools;

        public static SequenceHeader parse(Obu obu) {
            try {
                return new SequenceHeader(obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public SequenceHeader(Obu obu) throws NotYetImplementedException {
            Assertions.checkArgument(obu.type == 1);
            byte[] bArr = new byte[obu.payload.remaining()];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            parsableBitArray.skipBits(4);
            boolean bit = parsableBitArray.readBit();
            this.reducedStillPictureHeader = bit;
            ObuParser.throwWhenFeatureRequired(bit);
            if (parsableBitArray.readBit()) {
                skipTimingInfo(parsableBitArray);
                boolean bit2 = parsableBitArray.readBit();
                this.decoderModelInfoPresentFlag = bit2;
                if (bit2) {
                    parsableBitArray.skipBits(47);
                }
            } else {
                this.decoderModelInfoPresentFlag = false;
            }
            boolean bit3 = parsableBitArray.readBit();
            int bits = parsableBitArray.readBits(5);
            for (int i = 0; i <= bits; i++) {
                parsableBitArray.skipBits(12);
                if (parsableBitArray.readBits(5) > 7) {
                    parsableBitArray.skipBit();
                }
                ObuParser.throwWhenFeatureRequired(this.decoderModelInfoPresentFlag);
                if (bit3 && parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(4);
                }
            }
            int bits2 = parsableBitArray.readBits(4);
            int bits3 = parsableBitArray.readBits(4);
            parsableBitArray.skipBits(bits2 + 1);
            parsableBitArray.skipBits(bits3 + 1);
            boolean bit4 = parsableBitArray.readBit();
            this.frameIdNumbersPresentFlag = bit4;
            ObuParser.throwWhenFeatureRequired(bit4);
            parsableBitArray.skipBits(3);
            parsableBitArray.skipBits(4);
            boolean bit5 = parsableBitArray.readBit();
            if (bit5) {
                parsableBitArray.skipBits(2);
            }
            if (parsableBitArray.readBit()) {
                this.seqForceScreenContentTools = true;
            } else {
                this.seqForceScreenContentTools = parsableBitArray.readBit();
            }
            if (!this.seqForceScreenContentTools || parsableBitArray.readBit()) {
                this.seqForceIntegerMv = true;
            } else {
                this.seqForceIntegerMv = parsableBitArray.readBit();
            }
            if (bit5) {
                this.orderHintBits = parsableBitArray.readBits(3) + 1;
            } else {
                this.orderHintBits = 0;
            }
        }

        public static void skipTimingInfo(ParsableBitArray parsableBitArray) {
            parsableBitArray.skipBits(64);
            if (parsableBitArray.readBit()) {
                ObuParser.skipUvlc(parsableBitArray);
            }
        }
    }

    public static void skipUvlc(ParsableBitArray parsableBitArray) {
        int i = 0;
        while (!parsableBitArray.readBit()) {
            i++;
        }
        if (i < 32) {
            parsableBitArray.skipBits(i);
        }
    }

    public static final class FrameHeader {
        public final boolean isDependedOn;

        public boolean isDependedOn() {
            return this.isDependedOn;
        }

        public static FrameHeader parse(SequenceHeader sequenceHeader, Obu obu) {
            try {
                return new FrameHeader(sequenceHeader, obu);
            } catch (NotYetImplementedException unused) {
                return null;
            }
        }

        public FrameHeader(SequenceHeader sequenceHeader, Obu obu) throws NotYetImplementedException {
            int i = obu.type;
            Assertions.checkArgument(i == 6 || i == 3);
            byte[] bArr = new byte[Math.min(4, obu.payload.remaining())];
            obu.payload.asReadOnlyBuffer().get(bArr);
            ParsableBitArray parsableBitArray = new ParsableBitArray(bArr);
            ObuParser.throwWhenFeatureRequired(sequenceHeader.reducedStillPictureHeader);
            if (parsableBitArray.readBit()) {
                this.isDependedOn = false;
                return;
            }
            int bits = parsableBitArray.readBits(2);
            boolean bit = parsableBitArray.readBit();
            ObuParser.throwWhenFeatureRequired(sequenceHeader.decoderModelInfoPresentFlag);
            if (!bit) {
                this.isDependedOn = true;
                return;
            }
            boolean bit2 = (bits == 3 || bits == 0) ? true : parsableBitArray.readBit();
            parsableBitArray.skipBit();
            ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceScreenContentTools);
            if (parsableBitArray.readBit()) {
                ObuParser.throwWhenFeatureRequired(!sequenceHeader.seqForceIntegerMv);
                parsableBitArray.skipBit();
            }
            ObuParser.throwWhenFeatureRequired(sequenceHeader.frameIdNumbersPresentFlag);
            if (bits != 3) {
                parsableBitArray.skipBit();
            }
            parsableBitArray.skipBits(sequenceHeader.orderHintBits);
            if (bits != 2 && bits != 0 && !bit2) {
                parsableBitArray.skipBits(3);
            }
            this.isDependedOn = ((bits == 3 || bits == 0) ? 255 : parsableBitArray.readBits(8)) != 0;
        }
    }

    public static void throwWhenFeatureRequired(boolean z) throws NotYetImplementedException {
        if (z) {
            throw new NotYetImplementedException();
        }
    }

    public static class NotYetImplementedException extends Exception {
        public NotYetImplementedException() {
        }
    }
}
