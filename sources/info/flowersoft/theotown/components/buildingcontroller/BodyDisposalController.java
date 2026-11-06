package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.resources.Resources;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class BodyDisposalController extends ProductionAspectController {
    public BodyDisposalController(City city) {
        super(city, 4, 1);
        this.minRank = Resources.getSpecificConfig("body disposal").optInt("min rank", this.minRank);
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.ProductionAspectController, info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        int i;
        int i2;
        Road road;
        super.accept(building);
        if (building.getNeededAmount(this.coverageAspect) <= 0 || !building.isFullOfDeadPeople()) {
            return;
        }
        Random random = Resources.RND;
        if (random.nextFloat() < building.getWidth() * 0.08f) {
            int iNextInt = random.nextInt(building.getWidth() * 4);
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
            if (this.city.isValid(i, i2) && (road = this.tiles.getRoad(i, i2, 0)) != null && road.dLevel == 0) {
                road.getOccupation();
            }
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "body disposal";
    }
}
