package io.bidmachine.media3.decoder;

import io.bidmachine.media3.decoder.DecoderOutputBuffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class VideoDecoderOutputBuffer extends DecoderOutputBuffer {
    public int colorspace;
    public int height;
    public final DecoderOutputBuffer.Owner<VideoDecoderOutputBuffer> owner;
    public int width;
    public ByteBuffer[] yuvPlanes;
    public int[] yuvStrides;

    @Override // io.bidmachine.media3.decoder.DecoderOutputBuffer
    public void release() {
        this.owner.releaseOutputBuffer(this);
    }
}
