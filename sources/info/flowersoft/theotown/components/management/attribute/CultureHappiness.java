package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class CultureHappiness extends Attribute {
    public CultureHappiness() {
        super(true, true, 3447, Resources.ICON_CULTURE);
        setAdjustRatio(0.1f);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateFirstTime(HappinessContext happinessContext) {
        if (happinessContext.city.isUber()) {
            return 1.0f;
        }
        return happinessContext.zone.base == Zones.getInstance().RESIDENTIAL0 ? 0.5f : -1.0f;
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        return (happinessContext.influences[InfluenceType.CULTURE.ordinal()] * 0.5f) + 0.5f;
    }
}
