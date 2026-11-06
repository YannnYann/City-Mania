package io.blueflower.stapel2d.drawing;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class DynamicTextureSource extends TextureSource {
    public IntBuffer buffer;
    public int h;
    public int w;

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void release(Texture texture) {
    }

    public DynamicTextureSource(int i, int i2) {
        this.w = i;
        this.h = i2;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * 4 * i2);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        this.buffer = byteBufferAllocateDirect.asIntBuffer();
    }

    public void setData(int[] iArr) {
        this.buffer.put(iArr, 0, iArr.length);
        this.buffer.rewind();
    }

    public void setData(int[] iArr, int i, int i2) {
        this.buffer.put(iArr, 0, iArr.length);
        this.buffer.rewind();
        this.w = i;
        this.h = i2;
    }

    public void setData(IntBuffer intBuffer, int i, int i2) {
        this.buffer = intBuffer;
        this.w = i;
        this.h = i2;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getWidth() {
        return this.w;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getHeight() {
        return this.h;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void load(Texture texture) {
        IntBuffer intBuffer = this.buffer;
        if (intBuffer != null) {
            upload(intBuffer, 0, 0, this.w, this.h, 0);
            this.buffer = null;
        }
    }
}
