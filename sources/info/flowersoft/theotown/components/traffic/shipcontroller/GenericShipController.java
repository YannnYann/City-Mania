package info.flowersoft.theotown.components.traffic.shipcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.ListSampler;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class GenericShipController extends ShipController {
    public BuildingDraft buildingDraft;
    public List<ShipDraft> shipDrafts;

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public GenericShipController(City city, ShipSpawner shipSpawner, BuildingDraft buildingDraft) {
        super(city, shipSpawner);
        this.shipDrafts = new ArrayList();
        this.buildingDraft = buildingDraft;
        int i = 0;
        while (true) {
            ShipDraft[] shipDraftArr = buildingDraft.ships;
            if (i >= shipDraftArr.length) {
                return;
            }
            this.shipDrafts.add(shipDraftArr[i]);
            i++;
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void onTarget(Ship ship) {
        if (this.city.isValid(ship.getX(), ship.getY()) && getMaxCount() >= this.ships.size()) {
            int[] iArr = {1, 2, 4, 8, 0};
            ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
            int x = ship.getX() + Direction.differenceX(ship.getDir());
            int y = ship.getY() + Direction.differenceY(ship.getDir());
            for (int i = 0; i < 5; i++) {
                int i2 = iArr[i];
                if (isSuitableForShip(Direction.differenceX(i2) + x, Direction.differenceY(i2) + y) && i2 != Direction.opposite(ship.getDir())) {
                    probabilitySelector.insert(Integer.valueOf(i2), i2 == ship.getDir() ? 8.0f : 1.0f);
                }
            }
            if (probabilitySelector.hasResult()) {
                ship.setTarget(((Integer) probabilitySelector.getResult()).intValue());
                return;
            } else {
                ship.setInvalid();
                return;
            }
        }
        ship.setInvalid();
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void update() {
        int[] iArrSampleSpawningPlace;
        if (getMaxCount() <= this.ships.size() || (iArrSampleSpawningPlace = sampleSpawningPlace()) == null) {
            return;
        }
        int i = iArrSampleSpawningPlace[0];
        int i2 = iArrSampleSpawningPlace[1];
        List<ShipDraft> list = this.shipDrafts;
        this.spawner.spawn(list.get(Resources.RND.nextInt(list.size())), i, i2, 0);
    }

    public final int[] sampleSpawningPlace() {
        Random random = Resources.RND;
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(random);
        Building building = (Building) new ListSampler(getSpawnerBuildings()).sample(random);
        if (building != null && building.isWorking()) {
            for (int x = building.getX() - 1; x < building.getX() + building.getWidth() + 1; x++) {
                for (int y = building.getY() - 1; y < building.getY() + building.getHeight() + 1; y++) {
                    if ((x < building.getX() || y < building.getY() || x >= building.getX() + building.getWidth() || y >= building.getY() + building.getHeight()) && isSuitableForShip(x, y)) {
                        probabilitySelector.insert(Integer.valueOf((this.city.getWidth() * y) + x), building.getDraft().shipCount);
                    }
                }
            }
        }
        if (!probabilitySelector.hasResult()) {
            return null;
        }
        int iIntValue = ((Integer) probabilitySelector.getResult()).intValue();
        return new int[]{iIntValue % this.city.getWidth(), iIntValue / this.city.getWidth()};
    }

    private int getMaxCount() {
        int i = 0;
        for (Building building : new SafeListAccessor(getSpawnerBuildings())) {
            if (building.isWorking()) {
                i += building.getDraft().shipCount;
            }
        }
        return i;
    }

    public final List<Building> getSpawnerBuildings() {
        return this.city.getBuildings().getBuildingsOfDraft(this.buildingDraft);
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public String getId() {
        return "generic " + this.buildingDraft.id + " controller";
    }
}
