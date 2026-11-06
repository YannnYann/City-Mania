package io.bidmachine.media3.decoder;

import io.bidmachine.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes5.dex */
public interface Decoder<I, O, E extends DecoderException> {
    I dequeueInputBuffer() throws DecoderException;

    O dequeueOutputBuffer() throws DecoderException;

    void flush();

    void queueInputBuffer(I i) throws DecoderException;

    void release();

    void setOutputStartTimeUs(long j);
}
