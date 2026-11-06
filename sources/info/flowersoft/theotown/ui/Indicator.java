package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Indicator extends Button {
    public Engine engine;
    public Font font;
    public int px;
    public int py;

    public Indicator(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        Skin skin = this.skin;
        Engine engine = skin.engine;
        this.engine = engine;
        this.font = skin.fontSmall;
        this.px = i + this.x;
        this.py = i2 + this.y;
        Color color = Colors.WHITE;
        engine.setColor(color);
        if (isMouseHovered()) {
            this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
        }
        this.engine.drawNinePatch(Resources.IMAGE_WORLD, this.px, this.py, this.width, this.height, this.skin.npIndicator);
        this.engine.setColor(color);
    }
}
