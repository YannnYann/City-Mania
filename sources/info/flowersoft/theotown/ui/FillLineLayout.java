package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class FillLineLayout extends Gadget {
    public int alignment;
    public int spacing;

    public FillLineLayout(int i, int i2, int i3, int i4, int i5, int i6, Gadget gadget) {
        super(i3, i4, i5, i6, gadget);
        this.alignment = i;
        this.spacing = i2;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        int clientWidth = getClientWidth();
        int clientHeight = getClientHeight();
        if (this.children.size() > 0 && this.alignment == 0) {
            int size = (clientWidth - ((this.children.size() - 1) * this.spacing)) / this.children.size();
            int i = 0;
            int i2 = 0;
            while (i < this.children.size()) {
                this.children.get(i).setShape(i2, 0, i == this.children.size() + (-1) ? clientWidth - i2 : size, clientHeight);
                i2 += this.spacing + size;
                i++;
            }
        }
        super.layout();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }
}
