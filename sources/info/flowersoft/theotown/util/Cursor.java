package info.flowersoft.theotown.util;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes4.dex */
public class Cursor {
    public float startX;
    public float startY;
    public float x;
    public float y;

    public Cursor() {
    }

    public Cursor(float f, float f2) {
        resetTo(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public void resetTo(float f, float f2) {
        this.x = f;
        this.y = f2;
        this.startX = f;
        this.startY = f2;
    }

    public void move(float f, float f2) {
        this.x += f;
        this.y += f2;
    }

    public void moveX(float f) {
        this.x += f;
    }

    public void moveY(float f) {
        this.y += f;
    }

    public float getX() {
        return this.x;
    }

    public float getY() {
        return this.y;
    }

    public void resetX() {
        this.x = this.startX;
    }

    public void resetY() {
        this.y = this.startY;
    }

    public void reset() {
        this.x = this.startX;
        this.y = this.startY;
    }

    public void resetTo() {
        resetTo(this.x, this.y);
    }

    public void resetTo(Cursor cursor) {
        resetTo(cursor.x, cursor.y);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Cursor m2409clone() {
        Cursor cursor = new Cursor(this.startX, this.startY);
        cursor.move(this.x, this.y);
        return cursor;
    }

    public String toString() {
        return "Cursor at (" + this.x + "|" + this.y + ")";
    }
}
