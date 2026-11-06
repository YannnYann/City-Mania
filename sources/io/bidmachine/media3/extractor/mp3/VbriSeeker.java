package io.bidmachine.media3.extractor.mp3;

import io.bidmachine.media3.common.util.Log;
import io.bidmachine.media3.common.util.ParsableByteArray;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.extractor.MpegAudioUtil;
import io.bidmachine.media3.extractor.SeekMap;
import io.bidmachine.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes5.dex */
public final class VbriSeeker implements Seeker {
    public final int bitrate;
    public final long dataEndPosition;
    public final long durationUs;
    public final long[] positions;
    public final long[] timesUs;

    @Override // io.bidmachine.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public static VbriSeeker create(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int unsignedByte;
        parsableByteArray.skipBytes(6);
        long jMax = j2 + ((long) header.frameSize) + ((long) parsableByteArray.readInt());
        int i = parsableByteArray.readInt();
        if (i <= 0) {
            return null;
        }
        long jSampleCountToDurationUs = Util.sampleCountToDurationUs((((long) i) * ((long) header.samplesPerFrame)) - 1, header.sampleRate);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        int unsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        int i2 = 0;
        long j3 = j2 + ((long) header.frameSize);
        while (i2 < unsignedShort) {
            long[] jArr3 = jArr;
            long[] jArr4 = jArr2;
            int i3 = i2;
            jArr3[i3] = (((long) i2) * jSampleCountToDurationUs) / ((long) unsignedShort);
            jArr4[i3] = j3;
            if (unsignedShort3 == 1) {
                unsignedByte = parsableByteArray.readUnsignedByte();
            } else if (unsignedShort3 == 2) {
                unsignedByte = parsableByteArray.readUnsignedShort();
            } else if (unsignedShort3 == 3) {
                unsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (unsignedShort3 != 4) {
                    return null;
                }
                unsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j3 += ((long) unsignedByte) * ((long) unsignedShort2);
            i2 = i3 + 1;
            jArr = jArr3;
            jArr2 = jArr4;
        }
        long[] jArr5 = jArr;
        long[] jArr6 = jArr2;
        if (j != -1 && j != jMax) {
            Log.w("VbriSeeker", "VBRI data size mismatch: " + j + ", " + jMax);
        }
        if (jMax != j3) {
            Log.w("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + jMax + ", " + j3 + "\nSeeking will be inaccurate.");
            jMax = Math.max(jMax, j3);
        }
        return new VbriSeeker(jArr5, jArr6, jSampleCountToDurationUs, jMax, header.bitrate);
    }

    public VbriSeeker(long[] jArr, long[] jArr2, long j, long j2, int i) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
        this.dataEndPosition = j2;
        this.bitrate = i;
    }

    @Override // io.bidmachine.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int iBinarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs >= j || iBinarySearchFloor == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i], this.positions[i]));
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override // io.bidmachine.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }
}
