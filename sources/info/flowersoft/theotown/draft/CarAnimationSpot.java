package info.flowersoft.theotown.draft;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class CarAnimationSpot {
    public Color color;
    public AnimationDraft draft;
    public int[] frames;
    public boolean important;
    public IntList pos;

    public CarAnimationSpot(AnimationDraft animationDraft, IntList intList, boolean z, int[] iArr, Color color) {
        this.draft = animationDraft;
        this.pos = intList;
        this.important = z;
        this.frames = iArr;
        this.color = color;
    }

    public boolean targetsFrame(int i) {
        if (this.frames == null) {
            return true;
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.frames;
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
