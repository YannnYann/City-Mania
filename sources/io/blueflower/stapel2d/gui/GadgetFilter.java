package io.blueflower.stapel2d.gui;

/* JADX INFO: loaded from: classes5.dex */
public interface GadgetFilter {
    void afterDrawing(Gadget gadget, int i, int i2);

    void afterDrawingItem(Gadget gadget, boolean z, int i, ListItem listItem, int i2, int i3);

    boolean allowClick(Gadget gadget);

    void beforeDrawing(Gadget gadget, int i, int i2);

    void beforeDrawingItem(Gadget gadget, boolean z, int i, ListItem listItem, int i2, int i3);

    void onClick(Gadget gadget);
}
