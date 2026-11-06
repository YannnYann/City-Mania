package io.blueflower.stapel2d.drawing;

/* JADX INFO: loaded from: classes5.dex */
public class Font {
    public Image image;
    public float scale;
    public Shader shader;

    public Font(Shader shader, Image image, float f) {
        this.shader = shader;
        this.image = image;
        this.scale = f;
    }

    public float getWidth(String str) {
        return this.scale * this.image.getTextWidth(str);
    }

    public float getHeight(String str) {
        return getHeight();
    }

    public float getHeight() {
        return this.scale * this.image.getTextHeight();
    }

    public float getCodepointWidth(int i) {
        return this.scale * this.image.getCodepointWidth(i);
    }
}
