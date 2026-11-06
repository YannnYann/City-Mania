package io.blueflower.stapel2d.gui;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LineLayout extends Gadget {
    public int actualHeight;
    public int actualWidth;
    public float align;
    public int alignment;
    public float floatTo;
    public boolean floating;
    public boolean omitInvisibleChildren;
    public boolean reversed;
    public int space;

    public LineLayout(float f, int i, int i2, Gadget gadget) {
        super(gadget);
        this.omitInvisibleChildren = true;
        this.align = f;
        this.alignment = i;
        this.space = i2;
    }

    public boolean isOmitInvisibleChildren() {
        return this.omitInvisibleChildren;
    }

    public void setOmitInvisibleChildren(boolean z) {
        this.omitInvisibleChildren = z;
    }

    public boolean isReversed() {
        return this.reversed;
    }

    public void setReversed(boolean z) {
        this.reversed = z;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        super.layout();
        int i = this.space;
        int width = -i;
        int height = -i;
        int i2 = 0;
        for (int i3 = 0; i3 < this.children.size(); i3++) {
            List<Gadget> list = this.children;
            Gadget gadget = list.get(this.reversed ? (list.size() - 1) - i3 : i3);
            if (gadget.isVisible() || !this.omitInvisibleChildren) {
                width += gadget.getWidth() + this.space;
                height += gadget.getHeight() + this.space;
            }
        }
        this.actualWidth = width;
        this.actualHeight = height;
        int i4 = this.alignment;
        if (i4 == 0) {
            int clientWidth = (int) (this.align * (getClientWidth() - width));
            while (i2 < this.children.size()) {
                List<Gadget> list2 = this.children;
                Gadget gadget2 = list2.get(this.reversed ? (list2.size() - 1) - i2 : i2);
                if (gadget2.isVisible() || !this.omitInvisibleChildren) {
                    gadget2.setPosition(clientWidth, !this.floating ? gadget2.getY() : (int) (this.floatTo * (getClientHeight() - gadget2.getHeight())));
                    clientWidth += gadget2.getWidth() + this.space;
                }
                i2++;
            }
            return;
        }
        if (i4 != 1) {
            return;
        }
        int clientHeight = (int) (this.align * (getClientHeight() - height));
        while (i2 < this.children.size()) {
            List<Gadget> list3 = this.children;
            Gadget gadget3 = list3.get(this.reversed ? (list3.size() - 1) - i2 : i2);
            if (gadget3.isVisible() || !this.omitInvisibleChildren) {
                gadget3.setPosition(!this.floating ? gadget3.getX() : (int) (this.floatTo * (getClientWidth() - gadget3.getWidth())), clientHeight);
                clientHeight += gadget3.getHeight() + this.space;
            }
            i2++;
        }
    }

    public void setFloating(float f) {
        this.floating = true;
        this.floatTo = f;
        layout();
    }

    public int getActualWidth() {
        return this.actualWidth;
    }

    public int getActualHeight() {
        return this.actualHeight;
    }

    public int getSpace() {
        return this.space;
    }

    public void setSpace(int i) {
        this.space = Math.max(0, i);
        layout();
    }
}
