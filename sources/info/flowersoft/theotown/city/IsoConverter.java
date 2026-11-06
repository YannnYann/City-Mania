package info.flowersoft.theotown.city;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.util.ScreenRect;

/* JADX INFO: loaded from: classes4.dex */
public class IsoConverter {
    public ScreenRect view;
    public float absShiftX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float absShiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    public float absScaleX = 1.0f;
    public float absScaleY = 1.0f;

    public ScreenRect getView() {
        return this.view;
    }

    public void setView(ScreenRect screenRect) {
        this.view = screenRect;
    }

    public float halfWidth() {
        return this.view.getWidth() / 2.0f;
    }

    public float halfHeight() {
        return this.view.getHeight() / 2.0f;
    }

    public int absToIsoX(int i, int i2) {
        return (int) Math.floor(((((i - halfWidth()) / this.absScaleX) - this.absShiftX) / 32.0f) + ((((i2 - halfHeight()) / this.absScaleY) - this.absShiftY) / 16.0f));
    }

    public int absToIsoY(int i, int i2) {
        return (int) Math.floor(((((i - halfWidth()) / this.absScaleX) - this.absShiftX) / 32.0f) - ((((i2 - halfHeight()) / this.absScaleY) - this.absShiftY) / 16.0f));
    }

    public int isoToAbsX(int i, int i2) {
        return Math.round((float) (Math.floor(this.absScaleX * (((i + i2) * 32) / 2.0f)) + Math.floor(this.absScaleX * this.absShiftX) + ((double) halfWidth())));
    }

    public int isoToAbsY(int i, int i2) {
        return Math.round((float) (Math.floor(this.absScaleY * (((i - i2) * 16) / 2.0f)) + Math.floor(this.absScaleX * this.absShiftY) + ((double) halfHeight())));
    }

    public float absToIsoX(float f, float f2) {
        return ((((f - halfWidth()) / this.absScaleX) - this.absShiftX) / 32.0f) + ((((f2 - halfHeight()) / this.absScaleY) - this.absShiftY) / 16.0f);
    }

    public float absToIsoY(float f, float f2) {
        return ((((f - halfWidth()) / this.absScaleX) - this.absShiftX) / 32.0f) - ((((f2 - halfHeight()) / this.absScaleY) - this.absShiftY) / 16.0f);
    }

    public float isoToAbsX(float f, float f2) {
        return (this.absScaleX * ((((f + f2) * 32.0f) / 2.0f) + this.absShiftX)) + halfWidth();
    }

    public float isoToAbsY(float f, float f2) {
        return (this.absScaleY * ((((f - f2) * 16.0f) / 2.0f) + this.absShiftY)) + halfHeight();
    }

    public float getAbsShiftX() {
        return this.absShiftX;
    }

    public float getAbsShiftY() {
        return this.absShiftY;
    }

    public void setAbsShift(float f, float f2) {
        this.absShiftX = f;
        this.absShiftY = f2;
    }

    public float getAbsScaleX() {
        return this.absScaleX;
    }

    public float getAbsScaleY() {
        return this.absScaleY;
    }

    public void setAbsScale(float f, float f2) {
        this.absScaleX = f;
        this.absScaleY = f2;
    }
}
