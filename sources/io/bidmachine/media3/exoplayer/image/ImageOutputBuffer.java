package io.bidmachine.media3.exoplayer.image;

import android.graphics.Bitmap;
import io.bidmachine.media3.decoder.DecoderOutputBuffer;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ImageOutputBuffer extends DecoderOutputBuffer {
    public Bitmap bitmap;

    @Override // io.bidmachine.media3.decoder.DecoderOutputBuffer, io.bidmachine.media3.decoder.Buffer
    public void clear() {
        this.bitmap = null;
        super.clear();
    }
}
