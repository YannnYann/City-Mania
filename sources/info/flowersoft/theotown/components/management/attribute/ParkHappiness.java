package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class ParkHappiness extends Attribute {
    public ParkHappiness() {
        super(true, true, 2661, Resources.ICON_PARK);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        float f = happinessContext.influences[InfluenceType.PARK.ordinal()];
        int i = happinessContext.level;
        if (i == 0) {
            return f + 0.8f;
        }
        if (i == 1) {
            return Attribute.interpolate(Attribute.growingExpectation(happinessContext.people, 5.0f, 30.0f), (0.6f * f) + 0.4f, f);
        }
        if (i != 2) {
            return -1.0f;
        }
        return f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        float f = happinessContext.influences[InfluenceType.PARK.ordinal()];
        int i = happinessContext.level;
        if (i == 0) {
            return (f * 0.5f) + 0.5f;
        }
        if (i == 1) {
            return Attribute.interpolate(Attribute.growingExpectation(happinessContext.people, 5.0f, 30.0f), (f * 0.5f) + 0.5f, f);
        }
        if (i != 2) {
            return -1.0f;
        }
        return f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateIndustrial(HappinessContext happinessContext) {
        float f;
        float f2;
        float f3 = happinessContext.influences[InfluenceType.PARK.ordinal()];
        int i = happinessContext.level;
        if (i == 1) {
            f = 0.5f;
            f2 = f3 * 0.5f;
        } else {
            if (i != 2) {
                return -1.0f;
            }
            f2 = f3 * 0.55f;
            f = 0.45f;
        }
        return f2 + f;
    }
}
