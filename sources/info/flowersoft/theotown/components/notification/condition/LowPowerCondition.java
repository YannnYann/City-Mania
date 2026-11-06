package info.flowersoft.theotown.components.notification.condition;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultPower;

/* JADX INFO: loaded from: classes4.dex */
public class LowPowerCondition extends Condition {
    public final float triggerRatio;
    public boolean triggered;
    public final float untriggerRatio;

    public LowPowerCondition(City city, float f, float f2) {
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
        DefaultPower defaultPower = (DefaultPower) this.city.getComponent(5);
        float fMax = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i = 0; i < defaultPower.countNetworks(); i++) {
            fMax = Math.max(fMax, defaultPower.usageRatio(i));
        }
        if (fMax >= this.triggerRatio || (this.triggered && fMax >= this.untriggerRatio)) {
            z = true;
        }
        this.triggered = z;
        return z;
    }
}
