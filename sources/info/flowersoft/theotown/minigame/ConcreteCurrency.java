package info.flowersoft.theotown.minigame;

import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConcreteCurrency implements Currency {
    public double estate;

    @Override // info.flowersoft.theotown.minigame.Currency
    public boolean canSpend(double d) {
        return d <= this.estate;
    }

    @Override // info.flowersoft.theotown.minigame.Currency
    public void spend(double d) {
        this.estate -= d;
    }

    @Override // info.flowersoft.theotown.minigame.Currency
    public double getEstate() {
        return this.estate;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("estate")) {
                this.estate = jsonReader.nextDouble();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("estate").value(Math.min(this.estate, Double.MAX_VALUE));
    }
}
