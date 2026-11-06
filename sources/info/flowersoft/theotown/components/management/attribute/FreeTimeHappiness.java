package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class FreeTimeHappiness extends Attribute {
    public int parkIndex;
    public int sportIndex;

    public FreeTimeHappiness() {
        super(false, false, 2803);
        this.parkIndex = AttributeFactory.getIndex((Class<? extends Attribute>) ParkAttribute.class);
        this.sportIndex = AttributeFactory.getIndex((Class<? extends Attribute>) SportAttribute.class);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        float f;
        float f2;
        float fMin;
        if (happinessContext.building != null) {
            f = happinessContext.attributeContainer.getValues()[this.parkIndex];
            f2 = happinessContext.attributeContainer.getValues()[this.sportIndex];
        } else {
            f = happinessContext.influences[InfluenceType.PARK.ordinal()];
            f2 = happinessContext.influences[InfluenceType.SPORT.ordinal()];
        }
        int i = happinessContext.level;
        if (i == 0) {
            fMin = (f * 0.5f) + 0.5f;
        } else if (i == 1) {
            fMin = (f * 0.5f) + (Math.min(f, f2) * 0.5f);
        } else {
            fMin = i != 2 ? 0.0f : Math.min(f, f2);
        }
        float fMin2 = Math.min(fMin, 1.0f);
        Building building = happinessContext.building;
        if (building != null && fMin2 < 0.5f) {
            happinessContext.survey.properties[3].assume(building, 1.0f - ((1.0f - f) * UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
            happinessContext.survey.properties[4].assume(happinessContext.building, 1.0f - ((1.0f - f2) * UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
        }
        return fMin2;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        float f;
        float f2;
        float f3;
        if (happinessContext.building != null) {
            f = happinessContext.attributeContainer.getValues()[this.parkIndex];
        } else {
            f = happinessContext.influences[InfluenceType.PARK.ordinal()];
        }
        int i = happinessContext.level;
        if (i == 0) {
            f2 = 0.5f;
            f3 = 0.5f;
        } else if (i != 1) {
            f3 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            if (i != 2) {
                f2 = 0.0f;
            } else {
                f2 = 0.0f;
                f3 = 1.0f;
            }
        } else {
            f2 = 0.25f;
            f3 = 0.5f;
        }
        float fMin = Math.min((f3 * f) + f2, 1.0f);
        float fGrowingExpectation = Attribute.growingExpectation(happinessContext.density, 4.0f, 16.0f);
        float f4 = ((fMin * fGrowingExpectation) + 1.0f) - fGrowingExpectation;
        Building building = happinessContext.building;
        if (building != null && f4 < 0.5f) {
            happinessContext.survey.properties[3].assume(building, 1.0f - (f3 * (1.0f - f)));
        }
        return f4;
    }
}
