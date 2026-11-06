package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;

/* JADX INFO: loaded from: classes4.dex */
public class ParkAttribute extends Attribute {
    public ParkAttribute() {
        super(false, false, 2661);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateResidential(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.PARK.ordinal()];
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluateCommercial(HappinessContext happinessContext) {
        return happinessContext.influences[InfluenceType.PARK.ordinal()];
    }
}
