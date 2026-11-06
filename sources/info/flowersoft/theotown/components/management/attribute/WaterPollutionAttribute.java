package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.objects.Building;

/* JADX INFO: loaded from: classes4.dex */
public class WaterPollutionAttribute extends Attribute {
    public WaterPollutionAttribute() {
        super(false, false, 0);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        Building building = happinessContext.building;
        if (building == null || !building.hasWater()) {
            return -1.0f;
        }
        return happinessContext.building.getWaterWaste();
    }
}
