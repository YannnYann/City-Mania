package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FlyingObjectController implements Saveable {
    public final City city;
    public List<FlyingObject> flyingObjects = new ArrayList();
    public FlyingObjectSpawner spawner;
    public final Tiles tiles;

    public abstract String getTag();

    public abstract void onSpawned(FlyingObject flyingObject);

    public abstract void onTarget(FlyingObject flyingObject);

    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public abstract void update();

    public FlyingObjectController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        this.city = city;
        this.tiles = city.getTiles();
        this.spawner = flyingObjectSpawner;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public void register(FlyingObject flyingObject) {
        this.flyingObjects.add(flyingObject);
    }

    public void unregister(FlyingObject flyingObject) {
        this.flyingObjects.remove(flyingObject);
    }
}
