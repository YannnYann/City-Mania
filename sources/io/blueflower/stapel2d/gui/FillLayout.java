package io.blueflower.stapel2d.gui;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class FillLayout extends Gadget {
    public FillLayout(Gadget gadget) {
        super(gadget);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        super.layout();
        Iterator<Gadget> it = this.children.iterator();
        while (it.hasNext()) {
            it.next().setShape(getX(), getY(), getWidth(), getHeight());
        }
    }
}
