package info.flowersoft.theotown.components.airport;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.util.Saveable;
import info.flowersoft.theotown.util.TimeUnlockable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class Lane implements Saveable {
    public Airplane airplane;
    public int id;
    public String originalName;
    public boolean realLane;
    public int sx;
    public int sy;
    public int tx;
    public int ty;
    public String name = "";
    public TimeUnlockable timeUnlockable = TimeUnlockable.createUnlocked();

    public final void initOriginalName(City city) {
        this.originalName = "LANE " + (this.id + 1);
    }

    public Lane(int i, City city) {
        this.id = i;
        initOriginalName(city);
    }

    public Lane(JsonReader jsonReader, City city) throws IOException {
        load(jsonReader);
        initOriginalName(city);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "active":
                    this.realLane = jsonReader.nextBoolean();
                    break;
                case "id":
                    this.id = jsonReader.nextInt();
                    break;
                case "lane":
                    jsonReader.beginArray();
                    this.sx = jsonReader.nextInt();
                    this.sy = jsonReader.nextInt();
                    this.tx = jsonReader.nextInt();
                    this.ty = jsonReader.nextInt();
                    jsonReader.endArray();
                    break;
                case "name":
                    this.name = jsonReader.nextString();
                    break;
                case "time unlockable":
                    jsonReader.beginObject();
                    this.timeUnlockable = new TimeUnlockable(jsonReader);
                    jsonReader.endObject();
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
        jsonWriter.name("active").value(this.realLane);
        if (this.realLane) {
            jsonWriter.name("lane").beginArray();
            jsonWriter.value(this.sx);
            jsonWriter.value(this.sy);
            jsonWriter.value(this.tx);
            jsonWriter.value(this.ty);
            jsonWriter.endArray();
        }
        jsonWriter.name("time unlockable").beginObject();
        this.timeUnlockable.save(jsonWriter);
        jsonWriter.endObject();
    }

    public Airplane getAirplane() {
        return this.airplane;
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

    public boolean hasRealLane() {
        return this.realLane;
    }

    public boolean hasAirplane() {
        return this.airplane != null;
    }

    public boolean isUnlocked() {
        return this.timeUnlockable.isUnlocked();
    }

    public TimeUnlockable getTimeUnlockable() {
        return this.timeUnlockable;
    }

    public boolean isActive() {
        return hasRealLane() && hasAirplane() && isUnlocked();
    }

    public int getSx() {
        return this.sx;
    }

    public int getSy() {
        return this.sy;
    }

    public int getTx() {
        return this.tx;
    }

    public int getTy() {
        return this.ty;
    }

    public int length() {
        return (((this.tx - this.sx) + this.ty) - this.sy) + 1;
    }

    public int getDistance(int i, int i2) {
        int i3 = this.sy;
        int i4 = this.ty;
        if (i3 == i4) {
            return Math.max(this.sx - i, i - this.tx) + Math.abs(i2 - this.sy);
        }
        return Math.max(i3 - i2, i2 - i4) + Math.abs(i - this.sx);
    }

    public String toString() {
        if (!this.realLane) {
            return "Lane non realLane";
        }
        return "Lane@" + this.sx + "," + this.sy + " - " + this.tx + "," + this.ty;
    }
}
