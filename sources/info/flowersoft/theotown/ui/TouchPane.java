package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.MultiSensitiveGadget;
import io.blueflower.stapel2d.touch.TouchPoint;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TouchPane extends MultiSensitiveGadget {
    public int coordsType;
    public boolean pendingClick;
    public boolean pendingTwoFingerClick;

    public abstract void clickAt(int i, int i2, TouchPoint touchPoint);

    public abstract void twoFingerClick();

    public TouchPane(int i, Gadget gadget) {
        super(gadget);
        this.pendingClick = false;
        this.pendingTwoFingerClick = false;
        this.coordsType = i;
    }

    public TouchPane(int i, int i2, int i3, int i4, int i5, Gadget gadget) {
        super(i2, i3, i4, i5, gadget);
        this.pendingClick = false;
        this.pendingTwoFingerClick = false;
        this.coordsType = i;
    }

    public float getWidthRatio() {
        int i = this.coordsType;
        if (i == 0) {
            return this.skin.engine.getWidthRatio();
        }
        if (i == 1) {
            return this.master.getWidthRatio();
        }
        throw new IllegalStateException("Coords type " + this.coordsType + " is not defined");
    }

    public float getHeightRatio() {
        int i = this.coordsType;
        if (i == 0) {
            return this.skin.engine.getHeightRatio();
        }
        if (i == 1) {
            return this.master.getHeightRatio();
        }
        throw new IllegalStateException("Coords type " + this.coordsType + " is not defined");
    }

    @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget
    public void onNewTouchPoint(TouchPoint touchPoint) {
        super.onNewTouchPoint(touchPoint);
        boolean z = false;
        this.pendingTwoFingerClick = this.pendingClick && getTouchPoints().size() == 2;
        if (getTouchPoints().size() == 1 && getTouchPoints().get(0) == touchPoint) {
            z = true;
        }
        this.pendingClick = z;
    }

    @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget
    public void onRemoveTouchPoint(TouchPoint touchPoint) {
        float widthRatio;
        float heightRatio;
        if (touchPoint.isPrimary() && TimeUtils.millis() - touchPoint.getTimestamp() <= 400 && this.pendingClick) {
            this.pendingClick = false;
            Engine engine = this.skin.engine;
            int i = this.coordsType;
            if (i == 0) {
                widthRatio = engine.getWidthRatio();
                heightRatio = engine.getHeightRatio();
            } else if (i == 1) {
                widthRatio = this.master.getWidthRatio();
                heightRatio = this.master.getHeightRatio();
            } else {
                throw new IllegalStateException("Coords type " + this.coordsType + " is not defined");
            }
            float x = (touchPoint.getX() - touchPoint.getFirstX()) * this.master.getWidthRatio();
            float y = (touchPoint.getY() - touchPoint.getFirstY()) * this.master.getHeightRatio();
            if (Math.sqrt((x * x) + (y * y)) <= (touchPoint.isMouse() ? 1 : 20)) {
                clickAt(Math.round(touchPoint.getX() * widthRatio) - getAbsoluteX(), Math.round(touchPoint.getY() * heightRatio) - getAbsoluteY(), touchPoint);
                return;
            }
            return;
        }
        if (this.pendingTwoFingerClick && TimeUtils.millis() - touchPoint.getTimestamp() <= 400) {
            float x2 = (touchPoint.getX() - touchPoint.getFirstX()) * this.master.getWidthRatio();
            float y2 = (touchPoint.getY() - touchPoint.getFirstY()) * this.master.getHeightRatio();
            if (Math.sqrt((x2 * x2) + (y2 * y2)) > (touchPoint.isMouse() ? 1 : 20)) {
                this.pendingTwoFingerClick = false;
            }
            if (this.pendingTwoFingerClick && getTouchPoints().isEmpty()) {
                this.pendingClick = false;
                this.pendingTwoFingerClick = false;
                twoFingerClick();
                return;
            }
            return;
        }
        this.pendingClick = false;
        this.pendingTwoFingerClick = false;
    }
}
