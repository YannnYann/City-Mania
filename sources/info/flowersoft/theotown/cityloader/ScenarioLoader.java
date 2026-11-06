package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultScenario;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScenarioLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "scenario";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader src, City city) throws IOException {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(city, "city");
        src.beginObject();
        while (src.hasNext()) {
            src.nextName();
            src.skipValue();
        }
        src.endObject();
        city.applyComponent(new DefaultScenario());
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        Intrinsics.checkNotNullParameter(city, "city");
        city.applyComponent(new DefaultScenario());
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter dest, City city) throws IOException {
        Intrinsics.checkNotNullParameter(dest, "dest");
        Intrinsics.checkNotNullParameter(city, "city");
        dest.beginObject();
        dest.endObject();
    }
}
