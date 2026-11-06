package io.blueflower.stapel2d.gui;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class GUICache {
    public static final List<GUICache> validCaches = new ArrayList();
    public final List<Gadget> elements = new ArrayList();
    public final GadgetFilter filter;
    public boolean invalid;
    public final int targetClientHeight;
    public final int targetClientWidth;
    public final int targetHeight;
    public final int targetPaddingLeft;
    public final int targetPaddingTop;
    public final int targetWidth;

    public static void invalidateAllCaches() {
        while (true) {
            List<GUICache> list = validCaches;
            if (list.isEmpty()) {
                return;
            }
            list.get(0).invalid = true;
            list.get(0).free();
        }
    }

    public GUICache(Master master) {
        this.targetWidth = master.getWidth();
        this.targetHeight = master.getHeight();
        this.targetPaddingLeft = master.getPaddingLeft();
        this.targetPaddingTop = master.getPaddingTop();
        this.targetClientWidth = master.getClientWidth();
        this.targetClientHeight = master.getClientHeight();
        for (int i = 0; i < master.countChildren(); i++) {
            this.elements.add(master.getChild(i));
        }
        master.children.clear();
        this.filter = master.getFilter();
        validCaches.add(this);
    }

    public boolean canApply(Master master) {
        return !this.invalid && master.getWidth() == this.targetWidth && master.getHeight() == this.targetHeight && master.getPaddingLeft() == this.targetPaddingLeft && master.getPaddingTop() == this.targetPaddingTop && master.getClientWidth() == this.targetClientWidth && master.getClientHeight() == this.targetClientHeight && !this.elements.isEmpty();
    }

    public void apply(Master master) {
        master.setFilter(this.filter);
        for (int i = 0; i < this.elements.size(); i++) {
            Gadget gadget = this.elements.get(i);
            gadget.parent = master;
            master.children.add(gadget);
            setMaster(gadget, master);
        }
        validCaches.remove(this);
    }

    public final void setMaster(Gadget gadget, Master master) {
        gadget.master = master;
        for (int i = 0; i < gadget.countChildren(); i++) {
            setMaster(gadget.getChild(i), master);
        }
    }

    public void free() {
        for (int i = 0; i < this.elements.size(); i++) {
            this.elements.get(i).free();
        }
        validCaches.remove(this);
    }
}
