package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;

/* JADX INFO: loaded from: classes4.dex */
public class ShadowedIcon extends Icon {
    public ShadowedIcon(int i, int i2, int i3, int i4, int i5, Gadget gadget) {
        super(i, i2, i3, i4, i5, gadget);
    }

    @Override // io.blueflower.stapel2d.gui.Icon
    public void drawIcon(Image image, float f, float f2, int i) {
        this.skin.engine.setColor(Colors.BLACK);
        this.skin.engine.drawImage(image, f + 1.0f, 1.0f + f2, i);
        this.skin.engine.setColor(this.color);
        this.skin.engine.drawImage(image, f, f2, i);
    }
}
