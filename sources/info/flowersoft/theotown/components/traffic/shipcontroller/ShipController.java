package info.flowersoft.theotown.components.traffic.shipcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Ship;
import info.flowersoft.theotown.draft.ShipDraft;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ShipController {
    public final City city;
    public List<Ship> ships = new ArrayList();
    public ShipSpawner spawner;
    public final Tiles tiles;

    public abstract String getId();

    public abstract void load(JsonReader jsonReader) throws IOException;

    public abstract void onTarget(Ship ship);

    public abstract void save(JsonWriter jsonWriter) throws IOException;

    public abstract void update();

    public ShipController(City city, ShipSpawner shipSpawner) {
        this.city = city;
        this.tiles = city.getTiles();
        this.spawner = shipSpawner;
    }

    public void registerShip(Ship ship) {
        this.ships.add(ship);
    }

    public void unregisterShip(Ship ship) {
        this.ships.remove(ship);
    }

    public boolean isSuitableForShip(int i, int i2) {
        if (this.city.isValid(i, i2)) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            if (this.tiles.getBuilding(i, i2) == null && this.tiles.getWire(i, i2, 0) == null && ground.isWater() && !ground.isBorder() && this.tiles.getShip(i, i2) == null) {
                return true;
            }
        }
        return false;
    }

    public boolean isSuitableForShip(ShipDraft shipDraft, int i, int i2, int i3) {
        int i4 = shipDraft.length;
        int iDifferenceX = Direction.differenceX(i3);
        int iDifferenceY = Direction.differenceY(i3);
        if (i3 == 0) {
            iDifferenceY = 0;
            iDifferenceX = 1;
        }
        for (int i5 = 0; i5 <= i4; i5++) {
            if (!isSuitableForShip((i5 * iDifferenceX) + i, (i5 * iDifferenceY) + i2)) {
                return false;
            }
        }
        return true;
    }
}
