package info.flowersoft.theotown.components.traffic.shipcontroller;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DataAccessor;
import info.flowersoft.theotown.util.ListSampler;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class FreighterShipController extends ShipController {
    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public FreighterShipController(City city, ShipSpawner shipSpawner) {
        super(city, shipSpawner);
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void onTarget(Ship ship) {
        int iAbs;
        int iAbs2;
        int x = ship.getX() + Direction.differenceX(ship.getDir());
        int y = ship.getY() + Direction.differenceY(ship.getDir());
        int[] shipTarget = getShipTarget(ship);
        int[] shipFinalTarget = getShipFinalTarget(ship);
        int x2 = shipTarget[0] - ship.getX();
        int y2 = shipTarget[1] - ship.getY();
        int iAbs3 = Math.abs(x2) + Math.abs(y2);
        int dir = ship.getDir();
        int shipHistory = getShipHistory(ship);
        Building building = this.tiles.getBuilding(shipTarget[0], shipTarget[1]);
        Building building2 = this.tiles.getBuilding(shipFinalTarget[0], shipFinalTarget[1]);
        if (building == null || building2 == null || shipHistory > 128) {
            ship.setInvalid();
            return;
        }
        if (iAbs3 <= 4) {
            if (building != building2) {
                if (getNextTarget(building, building2) == null) {
                    ship.setInvalid();
                    return;
                }
            } else {
                ship.setInvalid();
                return;
            }
        }
        if (x2 != 0 || y2 != 0) {
            if (Math.abs(x2) > Math.abs(y2)) {
                iAbs2 = x2 / Math.abs(x2);
                iAbs = 0;
            } else {
                iAbs = y2 / Math.abs(y2);
                iAbs2 = 0;
            }
            int iFromDifferential = Direction.fromDifferential(iAbs2, iAbs);
            ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
            int[] iArr = {0, 1, 2, 4, 8};
            for (int i = 0; i < 5; i++) {
                int i2 = iArr[i];
                if (isSuitableForShip(ship.getDraft(), x, y, i2)) {
                    if (i2 == iFromDifferential) {
                        probabilitySelector.insert(Integer.valueOf(i2), 16.0f);
                    } else if (i2 == 0 && dir != 0) {
                        probabilitySelector.insert(Integer.valueOf(i2), 1.0f);
                    } else if (i2 != 0 && i2 == dir) {
                        probabilitySelector.insert(Integer.valueOf(i2), 4.0f);
                    } else if (i2 != 0 && i2 == Direction.opposite(dir)) {
                        probabilitySelector.insert(Integer.valueOf(i2), 0.25f);
                    } else if (i2 != 0) {
                        probabilitySelector.insert(Integer.valueOf(i2), 1.0f);
                    }
                }
            }
            if (probabilitySelector.hasResult()) {
                ship.setTarget(((Integer) probabilitySelector.getResult()).intValue());
                setShipHistory(ship, shipHistory + 1);
                return;
            }
        }
        ship.setInvalid();
    }

    public final int getDistance(Building building, Building building2) {
        for (int i = 0; i < 4; i++) {
            int midX = getMidX(building, i);
            int midY = getMidY(building, i);
            for (int i2 = 0; i2 < 4; i2++) {
                int distance = getDistance(midX, midY, getMidX(building2, i2), getMidY(building2, i2));
                if (distance < Integer.MAX_VALUE) {
                    return distance;
                }
            }
        }
        return Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public final int getDistance(int i, int i2, int i3, int i4) {
        int iAbs;
        if (!isSuitableForShip(i, i2) || !isSuitableForShip(i3, i4)) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        int i5 = 1;
        while (true) {
            if (i == i3 && i2 == i4) {
                return i5;
            }
            int i6 = i3 - i;
            int i7 = i4 - i2;
            int iAbs2 = 0;
            if (Math.abs(i6) > Math.abs(i7)) {
                iAbs = 0;
                iAbs2 = i6 / Math.abs(i6);
            } else {
                iAbs = i7 / Math.abs(i7);
            }
            i += iAbs2;
            i2 += iAbs;
            if (!isSuitableForShip(i, i2)) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            i5++;
        }
    }

    public final int getMidX(Building building, int i) {
        int x;
        int width;
        if (i == 0) {
            x = building.getX();
            width = building.getWidth();
        } else {
            if (i != 1 && i == 2) {
                return building.getX() - 1;
            }
            x = building.getX();
            width = building.getWidth() / 2;
        }
        return x + width;
    }

    public final int getMidY(Building building, int i) {
        int y;
        int height;
        if (i == 0) {
            y = building.getY();
            height = building.getHeight() / 2;
        } else if (i == 1) {
            y = building.getY();
            height = building.getHeight();
        } else if (i == 2) {
            y = building.getY();
            height = building.getHeight() / 2;
        } else {
            return building.getY() - 1;
        }
        return y + height;
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public void update() {
        if (getMaxCount() > this.ships.size()) {
            ListSampler listSampler = new ListSampler(getPiers());
            Random random = Resources.RND;
            Building building = (Building) listSampler.sample(random);
            Building building2 = (Building) listSampler.sample(random);
            if (building == building2 || building == null || building2 == null) {
                return;
            }
            ShipDraft shipDraft = (ShipDraft) Drafts.ALL.get("$shipcontainer00");
            int[] iArrSampleStartConfig = sampleStartConfig(shipDraft, building);
            Building nextTarget = getNextTarget(building, building2);
            if (iArrSampleStartConfig == null || nextTarget == null) {
                return;
            }
            Ship shipSpawn = this.spawner.spawn(shipDraft, iArrSampleStartConfig[0], iArrSampleStartConfig[1], iArrSampleStartConfig[2]);
            setShipTarget(shipSpawn, nextTarget.getX(), nextTarget.getY());
            setShipFinalTarget(shipSpawn, building2.getX(), building2.getY());
        }
    }

    public final Building getNextTarget(Building building, Building building2) {
        if (getDistance(building, building2) < Integer.MAX_VALUE) {
            return building2;
        }
        final HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        PriorityQueue priorityQueue = new PriorityQueue(11, new Comparator<Building>() { // from class: info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController.1
            @Override // java.util.Comparator
            public int compare(Building building3, Building building4) {
                return ((Integer) map.get(building4)).intValue() - ((Integer) map.get(building3)).intValue();
            }
        });
        ArrayList<Building> arrayList = new ArrayList();
        Iterator it = new SafeListAccessor(this.city.getBuildings().getBuildingsOfType(BuildingType.BUOY)).iterator();
        while (it.hasNext()) {
            arrayList.add((Building) it.next());
        }
        for (Building building3 : arrayList) {
            map.put(building3, Integer.valueOf(getDistance(building, building3)));
            priorityQueue.add(building3);
            map2.put(building3, null);
        }
        while (!priorityQueue.isEmpty()) {
            Building building4 = (Building) priorityQueue.poll();
            if (((Integer) map.get(building4)).intValue() >= Integer.MAX_VALUE) {
                break;
            }
            arrayList.remove(building4);
            if (getDistance(building4, building2) < Integer.MAX_VALUE) {
                while (map2.get(building4) != null) {
                    building4 = (Building) map2.get(building4);
                }
                return building4;
            }
            for (Building building5 : arrayList) {
                map.put(building5, Integer.valueOf(getDistance(building4, building5)));
                priorityQueue.remove(building5);
                priorityQueue.add(building5);
            }
        }
        return null;
    }

    public final int[] sampleStartConfig(ShipDraft shipDraft, Building building) {
        for (int x = building.getX() - 1; x <= building.getX() + building.getWidth(); x++) {
            for (int y = building.getY() - 1; y <= building.getY() + building.getHeight(); y++) {
                for (int i = 1; i <= 8; i *= 2) {
                    if (isSuitableForShip(shipDraft, x, y, i)) {
                        return new int[]{x, y, i};
                    }
                }
            }
        }
        return null;
    }

    public final int getMaxCount() {
        return getPiers().size() - 1;
    }

    public final List<Building> getPiers() {
        return this.city.getBuildings().getBuildingsOfType(BuildingType.HARBOR_PIER);
    }

    public final void setShipTarget(Ship ship, int i, int i2) {
        ship.setData(DataAccessor.write(DataAccessor.write(ship.getData(), 12, 0, i), 12, 12, i2));
    }

    public final void setShipFinalTarget(Ship ship, int i, int i2) {
        ship.setData(DataAccessor.write(DataAccessor.write(ship.getData(), 12, 24, i), 12, 36, i2));
    }

    public final int[] getShipTarget(Ship ship) {
        long data = ship.getData();
        return new int[]{(int) DataAccessor.read(data, 12, 0), (int) DataAccessor.read(data, 12, 12)};
    }

    public final int[] getShipFinalTarget(Ship ship) {
        long data = ship.getData();
        return new int[]{(int) DataAccessor.read(data, 12, 24), (int) DataAccessor.read(data, 12, 36)};
    }

    public final void setShipHistory(Ship ship, int i) {
        ship.setData(DataAccessor.write(ship.getData(), 12, 48, i));
    }

    public final int getShipHistory(Ship ship) {
        return (int) DataAccessor.read(ship.getData(), 12, 48);
    }

    @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipController
    public String getId() {
        return "freighter controller";
    }
}
