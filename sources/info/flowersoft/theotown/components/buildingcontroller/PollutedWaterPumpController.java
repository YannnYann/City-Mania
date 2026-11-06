package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.draft.BuildingDraft;
import io.blueflower.stapel2d.util.MinimumSelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class PollutedWaterPumpController implements BuildingController {
    public City city;
    public DefaultInfluence influence;
    public Building lastBuilding;
    public float lastValue;
    public MinimumSelector<Building> minimumSelector = new MinimumSelector<>();

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public PollutedWaterPumpController(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        return buildingDraft.water > 0;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
        this.influence = (DefaultInfluence) this.city.getComponent(2);
        if (this.minimumSelector.hasResult()) {
            this.lastBuilding = this.minimumSelector.getMinimum();
            this.lastValue = 1.0f - this.minimumSelector.getMinimumValue();
        } else {
            this.lastBuilding = null;
        }
        this.minimumSelector.clear();
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        this.minimumSelector.assume(building, 1.0f - this.influence.getInfluence(building, InfluenceType.POLLUTION.ordinal()));
    }

    public Building getLastBuilding() {
        return this.lastBuilding;
    }

    public float getLastValue() {
        return this.lastValue;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "polluted water";
    }
}
