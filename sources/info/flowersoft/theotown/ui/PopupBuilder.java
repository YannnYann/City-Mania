package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PopupBuilder {
    public final Master gui;
    public Runnable onCancel;
    public Runnable onClose;
    public MenuItemButton selectedButton;
    public int sourceHeight;
    public int sourceWidth;
    public int sourceX;
    public int sourceY;
    public final int itemWidth = 90;
    public final int iconWidth = 30;
    public final int itemHeight = 26;
    public final int border = 2;
    public final int spacing = 1;
    public final IntList icons = new IntList();
    public final List<String> labels = new ArrayList();
    public final List<Runnable> actions = new ArrayList();
    public final IntList enableds = new IntList();

    public PopupBuilder(Gadget gadget) {
        this.gui = (Master) gadget.getAbsoluteParent();
        this.sourceX = gadget.getAbsoluteX();
        this.sourceY = gadget.getAbsoluteY();
        this.sourceWidth = gadget.getWidth();
        this.sourceHeight = gadget.getHeight();
    }

    public PopupBuilder setOnClose(Runnable runnable) {
        this.onClose = runnable;
        return this;
    }

    public PopupBuilder setOnCancel(Runnable runnable) {
        this.onCancel = runnable;
        return this;
    }

    public PopupBuilder setSource(int i, int i2, int i3, int i4) {
        this.sourceX = i;
        this.sourceY = i2;
        this.sourceWidth = i3;
        this.sourceHeight = i4;
        return this;
    }

    public PopupBuilder setSource(int i, int i2) {
        return setSource(i, i2, 0, 0);
    }

    public PopupBuilder addItem(int i, String str, Runnable runnable, boolean z) {
        this.icons.add(i);
        this.labels.add(str);
        this.actions.add(runnable);
        this.enableds.add(z ? 1 : 0);
        return this;
    }

    public PopupBuilder addItem(int i, String str, Runnable runnable) {
        return addItem(i, str, runnable, true);
    }

    public PopupBuilder addItem(String str, Runnable runnable) {
        return addItem(0, str, runnable, true);
    }

    public PopupBuilder addSeparator() {
        if (!this.labels.isEmpty()) {
            List<String> list = this.labels;
            if (list.get(list.size() - 1) != null) {
                return addItem(0, null, null, true);
            }
        }
        return this;
    }

    public IconButton getSelectedButton() {
        return this.selectedButton;
    }

    public void clear() {
        this.icons.clear();
        this.labels.clear();
        this.actions.clear();
        this.onClose = null;
        this.onCancel = null;
    }

    public Panel build() {
        boolean z;
        boolean z2;
        int i;
        int i2;
        while (true) {
            z = true;
            if (!this.labels.isEmpty()) {
                List<String> list = this.labels;
                if (list.get(list.size() - 1) != null) {
                    break;
                }
                int size = this.labels.size() - 1;
                this.icons.removeAt(size);
                this.labels.remove(size);
                this.actions.remove(size);
                this.enableds.removeAt(size);
            } else {
                break;
            }
        }
        if (this.icons.isEmpty()) {
            return null;
        }
        final Button button = new Button(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.ui.PopupBuilder.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                if (PopupBuilder.this.onCancel != null) {
                    PopupBuilder.this.onCancel.run();
                }
                if (PopupBuilder.this.onClose != null) {
                    PopupBuilder.this.onClose.run();
                }
                getParent().removeChild(this);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void free() {
                if (PopupBuilder.this.onClose != null) {
                    PopupBuilder.this.onClose.run();
                }
                super.free();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                drawChildren(i3, i4);
            }
        };
        button.addSensitiveKey(111);
        PopupBuilder popupBuilder = this;
        Panel panel = new Panel(0, 0, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 0, button) { // from class: info.flowersoft.theotown.ui.PopupBuilder.2
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
                drawNinePatch(i3 - 8, i4 - 8, getWidth() + 16, getHeight() + 16, this.skin.npRectShadow);
                super.draw(i3, i4);
            }
        };
        panel.setPadding(2);
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int iMax = 0;
        int i6 = 0;
        while (i5 < popupBuilder.icons.size()) {
            int i7 = popupBuilder.icons.get(i5);
            String str = popupBuilder.labels.get(i5);
            if (str == null && i6 == 0) {
                z2 = z;
            } else {
                final Runnable runnable = popupBuilder.actions.get(i5);
                boolean z3 = popupBuilder.enableds.get(i5) > 0 ? z : false;
                if (str == null && runnable == null) {
                    new Panel(i3, i4 - 1, panel.getClientWidth(), 3, panel) { // from class: info.flowersoft.theotown.ui.PopupBuilder.3
                        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                        public void draw(int i8, int i9) {
                            Skin skin = this.skin;
                            Engine engine = skin.engine;
                            engine.setColor(skin.cTextSecondary);
                            engine.drawImage(Resources.IMAGE_WORLD, i8 + getX(), i9 + getY() + 1, getWidth(), 1.0f, Resources.FRAME_RECT);
                            engine.setColor(Colors.WHITE);
                        }
                    };
                    popupBuilder = this;
                    i2 = i4 + 2;
                    z2 = z;
                    i = i3;
                } else {
                    boolean z4 = z3;
                    int i8 = i3;
                    int i9 = i4;
                    Panel panel2 = panel;
                    z2 = z;
                    popupBuilder = this;
                    MenuItemButton menuItemButton = new MenuItemButton(i7, str, i8, i9, 30, panel.getClientWidth(), 26, panel2) { // from class: info.flowersoft.theotown.ui.PopupBuilder.4
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            PopupBuilder.this.selectedButton = this;
                            runnable.run();
                            if (PopupBuilder.this.onClose != null) {
                                PopupBuilder.this.onClose.run();
                            }
                            button.getParent().removeChild(button);
                        }
                    };
                    i = i8;
                    panel = panel2;
                    menuItemButton.setEnabled(z4);
                    i2 = i9 + 27;
                    i6++;
                }
                iMax = Math.max(iMax, i2);
                if (i2 + 52 <= popupBuilder.gui.getClientHeight() || i5 >= popupBuilder.icons.size() - 1) {
                    i3 = i;
                    i4 = i2;
                } else {
                    new Panel(i + 120, 0, 3, i2 - 1, panel) { // from class: info.flowersoft.theotown.ui.PopupBuilder.5
                        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                        public void draw(int i10, int i11) {
                            Skin skin = this.skin;
                            Engine engine = skin.engine;
                            engine.setColor(skin.cTextSecondary);
                            engine.drawImage(Resources.IMAGE_WORLD, i10 + getX() + 1, i11 + getY() + 1, 1.0f, getHeight(), Resources.FRAME_RECT);
                            engine.setColor(Colors.WHITE);
                        }
                    };
                    i3 = i + Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE;
                    i4 = 0;
                    i6 = 0;
                }
            }
            i5++;
            z = z2;
        }
        panel.setSize(i3 + Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, iMax + 3);
        int i10 = popupBuilder.sourceX;
        panel.setAbsolutePosition(Math.max(i10, (popupBuilder.sourceWidth + i10) - panel.getWidth()), popupBuilder.sourceY + popupBuilder.sourceHeight);
        if (panel.getAbsoluteX() + panel.getWidth() > popupBuilder.gui.getPaddingLeft() + popupBuilder.gui.getClientWidth()) {
            panel.setAbsolutePosition((popupBuilder.sourceX + popupBuilder.sourceWidth) - panel.getWidth(), panel.getAbsoluteY());
        }
        if (panel.getAbsoluteY() + panel.getHeight() > popupBuilder.gui.getPaddingTop() + popupBuilder.gui.getClientHeight()) {
            panel.setAbsolutePosition(panel.getAbsoluteX(), popupBuilder.sourceY - panel.getHeight());
        }
        panel.setAbsolutePosition(Math.max(panel.getAbsoluteX(), popupBuilder.gui.getPaddingLeft()), Math.max(panel.getAbsoluteY(), popupBuilder.gui.getPaddingTop()));
        return panel;
    }

    public static class MenuItemButton extends IconButton {
        public MenuItemButton(int i, String str, int i2, int i3, int i4, int i5, int i6, Gadget gadget) {
            super(i, str, i2, i3, i5, i6, gadget);
            setIconWidth(i4);
            setMaxWidth(i5);
            setWidth(i5);
        }

        @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            Engine engine = this.skin.engine;
            int alpha = this.text.getColor().getAlpha();
            if (!isEnabled()) {
                engine.setTransparency((alpha * 100) / 255);
                this.text.getColor().setAlpha(100);
                this.icon.setAlpha(100);
            } else {
                engine.setTransparency(alpha);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_GRAY);
                }
                if (isPressed()) {
                    engine.setColor(Colors.GRAY);
                }
                this.text.getColor().setAlpha(255);
                this.icon.setAlpha(255);
            }
            if (isEnabled() && (isMouseHovered() || isPressed())) {
                if (isPressed()) {
                    engine.setColor(this.skin.cTextAccent);
                } else {
                    engine.setColor(this.skin.cTextSecondary);
                }
                engine.setTransparency(100);
                engine.drawNinePatch(Resources.IMAGE_WORLD, getX() + i, getY() + i2, getWidth(), getHeight(), Resources.skin.npWhiteRect);
            }
            engine.setTransparency(255);
            drawChildren(i, i2);
            this.text.getColor().setAlpha(alpha);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
        }
    }
}
