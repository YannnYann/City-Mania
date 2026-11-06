package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class ColorRect extends Gadget {
    public final boolean borderless;
    public final Color color;

    public ColorRect(Color color, Gadget gadget) {
        this(color, gadget, false);
    }

    public ColorRect(Color color, Gadget gadget, boolean z) {
        super(gadget);
        this.color = color;
        this.borderless = z;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        int i3 = this.x + i;
        int i4 = this.y + i2;
        Engine engine = this.skin.engine;
        engine.setColor(this.color);
        engine.drawNinePatch(Resources.IMAGE_WORLD, i3, i4, this.width, this.height, this.borderless ? Resources.skin.npWhiteRect : Resources.skin.npWhiteRectBordered);
        engine.setColor(Colors.WHITE);
    }
}
