package io.blueflower.stapel2d.gui;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes5.dex */
public class Icon extends Gadget {
    public float alignmentX;
    public float alignmentY;
    public Color color;
    public int frame;
    public Image img;
    public float scale;
    public boolean scaleDown;

    public Icon(int i, int i2, int i3, int i4, int i5, Gadget gadget) {
        super(i2, i3, i4, i5, gadget);
        this.scale = 1.0f;
        this.color = Colors.WHITE.copy();
        this.scaleDown = true;
        this.frame = i;
        this.alignmentX = 0.5f;
        this.alignmentY = 0.5f;
    }

    public boolean isScaleDown() {
        return this.scaleDown;
    }

    public void setScaleDown(boolean z) {
        this.scaleDown = z;
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public void setAlignment(float f, float f2) {
        this.alignmentX = f;
        this.alignmentY = f2;
    }

    public float getAlignmentX() {
        return this.alignmentX;
    }

    public float getAlignmentY() {
        return this.alignmentY;
    }

    public void setImg(Image image) {
        this.img = image;
    }

    public float getScale() {
        return this.scale;
    }

    public void setScale(float f) {
        this.scale = f;
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color.setTo(color);
    }

    public int getAlpha() {
        return this.color.getAlpha();
    }

    public void setAlpha(int i) {
        this.color.setAlpha(i);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        float fMin;
        int i3 = this.frame;
        if (i3 != -1) {
            Image image = this.img;
            if (image == null) {
                image = this.skin.img;
            }
            float width = image.getWidth(i3);
            float height = image.getHeight(this.frame);
            if (this.scaleDown) {
                float f = this.width;
                float f2 = this.scale;
                fMin = Math.min(Math.min(f / (f2 * width), this.height / (f2 * height)), 1.0f) * this.scale;
            } else {
                fMin = 1.0f;
            }
            float fRound = this.x + i + Math.round(this.alignmentX * (this.width - (width * fMin)));
            float fRound2 = this.y + i2 + Math.round(this.alignmentY * (this.height - (height * fMin)));
            Engine engine = this.skin.engine;
            engine.setScale(fMin, fMin);
            engine.setColor(this.color);
            engine.setTransparency(this.color.getAlpha());
            drawIcon(image, fRound + (image.getHandleX(this.frame) * fMin), fRound2 + (fMin * image.getHandleY(this.frame)), this.frame);
            engine.setScale(1.0f, 1.0f);
            engine.setTransparency(255);
            engine.setColor(Colors.WHITE);
        }
        drawChildren(i, i2);
    }

    public void drawIcon(Image image, float f, float f2, int i) {
        this.skin.engine.drawImage(image, f, f2, i);
    }
}
