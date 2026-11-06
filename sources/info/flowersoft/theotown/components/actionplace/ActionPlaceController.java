package info.flowersoft.theotown.components.actionplace;

import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ActionPlaceController {
    public final JSONObject config = Resources.getSpecificConfig("action place");
    public final List<List<ActionPlaceHandler>> handlersPerType = new ArrayList();
    public final List<List<MapArea>> targets = new ArrayList();
    public final int[] activeSolvers = new int[ActionPlaceType.COUNT];

    public void update() {
    }

    public ActionPlaceController() {
        for (int i = 0; i < ActionPlaceType.COUNT; i++) {
            this.targets.add(new ArrayList());
            this.handlersPerType.add(new ArrayList());
        }
    }

    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            int i = 0;
            if (strNextName.equals("controllers")) {
                jsonReader.beginArray();
                while (i < ActionPlaceType.COUNT && jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextName2 = jsonReader.nextName();
                    strNextName2.getClass();
                    if (strNextName2.equals("targets")) {
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            MapArea mapArea = new MapArea();
                            mapArea.load(jsonReader);
                            this.targets.get(i).add(mapArea);
                        }
                        jsonReader.endArray();
                    } else {
                        jsonReader.skipValue();
                    }
                    jsonReader.endObject();
                    i++;
                }
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
            } else if (strNextName.equals("active")) {
                jsonReader.beginArray();
                while (i < ActionPlaceType.COUNT && jsonReader.hasNext()) {
                    if (jsonReader.nextBoolean()) {
                        MapArea mapArea2 = new MapArea();
                        mapArea2.load(jsonReader);
                        this.targets.get(i).add(mapArea2);
                        jsonReader.nextInt();
                    }
                    i++;
                }
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("controllers").beginArray();
        for (int i = 0; i < ActionPlaceType.COUNT; i++) {
            jsonWriter.beginObject();
            jsonWriter.name("targets").beginArray();
            for (int i2 = 0; i2 < this.targets.get(i).size(); i2++) {
                this.targets.get(i).get(i2).save(jsonWriter);
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }

    public synchronized void registerHandler(ActionPlaceHandler actionPlaceHandler, int i) {
        this.handlersPerType.get(i).add(actionPlaceHandler);
        if (isActive(i)) {
            actionPlaceHandler.notifyAction(this.targets.get(i), i);
        }
    }

    public synchronized boolean isActive(int i) {
        return !this.targets.get(i).isEmpty();
    }

    public synchronized void registerSolver(int i) {
        int[] iArr = this.activeSolvers;
        iArr[i] = iArr[i] + 1;
    }

    public synchronized void unregisterSolver(int i) {
        int[] iArr = this.activeSolvers;
        int i2 = iArr[i] - 1;
        iArr[i] = i2;
        if (i2 <= 0) {
            removeAllActionPlaces(i);
        }
    }

    public synchronized void addOrRemoveActionPlace(MapArea mapArea, int i) {
        if (isActive(i) && getClosestPlace(i, mapArea) != null) {
            removeActionPlace(i, mapArea);
            return;
        }
        int iOptInt = this.config.optInt("max places at once", 4);
        this.activeSolvers[i] = 0;
        this.targets.get(i).add(mapArea);
        while (this.targets.get(i).size() > iOptInt) {
            this.targets.get(i).remove(0);
        }
        for (int i2 = 0; i2 < this.handlersPerType.get(i).size(); i2++) {
            this.handlersPerType.get(i).get(i2).notifyAction(this.targets.get(i), i);
        }
    }

    public synchronized void removeActionPlace(int i, int i2, int i3) {
        MapArea closestPlace;
        if (isActive(i) && (closestPlace = getClosestPlace(i, i2, i3)) != null) {
            removeActionPlace(i, closestPlace);
        }
    }

    public synchronized void removeActionPlace(int i, MapArea mapArea) {
        MapArea closestPlace;
        try {
            if (isActive(i) && (closestPlace = getClosestPlace(i, mapArea)) != null) {
                if (this.targets.get(i).size() > 1) {
                    this.targets.get(i).remove(closestPlace);
                    this.activeSolvers[i] = 0;
                    for (int i2 = 0; i2 < this.handlersPerType.get(i).size(); i2++) {
                        this.handlersPerType.get(i).get(i2).notifyAction(this.targets.get(i), i);
                    }
                } else {
                    removeAllActionPlaces(i);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final MapArea getClosestPlace(int i, MapArea mapArea) {
        for (int i2 = 0; i2 < this.targets.get(i).size(); i2++) {
            MapArea mapArea2 = this.targets.get(i).get(i2);
            if (mapArea2.intersectsBB(mapArea)) {
                return mapArea2;
            }
        }
        return null;
    }

    public final MapArea getClosestPlace(int i, int i2, int i3) {
        MapArea mapArea = null;
        float f = Float.POSITIVE_INFINITY;
        for (int i4 = 0; i4 < this.targets.get(i).size(); i4++) {
            MapArea mapArea2 = this.targets.get(i).get(i4);
            float centerX = mapArea2.getCenterX() - i2;
            float centerY = mapArea2.getCenterY() - i3;
            float f2 = (centerX * centerX) + (centerY * centerY);
            if (f2 < f) {
                mapArea = mapArea2;
                f = f2;
            }
        }
        return mapArea;
    }

    public synchronized void removeAllActionPlaces(int i) {
        for (int i2 = 0; i2 < this.handlersPerType.get(i).size(); i2++) {
            try {
                this.handlersPerType.get(i).get(i2).notifyNoAction(i);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.targets.get(i).clear();
        this.activeSolvers[i] = 0;
    }

    public synchronized List<MapArea> getAreas(int i) {
        return this.targets.get(i);
    }
}
