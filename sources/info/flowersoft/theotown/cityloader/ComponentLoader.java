package info.flowersoft.theotown.cityloader;

import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.MissingDraftException;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ComponentLoader {

    /* JADX INFO: renamed from: info, reason: collision with root package name */
    public LightCityInfo f3927info;
    public Set<MissingDraftException> missingDrafts = new HashSet();

    public abstract String getTag();

    public abstract City loadNoSource(City city);

    public City loadRaw(JsonReader jsonReader, City city) throws IOException {
        return city;
    }

    public abstract City loadTag(JsonReader jsonReader, City city) throws IOException;

    public void saveRaw(JsonWriter jsonWriter, City city) throws IOException {
    }

    public abstract void saveTag(JsonWriter jsonWriter, City city) throws IOException;

    public void setInfo(LightCityInfo lightCityInfo) {
        this.f3927info = lightCityInfo;
    }

    public void afterLoad(City city) {
        if (this.missingDrafts.isEmpty()) {
            return;
        }
        for (MissingDraftException missingDraftException : this.missingDrafts) {
            Gdx.app.error("Loader", getTag() + ": " + missingDraftException.getMessage());
        }
    }
}
