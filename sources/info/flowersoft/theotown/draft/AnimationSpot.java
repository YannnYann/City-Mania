package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class AnimationSpot {
    public Color color;
    public int days;
    public int daysTotal;
    public AnimationDraft draft;
    public int flags;
    public int frameShift;
    public float nightLightProbability;
    public boolean rotationAware;
    public int seed;
    public int shift;
    public int startDay;
    public int[] targetFrames;
    public int x;
    public int y;

    public AnimationSpot(AnimationDraft animationDraft, int i, int i2, int i3, int i4, int[] iArr, int i5) {
        this.draft = animationDraft;
        this.x = i;
        this.y = i2;
        this.shift = i3;
        this.flags = i4;
        this.targetFrames = iArr;
        this.seed = i5;
    }

    public boolean isTargeted(int i) {
        if (this.targetFrames == null) {
            return true;
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.targetFrames;
            if (i2 >= iArr.length) {
                return false;
            }
            if (iArr[i2] == i) {
                return true;
            }
            i2++;
        }
    }
}
