package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultSigns;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class SignLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "signs";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        jsonReader.beginObject();
        DefaultSigns defaultSigns = new DefaultSigns();
        defaultSigns.load(jsonReader);
        city.applyComponent(defaultSigns);
        jsonReader.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        city.applyComponent(new DefaultSigns());
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginObject();
        ((DefaultSigns) city.getComponent(18)).save(jsonWriter);
        jsonWriter.endObject();
    }
}
