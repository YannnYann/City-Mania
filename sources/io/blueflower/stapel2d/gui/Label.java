package io.blueflower.stapel2d.gui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;

/* JADX INFO: loaded from: classes5.dex */
public class Label extends Gadget {
    public float alignmentX;
    public float alignmentY;
    public Color color;
    public Font font;
    public boolean scaleToFitWidth;
    public float scaleX;
    public float scaleY;
    public String text;

    public Label(String str, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        this.text = str;
        this.alignmentX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.alignmentY = 0.5f;
        Skin skin = this.skin;
        this.font = skin.fontDefault;
        this.color = skin.cText.copy();
    }

    public boolean isScaleToFitWidth() {
        return this.scaleToFitWidth;
    }

    public void setScaleToFitWidth(boolean z) {
        this.scaleToFitWidth = z;
    }

    public Font getFont() {
        return this.font;
    }

    public void setFont(Font font) {
        this.font = font;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
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

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color.setTo(color);
    }

    public void setColor(int i, int i2, int i3) {
        this.color.setTo(i, i2, i3, 255);
    }

    public void setColor(int i, int i2, int i3, int i4) {
        this.color.setTo(i, i2, i3, i4);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        String text = getText();
        if (text != null) {
            drawText(this.font, getColor(), text, getX() + i + this.paddingLeft, getY() + i2 + this.paddingTop, (getWidth() - this.paddingLeft) - this.paddingRight, (getHeight() - this.paddingTop) - this.paddingBottom, getAlignmentX(), getAlignmentY());
        }
        drawChildren(i, i2);
    }

    public void drawText(Font font, Color color, String str, float f, float f2, float f3, float f4, float f5, float f6) {
        Engine engine = this.skin.engine;
        engine.setColor(color);
        engine.setTransparency(color.getAlpha());
        float f7 = this.scaleX;
        float f8 = this.scaleY;
        if (this.scaleToFitWidth) {
            float width = font.getWidth(str) * f7;
            if (width > f3 && width > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                f7 *= f3 / width;
            }
        }
        engine.setScale(f7, f8);
        engine.drawText(font, str, f, f2, f3, f4, f5, f6);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.setScale(1.0f, 1.0f);
    }

    public void setScale(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public void adjustSizeToText() {
        setSize((int) Math.ceil(getTextWidth()), (int) Math.ceil(getTextHeight()));
    }

    public float getTextWidth() {
        return this.font.getWidth(getText());
    }

    public float getTextHeight() {
        return this.font.getHeight(getText());
    }
}
