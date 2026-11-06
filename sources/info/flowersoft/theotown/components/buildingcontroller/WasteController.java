package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public class WasteController extends ProductionAspectController {
    public final AnimationDraft WASTE_OCCUPATION;

    public WasteController(City city) {
        super(city, 3, 0);
        this.WASTE_OCCUPATION = (AnimationDraft) Drafts.get("$animationwaste00", AnimationDraft.class);
        this.minRank = Resources.getSpecificConfig("waste").optInt("min rank", this.minRank);
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.ProductionAspectController, info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        super.accept(building);
        if (building.getNeededAmount(this.coverageAspect) <= 0 || !building.isFullOfWaste() || Resources.RND.nextFloat() >= building.getWidth() * 0.08f) {
            return;
        }
        TryToSpawnGarbageNearby(building);
    }

    public final void TryToSpawnGarbageNearby(Building building) {
        int i;
        int i2;
        Road road;
        int iNextInt = Resources.RND.nextInt(building.getWidth() * 4);
        int width = iNextInt % building.getWidth();
        int width2 = (iNextInt / building.getWidth()) % 2 == 0 ? -1 : building.getWidth();
        int x = building.getX();
        int y = building.getY();
        if (iNextInt < building.getWidth() * 2) {
            i = x + width;
            i2 = y + width2;
        } else {
            i = x + width2;
            i2 = y + width;
        }
        if (this.city.isValid(i, i2) && (road = this.tiles.getRoad(i, i2, 0)) != null && road.dLevel == 0 && road.getOccupation() == null) {
            road.setOccupation(this.WASTE_OCCUPATION);
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "waste";
    }
}
