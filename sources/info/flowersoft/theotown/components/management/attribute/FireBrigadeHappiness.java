package info.flowersoft.theotown.components.management.attribute;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class FireBrigadeHappiness extends Attribute {
    public int fireIndex;

    public FireBrigadeHappiness() {
        super(true, true, 2049, Resources.ICON_FIREDEPARTMENT);
        this.fireIndex = AttributeFactory.getIndex((Class<? extends Attribute>) FireDangerAttribute.class);
        setAdjustRatio(0.1f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        if (happinessContext.building == null) {
            return -1.0f;
        }
        float f = happinessContext.influences[InfluenceType.FIREDEPARTMENT.ordinal()];
        ConcreteAttributeContainer concreteAttributeContainer = happinessContext.attributeContainer;
        if (concreteAttributeContainer == null) {
            return (f * 0.5f) + 0.5f;
        }
        if (concreteAttributeContainer.getValues()[this.fireIndex] >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return Math.min(Math.max((f * 0.5f) + 0.5f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
        }
        return -1.0f;
    }
}
