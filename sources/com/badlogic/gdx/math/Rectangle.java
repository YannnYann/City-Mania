package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import com.ironsource.C3522b4;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Rectangle implements Serializable {
    public static final Rectangle tmp = new Rectangle();
    public static final Rectangle tmp2 = new Rectangle();
    public float height;
    public float width;
    public float x;
    public float y;

    public Rectangle set(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.width = f3;
        this.height = f4;
        return this;
    }

    public float getX() {
        return this.x;
    }

    public float getY() {
        return this.y;
    }

    public float getWidth() {
        return this.width;
    }

    public float getHeight() {
        return this.height;
    }

    public Rectangle merge(float f, float f2) {
        float fMin = Math.min(this.x, f);
        float fMax = Math.max(this.x + this.width, f);
        this.x = fMin;
        this.width = fMax - fMin;
        float fMin2 = Math.min(this.y, f2);
        float fMax2 = Math.max(this.y + this.height, f2);
        this.y = fMin2;
        this.height = fMax2 - fMin2;
        return this;
    }

    public String toString() {
        return C3522b4.j.d + this.x + "," + this.y + "," + this.width + "," + this.height + C3522b4.j.e;
    }

    public float area() {
        return this.width * this.height;
    }

    public int hashCode() {
        return ((((((NumberUtils.floatToRawIntBits(this.height) + 31) * 31) + NumberUtils.floatToRawIntBits(this.width)) * 31) + NumberUtils.floatToRawIntBits(this.x)) * 31) + NumberUtils.floatToRawIntBits(this.y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Rectangle rectangle = (Rectangle) obj;
        return NumberUtils.floatToRawIntBits(this.height) == NumberUtils.floatToRawIntBits(rectangle.height) && NumberUtils.floatToRawIntBits(this.width) == NumberUtils.floatToRawIntBits(rectangle.width) && NumberUtils.floatToRawIntBits(this.x) == NumberUtils.floatToRawIntBits(rectangle.x) && NumberUtils.floatToRawIntBits(this.y) == NumberUtils.floatToRawIntBits(rectangle.y);
    }
}
