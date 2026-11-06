package io.blueflower.stapel2d.gui;

/* JADX INFO: loaded from: classes5.dex */
public class FlowLayout extends Gadget {
    public int space;

    public FlowLayout(int i, Gadget gadget) {
        super(gadget);
        this.space = i;
    }

    public int getSpace() {
        return this.space;
    }

    public void setSpace(int i) {
        this.space = i;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        int iMax = 0;
        int iMax2 = 0;
        int width = 0;
        int i = 0;
        int iMax3 = 0;
        for (Gadget gadget : this.children) {
            if (width > 0 && gadget.getWidth() + width > this.width) {
                i += iMax3 + this.space;
                iMax3 = 0;
            }
            gadget.setPosition(width, i);
            width += gadget.getWidth() + this.space;
            iMax3 = Math.max(iMax3, gadget.getHeight());
            iMax = Math.max(iMax, width - this.space);
            iMax2 = Math.max(iMax2, i + iMax3);
        }
        this.minWidth = iMax;
        this.minHeight = iMax2;
        super.layout();
    }
}
