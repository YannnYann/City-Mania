package io.blueflower.stapel2d.touch;

import com.badlogic.gdx.utils.TimeUtils;

/* JADX INFO: loaded from: classes5.dex */
public class TouchPoint implements Cloneable {
    public int button;
    public float firstX;
    public float firstY;
    public TouchPoint ghost;
    public int id;
    public float lastX;
    public float lastY;
    public boolean mouse;
    public boolean primary;
    public long timestamp;
    public int updateCounter;
    public boolean valid;
    public float x;
    public float y;

    public TouchPoint() {
        this.valid = true;
    }

    public TouchPoint(int i, boolean z, float f, float f2, int i2, boolean z2) {
        this.valid = true;
        this.id = i;
        this.primary = z;
        this.firstX = f;
        this.firstY = f2;
        this.x = f;
        this.y = f2;
        this.lastX = f;
        this.lastY = f2;
        this.button = i2;
        this.mouse = z2;
        this.timestamp = TimeUtils.millis();
    }

    public int getID() {
        return this.id;
    }

    public boolean isPrimary() {
        return this.primary;
    }

    public void setPosition(float f, float f2) {
        this.x = f;
        this.y = f2;
    }

    public void setLastPosition(float f, float f2) {
        this.lastX = f;
        this.lastY = f2;
    }

    public float getFirstX() {
        return this.firstX;
    }

    public float getFirstY() {
        return this.firstY;
    }

    public float getX() {
        return this.x;
    }

    public float getY() {
        return this.y;
    }

    public float getXSpeed() {
        return this.x - this.lastX;
    }

    public float getYSpeed() {
        return this.y - this.lastY;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getButton() {
        return this.button;
    }

    public boolean isMouse() {
        return this.mouse;
    }

    public void fillWith(TouchPoint touchPoint) {
        this.id = touchPoint.id;
        this.primary = touchPoint.primary;
        this.firstX = touchPoint.firstX;
        this.firstY = touchPoint.firstY;
        this.x = touchPoint.x;
        this.y = touchPoint.y;
        this.lastX = touchPoint.lastX;
        this.lastY = touchPoint.lastY;
        this.button = touchPoint.button;
        this.mouse = touchPoint.mouse;
        this.timestamp = touchPoint.timestamp;
        this.updateCounter = touchPoint.updateCounter;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public TouchPoint m2756clone() {
        TouchPoint touchPoint = new TouchPoint();
        touchPoint.fillWith(this);
        return touchPoint;
    }

    public boolean equals(Object obj) {
        if (obj instanceof TouchPoint) {
            TouchPoint touchPoint = (TouchPoint) obj;
            if (touchPoint.getID() == this.id && touchPoint.getTimestamp() == this.timestamp) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        String str = "TouchPoint " + this.id + " at ";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("(x:");
        sb.append(this.x);
        sb.append(",y:");
        sb.append(this.y);
        sb.append(",xs:");
        sb.append(getXSpeed());
        sb.append(",ys:");
        sb.append(getYSpeed());
        sb.append(",btn:");
        sb.append(this.button);
        sb.append(",");
        sb.append(this.mouse ? "mouse" : "touch");
        sb.append(") ");
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(string);
        sb2.append("which is ");
        sb2.append(this.primary ? "primary" : "not primary");
        return sb2.toString();
    }

    public TouchPoint getGhost() {
        return this.ghost;
    }

    public void setGhost(TouchPoint touchPoint) {
        this.ghost = touchPoint;
    }

    public void setInvalid() {
        this.valid = false;
    }

    public boolean isValid() {
        return this.valid;
    }
}
