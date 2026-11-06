package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public final class ScreenRect {
    public float height;
    public float width;
    public float x;
    public float y;

    public ScreenRect(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
    }

    public boolean contains(float f, float f2) {
        float f3 = this.x;
        if (f < f3) {
            return false;
        }
        float f4 = this.y;
        return f2 >= f4 && f <= f3 + this.width && f2 <= f4 + this.height;
    }

    public float getX() {
        return this.x;
    }

    public void setX(float f) {
        this.x = f;
    }

    public float getY() {
        return this.y;
    }

    public void setY(float f) {
        this.y = f;
    }

    public float getWidth() {
        return this.width;
    }

    public void setWidth(float f) {
        this.width = f;
    }

    public float getHeight() {
        return this.height;
    }

    public void setHeight(float f) {
        this.height = f;
    }

    public float getCenterX() {
        return this.x + (this.width * 0.5f);
    }

    public float getCenterY() {
        return this.x + (this.height * 0.5f);
    }
}
