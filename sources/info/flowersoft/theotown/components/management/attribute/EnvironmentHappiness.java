package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class EnvironmentHappiness extends Attribute {
    public int pollutionIndex;

    public EnvironmentHappiness() {
        super(true, true, Sdk.SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, Resources.ICON_TREE);
        this.pollutionIndex = AttributeFactory.getIndex((Class<? extends Attribute>) PollutionAttribute.class);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        float f;
        float f2 = happinessContext.influences[InfluenceType.NOISE.ordinal()];
        float f3 = happinessContext.influences[InfluenceType.NATURE.ordinal()] + happinessContext.influences[InfluenceType.PARK.ordinal()];
        if (happinessContext.building != null) {
            f = happinessContext.attributeContainer.getValues()[this.pollutionIndex];
        } else {
            f = happinessContext.influences[InfluenceType.POLLUTION.ordinal()];
        }
        float f4 = (f3 * 0.5f) + 0.5f;
        if (f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            f4 *= 1.0f - f;
        }
        if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            f4 *= 1.0f - f2;
        }
        float fMin = Math.min(f4, 1.0f);
        Building building = happinessContext.building;
        if (building != null && fMin <= 0.25f) {
            if (f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                happinessContext.survey.properties[9].assume(building, 1.0f - f);
            }
            if (f2 >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                happinessContext.survey.properties[10].assume(happinessContext.building, 1.0f - f2);
            }
        }
        return fMin;
    }
}
