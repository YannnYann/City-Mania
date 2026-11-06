package info.flowersoft.theotown.components.airport;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.FlyingObjectDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class Airplane implements Saveable {
    public FlyingObjectDraft airplaneDraft;
    public int frame;
    public int id;
    public long lastDayInCity;
    public String name = "";
    public String originalName;

    public Airplane(JsonReader jsonReader, City city) throws IOException {
        load(jsonReader);
        resolveOriginalName(city);
    }

    public Airplane(int i, FlyingObjectDraft flyingObjectDraft, int i2, City city) {
        this.id = i;
        this.airplaneDraft = flyingObjectDraft;
        this.frame = i2;
        resolveOriginalName(city);
    }

    public int getFrame() {
        return this.frame;
    }

    public long getLastDayInCity() {
        return this.lastDayInCity;
    }

    public void setLastDayInCity(long j) {
        this.lastDayInCity = j;
    }

    public final void resolveOriginalName(City city) {
        this.originalName = new DraftLocalizer(city).getTitle(this.airplaneDraft) + "-" + Math.abs(city.getId().hashCode() % 1000) + "-" + (this.id + 1);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "airplane":
                    String strNextString = jsonReader.nextString();
                    FlyingObjectDraft flyingObjectDraft = (FlyingObjectDraft) Drafts.ALL.get(strNextString);
                    this.airplaneDraft = flyingObjectDraft;
                    if (flyingObjectDraft == null) {
                        throw new IllegalArgumentException("Could not find airplane of id " + strNextString);
                    }
                    break;
                    break;
                case "last day in city":
                    this.lastDayInCity = jsonReader.nextLong();
                    break;
                case "id":
                    this.id = jsonReader.nextInt();
                    break;
                case "name":
                    this.name = jsonReader.nextString();
                    break;
                case "frame":
                    this.frame = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name("name").value(this.name);
        jsonWriter.name("airplane").value(this.airplaneDraft.id);
        jsonWriter.name("last day in city").value(this.lastDayInCity);
        jsonWriter.name("frame").value(this.frame);
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name.isEmpty() ? this.originalName : this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public FlyingObjectDraft getDraft() {
        return this.airplaneDraft;
    }
}
