package io.blueflower.stapel2d.drawing;

/* JADX INFO: loaded from: classes5.dex */
public final class EmptyTextureSource extends TextureSource {
    public int height;
    public int units;
    public int width;

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void load(Texture texture) {
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public void release(Texture texture) {
    }

    public EmptyTextureSource(int i, int i2) {
        this(i, i2, 1);
    }

    public EmptyTextureSource(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.units = i3;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getWidth() {
        return this.width;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getHeight() {
        return this.height;
    }

    @Override // io.blueflower.stapel2d.drawing.TextureSource
    public int getUnits() {
        return this.units;
    }
}
