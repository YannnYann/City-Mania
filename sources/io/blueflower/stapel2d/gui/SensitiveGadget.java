package io.blueflower.stapel2d.gui;

import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SensitiveGadget extends Gadget {
    public boolean greedy;
    public boolean looseTPOnFocusLoss;
    public float mouseHoverX;
    public float mouseHoverY;
    public int mouseHoveredFrame;
    public boolean touchThrough;
    public TouchPoint tp;

    public SensitiveGadget(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.mouseHoveredFrame = -1;
        this.tp = null;
    }

    public boolean isLooseTPOnFocusLoss() {
        return this.looseTPOnFocusLoss;
    }

    public void setLooseTPOnFocusLoss(boolean z) {
        this.looseTPOnFocusLoss = z;
    }

    public void setGreedy(boolean z) {
        this.greedy = z;
    }

    public void setTouchThrough(boolean z) {
        this.touchThrough = z;
    }

    public TouchPoint getTouchPoint() {
        return this.tp;
    }

    public boolean isMouseHovered() {
        return this.mouseHoveredFrame == this.skin.engine.getFrame();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public CursorType updateTouchInput(TouchUpdate touchUpdate) {
        CursorType cursor;
        TouchPoint mousePos;
        CursorType cursorTypeUpdateTouchInput;
        TouchPoint touchPoint = this.tp;
        if (touchPoint != null && !touchPoint.isValid()) {
            onRelease();
            this.tp = null;
        }
        if (touchUpdate.getAddedTouchPoint() == null && touchUpdate.getRemovedTouchPoint() == null && (mousePos = touchUpdate.getMousePos()) != null && this.rect.contains((int) mousePos.getX(), (int) mousePos.getY())) {
            cursor = getCursor();
            for (int size = this.children.size() - 1; size >= 0; size--) {
                Gadget gadget = this.children.get(size);
                if (gadget.isVisible() && (cursorTypeUpdateTouchInput = gadget.updateTouchInput(touchUpdate)) != null) {
                    cursor = cursorTypeUpdateTouchInput;
                }
            }
        } else {
            cursor = null;
        }
        this.mouseHoveredFrame = -1;
        TouchPoint addedTouchPoint = touchUpdate.getAddedTouchPoint();
        if (addedTouchPoint != null && this.rect.contains((int) addedTouchPoint.getX(), (int) addedTouchPoint.getY())) {
            for (int size2 = this.children.size() - 1; size2 >= 0 && size2 < this.children.size(); size2--) {
                Gadget gadget2 = this.children.get(size2);
                if (gadget2.isVisible()) {
                    gadget2.updateTouchInput(touchUpdate);
                }
            }
            TouchPoint addedTouchPoint2 = touchUpdate.getAddedTouchPoint();
            if (!this.greedy) {
                addedTouchPoint = addedTouchPoint2;
            }
            if (this.tp == null && addedTouchPoint != null && addedTouchPoint.isPrimary()) {
                this.tp = addedTouchPoint;
                onPress();
            }
            if (!this.touchThrough) {
                touchUpdate.clearAddedTouchPoint();
            }
        } else if (touchUpdate.getMousePos() != null && this.rect.contains((int) touchUpdate.getMousePos().getX(), (int) touchUpdate.getMousePos().getY())) {
            if (this.tp == null) {
                this.mouseHoveredFrame = this.skin.engine.getFrame();
                this.mouseHoverX = touchUpdate.getMousePos().getX();
                this.mouseHoverY = touchUpdate.getMousePos().getY();
            }
            for (int size3 = this.children.size() - 1; size3 >= 0 && size3 < this.children.size(); size3--) {
                Gadget gadget3 = this.children.get(size3);
                if (gadget3.isVisible()) {
                    gadget3.updateTouchInput(touchUpdate);
                }
            }
        }
        TouchPoint touchPoint2 = this.tp;
        if (touchPoint2 != null && (touchPoint2.equals(touchUpdate.getRemovedTouchPoint()) || (this.looseTPOnFocusLoss && !this.rect.contains((int) this.tp.getX(), (int) this.tp.getY())))) {
            onRelease();
            if (this.rect.contains((int) this.tp.getX(), (int) this.tp.getY())) {
                performOnClick();
            }
            this.tp = null;
        }
        if (touchUpdate.getRemovedTouchPoint() != null) {
            for (int i = 0; i < this.children.size(); i++) {
                this.children.get(i).updateTouchInput(touchUpdate);
            }
        }
        return cursor;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        if (this.tp == null || !this.looseTPOnFocusLoss || this.rect.contains((int) r0.getX(), (int) this.tp.getY())) {
            return;
        }
        onRelease();
        if (this.rect.contains((int) this.tp.getX(), (int) this.tp.getY())) {
            performOnClick();
        }
        this.tp = null;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void flush() {
        super.flush();
        this.tp = null;
    }
}
