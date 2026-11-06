package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;

/* JADX INFO: loaded from: classes4.dex */
public class ShadowedLabel extends Label {
    public boolean shadow;

    public ShadowedLabel(String str, int i, int i2, int i3, int i4, Gadget gadget) {
        super(str, i, i2, i3, i4, gadget);
        this.shadow = true;
    }

    public boolean isShadow() {
        return this.shadow;
    }

    public void setShadow(boolean z) {
        this.shadow = z;
    }

    @Override // io.blueflower.stapel2d.gui.Label
    public void drawText(Font font, Color color, String str, float f, float f2, float f3, float f4, float f5, float f6) {
        int width = (int) (f + (f5 * (f3 - font.getWidth(str))));
        int height = (int) (f2 + (f6 * (f4 - font.getHeight(str))));
        Engine engine = this.skin.engine;
        engine.setScale(this.scaleX, this.scaleY);
        if (this.shadow) {
            engine.setColor(Colors.BLACK);
            engine.setTransparency(color.getAlpha() / 4);
            float f7 = width - 1;
            float f8 = height - 1;
            engine.drawText(font, str, f7, f8);
            float f9 = width + 1;
            engine.drawText(font, str, f9, f8);
            float f10 = height + 1;
            engine.drawText(font, str, f7, f10);
            engine.setTransparency(color.getAlpha());
            engine.drawText(font, str, f9, f10);
        }
        engine.setColor(color);
        engine.setTransparency(color.getAlpha());
        engine.drawText(font, str, width, height);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.setScale(1.0f, 1.0f);
    }
}
