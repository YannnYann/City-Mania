package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class FireDangerAttribute extends Attribute {
    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateFirstTime(HappinessContext happinessContext) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public FireDangerAttribute() {
        super(false, false, 2889);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        Building building = happinessContext.building;
        if (building != null && !isBurnable(building)) {
            return -1.0f;
        }
        float f = (1.0f - happinessContext.influences[InfluenceType.FIREDEPARTMENT.ordinal()]) * 1.0f;
        return f * f * (1.0f - ((float) Math.exp(happinessContext.people * (-2.0E-4f)))) * 0.1f;
    }

    public final boolean isBurnable(Building building) {
        return building.getDraft().destroyable && !building.inConstruction() && building.getCurrentPeople() > 1;
    }
}
