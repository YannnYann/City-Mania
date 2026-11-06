package info.flowersoft.theotown.components.notification.condition;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultWater;

/* JADX INFO: loaded from: classes4.dex */
public class LowWaterCondition extends Condition {
    public final float triggerRatio;
    public boolean triggered;
    public final float untriggerRatio;

    public LowWaterCondition(City city, float f, float f2) {
        super(city);
        this.triggerRatio = f;
        this.untriggerRatio = f2;
    }

    @Override // info.flowersoft.theotown.components.notification.condition.Condition, info.flowersoft.theotown.city.components.AbstractCondition
    public boolean evaluate() {
        boolean z = false;
        if (this.city.isUber()) {
            return false;
        }
        DefaultWater defaultWater = (DefaultWater) this.city.getComponent(8);
        float fMax = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i = 0; i < defaultWater.countNetworks(); i++) {
            fMax = Math.max(fMax, defaultWater.usageRatio(i));
        }
        if (fMax >= this.triggerRatio || (this.triggered && fMax >= this.untriggerRatio)) {
            z = true;
        }
        this.triggered = z;
        return z;
    }
}
