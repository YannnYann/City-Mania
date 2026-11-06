package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.buildingcontroller.BodyDisposalController;
import info.flowersoft.theotown.components.buildingcontroller.BuildingController;
import info.flowersoft.theotown.components.buildingcontroller.ConstructionController;
import info.flowersoft.theotown.components.buildingcontroller.FullHospitalController;
import info.flowersoft.theotown.components.buildingcontroller.FullSchoolController;
import info.flowersoft.theotown.components.buildingcontroller.HasRoadController;
import info.flowersoft.theotown.components.buildingcontroller.PollutedWaterPumpController;
import info.flowersoft.theotown.components.buildingcontroller.RangerController;
import info.flowersoft.theotown.components.buildingcontroller.TransitionBuildingController;
import info.flowersoft.theotown.components.buildingcontroller.WasteController;
import info.flowersoft.theotown.components.coverage.CoverageCalculator;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.util.SafeListAccessor;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingWorker extends CyclicWorker implements Runnable, Saveable {
    public final SafeListAccessor<Building> buildings;
    public final City city;
    public final List<BuildingController> controllers;

    public BuildingWorker(City city, CoverageCalculator coverageCalculator) {
        this.city = city;
        this.buildings = new SafeListAccessor<>(city.getBuildings());
        ArrayList arrayList = new ArrayList();
        this.controllers = arrayList;
        arrayList.add(new ConstructionController(city));
        arrayList.add(new HasRoadController(city));
        arrayList.add(new RangerController(city));
        arrayList.add(new WasteController(city));
        arrayList.add(new BodyDisposalController(city));
        arrayList.add(new PollutedWaterPumpController(city));
        arrayList.add(new FullSchoolController());
        arrayList.add(new FullHospitalController());
        arrayList.add(new TransitionBuildingController(city));
        setTask(this);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        for (int i = 0; i < this.controllers.size(); i++) {
            BuildingController buildingController = this.controllers.get(i);
            if (map.put(buildingController.getTag(), buildingController) != null) {
                throw new IllegalStateException("Two controllers with tag " + buildingController.getTag());
            }
        }
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("controllers")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    BuildingController buildingController2 = (BuildingController) map.get(jsonReader.nextName());
                    if (buildingController2 != null) {
                        jsonReader.beginObject();
                        buildingController2.load(jsonReader);
                        jsonReader.endObject();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("controllers");
        jsonWriter.beginObject();
        for (int i = 0; i < this.controllers.size(); i++) {
            BuildingController buildingController = this.controllers.get(i);
            jsonWriter.name(buildingController.getTag());
            jsonWriter.beginObject();
            buildingController.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
    }

    public void prepare() {
        for (int i = 0; i < this.controllers.size(); i++) {
            this.controllers.get(i).prepare();
        }
    }

    public <T extends BuildingController> T getController(Class<T> cls) {
        for (int i = 0; i < this.controllers.size(); i++) {
            T t = (T) this.controllers.get(i);
            if (t.getClass().equals(cls)) {
                return t;
            }
        }
        return null;
    }

    public final int[] collectControllersForBuilding(Building building) {
        IntList intList = new IntList(0);
        BuildingDraft draft = building.getDraft();
        for (int i = 0; i < this.controllers.size(); i++) {
            if (this.controllers.get(i).canHandle(draft)) {
                intList.add(i);
            }
        }
        return intList.reduce();
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
        for (Building building : this.buildings) {
            int[] iArrCollectControllersForBuilding = building._BUILDING_CONTROLLERS;
            if (iArrCollectControllersForBuilding == null) {
                iArrCollectControllersForBuilding = collectControllersForBuilding(building);
                building._BUILDING_CONTROLLERS = iArrCollectControllersForBuilding;
            }
            for (int i3 : iArrCollectControllersForBuilding) {
                this.controllers.get(i3).accept(building);
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
}
