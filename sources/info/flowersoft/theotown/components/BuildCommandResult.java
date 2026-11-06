package info.flowersoft.theotown.components;

import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class BuildCommandResult implements Saveable {
    public int area;
    public Attribute badAttribute;
    public long day;
    public int displacedPeople;
    public int level;
    public int maxPeople;
    public int minPeople;
    public boolean noSpace;
    public float pressure;
    public boolean remove;
    public int size;
    public boolean successful;
    public int x;
    public int y;
    public ZoneDraft zone;

    public BuildCommandResult(ZoneDraft zoneDraft, int i, boolean z, float f, boolean z2, int i2, long j, int i3, int i4, int i5, int i6, int i7, int i8, boolean z3, Attribute attribute) {
        this.zone = zoneDraft;
        this.level = i;
        this.remove = z;
        this.pressure = f;
        this.successful = z2;
        this.area = i2;
        this.day = j;
        this.x = i3;
        this.y = i4;
        this.size = i5;
        this.displacedPeople = i6;
        this.minPeople = 0;
        this.maxPeople = 0;
        this.noSpace = z3;
        this.badAttribute = attribute;
    }

    public BuildCommandResult(JsonReader jsonReader) throws IOException {
        load(jsonReader);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "pressure":
                    this.pressure = jsonReader.nextFloat();
                    break;
                case "people":
                    this.displacedPeople = jsonReader.nextInt();
                    break;
                case "remove":
                    this.remove = jsonReader.nextBoolean();
                    break;
                case "no space":
                    this.noSpace = jsonReader.nextBoolean();
                    break;
                case "successful":
                    this.successful = jsonReader.nextBoolean();
                    break;
                case "min people":
                    this.minPeople = jsonReader.nextInt();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "day":
                    this.day = jsonReader.nextLong();
                    break;
                case "area":
                    this.area = jsonReader.nextInt();
                    break;
                case "size":
                    this.size = jsonReader.nextInt();
                    break;
                case "zone":
                    this.zone = (ZoneDraft) Drafts.ALL.get(jsonReader.nextString());
                    break;
                case "level":
                    this.level = jsonReader.nextInt();
                    break;
                case "max people":
                    this.maxPeople = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        if (this.zone != null) {
            jsonWriter.name("zone").value(this.zone.id);
        }
        jsonWriter.name("level").value(this.level);
        jsonWriter.name("remove").value(this.remove);
        jsonWriter.name("pressure").value(this.pressure);
        jsonWriter.name("successful").value(this.successful);
        if (this.area != 0) {
            jsonWriter.name("area").value(this.area);
        }
        jsonWriter.name("day").value(this.day);
        if (this.x != 0) {
            jsonWriter.name("x").value(this.x);
        }
        if (this.y != 0) {
            jsonWriter.name("y").value(this.y);
        }
        if (this.size != 0) {
            jsonWriter.name("size").value(this.size);
        }
        if (this.displacedPeople != 0) {
            jsonWriter.name("people").value(this.displacedPeople);
        }
        if (this.minPeople != 0) {
            jsonWriter.name("min people").value(this.minPeople);
        }
        if (this.maxPeople != 0) {
            jsonWriter.name("max people").value(this.maxPeople);
        }
        if (this.noSpace) {
            jsonWriter.name("no space").value(this.noSpace);
        }
    }

    public ZoneDraft getZone() {
        return this.zone;
    }

    public int getLevel() {
        return this.level;
    }

    public boolean isRemove() {
        return this.remove;
    }

    public float getPressure() {
        return this.pressure;
    }

    public boolean isSuccessful() {
        return this.successful;
    }

    public int getArea() {
        return this.area;
    }

    public long getDay() {
        return this.day;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getSize() {
        return this.size;
    }

    public int getDisplacedPeople() {
        return this.displacedPeople;
    }

    public int getMinPeople() {
        return this.minPeople;
    }

    public int getMaxPeople() {
        return this.maxPeople;
    }

    public boolean hasNoSpace() {
        return this.noSpace;
    }

    public Attribute getBadAttribute() {
        return this.badAttribute;
    }
}
