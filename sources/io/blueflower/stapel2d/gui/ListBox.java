package io.blueflower.stapel2d.gui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ListBox extends Panel {
    public boolean inMoveMode;
    public final List<ListItem> items;
    public boolean limitYScrolling;
    public boolean scrollSensitive;
    public int selectedItem;
    public float shiftY;
    public boolean showBorder;
    public boolean showSlider;
    public ListBoxSlider slider;
    public float speedY;
    public int visibilityOffsetBottom;
    public int visibilityOffsetTop;

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void removeAllChildren() {
        for (int size = this.children.size() - 1; size >= 0; size--) {
            Gadget gadget = this.children.get(size);
            if (gadget != this.slider) {
                removeChild(gadget);
            }
        }
    }

    public ListBox(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.items = new ArrayList();
        this.scrollSensitive = true;
        this.showSlider = true;
        this.limitYScrolling = true;
        this.slider = new ListBoxSlider(this);
        setPadding(2);
        this.showBorder = true;
    }

    public boolean isScrollSensitive() {
        return this.scrollSensitive;
    }

    public void setScrollSensitive(boolean z) {
        this.scrollSensitive = z;
    }

    public boolean isShowSlider() {
        return this.showSlider;
    }

    public void setShowSlider(boolean z) {
        this.showSlider = z;
    }

    public boolean isLimitYScrolling() {
        return this.limitYScrolling;
    }

    public void setLimitYScrolling(boolean z) {
        this.limitYScrolling = z;
    }

    public float getShiftY() {
        return this.shiftY;
    }

    public void setShiftY(float f) {
        this.shiftY = f;
    }

    public void setShiftToBottom() {
        setShiftY(-Math.max(getContentHeight() - getClientHeight(), 0));
    }

    public void addItem(ListItem listItem) {
        this.items.add(listItem);
    }

    public void addItem(ListItem listItem, int i) {
        this.items.add(i, listItem);
    }

    public ListItem getItem(int i) {
        return this.items.get(i);
    }

    public void removeItem(ListItem listItem) {
        this.items.remove(listItem);
    }

    public void removeItemIndex(int i) {
        this.items.remove(i);
    }

    public void removeAllItems() {
        this.items.clear();
    }

    public int getSelectedItemIndex() {
        return this.selectedItem;
    }

    public void selectItemIndex(int i) {
        int iMin = Math.min(Math.max(i, 0), this.items.size() - 1);
        this.selectedItem = iMin;
        int itemY = getItemY(iMin);
        if (itemY < 0) {
            this.shiftY -= itemY;
        } else if (this.items.get(this.selectedItem).getHeight(true) + itemY > this.height) {
            this.shiftY -= (((itemY + this.items.get(this.selectedItem).getHeight(true)) - this.height) + this.paddingTop) + this.paddingBottom;
        }
    }

    public int countItems() {
        return this.items.size();
    }

    public void setShowBorder(boolean z) {
        this.showBorder = z;
    }

    public boolean isShowBorder() {
        return this.showBorder;
    }

    public void setVisibilityOffsets(int i, int i2) {
        this.visibilityOffsetTop = i;
        this.visibilityOffsetBottom = i2;
    }

    public int getContentHeight() {
        int height;
        int i = 0;
        int i2 = 0;
        while (i < this.items.size()) {
            ListItem listItem = this.items.get(i);
            if (listItem.isVisible()) {
                height = listItem.getHeight(i == this.selectedItem);
            } else {
                height = 0;
            }
            i2 += height;
            i++;
        }
        return i2;
    }

    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        float f;
        float virtualHeight;
        float f2;
        int i3;
        boolean z;
        float f3;
        ListItem listItem;
        boolean z2;
        Engine engine = this.skin.engine;
        int i4 = i + this.x;
        int i5 = i2 + this.y;
        engine.setColor(Colors.WHITE);
        if (this.showBorder) {
            drawNinePatch(i, i2, this.skin.npListBox);
        }
        float clientHeight = this.shiftY;
        int contentHeight = getContentHeight();
        if (clientHeight > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            clientHeight -= 0.8f * clientHeight;
        } else if (contentHeight + clientHeight < getClientHeight()) {
            clientHeight += ((getClientHeight() - clientHeight) - Math.max(contentHeight, getClientHeight())) * 0.8f;
        }
        float f4 = clientHeight;
        GadgetFilter filter = getFilter();
        int iRound = Math.round(f4);
        float clipRectX = engine.getClipRectX();
        float clipRectY = engine.getClipRectY();
        float clipRectW = engine.getClipRectW();
        float clipRectH = engine.getClipRectH();
        boolean zIsClippingActive = engine.isClippingActive();
        if (zIsClippingActive) {
            f = clipRectY;
            virtualHeight = clipRectH;
            f2 = clipRectX;
        } else {
            clipRectW = engine.getVirtualWidth();
            f = 0.0f;
            virtualHeight = engine.getVirtualHeight();
            f2 = 0.0f;
        }
        float f5 = clipRectW;
        int i6 = iRound;
        int i7 = 0;
        while (i7 < this.items.size()) {
            ListItem listItem2 = this.items.get(i7);
            if (listItem2.isVisible()) {
                int height = listItem2.getHeight(i7 == this.selectedItem);
                int i8 = this.paddingTop;
                int iMax = Math.max((i5 + i8) - this.visibilityOffsetTop, i8 + i5 + i6);
                GadgetFilter gadgetFilter = filter;
                int iMin = Math.min(((this.height + i5) - this.paddingBottom) + this.visibilityOffsetBottom, this.paddingTop + i5 + i6 + height);
                int i9 = this.paddingTop;
                if (iMax > i5 + i9 + i6 + height || iMin < i9 + i5 + i6) {
                    i3 = contentHeight;
                    z = zIsClippingActive;
                    filter = gadgetFilter;
                    f3 = virtualHeight;
                } else {
                    engine.setClipRect(f2, f, f5, virtualHeight);
                    float f6 = virtualHeight;
                    engine.addClipRect(this.paddingLeft + i4, iMax, getClientWidth(), Math.max(iMin - iMax, 0));
                    int i10 = i4 + this.paddingLeft;
                    int i11 = this.paddingTop + i5 + i6;
                    if (gadgetFilter != null) {
                        i3 = contentHeight;
                        z = zIsClippingActive;
                        filter = gadgetFilter;
                        f3 = f6;
                        listItem = listItem2;
                        z2 = true;
                        filter.beforeDrawingItem(this, this.selectedItem == i7, i7, listItem, i10, i11);
                    } else {
                        i3 = contentHeight;
                        z = zIsClippingActive;
                        filter = gadgetFilter;
                        f3 = f6;
                        listItem = listItem2;
                        z2 = true;
                    }
                    listItem.draw(this.selectedItem == i7 ? z2 : false, i7, i10, i11, getClientWidth(), height, this.skin);
                    height = listItem.getHeight(i7 == this.selectedItem ? z2 : false);
                    if (filter != null) {
                        filter.afterDrawingItem(this, this.selectedItem == i7 ? z2 : false, i7, listItem, i10, i11);
                    }
                }
                i6 += height;
            } else {
                i3 = contentHeight;
                z = zIsClippingActive;
                f3 = virtualHeight;
            }
            i7++;
            virtualHeight = f3;
            contentHeight = i3;
            zIsClippingActive = z;
        }
        int i12 = contentHeight;
        boolean z3 = zIsClippingActive;
        float f7 = virtualHeight;
        engine.setClipRect(f2, f, f5, f7);
        engine.addClipRect(i4, i5, this.width, this.height);
        if (this.showSlider) {
            this.slider.setVisible(true);
            this.slider.update(this, i12, f4);
            this.slider.draw(i4 + this.paddingLeft, i5 + this.paddingTop);
        } else {
            this.slider.setVisible(false);
        }
        if (z3) {
            engine.setClipRect(f2, f, f5, f7);
        } else {
            engine.resetClipping();
        }
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public CursorType updateTouchInput(TouchUpdate touchUpdate) {
        super.updateTouchInput(touchUpdate);
        float scrollChange = touchUpdate.getScrollChange();
        TouchPoint mousePos = touchUpdate.getMousePos();
        if (scrollChange == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || !this.scrollSensitive || !this.rect.contains((int) mousePos.getX(), (int) mousePos.getY())) {
            return null;
        }
        CursorType cursor = getCursor();
        touchUpdate.clearScrollChange();
        this.shiftY -= scrollChange * 50.0f;
        int contentHeight = getContentHeight();
        float f = this.shiftY;
        if (f > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.shiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            return cursor;
        }
        if (f + contentHeight < getClientHeight()) {
            this.shiftY = Math.min(getClientHeight(), Math.min(getClientHeight(), contentHeight) - contentHeight);
        }
        return cursor;
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        int height;
        super.onUpdate();
        if (this.tp != null) {
            float heightRatio = this.skin.engine.getHeightRatio();
            if (!this.inMoveMode) {
                this.inMoveMode = Math.abs((this.tp.getY() - this.tp.getFirstY()) * heightRatio) > 5.0f;
            }
            if (this.inMoveMode) {
                this.shiftY += this.tp.getYSpeed() * heightRatio;
                this.speedY = this.tp.getYSpeed() * heightRatio;
                return;
            }
            return;
        }
        this.inMoveMode = false;
        int i = 0;
        int i2 = 0;
        while (i < this.items.size()) {
            ListItem listItem = this.items.get(i);
            if (listItem.isVisible()) {
                height = listItem.getHeight(i == this.selectedItem);
            } else {
                height = 0;
            }
            i2 += height;
            i++;
        }
        float f = this.shiftY;
        float f2 = this.speedY;
        this.shiftY = f + f2;
        float f3 = f2 * 0.9f;
        this.speedY = f3;
        if (Math.abs(f3) < 0.1f) {
            this.speedY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (this.limitYScrolling) {
            float f4 = this.shiftY;
            if (f4 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.shiftY = Math.max(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f4 - (0.7f * f4));
                return;
            }
            float f5 = i2;
            if (f4 + f5 < getClientHeight()) {
                this.shiftY = Math.min(getClientHeight(), this.shiftY + (((Math.min(getClientHeight(), i2) - this.shiftY) - f5) * 0.7f));
            }
        }
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        int iRound;
        int iRound2;
        int indexAt;
        int height;
        super.onClick();
        if (!this.tp.isPrimary() || TimeUtils.millis() - this.tp.getTimestamp() > 800) {
            return;
        }
        if (Math.max(Math.abs((this.tp.getX() - this.tp.getFirstX()) * this.master.getWidthRatio()), Math.abs((this.tp.getY() - this.tp.getFirstY()) * this.master.getHeightRatio())) <= 5.0f && (indexAt = getIndexAt((iRound = Math.round(this.tp.getX() * this.master.getWidthRatio())), (iRound2 = Math.round(this.tp.getY() * this.master.getHeightRatio())))) != -1) {
            int i = 0;
            int i2 = 0;
            while (i < indexAt) {
                if (this.items.get(i).isVisible()) {
                    height = this.items.get(i).getHeight(this.selectedItem == i);
                } else {
                    height = 0;
                }
                i2 += height;
                i++;
            }
            this.selectedItem = indexAt;
            this.items.get(indexAt).onClick((iRound - getAbsoluteX()) - this.paddingLeft, (((iRound2 - getAbsoluteY()) - Math.round(this.shiftY)) - i2) - this.paddingTop);
        }
    }

    public final int getItemY(int i) {
        int iRound = Math.round(this.shiftY);
        int i2 = 0;
        while (i2 < this.items.size()) {
            ListItem listItem = this.items.get(i2);
            if (listItem.isVisible()) {
                int height = listItem.getHeight(i2 == this.selectedItem);
                if (i2 == i) {
                    return iRound;
                }
                iRound += height;
            }
            i2++;
        }
        return 0;
    }

    public final int getIndexAt(int i, int i2) {
        int height;
        float clientHeight = this.shiftY;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= this.items.size()) {
                break;
            }
            ListItem listItem = this.items.get(i3);
            if (listItem.isVisible()) {
                height = listItem.getHeight(i3 == this.selectedItem);
            } else {
                height = 0;
            }
            i4 += height;
            i3++;
        }
        if (clientHeight > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            clientHeight -= 0.8f * clientHeight;
        } else if (i4 + clientHeight < getClientHeight()) {
            clientHeight += ((getClientHeight() - clientHeight) - Math.max(i4, getClientHeight())) * 0.8f;
        }
        int iRound = Math.round(clientHeight) + getAbsoluteY() + this.paddingTop;
        int i5 = 0;
        while (i5 < this.items.size()) {
            ListItem listItem2 = this.items.get(i5);
            if (listItem2.isVisible()) {
                int height2 = listItem2.getHeight(i5 == this.selectedItem);
                if (iRound <= i2 && i2 < iRound + height2) {
                    return i5;
                }
                iRound += height2;
            }
            i5++;
        }
        return -1;
    }
}
