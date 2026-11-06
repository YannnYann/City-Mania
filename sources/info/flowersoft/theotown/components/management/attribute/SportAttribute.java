package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;

/* JADX INFO: loaded from: classes4.dex */
public class SportAttribute extends Attribute {
    public SportAttribute() {
        super(false, false, 146);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.SPORT.ordinal()];
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.SPORT.ordinal()];
    }
}
