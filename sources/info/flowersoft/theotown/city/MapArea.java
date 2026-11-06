package info.flowersoft.theotown.city;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class MapArea implements Saveable {
    public final IntList parcels = new IntList(16);
    public int[] boundingBox = null;

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == 1) {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                addParcel(jsonReader.nextInt(), jsonReader.nextInt(), 0);
            }
            jsonReader.endArray();
            return;
        }
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("xyl")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    addParcel(jsonReader.nextInt(), jsonReader.nextInt(), jsonReader.nextInt());
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name("xyl");
        jsonWriter.beginArray();
        for (int i = 0; i < this.parcels.size(); i++) {
            jsonWriter.value(getParcelX(i));
            jsonWriter.value(getParcelY(i));
            jsonWriter.value(getParcelLevel(i));
        }
        jsonWriter.endArray();
        jsonWriter.endObject();
    }

    public void addObject(Tiles tiles, int i, int i2, int i3) {
        Building building = tiles.getBuilding(i, i2);
        Road absoluteRoad = tiles.getAbsoluteRoad(i, i2, i3);
        if (building != null) {
            add(building, false);
            return;
        }
        if (absoluteRoad != null) {
            add(i, i2, i3);
            return;
        }
        add(i - 1, i2, i3);
        add(i + 1, i2, i3);
        add(i, i2 - 1, i3);
        add(i, i2 + 1, i3);
    }

    public void add(int i, int i2, int i3) {
        int i4;
        int i5;
        if (i < 0 || i2 < 0 || (i4 = i * 2) > 32767 || (i5 = i2 * 2) > 32767) {
            return;
        }
        addParcel(i4, i5, i3);
        addParcel(i4 + 1, i5 + 1, i3);
    }

    public void add(Building building, int i, boolean z) {
        addOutlineRect(building.getX(), building.getY(), building.getWidth(), building.getHeight(), i);
        if (z) {
            addRect(building.getX(), building.getY(), building.getWidth(), building.getHeight(), i);
        }
    }

    public void add(Building building, boolean z) {
        BuildingDraft draft = building.getDraft();
        for (int iMax = Math.max(building.getMinTerrainLevel() + draft.carMinLevel, -2); iMax <= Math.min(building.getMaxTerrainLevel() + draft.carMaxLevel, 16); iMax++) {
            add(building, iMax, z);
        }
    }

    public void addRect(int i, int i2, int i3, int i4, int i5) {
        for (int i6 = i2; i6 < i2 + i4; i6++) {
            for (int i7 = i; i7 < i + i3; i7++) {
                add(i7, i6, i5);
            }
        }
    }

    public void addOutlineRect(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7 = i;
        while (true) {
            i6 = i + i3;
            if (i7 >= i6) {
                break;
            }
            add(i7, i2 - 1, i5);
            add(i7, i2 + i4, i5);
            i7++;
        }
        for (int i8 = i2; i8 < i2 + i4; i8++) {
            add(i - 1, i8, i5);
            add(i6, i8, i5);
        }
    }

    public void addParcel(int i, int i2, int i3) {
        this.parcels.add((i << 12) | i2 | (i3 << 24));
        this.boundingBox = null;
    }

    public int countParcels() {
        return this.parcels.size();
    }

    public int getParcelX(int i) {
        return (this.parcels.get(i) >>> 12) & 4095;
    }

    public int getParcelY(int i) {
        return this.parcels.get(i) & 4095;
    }

    public int getParcelLevel(int i) {
        return this.parcels.get(i) >> 24;
    }

    public float getCenterX() {
        int[] parcelBoundingBox = getParcelBoundingBox();
        return ((parcelBoundingBox[0] + parcelBoundingBox[2]) - 1) / 4.0f;
    }

    public float getCenterY() {
        int[] parcelBoundingBox = getParcelBoundingBox();
        return ((parcelBoundingBox[1] + parcelBoundingBox[3]) - 1) / 4.0f;
    }

    public int[] getParcelBoundingBox() {
        if (this.boundingBox == null) {
            this.boundingBox = new int[]{Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE};
            for (int i = 0; i < this.parcels.size(); i++) {
                int parcelX = getParcelX(i);
                int parcelY = getParcelY(i);
                int[] iArr = this.boundingBox;
                iArr[0] = Math.min(iArr[0], parcelX);
                int[] iArr2 = this.boundingBox;
                iArr2[1] = Math.min(iArr2[1], parcelY);
                int[] iArr3 = this.boundingBox;
                iArr3[2] = Math.max(iArr3[2], parcelX);
                int[] iArr4 = this.boundingBox;
                iArr4[3] = Math.max(iArr4[3], parcelY);
            }
        }
        return this.boundingBox;
    }

    public boolean intersectsBB(MapArea mapArea) {
        int[] parcelBoundingBox = getParcelBoundingBox();
        int[] parcelBoundingBox2 = mapArea.getParcelBoundingBox();
        return parcelBoundingBox[2] >= parcelBoundingBox2[0] && parcelBoundingBox[3] >= parcelBoundingBox2[1] && parcelBoundingBox[0] <= parcelBoundingBox2[2] && parcelBoundingBox[1] <= parcelBoundingBox2[3];
    }

    public int getParcelDistanceBB(int i, int i2) {
        int[] parcelBoundingBox = getParcelBoundingBox();
        return Math.min(Math.abs(i - parcelBoundingBox[0]), Math.abs(i - parcelBoundingBox[2])) + Math.min(Math.abs(i2 - parcelBoundingBox[1]), Math.abs(i2 - parcelBoundingBox[3]));
    }
}
