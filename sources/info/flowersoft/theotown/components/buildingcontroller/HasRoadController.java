package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class HasRoadController implements BuildingController {
    public final City city;
    public final CityModifier modifier;

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public HasRoadController(City city) {
        this.city = city;
        this.modifier = new CityModifier(city, true);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        return buildingDraft.needsRoad;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        building.setHasRoad(this.modifier.hasRoadTransfer(building) || this.city.isUber());
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "road";
    }
}
