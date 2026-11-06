package io.bidmachine.rendering.model;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickData {
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public ClickData(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public final int getViewportHeight() {
        return this.d;
    }

    public final int getViewportWidth() {
        return this.c;
    }

    public final int getX() {
        return this.a;
    }

    public final int getY() {
        return this.b;
    }
}
