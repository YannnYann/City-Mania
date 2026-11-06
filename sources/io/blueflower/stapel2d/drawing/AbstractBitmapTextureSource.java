package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.graphics.Pixmap;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBitmapTextureSource extends TextureSource {
    public int w = 0;
    public int h = 0;

    public abstract Pixmap getBitmap(Texture texture);

    public abstract boolean isAsync();

    public void querySize() {
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void release(Texture texture) {
    }

    public final Pixmap extractBitmap() {
        Pixmap bitmap = getBitmap(this.texture);
        this.w = bitmap.getWidth();
        this.h = bitmap.getHeight();
        return bitmap;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getWidth() {
        if (this.w == 0) {
            querySize();
        }
        return this.w;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getHeight() {
        if (this.h == 0) {
            querySize();
        }
        return this.h;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void load(Texture texture) {
        Runtime.getRuntime().gc();
        upload(extractBitmap(), 0);
        Runtime.getRuntime().gc();
    }
}
