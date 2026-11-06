package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class SupplyHappiness extends Attribute {
    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateFirstTime(HappinessContext happinessContext) {
        return 1.0f;
    }

    public SupplyHappiness() {
        super(true, false, 1456);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        float f;
        Building building = happinessContext.building;
        if (building == null) {
            return -1.0f;
        }
        if (building.hasNeededRoad()) {
            f = 1.0f;
        } else {
            happinessContext.survey.properties[2].assume(happinessContext.building, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            f = 0.0f;
        }
        if (!happinessContext.building.hasPower()) {
            f *= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            happinessContext.survey.properties[0].assume(happinessContext.building, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        if (happinessContext.building.hasWater()) {
            return f;
        }
        float f2 = f * UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        happinessContext.survey.properties[1].assume(happinessContext.building, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        return f2;
    }
}
