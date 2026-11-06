package io.bidmachine.media3.extractor.text.cea;

import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.decoder.DecoderOutputBuffer;
import io.bidmachine.media3.extractor.text.Subtitle;
import io.bidmachine.media3.extractor.text.SubtitleDecoder;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
import io.bidmachine.media3.extractor.text.SubtitleInputBuffer;
import io.bidmachine.media3.extractor.text.SubtitleOutputBuffer;
import io.bidmachine.media3.extractor.text.cea.CeaDecoder;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CeaDecoder implements SubtitleDecoder {
    public final ArrayDeque<CeaInputBuffer> availableInputBuffers = new ArrayDeque<>();
    public final ArrayDeque<SubtitleOutputBuffer> availableOutputBuffers;
    public CeaInputBuffer dequeuedInputBuffer;
    public long outputStartTimeUs;
    public long playbackPositionUs;
    public long queuedInputBufferCount;
    public final ArrayDeque<CeaInputBuffer> queuedInputBuffers;

    public abstract Subtitle createSubtitle();

    public abstract void decode(SubtitleInputBuffer subtitleInputBuffer);

    public abstract boolean isNewSubtitleDataAvailable();

    @Override // io.bidmachine.media3.decoder.Decoder
    public void release() {
    }

    public CeaDecoder() {
        for (int i = 0; i < 10; i++) {
            this.availableInputBuffers.add(new CeaInputBuffer());
        }
        this.availableOutputBuffers = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.availableOutputBuffers.add(new CeaOutputBuffer(new DecoderOutputBuffer.Owner() { // from class: io.bidmachine.media3.extractor.text.cea.CeaDecoder$$ExternalSyntheticLambda0
                @Override // io.bidmachine.media3.decoder.DecoderOutputBuffer.Owner
                public final void releaseOutputBuffer(DecoderOutputBuffer decoderOutputBuffer) {
                    this.f$0.releaseOutputBuffer((CeaDecoder.CeaOutputBuffer) decoderOutputBuffer);
                }
            }));
        }
        this.queuedInputBuffers = new ArrayDeque<>();
        this.outputStartTimeUs = -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.decoder.Decoder
    public final void setOutputStartTimeUs(long j) {
        this.outputStartTimeUs = j;
    }

    @Override // io.bidmachine.media3.extractor.text.SubtitleDecoder
    public void setPositionUs(long j) {
        this.playbackPositionUs = j;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.media3.decoder.Decoder
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(this.dequeuedInputBuffer == null);
        if (this.availableInputBuffers.isEmpty()) {
            return null;
        }
        CeaInputBuffer ceaInputBufferPollFirst = this.availableInputBuffers.pollFirst();
        this.dequeuedInputBuffer = ceaInputBufferPollFirst;
        return ceaInputBufferPollFirst;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    @Override // io.bidmachine.media3.decoder.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void queueInputBuffer(io.bidmachine.media3.extractor.text.SubtitleInputBuffer r7) throws io.bidmachine.media3.extractor.text.SubtitleDecoderException {
        /*
            r6 = this;
            io.bidmachine.media3.extractor.text.cea.CeaDecoder$CeaInputBuffer r0 = r6.dequeuedInputBuffer
            if (r7 != r0) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            io.bidmachine.media3.common.util.Assertions.checkArgument(r0)
            io.bidmachine.media3.extractor.text.cea.CeaDecoder$CeaInputBuffer r7 = (io.bidmachine.media3.extractor.text.cea.CeaDecoder.CeaInputBuffer) r7
            boolean r0 = r7.isEndOfStream()
            if (r0 != 0) goto L2d
            long r0 = r7.timeUs
            r2 = -9223372036854775808
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L2d
            long r2 = r6.outputStartTimeUs
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 == 0) goto L2d
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L2d
            r6.releaseInputBuffer(r7)
            goto L3c
        L2d:
            long r0 = r6.queuedInputBufferCount
            r2 = 1
            long r2 = r2 + r0
            r6.queuedInputBufferCount = r2
            io.bidmachine.media3.extractor.text.cea.CeaDecoder.CeaInputBuffer.access$102(r7, r0)
            java.util.ArrayDeque<io.bidmachine.media3.extractor.text.cea.CeaDecoder$CeaInputBuffer> r0 = r6.queuedInputBuffers
            r0.add(r7)
        L3c:
            r7 = 0
            r6.dequeuedInputBuffer = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.extractor.text.cea.CeaDecoder.queueInputBuffer(io.bidmachine.media3.extractor.text.SubtitleInputBuffer):void");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.media3.decoder.Decoder
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        while (!this.queuedInputBuffers.isEmpty() && ((CeaInputBuffer) Util.castNonNull(this.queuedInputBuffers.peek())).timeUs <= this.playbackPositionUs) {
            CeaInputBuffer ceaInputBuffer = (CeaInputBuffer) Util.castNonNull(this.queuedInputBuffers.poll());
            if (ceaInputBuffer.isEndOfStream()) {
                SubtitleOutputBuffer subtitleOutputBuffer = (SubtitleOutputBuffer) Util.castNonNull(this.availableOutputBuffers.pollFirst());
                subtitleOutputBuffer.addFlag(4);
                releaseInputBuffer(ceaInputBuffer);
                return subtitleOutputBuffer;
            }
            decode(ceaInputBuffer);
            if (isNewSubtitleDataAvailable()) {
                Subtitle subtitleCreateSubtitle = createSubtitle();
                SubtitleOutputBuffer subtitleOutputBuffer2 = (SubtitleOutputBuffer) Util.castNonNull(this.availableOutputBuffers.pollFirst());
                subtitleOutputBuffer2.setContent(ceaInputBuffer.timeUs, subtitleCreateSubtitle, Long.MAX_VALUE);
                releaseInputBuffer(ceaInputBuffer);
                return subtitleOutputBuffer2;
            }
            releaseInputBuffer(ceaInputBuffer);
        }
        return null;
    }

    public final void releaseInputBuffer(CeaInputBuffer ceaInputBuffer) {
        ceaInputBuffer.clear();
        this.availableInputBuffers.add(ceaInputBuffer);
    }

    public void releaseOutputBuffer(SubtitleOutputBuffer subtitleOutputBuffer) {
        subtitleOutputBuffer.clear();
        this.availableOutputBuffers.add(subtitleOutputBuffer);
    }

    @Override // io.bidmachine.media3.decoder.Decoder
    public void flush() {
        this.queuedInputBufferCount = 0L;
        this.playbackPositionUs = 0L;
        while (!this.queuedInputBuffers.isEmpty()) {
            releaseInputBuffer((CeaInputBuffer) Util.castNonNull(this.queuedInputBuffers.poll()));
        }
        CeaInputBuffer ceaInputBuffer = this.dequeuedInputBuffer;
        if (ceaInputBuffer != null) {
            releaseInputBuffer(ceaInputBuffer);
            this.dequeuedInputBuffer = null;
        }
    }

    public final SubtitleOutputBuffer getAvailableOutputBuffer() {
        return this.availableOutputBuffers.pollFirst();
    }

    public final long getPositionUs() {
        return this.playbackPositionUs;
    }

    public static final class CeaInputBuffer extends SubtitleInputBuffer implements Comparable<CeaInputBuffer> {
        public long queuedInputBufferCount;

        public CeaInputBuffer() {
        }

        @Override // java.lang.Comparable
        public int compareTo(CeaInputBuffer ceaInputBuffer) {
            if (isEndOfStream() != ceaInputBuffer.isEndOfStream()) {
                return isEndOfStream() ? 1 : -1;
            }
            long j = this.timeUs - ceaInputBuffer.timeUs;
            if (j == 0) {
                j = this.queuedInputBufferCount - ceaInputBuffer.queuedInputBufferCount;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    public static final class CeaOutputBuffer extends SubtitleOutputBuffer {
        public DecoderOutputBuffer.Owner<CeaOutputBuffer> owner;

        public CeaOutputBuffer(DecoderOutputBuffer.Owner<CeaOutputBuffer> owner) {
            this.owner = owner;
        }

        @Override // io.bidmachine.media3.decoder.DecoderOutputBuffer
        public final void release() {
            this.owner.releaseOutputBuffer(this);
        }
    }
}
