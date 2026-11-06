package io.bidmachine.media3.extractor.mp3;

import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.extractor.IndexSeekMap;
import io.bidmachine.media3.extractor.SeekMap;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes5.dex */
public final class IndexSeeker implements Seeker {
    public final int averageBitrate;
    public final long dataEndPosition;
    public final IndexSeekMap indexSeekMap;

    public IndexSeeker(long j, long j2, long j3) {
        this.indexSeekMap = new IndexSeekMap(new long[]{j2}, new long[]{0}, j);
        this.dataEndPosition = j3;
        int i = -2147483647;
        if (j != -9223372036854775807L) {
            long jScaleLargeValue = Util.scaleLargeValue(j2 - j3, 8L, j, RoundingMode.HALF_UP);
            if (jScaleLargeValue > 0 && jScaleLargeValue <= 2147483647L) {
                i = (int) jScaleLargeValue;
            }
            this.averageBitrate = i;
            return;
        }
        this.averageBitrate = -2147483647;
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.indexSeekMap.getTimeUs(j);
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // io.bidmachine.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.indexSeekMap.isSeekable();
    }

    @Override // io.bidmachine.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.indexSeekMap.getDurationUs();
    }

    @Override // io.bidmachine.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        return this.indexSeekMap.getSeekPoints(j);
    }

    @Override // io.bidmachine.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.averageBitrate;
    }

    public void maybeAddSeekPoint(long j, long j2) {
        if (isTimeUsInIndex(j)) {
            return;
        }
        this.indexSeekMap.addSeekPoint(j, j2);
    }

    public boolean isTimeUsInIndex(long j) {
        return this.indexSeekMap.isTimeUsInIndex(j, 100000L);
    }

    public void setDurationUs(long j) {
        this.indexSeekMap.setDurationUs(j);
    }
}
