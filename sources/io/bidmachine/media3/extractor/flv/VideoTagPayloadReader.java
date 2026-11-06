package io.bidmachine.media3.extractor.flv;

import com.unity3d.services.core.device.MimeTypes;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.container.NalUnitUtil;
import io.bidmachine.media3.extractor.AvcConfig;
import io.bidmachine.media3.extractor.TrackOutput;
import io.bidmachine.media3.extractor.flv.TagPayloadReader;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoTagPayloadReader extends TagPayloadReader {
    public int frameType;
    public boolean hasOutputFormat;
    public boolean hasOutputKeyframe;
    public final ParsableByteArray nalLength;
    public final ParsableByteArray nalStartCode;
    public int nalUnitLengthFieldLength;

    public VideoTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    public boolean parseHeader(ParsableByteArray parsableByteArray) throws TagPayloadReader.UnsupportedFormatException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = (unsignedByte >> 4) & 15;
        int i2 = unsignedByte & 15;
        if (i2 != 7) {
            throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i2);
        }
        this.frameType = i;
        return i != 5;
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    public boolean parsePayload(ParsableByteArray parsableByteArray, long j) throws ParserException {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        long int24 = j + (((long) parsableByteArray.readInt24()) * 1000);
        if (unsignedByte == 0 && !this.hasOutputFormat) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray(new byte[parsableByteArray.bytesLeft()]);
            parsableByteArray.readBytes(parsableByteArray2.getData(), 0, parsableByteArray.bytesLeft());
            AvcConfig avcConfig = AvcConfig.parse(parsableByteArray2);
            this.nalUnitLengthFieldLength = avcConfig.nalUnitLengthFieldLength;
            this.output.format(new Format.Builder().setContainerMimeType("video/x-flv").setSampleMimeType(MimeTypes.VIDEO_H264).setCodecs(avcConfig.codecs).setWidth(avcConfig.width).setHeight(avcConfig.height).setPixelWidthHeightRatio(avcConfig.pixelWidthHeightRatio).setInitializationData(avcConfig.initializationData).build());
            this.hasOutputFormat = true;
            return false;
        }
        if (unsignedByte != 1 || !this.hasOutputFormat) {
            return false;
        }
        int i = this.frameType == 1 ? 1 : 0;
        if (!this.hasOutputKeyframe && i == 0) {
            return false;
        }
        byte[] data = this.nalLength.getData();
        data[0] = 0;
        data[1] = 0;
        data[2] = 0;
        int i2 = 4 - this.nalUnitLengthFieldLength;
        int i3 = 0;
        while (parsableByteArray.bytesLeft() > 0) {
            parsableByteArray.readBytes(this.nalLength.getData(), i2, this.nalUnitLengthFieldLength);
            this.nalLength.setPosition(0);
            int unsignedIntToInt = this.nalLength.readUnsignedIntToInt();
            this.nalStartCode.setPosition(0);
            this.output.sampleData(this.nalStartCode, 4);
            this.output.sampleData(parsableByteArray, unsignedIntToInt);
            i3 = i3 + 4 + unsignedIntToInt;
        }
        this.output.sampleMetadata(int24, i, i3, 0, null);
        this.hasOutputKeyframe = true;
        return true;
    }
}
