package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class SportHappiness extends Attribute {
    public SportHappiness() {
        super(true, true, 146, Resources.ICON_SPORTS);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        float f = happinessContext.influences[InfluenceType.SPORT.ordinal()];
        int i = happinessContext.level;
        if (i == 0) {
            return f + 0.8f;
        }
        if (i == 1) {
            return (f * 0.5f) + 0.5f;
        }
        if (i != 2) {
            return -1.0f;
        }
        return Attribute.interpolate(Attribute.growingExpectation(happinessContext.people, 5.0f, 30.0f), (f * 0.5f) + 0.5f, f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        float f = happinessContext.influences[InfluenceType.SPORT.ordinal()];
        if (happinessContext.level != 2) {
            return -1.0f;
        }
        return (f * 0.5f) + 0.5f;
    }
}
