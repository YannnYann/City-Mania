package info.flowersoft.theotown.cityloader;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.resources.MissingDraftException;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopLoader extends ComponentLoader {
    public String TAG_BUS_STOPS = "bus stops";

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadNoSource(City city) {
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public String getTag() {
        return this.TAG_BUS_STOPS;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public City loadTag(JsonReader jsonReader, City city) throws IOException {
        Tiles tiles = city.getTiles();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            try {
                BusStop busStop = new BusStop(jsonReader);
                Road road = tiles.getRoad(busStop.getX(), busStop.getY(), busStop.level);
                if (road != null && road.getBusStop() == null && road.dLevel == 0) {
                    road.setBusStop(busStop);
                    city.getBusStops().add(busStop);
                }
            } catch (MissingDraftException e) {
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                this.missingDrafts.add(e);
            } catch (IllegalArgumentException e2) {
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                e2.printStackTrace();
            }
            jsonReader.endObject();
        }
        jsonReader.endArray();
        return city;
    }

    @Override // info.flowersoft.theotown.cityloader.ComponentLoader
    public void saveTag(JsonWriter jsonWriter, City city) throws IOException {
        jsonWriter.beginArray();
        for (BusStop busStop : city.getBusStops()) {
            jsonWriter.beginObject();
            busStop.save(jsonWriter, true);
            jsonWriter.endObject();
        }
        jsonWriter.endArray();
    }
}
