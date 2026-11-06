package info.flowersoft.theotown.components.buildingcontroller;

import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractOverloadedAspectController implements BuildingController {
    public final IntList aspects = new IntList();
    public Building currentSelection;
    public Building lastBuilding;

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void afterPass() {
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }

    public void addAspect(int i) {
        this.aspects.add(i);
    }

    public Building getOverloaded() {
        return this.lastBuilding;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public boolean canHandle(BuildingDraft buildingDraft) {
        for (int i = 0; i < this.aspects.size(); i++) {
            if (buildingDraft.neededAspectAmount[this.aspects.get(i)] < 0) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void beforePass() {
        this.lastBuilding = this.currentSelection;
        this.currentSelection = null;
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public void accept(Building building) {
        if (building.isOverloaded()) {
            this.currentSelection = building;
        }
    }
}
