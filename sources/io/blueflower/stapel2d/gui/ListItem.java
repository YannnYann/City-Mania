package io.blueflower.stapel2d.gui;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Font;

/* JADX INFO: loaded from: classes5.dex */
public class ListItem {
    public String text;
    public boolean visible = true;

    public int getHeight(boolean z) {
        return 20;
    }

    public void onClick(int i, int i2) {
    }

    public ListItem(String str) {
        this.text = str;
    }

    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        skin.engine.setColor(skin.cText);
        skin.engine.drawText(skin.fontDefault, this.text, i2, i3);
        skin.engine.setColor(Colors.WHITE);
    }

    public void drawBackground(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(z, i, i2, i3, i4, i5, skin, skin.cItemBg0, skin.cItemBg1);
    }

    public void drawBackground(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin, Color color, Color color2) {
        skin.engine.setColorAndTransparency(i % 2 == 0 ? color : color2);
        if (z) {
            skin.engine.reset();
        }
        skin.engine.drawNinePatch(skin.img, i2, i3, i4, i5, z ? skin.npListItemSelected : skin.npListItemDefault);
        skin.engine.setColorAndTransparency(Colors.WHITE);
    }

    public boolean isVisible() {
        return this.visible;
    }

    public void setVisible(boolean z) {
        this.visible = z;
    }

    public void drawText(Skin skin, Font font, String str, int i, int i2, int i3, int i4, float f, float f2, boolean z) {
        float f3 = i;
        float f4 = i2;
        float f5 = i3;
        float f6 = i4;
        skin.engine.drawText(font, str, f3, f4, f5, f6, f, f2);
        if (z) {
            skin.engine.drawText(font, str, f3 + 0.2f, f4, f5, f6, f, f2);
        }
    }
}
