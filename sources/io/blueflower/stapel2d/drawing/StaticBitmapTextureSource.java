package io.blueflower.stapel2d.drawing;

import com.badlogic.gdx.graphics.Pixmap;

/* JADX INFO: loaded from: classes5.dex */
public class StaticBitmapTextureSource extends AbstractBitmapTextureSource {
    public final boolean async;
    public final Pixmap bmp;

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
    public void querySize() {
    }

    public StaticBitmapTextureSource(Pixmap pixmap, boolean z) {
        this.bmp = pixmap;
        this.async = z;
    }

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
    public boolean isAsync() {
        return this.async;
    }

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource, io.blueflower.stapel2d.drawing.TextureSource
    public int getWidth() {
        return this.bmp.getWidth();
    }

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource, io.blueflower.stapel2d.drawing.TextureSource
    public int getHeight() {
        return this.bmp.getHeight();
    }

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource, io.blueflower.stapel2d.drawing.TextureSource
    public void load(Texture texture) {
        upload(this.bmp, 0, 0, 0);
    }

    @Override // io.blueflower.stapel2d.drawing.AbstractBitmapTextureSource
    public Pixmap getBitmap(Texture texture) {
        return this.bmp;
    }
}
