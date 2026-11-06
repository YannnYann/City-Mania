package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class FilledRect extends Gadget {
    public Color color;

    public FilledRect(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.color = Colors.BLACK;
    }

    public Color getColor() {
        return this.color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        this.skin.engine.setColor(this.color);
        Skin skin = this.skin;
        skin.engine.drawImage(skin.img, getX() + i, getY() + i2, getWidth(), getHeight(), Resources.FRAME_RECT);
        this.skin.engine.setColor(Colors.WHITE);
        drawChildren(i, i2);
    }
}
