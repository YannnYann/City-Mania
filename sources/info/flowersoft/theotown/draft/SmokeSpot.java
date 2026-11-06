package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class SmokeSpot {
    public Color color;
    public SmokeDraft draft;
    public int[] targetFrames;
    public int x;
    public int y;

    public SmokeSpot(SmokeDraft smokeDraft, int i, int i2, Color color, int[] iArr) {
        this.draft = smokeDraft;
        this.x = i;
        this.y = i2;
        this.color = color;
        this.targetFrames = iArr;
    }

    public boolean isTargeted(int i) {
        if (i < 0 || this.targetFrames == null) {
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
