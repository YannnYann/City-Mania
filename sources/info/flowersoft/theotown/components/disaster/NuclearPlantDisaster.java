package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Catastrophe;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class NuclearPlantDisaster extends Disaster {
    public FireDisaster fireDisaster;
    public final List<Building> workingPlants = new ArrayList();
    public final BuildingDraft nuclearPlantDraft = (BuildingDraft) Drafts.ALL.get("$nuclearplant00");

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.nextName();
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void bind(City city) {
        super.bind(city);
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void prepare() {
        for (Disaster disaster : ((Catastrophe) this.city.getComponent(6)).getDisasters()) {
            if (disaster instanceof FireDisaster) {
                this.fireDisaster = (FireDisaster) disaster;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
        SortedList<Building> buildingsOfDraft = this.city.getBuildings().getBuildingsOfDraft(this.nuclearPlantDraft);
        long absoluteDay = this.date.getAbsoluteDay();
        for (Building building : buildingsOfDraft) {
            if (!building.isWorking() && this.workingPlants.contains(building) && !building.hasWater()) {
                this.fireDisaster.issue(building);
            }
        }
        this.workingPlants.clear();
        for (Building building2 : buildingsOfDraft) {
            if (building2.isWorking() && absoluteDay - building2.getBuildDay() >= 5) {
                this.workingPlants.add(building2);
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public int[] getLocation() {
        return new int[0];
    }
}
