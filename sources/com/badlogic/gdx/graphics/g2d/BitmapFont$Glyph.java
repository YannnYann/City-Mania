package com.badlogic.gdx.graphics.g2d;

/* JADX INFO: loaded from: classes.dex */
public class BitmapFont$Glyph {
    public int height;
    public int id;
    public int page = 0;
    public int srcX;
    public int srcY;
    public int width;
    public int xadvance;
    public int xoffset;
    public int yoffset;

    public String toString() {
        return Character.toString((char) this.id);
    }
}
