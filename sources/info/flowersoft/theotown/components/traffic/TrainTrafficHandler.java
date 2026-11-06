package info.flowersoft.theotown.components.traffic;

import info.flowersoft.theotown.city.City;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class TrainTrafficHandler extends TrafficHandler {
    @Override // info.flowersoft.theotown.components.traffic.TrafficHandler
    public void prepare() {
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public TrainTrafficHandler(City city) {
        super(city);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("trains")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.skipValue();
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }
}
