package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class PoliceHappiness extends Attribute {
    public int crimeIndex;

    public PoliceHappiness() {
        super(true, true, 2628, Resources.ICON_POLICE);
        this.crimeIndex = AttributeFactory.getIndex((Class<? extends Attribute>) CrimeAttribute.class);
        setAdjustRatio(0.1f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        if (happinessContext.building == null) {
            return -1.0f;
        }
        float f = happinessContext.influences[InfluenceType.POLICE.ordinal()];
        ConcreteAttributeContainer concreteAttributeContainer = happinessContext.attributeContainer;
        if (concreteAttributeContainer == null) {
            return (f * 0.5f) + 0.5f;
        }
        if (happinessContext.building != null) {
            float f2 = concreteAttributeContainer.getValues()[this.myIndex];
            if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                happinessContext.survey.properties[13].assume(happinessContext.building, f2);
            }
        }
        if (happinessContext.attributeContainer.getValues()[this.crimeIndex] >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return Math.max(Math.min((f * 0.5f) + 0.5f, 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        return -1.0f;
    }
}
