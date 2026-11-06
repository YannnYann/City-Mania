package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;

/* JADX INFO: loaded from: classes4.dex */
public class PollutionAttribute extends Attribute {
    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateFirstTime(HappinessContext happinessContext) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public PollutionAttribute() {
        super(false, false, 3062);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.POLLUTION.ordinal()];
    }
}
