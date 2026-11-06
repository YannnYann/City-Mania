package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class CrimeAttribute extends Attribute {
    public int educationHighIndex;
    public int educationLowIndex;

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateFirstTime(HappinessContext happinessContext) {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public CrimeAttribute() {
        super(false, false, 0);
        setAdjustRatio(0.02f);
        this.educationLowIndex = AttributeFactory.getIndex((Class<? extends Attribute>) EducationLowAttribute.class);
        this.educationHighIndex = AttributeFactory.getIndex((Class<? extends Attribute>) EducationHighAttribute.class);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        Building building = happinessContext.building;
        if (building != null && !isCrimeable(building)) {
            return -1.0f;
        }
        float f = happinessContext.influences[InfluenceType.POLICE.ordinal()];
        float inRangeCoverage = happinessContext.influences[InfluenceType.EDUCATION_LOW.ordinal()] * happinessContext.coverageCalculator.getInRangeCoverage(0);
        float inRangeCoverage2 = happinessContext.influences[InfluenceType.EDUCATION_HIGH.ordinal()] * happinessContext.coverageCalculator.getInRangeCoverage(1);
        ConcreteAttributeContainer concreteAttributeContainer = happinessContext.attributeContainer;
        float f2 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (concreteAttributeContainer != null) {
            inRangeCoverage = Math.max(concreteAttributeContainer.getValues()[this.educationLowIndex], UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            inRangeCoverage2 = Math.max(happinessContext.attributeContainer.getValues()[this.educationHighIndex], UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        if (happinessContext.zone.base != Zones.getInstance().RESIDENTIAL0) {
            inRangeCoverage2 = 0.0f;
        } else {
            f2 = inRangeCoverage;
        }
        float f3 = (1.0f - f) * 1.0f;
        return f3 * f3 * (1.0f - ((float) Math.exp(happinessContext.people * (-0.001f)))) * (1.0f - ((f2 + inRangeCoverage2) * 0.25f)) * 0.1f;
    }

    public final boolean isCrimeable(Building building) {
        return building.getDraft().destroyable && !building.inConstruction() && building.getCurrentPeople() > 1;
    }
}
