package info.flowersoft.theotown.components.coverage;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HealthCareAspect extends DraftDrivenAspect {
    public HealthCareAspect(City city) {
        super(city, 2, InfluenceType.HEALTH);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getProviders(City city) {
        return city.getBuildings().getBuildingsOfType(BuildingType.MEDIC);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getNeeders(City city) {
        return city.getBuildings().getBuildingsOfType(BuildingType.RESIDENTIAL);
    }
}
