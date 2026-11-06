package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.roadcontroller.InfluenceRoadController;
import info.flowersoft.theotown.components.roadcontroller.RoadController;
import info.flowersoft.theotown.components.roadcontroller.SnowRoadController;
import info.flowersoft.theotown.components.roadcontroller.TransitionRoadController;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadWorker extends CyclicWorker implements Runnable, Saveable {
    public final City city;
    public final List<RoadController> controllers;
    public final SafeListAccessor<Road> roads;

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public RoadWorker(City city) {
        ArrayList arrayList = new ArrayList();
        this.controllers = arrayList;
        this.city = city;
        this.roads = new SafeListAccessor<>(city.getRoads());
        arrayList.add(new TransitionRoadController(city));
        arrayList.add(new SnowRoadController(city));
        arrayList.add(new InfluenceRoadController(city));
        setTask(this);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public void prepare() {
        for (int i = 0; i < this.controllers.size(); i++) {
            this.controllers.get(i).prepare();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        synchronized (this.city) {
            for (int i2 = 0; i2 < this.controllers.size(); i2++) {
                try {
                    this.controllers.get(i2).beforePass();
                } finally {
                }
            }
        }
        for (Road road : this.roads) {
            for (int i3 = 0; i3 < this.controllers.size(); i3++) {
                RoadController roadController = this.controllers.get(i3);
                if (roadController.canHandle(road.draft)) {
                    roadController.accept(road);
                }
            }
        }
        synchronized (this.city) {
            for (i = 0; i < this.controllers.size(); i++) {
                try {
                    this.controllers.get(i).afterPass();
                } finally {
                }
            }
        }
    }

    public <T extends RoadController> T getController(Class<T> cls) {
        for (int i = 0; i < this.controllers.size(); i++) {
            T t = (T) this.controllers.get(i);
            if (t.getClass().equals(cls)) {
                return t;
            }
        }
        return null;
    }
}
