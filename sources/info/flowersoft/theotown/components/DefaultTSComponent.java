package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.BusStopList;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.RoadList;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.components.transportationsystem.TSSystemDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.scripting.libraries.TSLibrary;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultTSComponent extends CityComponent {
    public final Map<String, TSSystem> systemById;
    public final List<TSSystem> systems;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 22;
    }

    public DefaultTSComponent(City city) {
        this.systems = new ArrayList();
        this.systemById = new HashMap();
        for (TSSystemDraft tSSystemDraft : ((TSLibrary) ScriptingEnvironment.getInstance().getLibrary(TSLibrary.class)).getModels()) {
            TSSystem tSSystem = new TSSystem(city, tSSystemDraft);
            this.systems.add(tSSystem);
            this.systemById.put(tSSystemDraft.getId(), tSSystem);
        }
    }

    public DefaultTSComponent(JsonReader jsonReader, City city) throws IOException {
        this(city);
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("systems")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    TSSystem tSSystem = this.systemById.get(jsonReader.nextName());
                    if (tSSystem != null) {
                        jsonReader.beginObject();
                        tSSystem.load(jsonReader);
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

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("systems").beginObject();
        for (TSSystem tSSystem : this.systems) {
            jsonWriter.name(tSSystem.getId());
            jsonWriter.beginObject();
            tSSystem.save(jsonWriter);
            jsonWriter.endObject();
        }
        jsonWriter.endObject();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        city.getBuildings().addListener(new BuildingList.Listener() { // from class: info.flowersoft.theotown.components.DefaultTSComponent.1
            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void finished(Building building) {
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void upgraded(Building building, UpgradeDraft upgradeDraft) {
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void add(Building building) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onAddBuilding(building);
                }
            }

            @Override // info.flowersoft.theotown.city.BuildingList.Listener
            public void remove(Building building) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onRemoveBuilding(building);
                }
            }
        });
        city.getBusStops().addListener(new BusStopList.Listener() { // from class: info.flowersoft.theotown.components.DefaultTSComponent.2
            @Override // info.flowersoft.theotown.city.BusStopList.Listener
            public void add(BusStop busStop) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onAddBusStop(busStop);
                }
            }

            @Override // info.flowersoft.theotown.city.BusStopList.Listener
            public void remove(BusStop busStop) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onRemoveBusStop(busStop);
                }
            }
        });
        city.getRoads().addListener(new RoadList.Listener() { // from class: info.flowersoft.theotown.components.DefaultTSComponent.3
            @Override // info.flowersoft.theotown.city.RoadList.Listener
            public void add(Road road) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onAddRoad(road);
                }
            }

            @Override // info.flowersoft.theotown.city.RoadList.Listener
            public void remove(Road road) {
                for (int i = 0; i < DefaultTSComponent.this.systems.size(); i++) {
                    ((TSSystem) DefaultTSComponent.this.systems.get(i)).onRemoveRoad(road);
                }
            }
        });
    }

    public List<TSSystem> getSystems() {
        return this.systems;
    }

    public void prepareTSSystems() {
        for (int i = 0; i < this.systems.size(); i++) {
            this.systems.get(i).prepare();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        for (int i = 0; i < this.systems.size(); i++) {
            this.systems.get(i).update();
        }
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent, info.flowersoft.theotown.city.components.DateListener
    public void nextDay() {
        super.nextDay();
        for (int i = 0; i < this.systems.size(); i++) {
            this.systems.get(i).nextDay();
        }
    }

    public TSSystem getSystemObjectById(String str) {
        return this.systemById.get(str);
    }
}
