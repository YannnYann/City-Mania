package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class AirportLoader extends ComponentLoader {
    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return "airport";
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        DefaultAirport defaultAirport = new DefaultAirport(city);
        jsonReader.beginObject();
        defaultAirport.load(jsonReader);
        jsonReader.endObject();
        city.applyComponent(defaultAirport);
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        city.applyComponent(new DefaultAirport(city));
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        DefaultAirport defaultAirport = (DefaultAirport) city.getComponent(19);
        jsonWriter.beginObject();
        defaultAirport.save(jsonWriter);
        jsonWriter.endObject();
    }
}
