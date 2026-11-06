package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.actionplace.ActionPlaceController;
import info.flowersoft.theotown.components.actionplace.ActionPlaceHandler;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.util.DataAccessor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class OperationalHelicopterController extends SimpleHelicopterController implements ActionPlaceHandler {
    public ActionPlaceController actionPlaceController;
    public int actionPlaceType;

    public abstract List<Building> getBuildings();

    public abstract FlyingObjectDraft getDraft(Building building);

    public abstract boolean onActionPlace(FlyingObject flyingObject);

    public void onSpawnedAfterSetup(FlyingObject flyingObject) {
    }

    public OperationalHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner, int i) {
        super(city, flyingObjectSpawner);
        this.actionPlaceType = i;
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void prepare() {
        super.prepare();
        if (this.actionPlaceType >= 0) {
            ActionPlaceController actionPlaceController = ((DefaultTraffic) this.city.getComponent(7)).getActionPlaceController();
            this.actionPlaceController = actionPlaceController;
            actionPlaceController.registerHandler(this, this.actionPlaceType);
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController
    public void finishedFlightCommand(FlyingObject flyingObject) {
        super.onTarget(flyingObject);
        if (isImportant(flyingObject)) {
            if (onActionPlace(flyingObject)) {
                this.actionPlaceController.removeActionPlace(this.actionPlaceType, flyingObject.getActualX(), flyingObject.getActualY());
            } else {
                flyTo(flyingObject, flyingObject.getActualX(), flyingObject.getActualY(), false);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController, info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void update() {
        Building building;
        super.update();
        List<Building> buildings = getBuildings();
        int i = 0;
        if (this.flyingObjects.size() >= (buildings != null ? buildings.size() : 0)) {
            if (buildings != null) {
                while (i < this.flyingObjects.size()) {
                    Building buildingData = getBuildingData(this.flyingObjects.get(i));
                    if (buildingData == null || !buildings.contains(buildingData)) {
                        this.spawner.remove(this.flyingObjects.get(i));
                        return;
                    }
                    i++;
                }
                return;
            }
            this.spawner.remove(this.flyingObjects.get(0));
            return;
        }
        HashSet hashSet = new HashSet(buildings);
        while (i < this.flyingObjects.size()) {
            Building buildingData2 = getBuildingData(this.flyingObjects.get(i));
            if (buildingData2 != null) {
                hashSet.remove(buildingData2);
            }
            i++;
        }
        if (hashSet.isEmpty()) {
            return;
        }
        Iterator it = hashSet.iterator();
        while (true) {
            if (!it.hasNext()) {
                building = null;
                break;
            } else {
                building = (Building) it.next();
                if (!building.inConstruction()) {
                    break;
                }
            }
        }
        if (building != null) {
            FlyingObject flyingObjectCreate = create(getDraft(building), building.getX() + getInnerX(building), building.getY() + getInnerY(building));
            setBuildingData(flyingObjectCreate, building);
            onSpawnedAfterSetup(flyingObjectCreate);
        }
    }

    public int getInnerX(Building building) {
        return building.getWidth() / 2;
    }

    public int getInnerY(Building building) {
        return building.getHeight() / 2;
    }

    public final void setBuildingData(FlyingObject flyingObject, Building building) {
        flyingObject.data = DataAccessor.write(DataAccessor.write(flyingObject.data, 10, 32, building.getX()), 10, 42, building.getY());
    }

    public final Building getBuildingData(FlyingObject flyingObject) {
        Building building;
        long j = flyingObject.data;
        int i = (int) DataAccessor.read(j, 10, 32);
        int i2 = (int) DataAccessor.read(j, 10, 42);
        if (this.city.isValid(i, i2) && (building = this.tiles.getBuilding(i, i2)) != null && building.getX() == i && building.getY() == i2) {
            return building;
        }
        return null;
    }

    public final boolean isImportant(FlyingObject flyingObject) {
        return DataAccessor.read(flyingObject.data, 1, 52) == 1;
    }

    public final void setImportant(FlyingObject flyingObject, boolean z) {
        flyingObject.data = DataAccessor.write(flyingObject.data, 1, 52, z ? 1L : 0L);
    }

    public void resetTarget(FlyingObject flyingObject) {
        flyToBase(flyingObject);
    }

    public void flyToBase(FlyingObject flyingObject) {
        Building buildingData = getBuildingData(flyingObject);
        if (buildingData != null) {
            flyTo(flyingObject, buildingData.getX() + getInnerX(buildingData), buildingData.getY() + getInnerY(buildingData), true);
        }
    }

    @Override // info.flowersoft.theotown.components.actionplace.ActionPlaceHandler
    public void notifyAction(List<MapArea> list, int i) {
        ArrayList arrayList = new ArrayList(this.flyingObjects);
        while (!arrayList.isEmpty() && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size() && !arrayList.isEmpty(); i2++) {
                MapArea mapArea = list.get(i2);
                int centerX = (int) mapArea.getCenterX();
                int centerY = (int) mapArea.getCenterY();
                int i3 = -1;
                int i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    FlyingObject flyingObject = (FlyingObject) arrayList.get(i5);
                    int iMin = Math.min(Math.abs(centerX - flyingObject.getActualX()), Math.abs(centerY - flyingObject.getActualY()));
                    if (iMin < i4) {
                        i3 = i5;
                        i4 = iMin;
                    }
                }
                FlyingObject flyingObject2 = (FlyingObject) arrayList.remove(i3);
                flyTo(flyingObject2, centerX, centerY, false);
                setImportant(flyingObject2, true);
                this.actionPlaceController.registerSolver(i);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.actionplace.ActionPlaceHandler
    public void notifyNoAction(int i) {
        for (int i2 = 0; i2 < this.flyingObjects.size(); i2++) {
            setImportant(this.flyingObjects.get(i2), false);
            resetTarget(this.flyingObjects.get(i2));
        }
    }
}
