package info.flowersoft.theotown.components.traffic;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController;
import info.flowersoft.theotown.components.traffic.shipcontroller.GenericShipController;
import info.flowersoft.theotown.components.traffic.shipcontroller.ShipController;
import info.flowersoft.theotown.components.traffic.shipcontroller.ShipSpawner;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ShipTrafficHandler extends TrafficHandler {
    public final List<ShipController> controllers;
    public int ctrlId;
    public final DefaultDate date;
    public final List<Ship> ships;

    public ShipTrafficHandler(City city) {
        super(city);
        this.ctrlId = 0;
        this.date = (DefaultDate) city.getComponent(1);
        this.ships = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.controllers = arrayList;
        arrayList.add(new FreighterShipController(city, generateSpawner()));
        for (int i = 0; i < Drafts.BUILDINGS.size(); i++) {
            BuildingDraft buildingDraft = Drafts.BUILDINGS.get(i);
            ShipDraft[] shipDraftArr = buildingDraft.ships;
            if (shipDraftArr != null && shipDraftArr.length > 0) {
                this.controllers.add(new GenericShipController(city, generateSpawner(), buildingDraft));
            }
        }
    }

    public final ShipSpawner generateSpawner() {
        final int i = this.ctrlId;
        this.ctrlId = i + 1;
        return new ShipSpawner() { // from class: info.flowersoft.theotown.components.traffic.ShipTrafficHandler.1
            @Override // info.flowersoft.theotown.components.traffic.shipcontroller.ShipSpawner
            public Ship spawn(ShipDraft shipDraft, int i2, int i3, int i4) {
                if (!ShipTrafficHandler.this.city.isValid(i2, i3)) {
                    return null;
                }
                Ship ship = new Ship(shipDraft, i2, i3, i, Resources.RND.nextInt(shipDraft.frames.length / 4));
                ship.setTarget(i4);
                ShipTrafficHandler.this.ships.add(ship);
                ((ShipController) ShipTrafficHandler.this.controllers.get(i)).registerShip(ship);
                ShipTrafficHandler.this.registerShipOnMap(ship);
                return ship;
            }
        };
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        for (int i = 0; i < this.controllers.size(); i++) {
            map.put(this.controllers.get(i).getId(), Integer.valueOf(i));
        }
        IntList intList = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("ships")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    try {
                        Ship ship = new Ship(jsonReader);
                        if (intList != null && intList.get(ship.getController()) >= 0) {
                            ship.setController(intList.get(ship.getController()));
                            this.ships.add(ship);
                        }
                    } catch (IllegalArgumentException e) {
                        e.printStackTrace();
                        while (jsonReader.hasNext()) {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            } else if (strNextName.equals("mapping")) {
                intList = new IntList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    Integer num = (Integer) map.get(jsonReader.nextString());
                    if (num != null) {
                        intList.add(num.intValue());
                    } else {
                        intList.add(-1);
                    }
                }
                jsonReader.endArray();
            } else {
                Integer num2 = (Integer) map.get(strNextName);
                if (num2 != null) {
                    jsonReader.beginObject();
                    this.controllers.get(num2.intValue()).load(jsonReader);
                    jsonReader.endObject();
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        Iterator<Ship> it = this.ships.iterator();
        while (it.hasNext()) {
            Ship next = it.next();
            int controller = next.getController();
            if (controller >= 0 && controller < this.controllers.size()) {
                this.controllers.get(controller).registerShip(next);
                registerShipOnMap(next);
            } else {
                it.remove();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        synchronized (this.ships) {
            try {
                jsonWriter.name("mapping");
                jsonWriter.beginArray();
                for (int i = 0; i < this.controllers.size(); i++) {
                    jsonWriter.value(this.controllers.get(i).getId());
                }
                jsonWriter.endArray();
                jsonWriter.name("ships");
                jsonWriter.beginArray();
                for (Ship ship : this.ships) {
                    if (!ship.isInvalid()) {
                        jsonWriter.beginObject();
                        ship.save(jsonWriter);
                        jsonWriter.endObject();
                    }
                }
                jsonWriter.endArray();
                for (int i2 = 0; i2 < this.controllers.size(); i2++) {
                    ShipController shipController = this.controllers.get(i2);
                    jsonWriter.name(shipController.getId());
                    jsonWriter.beginObject();
                    shipController.save(jsonWriter);
                    jsonWriter.endObject();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void prepare() {
        addDailyWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.ShipTrafficHandler.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ShipTrafficHandler.this.ships) {
                    try {
                        Iterator it = ShipTrafficHandler.this.controllers.iterator();
                        while (it.hasNext()) {
                            ((ShipController) it.next()).update();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }));
        addWorker(new CyclicWorker(new Runnable() { // from class: info.flowersoft.theotown.components.traffic.ShipTrafficHandler.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ShipTrafficHandler.this.ships) {
                    try {
                        int animationTimeDelta = ShipTrafficHandler.this.date.getAnimationTimeDelta();
                        Iterator it = ShipTrafficHandler.this.ships.iterator();
                        while (it.hasNext()) {
                            Ship ship = (Ship) it.next();
                            if (ship.isInvalid()) {
                                ShipTrafficHandler.this.unregisterShipFromMap(ship);
                                ((ShipController) ShipTrafficHandler.this.controllers.get(ship.getController())).unregisterShip(ship);
                                it.remove();
                            } else {
                                float p = ship.getP() + ((animationTimeDelta / 4000.0f) * (Resources.RND.nextFloat() + 0.5f));
                                if (p >= 1.0f) {
                                    ship.setP(1.0f);
                                    ShipTrafficHandler.this.unregisterShipFromMap(ship);
                                    ((ShipController) ShipTrafficHandler.this.controllers.get(ship.getController())).onTarget(ship);
                                    ShipTrafficHandler.this.registerShipOnMap(ship);
                                } else {
                                    ship.setP(p);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }));
    }

    public List<Ship> getShips() {
        return this.ships;
    }

    public final void registerShipOnMap(Ship ship) {
        int x = ship.getX();
        int y = ship.getY();
        int dir = ship.getDir();
        int iDifferenceX = Direction.differenceX(dir);
        int iDifferenceY = Direction.differenceY(dir);
        if (dir == 0) {
            iDifferenceX = 1;
            iDifferenceY = 0;
        }
        if (this.city.isValid(x, y)) {
            this.tiles.setShip(x, y, ship);
        }
        int i = ship.getDraft().length;
        int i2 = x + (iDifferenceX * i);
        int i3 = y + (iDifferenceY * i);
        if (this.city.isValid(i2, i3)) {
            this.tiles.setShip(i2, i3, ship);
        }
    }

    public final void unregisterShipFromMap(Ship ship) {
        int x = ship.getX();
        int y = ship.getY();
        int dir = ship.getDir();
        int iDifferenceX = Direction.differenceX(dir);
        int iDifferenceY = Direction.differenceY(dir);
        if (dir == 0) {
            iDifferenceX = 1;
            iDifferenceY = 0;
        }
        if (this.city.isValid(x, y)) {
            this.tiles.setShip(x, y, null);
        }
        int i = ship.getDraft().length;
        int i2 = x + (iDifferenceX * i);
        int i3 = y + (iDifferenceY * i);
        if (this.city.isValid(i2, i3)) {
            this.tiles.setShip(i2, i3, null);
        }
    }

    public void draw(int i, int i2, Ship ship, Drawer drawer) {
        ShipDraft draft = ship.getDraft();
        float p = ship.getP();
        int dir = ship.getDir();
        int iRotateCW = Direction.rotateCW(dir, drawer.rotation);
        int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
        int iOriginalToRotatedX2 = this.city.originalToRotatedX(ship.getX(), ship.getY());
        float fDifferenceX = ((Direction.differenceX(iRotateCW) * p) + iOriginalToRotatedX2) - iOriginalToRotatedX;
        float fDifferenceY = ((p * Direction.differenceY(iRotateCW)) + this.city.originalToRotatedY(ship.getX(), ship.getY())) - iOriginalToRotatedY;
        if (fDifferenceY > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fDifferenceX < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fDifferenceX == fDifferenceY) {
            drawer.engine.setType(20);
            drawer.draw(Resources.IMAGE_WORLD, Math.round((((fDifferenceX + fDifferenceY) + 1.0f) * 32.0f) / 2.0f), (Math.round(((fDifferenceX - fDifferenceY) * 16.0f) / 2.0f) + 4) - ((int) (this.city.getTiles().getTerrainAvgHeight(i, i2) * 12.0f)), draft.frames[(ship.getFrame() * 4) + (((Direction.toIndex(dir) + 4) - drawer.rotation) % 4)]);
        }
    }
}
