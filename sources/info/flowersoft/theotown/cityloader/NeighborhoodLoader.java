package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultNeighborhood;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class NeighborhoodLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "neighborhood";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        jsonReader.beginObject();
        city.applyComponent(new DefaultNeighborhood(city, jsonReader));
        jsonReader.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        city.applyComponent(new DefaultNeighborhood(city));
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginObject();
        ((DefaultNeighborhood) city.getComponent(21)).save(jsonWriter);
        jsonWriter.endObject();
    }
}
