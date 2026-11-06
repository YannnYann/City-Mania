package info.flowersoft.theotown.components.disaster;

import com.ironsource.C3670j8;
import com.ironsource.mediationsdk.metadata.a;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Disaster;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class FloodingDisaster extends Disaster {
    public boolean active = false;
    public List<TileCoord> floodedTiles = new ArrayList();
    public int originalWaterTilesCount;
    public long startDay;
    public long targetDay;
    public int x;
    public int y;

    @Override // info.flowersoft.theotown.city.components.Disaster
    public float getAutoProbability() {
        return 0.005f;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "start day":
                    this.startDay = jsonReader.nextLong();
                    break;
                case "flooded tiles":
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        this.floodedTiles.add(new TileCoord(jsonReader));
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    break;
                case "active":
                    this.active = jsonReader.nextBoolean();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "target day":
                    this.targetDay = jsonReader.nextLong();
                    break;
                case "original water tiles":
                    this.originalWaterTilesCount = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("active").value(this.active);
        if (this.active) {
            jsonWriter.name("start day").value(this.startDay);
            jsonWriter.name("target day").value(this.targetDay);
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            jsonWriter.name("original water tiles").value(this.originalWaterTilesCount);
            jsonWriter.name("flooded tiles");
            jsonWriter.beginArray();
            for (int i = 0; i < this.floodedTiles.size(); i++) {
                TileCoord tileCoord = this.floodedTiles.get(i);
                jsonWriter.beginObject();
                tileCoord.save(jsonWriter);
                jsonWriter.endObject();
            }
            jsonWriter.endArray();
        }
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public void update() {
        if (this.active) {
            Tiles tiles = this.city.getTiles();
            long absoluteDay = this.date.getAbsoluteDay();
            int iMin = Math.min(Math.round(((1.0f - ((1.0f - (this.originalWaterTilesCount / (this.city.getWidth() * this.city.getHeight()))) * 0.5f)) * this.city.getWidth()) * this.city.getHeight()), this.originalWaterTilesCount + 400) - this.city.getWaterTiles();
            long j = this.startDay;
            float f = (absoluteDay - j) / (this.targetDay - j);
            if (f >= 1.0f) {
                this.active = false;
                for (TileCoord tileCoord : this.floodedTiles) {
                    this.modifier.buildTerrain(false, tileCoord.x, tileCoord.y, null);
                }
                this.floodedTiles.clear();
                return;
            }
            if (f < 0.8f) {
                for (int i = 0; i < iMin / 4; i++) {
                    ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
                    for (int iMax = Math.max(this.y - 16, 0); iMax <= Math.min(this.y + 16, this.city.getHeight() - 1); iMax++) {
                        for (int iMax2 = Math.max(this.x - 16, 0); iMax2 <= Math.min(this.x + 16, this.city.getWidth() - 1); iMax2++) {
                            Ground ground = tiles.getGround(iMax2, iMax);
                            Building building = tiles.getBuilding(iMax2, iMax);
                            if (!this.city.getTiles().isGroundWater(iMax2, iMax) && ((building == null || !building.isLocked()) && !ground.getDraft().dry && this.modifier.isWaterPlaceable(iMax2, iMax))) {
                                int i2 = iMax2 - this.x;
                                int i3 = iMax - this.y;
                                float fSqrt = (1.0f / ((float) Math.sqrt(((i2 * i2) + (i3 * i3)) + 1))) / (ground.height + 10);
                                for (int i4 = 1; i4 <= 8; i4 *= 2) {
                                    int iDifferenceX = Direction.differenceX(i4) + iMax2;
                                    int iDifferenceY = Direction.differenceY(i4) + iMax;
                                    if (!this.city.isValid(iDifferenceX, iDifferenceY) || this.city.getTiles().isGroundWater(iDifferenceX, iDifferenceY)) {
                                        fSqrt *= 8.0f;
                                    }
                                }
                                probabilitySelector.insert(new TileCoord(iMax2, iMax, ground.getDraft().id), fSqrt);
                            }
                        }
                    }
                    if (!probabilitySelector.hasResult()) {
                        return;
                    }
                    flood((TileCoord) probabilitySelector.getResult());
                }
                return;
            }
            Iterator<TileCoord> it = this.floodedTiles.iterator();
            while (it.hasNext()) {
                TileCoord next = it.next();
                if (Resources.RND.nextBoolean()) {
                    this.modifier.buildTerrain(false, next.x, next.y, null);
                    String str = next.groundId;
                    if (str != null) {
                        GroundDraft groundDraft = (GroundDraft) Drafts.get(str, GroundDraft.class);
                        Ground ground2 = this.city.getTiles().getGround(next.x, next.y);
                        if (groundDraft != null && ground2.getDraft() != groundDraft) {
                            ground2.setDraft(groundDraft);
                        }
                    }
                    it.remove();
                }
            }
        }
    }

    public final boolean flood(TileCoord tileCoord) {
        this.modifier.buildTerrain(true, tileCoord.x, tileCoord.y, null);
        this.floodedTiles.add(tileCoord);
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isActive() {
        return this.active;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean issue(int i, int i2) {
        if (this.active) {
            return false;
        }
        this.active = true;
        this.x = i;
        this.y = i2;
        long absoluteDay = this.date.getAbsoluteDay();
        this.startDay = absoluteDay;
        this.targetDay = absoluteDay + 25 + Math.round(Math.pow(Resources.RND.nextFloat(), 2.0d) * 20.0d);
        this.originalWaterTilesCount = this.city.getWaterTiles();
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public int[] getLocation() {
        return new int[]{this.x, this.y};
    }

    @Override // info.flowersoft.theotown.city.components.Disaster
    public boolean isAutoEnabled() {
        return Settings.disasterFlooding;
    }

    public class TileCoord implements Saveable {
        public String groundId;
        public int x;
        public int y;

        public TileCoord(int i, int i2, String str) {
            this.x = i;
            this.y = i2;
            this.groundId = str;
        }

        public TileCoord(JsonReader jsonReader) throws IOException {
            load(jsonReader);
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void load(JsonReader jsonReader) throws IOException {
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.getClass();
                switch (strNextName) {
                    case "x":
                        this.x = jsonReader.nextInt();
                        break;
                    case "y":
                        this.y = jsonReader.nextInt();
                        break;
                    case "id":
                        this.groundId = jsonReader.nextString();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
        }

        @Override // info.flowersoft.theotown.util.Saveable
        public void save(JsonWriter jsonWriter) throws IOException {
            jsonWriter.name("x").value(this.x);
            jsonWriter.name("y").value(this.y);
            if (this.groundId != null) {
                jsonWriter.name(C3670j8.x).value(this.groundId);
            }
        }

        public int hashCode() {
            return (this.x * a.o) + this.y;
        }

        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof TileCoord)) {
                TileCoord tileCoord = (TileCoord) obj;
                if (this.x == tileCoord.x && this.y == tileCoord.y) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(Locale.ENGLISH, "(%d, %d)", Integer.valueOf(this.x), Integer.valueOf(this.y));
        }
    }
}
