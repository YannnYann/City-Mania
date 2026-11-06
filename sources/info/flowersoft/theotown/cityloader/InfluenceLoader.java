package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultInfluence;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class InfluenceLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "influence";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        jsonReader.beginObject();
        city.applyComponent(new DefaultInfluence(jsonReader, city));
        jsonReader.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        city.applyComponent(new DefaultInfluence(city.getWidth(), city.getHeight()));
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginObject();
        ((DefaultInfluence) city.getComponent(2)).save(jsonWriter);
        jsonWriter.endObject();
    }
}
