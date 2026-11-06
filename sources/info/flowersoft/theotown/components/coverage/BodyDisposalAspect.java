package info.flowersoft.theotown.components.coverage;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.neighbors.NeighborCity;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BodyDisposalAspect extends DraftDrivenAspect {
    public BodyDisposalAspect(City city) {
        super(city, 4, InfluenceType.BODY_DISPOSAL, 1, true, false);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getProviders(City city) {
        return city.getBuildings().getBuildingsOfType(BuildingType.BODY_DISPOSAL);
    }

    @Override // info.flowersoft.theotown.components.coverage.Aspect
    public List<Building> getNeeders(City city) {
        return city.getBuildings().getRciBuildings();
    }

    @Override // info.flowersoft.theotown.components.coverage.DraftDrivenAspect, info.flowersoft.theotown.components.coverage.Aspect
    public long getNeighborTrading(NeighborCity neighborCity) {
        return neighborCity.getTradingRelation().getBodyDisposalExport();
    }

    @Override // info.flowersoft.theotown.components.coverage.DraftDrivenAspect, info.flowersoft.theotown.components.coverage.Aspect
    public void setNeighborTrading(NeighborCity neighborCity, long j) {
        neighborCity.getTradingRelation().setBodyDisposalExport(j);
    }
}
