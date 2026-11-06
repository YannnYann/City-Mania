package io.bidmachine.rendering.model;

/* JADX INFO: loaded from: classes5.dex */
public final class Border {
    public final int a;
    public final int b;

    public Border(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final int getStrokeColor() {
        return this.b;
    }

    public final int getStrokeWidthPx() {
        return this.a;
    }
}
