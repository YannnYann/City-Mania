package info.flowersoft.theotown.city.objects;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.PedestrianDraft;

/* JADX INFO: loaded from: classes4.dex */
public final class Pedestrian {
    public float age;
    public short distance;
    public PedestrianDraft draft;
    public int frame;
    public int innerCoordsSXSYEXEY;
    public short innerXY;
    public int parcelDXDYXY;
    public float progress;
    public short seed;

    public void setup(PedestrianDraft pedestrianDraft, int i, int i2, int i3, float f) {
        this.draft = pedestrianDraft;
        this.seed = (short) (i & 32767);
        setParcel(i2, i3, 0, 0);
        this.age = f;
        int[] iArr = pedestrianDraft.frames;
        this.frame = iArr[this.seed % iArr.length];
    }

    public PedestrianDraft getDraft() {
        return this.draft;
    }

    public int getFrame() {
        return this.frame;
    }

    public float getProgress() {
        return this.progress;
    }

    public void setProgress(float f) {
        this.progress = f;
    }

    public float getAge() {
        return this.age;
    }

    public void setAge(float f) {
        this.age = f;
    }

    public int getParcelX() {
        return (this.parcelDXDYXY >>> 13) & 8191;
    }

    public int getParcelY() {
        return this.parcelDXDYXY & 8191;
    }

    public int getNextParcelX() {
        return getParcelX() + (this.parcelDXDYXY >> 29);
    }

    public int getNextParcelY() {
        return getParcelY() + ((this.parcelDXDYXY << 3) >> 29);
    }

    public int getSeed() {
        return this.seed;
    }

    public float getInnerX() {
        return ((this.innerXY >> 8) & 255) / 255.0f;
    }

    public float getInnerY() {
        return (this.innerXY & 255) / 255.0f;
    }

    public void setInner(float f, float f2) {
        this.innerXY = (short) (((Math.round(f * 255.0f) & 255) << 8) | (Math.round(f2 * 255.0f) & 255));
    }

    public float getStartInnerX() {
        return (this.innerCoordsSXSYEXEY >> 24) / 32.0f;
    }

    public float getStartInnerY() {
        return ((this.innerCoordsSXSYEXEY << 8) >> 24) / 32.0f;
    }

    public float getEndInnerX() {
        return ((this.innerCoordsSXSYEXEY << 16) >> 24) / 32.0f;
    }

    public float getEndInnerY() {
        return ((this.innerCoordsSXSYEXEY << 24) >> 24) / 32.0f;
    }

    public void setInnerCoords(float f, float f2, float f3, float f4) {
        this.innerCoordsSXSYEXEY = (Math.round(f * 32.0f) << 24) | ((Math.round(f2 * 32.0f) & 255) << 16) | ((Math.round(f3 * 32.0f) & 255) << 8) | (Math.round(f4 * 32.0f) & 255);
    }

    public float getDistance() {
        return this.distance / 255.0f;
    }

    public void setDistance(float f) {
        this.distance = (short) Math.round(f * 255.0f);
    }

    public void walkTo(int i, int i2) {
        int nextParcelX = getNextParcelX();
        int nextParcelY = getNextParcelY();
        setParcel(nextParcelX, nextParcelY, i - nextParcelX, i2 - nextParcelY);
        this.progress = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final void setParcel(int i, int i2, int i3, int i4) {
        this.parcelDXDYXY = (i << 13) | (i3 << 29) | ((i4 & 7) << 26) | i2;
    }
}
