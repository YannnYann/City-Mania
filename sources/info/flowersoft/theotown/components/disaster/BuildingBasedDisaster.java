package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.SortedList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuildingBasedDisaster extends Disaster {
    public BuildingDraft[] buildingDrafts;
    public List<SortedList<Building>> buildingLists = new ArrayList();

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
    }

    public BuildingBasedDisaster(String[] strArr) {
        this.buildingDrafts = new BuildingDraft[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            this.buildingDrafts[i] = (BuildingDraft) Drafts.ALL.get(strArr[i]);
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void bind(City city) {
        super.bind(city);
        for (int i = 0; i < this.buildingDrafts.length; i++) {
            this.buildingLists.add(city.getBuildings().getBuildingsOfDraft(this.buildingDrafts[i]));
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.nextName().getClass();
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        for (int i = 0; i < this.buildingLists.size(); i++) {
            if (!this.buildingLists.get(i).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        CityModifier cityModifier = new CityModifier(this.city, true);
        cityModifier.remove(i, i2, (LuaValue) null);
        cityModifier.build(this.buildingDrafts[0], i, i2, -1, (LuaValue) null);
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public int[] getLocation() {
        Building building;
        for (int i = 0; i < this.buildingLists.size(); i++) {
            if (!this.buildingLists.get(i).isEmpty() && (building = this.buildingLists.get(i).get(0)) != null) {
                return new int[]{building.getX(), building.getY()};
            }
        }
        return null;
    }
}
