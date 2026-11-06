package info.flowersoft.theotown.ui;

import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.listitem.SmoothHeightListItem;
import info.flowersoft.theotown.ui.selectable.DefaultSelectable;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class Selector extends Panel {
    public Selectable lastClicked;
    public final Label lblName;
    public final ListBox listBox;
    public final Panel panel;

    public Selector(String str, Gadget gadget, List<Selectable> list) {
        this(str, gadget, list, false);
    }

    public Selector(String str, Gadget gadget, List<Selectable> list, boolean z) {
        int i;
        int i2;
        super(0, 0, 0, 0, gadget);
        int width = ((getAbsoluteParent().getWidth() - 240) / 5) + 240;
        int height = ((getAbsoluteParent().getHeight() - 160) / 5) + Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE;
        if (z) {
            width = gadget.getClientWidth();
            height = gadget.getClientHeight();
        }
        setShape(0, 0, width, height);
        gadget.layout();
        int i3 = (width * 3) / 7;
        if (str != null) {
            i = i3;
            new Label(str, 2, 0, i3, 20, this).setFont(this.skin.fontBig);
            i2 = 20;
        } else {
            i = i3;
            i2 = 0;
        }
        int i4 = i + 2;
        Label label = new Label("", i4, 0, (getClientWidth() - i) - 2, 20, this);
        this.lblName = label;
        label.setFont(this.skin.fontBig);
        this.listBox = new ListBox(0, i2, i, getClientHeight() - i2, this);
        for (Selectable selectable : list) {
            if (selectable.isActive()) {
                this.listBox.addItem(new SelectableItemWrapper(new SelectableItem(selectable)));
            }
        }
        this.panel = new Panel(i4, 20, (getClientWidth() - r3) - 2, getClientHeight() - 20, this) { // from class: info.flowersoft.theotown.ui.Selector.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                drawChildren(i5, i6);
            }
        };
        buildPanel(false);
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }

    public void focus(Selectable selectable) {
        for (int i = 0; i < this.listBox.countItems(); i++) {
            if (((SelectableItem) ((SelectableItemWrapper) this.listBox.getItem(i)).getInnerItem()).selectable == selectable) {
                this.listBox.selectItemIndex(i);
                rebuild();
            }
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void updateKeyInput(KeyMapper keyMapper) {
        int selectedIndex;
        int i;
        if (this.parent.isVisible()) {
            super.updateKeyInput(keyMapper);
            int iCountItems = countItems();
            if (keyMapper.keyRepeatedHit(61) && iCountItems > 0) {
                int selectedIndex2 = getSelectedIndex();
                if (keyMapper.keyDown(59) || keyMapper.keyDown(22)) {
                    i = ((selectedIndex2 + iCountItems) - 1) % iCountItems;
                } else {
                    i = (selectedIndex2 + 1) % iCountItems;
                }
                focus(getItem(i));
                return;
            }
            if (!keyMapper.keyHit(66) || (selectedIndex = getSelectedIndex()) < 0) {
                return;
            }
            getItem(selectedIndex).select();
        }
    }

    private int countItems() {
        int i = 0;
        for (int i2 = 0; i2 < this.listBox.countItems(); i2++) {
            if (getSelectable(i2).isMarkable()) {
                i++;
            }
        }
        return i;
    }

    public final Selectable getItem(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.listBox.countItems(); i3++) {
            Selectable selectable = getSelectable(i3);
            if (selectable.isMarkable()) {
                if (i2 == i) {
                    return selectable;
                }
                i2++;
            }
        }
        return null;
    }

    public final int getSelectedIndex() {
        if (countItems() == 0) {
            return -1;
        }
        int selectedItemIndex = this.listBox.getSelectedItemIndex();
        int i = 0;
        for (int i2 = 0; i2 < this.listBox.countItems(); i2++) {
            if (getSelectable(i2).isMarkable()) {
                if (i2 == selectedItemIndex) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public ListBox getListBox() {
        return this.listBox;
    }

    public void setTitle(String str) {
        this.lblName.setText(str);
    }

    public void rebuild() {
        this.lastClicked = null;
        buildPanel(false);
    }

    public final void buildPanel(boolean z) {
        if (this.listBox.countItems() > 0) {
            Selectable selectable = getSelectable(this.listBox.getSelectedItemIndex());
            if (selectable.isMarkable()) {
                this.panel.removeAllChildren();
                this.panel.free();
                this.lblName.setText(selectable.getTitle());
                selectable.build(this.panel);
                if (this.lastClicked == selectable && selectable.allowEasySelect() && selectable.isSelectable() && z) {
                    Button selectButton = selectable instanceof DefaultSelectable ? ((DefaultSelectable) selectable).getSelectButton() : null;
                    if (selectButton != null) {
                        selectButton.click();
                    } else {
                        selectable.select();
                    }
                }
                this.lastClicked = selectable;
                return;
            }
            for (int i = 0; i < this.listBox.countItems(); i++) {
                if (getSelectable(i) == this.lastClicked) {
                    this.listBox.selectItemIndex(i);
                    return;
                }
            }
            return;
        }
        this.lastClicked = null;
    }

    public final Selectable getSelectable(int i) {
        return ((SelectableItem) ((SelectableItemWrapper) this.listBox.getItem(i)).listItem).getSelectable();
    }

    public static final class SelectableItemWrapper extends SmoothHeightListItem {
        public final ListItem listItem;

        public SelectableItemWrapper(ListItem listItem) {
            super(null);
            this.listItem = listItem;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            this.listItem.draw(z, i, i2, i3, i4, i5, skin);
        }

        @Override // info.flowersoft.theotown.ui.listitem.SmoothHeightListItem
        public int getTargetHeight(boolean z) {
            return this.listItem.getHeight(z);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            this.listItem.onClick(i, i2);
        }

        public ListItem getInnerItem() {
            return this.listItem;
        }
    }

    public class SelectableItem extends ListItem {
        public final Selectable selectable;
        public int width;

        public SelectableItem(Selectable selectable) {
            super(null);
            this.selectable = selectable;
        }

        public Selectable getSelectable() {
            return this.selectable;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(z, i, i2, i3, i4, i5, skin);
            this.width = i4;
            Selectable selectable = this.selectable;
            selectable.drawPreview(skin.engine, ((i4 - selectable.getPreviewWidth()) / 2) + i2, (i3 + 2) - (((this.selectable.getPreviewHeight() - i5) + 4) / 2));
            skin.engine.setColor(Colors.WHITE);
            if (this.selectable.countFrames() > 1) {
                float f = i3 + ((i5 - 26) / 2);
                skin.engine.drawImage(Resources.IMAGE_WORLD, i2 + 2, f, Resources.ICON_PREVIOUS);
                skin.engine.drawImage(Resources.IMAGE_WORLD, (i2 + i4) - 28, f, Resources.ICON_NEXT);
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return Math.min(64, this.selectable.getPreviewHeight()) + 4;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            if (this.selectable.countFrames() == 1 || (i > 28 && i < this.width - 28)) {
                Selector.this.buildPanel(true);
                return;
            }
            if (i > 28) {
                this.selectable.nextFrame();
                Selector.this.buildPanel(false);
            } else if (i >= this.width - 28) {
                if (Selector.this.lastClicked != this.selectable) {
                    Selector.this.buildPanel(false);
                }
            } else {
                this.selectable.prevFrame();
                Selector.this.buildPanel(false);
            }
        }
    }
}
