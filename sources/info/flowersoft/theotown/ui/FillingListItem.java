package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class FillingListItem extends ListItem {
    public final int icon;
    public final Gadget parent;

    public FillingListItem(int i, String str, Gadget gadget) {
        super(str);
        this.icon = i;
        this.parent = gadget;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        super.draw(z, i, i2, i3, i4, i5, skin);
        drawBackground(false, 0, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        float f = i2;
        float f2 = i3;
        float f3 = i4;
        float f4 = i5;
        engine.drawImage(Resources.IMAGE_WORLD, f, f2, f3, f4, 0.5f, 0.45f, this.icon);
        engine.setColor(Colors.GRAY);
        engine.drawText(skin.fontDefault, this.text, f, f2, f3, f4, 0.5f, 0.55f);
        engine.setColor(Colors.WHITE);
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return this.parent.getClientHeight();
    }
}
