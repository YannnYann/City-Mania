package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingSampler;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.airport.Airplane;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.components.airport.Lane;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.carcontroller.AirportTaxiCarController;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DataAccessor;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AirplaneController extends FlyingObjectController {
    public DefaultAirport airport;
    public DefaultDate date;

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void onSpawned(FlyingObject flyingObject) {
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController, info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public AirplaneController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController, info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void prepare() {
        super.prepare();
        this.airport = (DefaultAirport) this.city.getComponent(19);
        this.date = (DefaultDate) this.city.getComponent(1);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void unregister(FlyingObject flyingObject) {
        Airplane airplaneAirplane = getAirplaneAirplane(flyingObject);
        if (airplaneAirplane != null) {
            airplaneAirplane.setLastDayInCity(this.date.getAbsoluteDay());
        }
        super.unregister(flyingObject);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void onTarget(FlyingObject flyingObject) {
        int i;
        FlyingObjectDraft draft = flyingObject.getDraft();
        int dir = flyingObject.getDir();
        int visibleDir = flyingObject.getVisibleDir();
        int x = flyingObject.getX();
        int y = flyingObject.getY();
        float speed = flyingObject.getSpeed();
        int airplaneState = getAirplaneState(flyingObject);
        Lane airplaneLane = getAirplaneLane(flyingObject);
        Airplane airplaneAirplane = getAirplaneAirplane(flyingObject);
        if (!this.city.isValid(x, y) || airplaneState == 0 || airplaneLane == null || airplaneAirplane == null) {
            this.spawner.remove(flyingObject);
            return;
        }
        this.city.getTileHeight(x, y);
        int baseTerrainHeight = this.city.getTiles().getBaseTerrainHeight(x, y) * 12;
        int distance = airplaneLane.getDistance(x, y);
        float actualHeight = flyingObject.getActualHeight();
        float height = actualHeight - flyingObject.getHeight();
        int i2 = draft.flyHeight;
        switch (airplaneState) {
            case 1:
                i = distance >= 30 ? airplaneState : 2;
                break;
            case 2:
                i = distance > 0 ? airplaneState : 3;
                break;
            case 3:
                i = airplaneLane.getDistance((Direction.differenceX(dir) * 4) + x, y + (Direction.differenceY(dir) * 4)) <= 0 ? airplaneState : 4;
                break;
            case 4:
                triggerTaxi(flyingObject);
                i = 5;
                break;
            case 5:
                DefaultAirport defaultAirport = this.airport;
                defaultAirport.setLaunchedAirplanes(defaultAirport.getLaunchedAirplanes() + 1);
                DefaultAirport defaultAirport2 = this.airport;
                defaultAirport2.setTransferredPassengers(defaultAirport2.getTransferredPassengers() + airplaneAirplane.getDraft().capacity);
                i = 6;
                break;
            case 6:
                i = distance <= 30 ? airplaneState : 7;
                break;
            default:
                i = airplaneState;
                break;
        }
        setAirplaneState(flyingObject, i);
        switch (i) {
            case 1:
                flyingObject.flyTo(dir, dir, Math.max(i2, getFutureTileHeight(x, y, visibleDir)));
                flyingObject.setSpeed(draft.speed * 2.0f);
                break;
            case 2:
                flyingObject.flyTo(dir, dir, Math.max((Math.min(distance * 5, i2) * 0.1f) + ((actualHeight + height) * 0.9f), getFutureTileHeight(x, y, visibleDir) - 1.0f));
                flyingObject.setSpeed(Math.max(draft.speed * 1.8f, speed * 0.95f));
                break;
            case 3:
                flyingObject.flyTo(dir, dir, baseTerrainHeight);
                flyingObject.setSpeed(Math.max(0.25f, speed * 0.85f));
                break;
            case 4:
                flyingObject.flyTo(0, Direction.turnCCW(visibleDir), baseTerrainHeight);
                flyingObject.setSpeed(0.3f);
                break;
            case 5:
                flyingObject.flyTo(0, Direction.turnCCW(visibleDir), baseTerrainHeight);
                flyingObject.setSpeed(0.005f);
                break;
            case 6:
                float futureTileHeight = getFutureTileHeight(x, y, visibleDir);
                int distance2 = airplaneLane.getDistance(x + (Direction.differenceX(visibleDir) * 8), y + (Direction.differenceY(visibleDir) * 8));
                float fMax = Math.max(futureTileHeight, Math.min(distance2 * 5, i2));
                if (distance2 <= 0) {
                    fMax = baseTerrainHeight;
                }
                flyingObject.flyTo(visibleDir, visibleDir, (fMax * 0.1f) + ((actualHeight + height) * 0.9f));
                flyingObject.setSpeed(Math.min(draft.speed * 2.0f, Math.max(speed, 0.1f) * 1.4f));
                break;
            case 7:
                flyingObject.flyTo(dir, dir, Math.max((i2 * 0.1f) + ((actualHeight + height) * 0.9f), getFutureTileHeight(x, y, visibleDir)));
                flyingObject.setSpeed(draft.speed * 2.0f);
                break;
        }
    }

    public final float getFutureTileHeight(int i, int i2, int i3) {
        float fMax = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        for (int i4 = 0; i4 < 10; i4++) {
            if (!this.city.isValid((Direction.differenceX(i3) * i4) + i, (Direction.differenceY(i3) * i4) + i2)) {
                break;
            }
            fMax = Math.max(fMax, this.city.getTileHeight(r2, r3) * (1.0f - (i4 * 0.05f)));
        }
        return fMax;
    }

    public final void triggerTaxi(FlyingObject flyingObject) {
        BuildingSampler buildingSampler = new BuildingSampler(this.city, 32, flyingObject.getX(), flyingObject.getY());
        buildingSampler.clearBuildings();
        buildingSampler.addBuildings(this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) Drafts.ALL.get("$ap_gate00")));
        buildingSampler.addBuildings(this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) Drafts.ALL.get("$ap_gate01")));
        buildingSampler.addBuildings(this.city.getBuildings().getBuildingsOfDraft((BuildingDraft) Drafts.ALL.get("$ap_gate02")));
        buildingSampler.setFavorNear(true);
        Building buildingSample = buildingSampler.sample();
        if (buildingSample != null) {
            ((AirportTaxiCarController) ((CarTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class)).getCarController(AirportTaxiCarController.class)).spawn(flyingObject, buildingSample);
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void update() {
        List<Lane> lanes = this.airport.getLanes();
        long absoluteDay = this.date.getAbsoluteDay();
        for (int i = 0; i < lanes.size(); i++) {
            Lane lane = lanes.get(i);
            if (lane.isActive()) {
                Airplane airplane = lane.getAirplane();
                if ((absoluteDay - airplane.getLastDayInCity()) - ((long) Resources.RND.nextInt(90)) > 30) {
                    boolean z = false;
                    for (int i2 = 0; i2 < this.flyingObjects.size() && !z; i2++) {
                        z = getAirplaneLane(this.flyingObjects.get(i2)) == lane;
                    }
                    if (!z) {
                        spawnAirplane(airplane, lane);
                    }
                }
            }
        }
        for (int i3 = 0; i3 < this.flyingObjects.size(); i3++) {
            FlyingObject flyingObject = this.flyingObjects.get(i3);
            Lane airplaneLane = getAirplaneLane(flyingObject);
            if (airplaneLane == null || !airplaneLane.isActive()) {
                this.spawner.remove(flyingObject);
                return;
            }
        }
    }

    public final FlyingObject spawnAirplane(Airplane airplane, Lane lane) {
        int sx = lane.getSx();
        int sy = lane.getSy();
        int tx = lane.getTx();
        int ty = lane.getTy();
        if (!Resources.RND.nextBoolean()) {
            tx = sx;
            sx = tx;
            ty = sy;
            sy = ty;
        }
        int iFromDifferential = Direction.fromDifferential(sx - tx, sy - ty);
        FlyingObject flyingObjectSpawn = this.spawner.spawn(airplane.getDraft(), collideWithEdgeX(tx, ty, Direction.opposite(iFromDifferential)), collideWithEdgeY(tx, ty, Direction.opposite(iFromDifferential)), iFromDifferential, airplane.getDraft().flyHeight);
        flyingObjectSpawn.setFrame(airplane.getFrame());
        setAirplaneLane(flyingObjectSpawn, lane);
        setAirplaneAirplane(flyingObjectSpawn, airplane);
        setAirplaneState(flyingObjectSpawn, 1);
        flyingObjectSpawn.setSpeed(1.0f);
        return flyingObjectSpawn;
    }

    public final int collideWithEdgeX(int i, int i2, int i3) {
        if (i3 == 1) {
            return this.city.getWidth() - 1;
        }
        if (i3 == 2 || i3 == 8) {
            return i;
        }
        return 0;
    }

    public final int collideWithEdgeY(int i, int i2, int i3) {
        if (i3 == 1) {
            return i2;
        }
        if (i3 == 2) {
            return this.city.getHeight() - 1;
        }
        if (i3 != 4) {
            return 0;
        }
        return i2;
    }

    public final void setAirplaneLane(FlyingObject flyingObject, Lane lane) {
        flyingObject.data = DataAccessor.write(flyingObject.data, 10, 0, lane.getId());
    }

    public final Lane getAirplaneLane(FlyingObject flyingObject) {
        return this.airport.getLaneOfId((int) DataAccessor.read(flyingObject.data, 10, 0));
    }

    public final void setAirplaneAirplane(FlyingObject flyingObject, Airplane airplane) {
        flyingObject.data = DataAccessor.write(flyingObject.data, 10, 10, airplane.getId());
    }

    public final Airplane getAirplaneAirplane(FlyingObject flyingObject) {
        return this.airport.getAirplaneOfId((int) DataAccessor.read(flyingObject.data, 10, 10));
    }

    public final void setAirplaneState(FlyingObject flyingObject, int i) {
        flyingObject.data = DataAccessor.write(flyingObject.data, 4, 20, i);
    }

    public final int getAirplaneState(FlyingObject flyingObject) {
        return (int) DataAccessor.read(flyingObject.data, 4, 20);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "airport";
    }
}
