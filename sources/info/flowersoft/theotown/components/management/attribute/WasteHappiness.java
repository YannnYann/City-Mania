package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class WasteHappiness extends Attribute {
    public WasteHappiness() {
        super(true, true, 1557, Resources.ICON_WASTE_DISPOSAL);
        setAdjustRatio(0.1f, 0.02f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        if (happinessContext.building != null) {
            if (happinessContext.city.isUber()) {
                return 1.0f;
            }
            if (happinessContext.building.getNeededAmount(3) > 0) {
                if (happinessContext.building.isFullOfWaste()) {
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
                return 1.0f;
            }
        }
        return -1.0f;
    }
}
