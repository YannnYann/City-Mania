package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;

/* JADX INFO: loaded from: classes4.dex */
public class ZoneHappiness extends Attribute {
    public ZoneHappiness() {
        super(true, false, 2638);
    }

    public float evaluateZone(HappinessContext happinessContext, InfluenceType influenceType, float f) {
        return ((happinessContext.influences[influenceType.ordinal()] * f) + 1.0f) - f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        if (happinessContext.building != null) {
            return -1.0f;
        }
        return (evaluateZone(happinessContext, InfluenceType.RESIDENTIAL, 0.25f) * 0.5f * evaluateZone(happinessContext, InfluenceType.COMMERCIAL, 0.25f)) + 0.5f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        if (happinessContext.building != null) {
            return -1.0f;
        }
        return (evaluateZone(happinessContext, InfluenceType.RESIDENTIAL, 0.9f) * 0.5f * evaluateZone(happinessContext, InfluenceType.COMMERCIAL, 0.2f)) + 0.5f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateIndustrial(HappinessContext happinessContext) {
        if (happinessContext.building != null) {
            return -1.0f;
        }
        return (evaluateZone(happinessContext, InfluenceType.COMMERCIAL, 0.25f) * 0.5f * evaluateZone(happinessContext, InfluenceType.INDUSTRIAL, 0.25f)) + 0.5f;
    }
}
