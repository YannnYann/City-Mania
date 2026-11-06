package io.blueflower.stapel2d.gui;

/* JADX INFO: loaded from: classes5.dex */
public class Panel extends SensitiveGadget {
    public Panel(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawNinePatch(i, i2, this.skin.npPanel);
        drawChildren(i, i2);
    }
}
