package info.flowersoft.theotown.components.disaster;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GenericBuildingDisaster extends Disaster {
    public List<BuildingDraft> disasterBuildingDrafts = new ArrayList();

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
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
    public boolean saveMe() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void bind(City city) {
        super.bind(city);
        for (BuildingDraft buildingDraft : Drafts.BUILDINGS) {
            if (buildingDraft.disaster) {
                this.disasterBuildingDrafts.add(buildingDraft);
            }
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
        for (int i = 0; i < this.disasterBuildingDrafts.size(); i++) {
            if (!this.city.getBuildings().getBuildingsOfDraft(this.disasterBuildingDrafts.get(i)).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public int[] getLocation() {
        synchronized (this.city) {
            for (int i = 0; i < this.disasterBuildingDrafts.size(); i++) {
                try {
                    if (!this.city.getBuildings().getBuildingsOfDraft(this.disasterBuildingDrafts.get(i)).isEmpty()) {
                        Building building = this.city.getBuildings().getBuildingsOfDraft(this.disasterBuildingDrafts.get(i)).get(0);
                        return new int[]{building.getX(), building.getY()};
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return null;
        }
    }
}
