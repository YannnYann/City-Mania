package io.bidmachine.media3.exoplayer.source.chunk;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseMediaChunkIterator implements MediaChunkIterator {
    public long currentIndex;
    public final long fromIndex;
    public final long toIndex;

    public BaseMediaChunkIterator(long j, long j2) {
        this.fromIndex = j;
        this.toIndex = j2;
        reset();
    }

    public boolean isEnded() {
        return this.currentIndex > this.toIndex;
    }

    @Override // io.bidmachine.media3.exoplayer.source.chunk.MediaChunkIterator
    public boolean next() {
        this.currentIndex++;
        return !isEnded();
    }

    public void reset() {
        this.currentIndex = this.fromIndex - 1;
    }

    public final void checkInBounds() {
        long j = this.currentIndex;
        if (j < this.fromIndex || j > this.toIndex) {
            throw new NoSuchElementException();
        }
    }

    public final long getCurrentIndex() {
        return this.currentIndex;
    }
}
