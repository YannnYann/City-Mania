package info.flowersoft.theotown.components.coverage;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class HighEducationAspect extends DraftDrivenAspect {
    public HighEducationAspect(City city) {
        super(city, 1, InfluenceType.EDUCATION_HIGH);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getProviders(City city) {
        return city.getBuildings().getBuildingsOfType(BuildingType.EDUCATION);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getNeeders(City city) {
        return city.getBuildings().getBuildingsOfType(BuildingType.RESIDENTIAL);
    }
}
