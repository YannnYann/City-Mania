package info.flowersoft.theotown.components.management.attribute;

import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class TransportationHappiness extends Attribute {
    public TransportationHappiness() {
        super(true, true, 2081, Resources.ICON_TRAFFIC);
    }

    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    public float evaluate(HappinessContext happinessContext) {
        Building building = happinessContext.building;
        if (building == null || !building.getDraft().needsRoad) {
            return -1.0f;
        }
        long absoluteDay = ((DefaultDate) happinessContext.city.getComponent(1)).getAbsoluteDay() - happinessContext.building.getBuildDay();
        happinessContext.building.getCurrentPeople();
        float fGrowingExpectation = Attribute.growingExpectation(absoluteDay, 100.0f, 3200.0f);
        return Math.min((((1.0f - fGrowingExpectation) * 0.5f) + (fGrowingExpectation * 0.5f * Math.min(happinessContext.building.getReachability(), 1.0f)) + ((happinessContext.influences[InfluenceType.PASSENGER_BUS.ordinal()] + happinessContext.influences[InfluenceType.PASSENGER_TRAIN.ordinal()]) * 0.5f)) * (1.0f - (happinessContext.influences[InfluenceType.TRAFFIC.ordinal()] * 0.5f)), 1.0f);
    }
}
