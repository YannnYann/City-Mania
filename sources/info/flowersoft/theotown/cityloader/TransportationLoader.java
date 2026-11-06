package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultTransportation;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TransportationLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "transportation";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        jsonReader.beginObject();
        DefaultTransportation defaultTransportation = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("component")) {
                jsonReader.beginObject();
                defaultTransportation = new DefaultTransportation(jsonReader, city);
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        if (defaultTransportation == null) {
            defaultTransportation = new DefaultTransportation();
        }
        city.applyComponent(defaultTransportation);
        jsonReader.endObject();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        city.applyComponent(new DefaultTransportation());
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name("component");
        jsonWriter.beginObject();
        ((DefaultTransportation) city.getComponent(16)).save(jsonWriter);
        jsonWriter.endObject();
        jsonWriter.endObject();
    }
}
