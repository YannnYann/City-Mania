package info.flowersoft.theotown.components.notification.condition;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.AbstractCondition;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Condition implements AbstractCondition {
    public City city;

    @Override // info.flowersoft.theotown.city.components.AbstractCondition
    public abstract boolean evaluate();

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public Condition(City city) {
        this.city = city;
    }

    public City getCity() {
        return this.city;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }
}
