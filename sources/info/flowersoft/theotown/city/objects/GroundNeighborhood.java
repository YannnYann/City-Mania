package info.flowersoft.theotown.city.objects;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.GroundDraft;

/* JADX INFO: loaded from: classes4.dex */
public class GroundNeighborhood {
    public Ground centerGround;
    public final Ground[] grounds;
    public float maxWeight;
    public int size;
    public final float[] weights;

    public GroundNeighborhood(int i) {
        this.grounds = new Ground[i];
        this.weights = new float[i];
    }

    public int getSize() {
        return this.size;
    }

    public Ground getGround(int i) {
        return this.grounds[i];
    }

    public float getWeight(int i) {
        return this.weights[i];
    }

    public float getMaxWeight() {
        return this.maxWeight;
    }

    public void reset(Ground ground) {
        this.size = 0;
        this.maxWeight = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.centerGround = ground;
    }

    public void addGround(Ground ground, float f) {
        GroundDraft draft = ground.getDraft();
        if (draft == this.centerGround.getDraft() || !draft.blending) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = this.size;
            if (i < i2) {
                if (this.grounds[i].getDraft() == ground.getDraft()) {
                    float[] fArr = this.weights;
                    float f2 = fArr[i] + f;
                    fArr[i] = f2;
                    this.maxWeight = Math.max(this.maxWeight, f2);
                    return;
                }
                i++;
            } else {
                this.weights[i2] = 1.0f;
                Ground[] groundArr = this.grounds;
                this.size = i2 + 1;
                groundArr[i2] = ground;
                this.maxWeight = Math.max(this.maxWeight, 1.0f);
                return;
            }
        }
    }
}
