package io.blueflower.stapel2d.gui;

import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class MultiSensitiveGadget extends Gadget {
    public List<TouchPoint> activeTouchPoints;

    public void onNewTouchPoint(TouchPoint touchPoint) {
    }

    public void onRemoveTouchPoint(TouchPoint touchPoint) {
    }

    public MultiSensitiveGadget(Gadget gadget) {
        super(gadget);
        this.activeTouchPoints = new ArrayList();
    }

    public MultiSensitiveGadget(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.activeTouchPoints = new ArrayList();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public CursorType updateTouchInput(TouchUpdate touchUpdate) {
        TouchPoint mousePos;
        TouchPoint addedTouchPoint = touchUpdate.getAddedTouchPoint();
        TouchPoint removedTouchPoint = touchUpdate.getRemovedTouchPoint();
        CursorType cursor = (touchUpdate.getAddedTouchPoint() == null && touchUpdate.getRemovedTouchPoint() == null && (mousePos = touchUpdate.getMousePos()) != null && this.rect.contains((float) ((int) mousePos.getX()), (float) ((int) mousePos.getY()))) ? getCursor() : null;
        if (addedTouchPoint != null && this.rect.contains(Math.round(addedTouchPoint.getX()), Math.round(addedTouchPoint.getY())) && !this.activeTouchPoints.contains(addedTouchPoint)) {
            this.activeTouchPoints.add(addedTouchPoint);
            onNewTouchPoint(addedTouchPoint);
        }
        if (removedTouchPoint != null && this.activeTouchPoints.contains(removedTouchPoint)) {
            this.activeTouchPoints.remove(removedTouchPoint);
            onRemoveTouchPoint(removedTouchPoint);
        }
        int i = 0;
        while (i < this.activeTouchPoints.size()) {
            TouchPoint touchPoint = this.activeTouchPoints.get(i);
            if (!touchPoint.isValid()) {
                onRemoveTouchPoint(touchPoint);
                this.activeTouchPoints.remove(i);
                i--;
            }
            i++;
        }
        return cursor;
    }

    public List<TouchPoint> getTouchPoints() {
        return this.activeTouchPoints;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void flush() {
        this.activeTouchPoints.clear();
        super.flush();
    }
}
