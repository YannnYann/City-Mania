package info.flowersoft.theotown.city.objects;

import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class Way {
    public int[] dirs;
    public int size;
    public int startIndex;
    public int startLevel;
    public int startX;
    public int startY;

    public Way(Way way) {
        this.size = way.size;
        int[] iArr = way.dirs;
        this.dirs = Arrays.copyOf(iArr, iArr.length);
        this.startX = way.startX;
        this.startY = way.startY;
        this.startLevel = way.startLevel;
        this.startIndex = way.startIndex;
    }

    public Way(int i) {
        this.size = 0;
        this.dirs = new int[(i + 7) / 8];
        this.startIndex = i;
    }

    public Way(List<Short> list) {
        this.startX = list.get(0).shortValue();
        this.startY = list.get(1).shortValue();
        int size = list.size();
        this.size = size - 2;
        this.startLevel = 0;
        this.startIndex = 0;
        this.dirs = new int[(size + 5) / 8];
        for (int i = 2; i < list.size(); i++) {
            int[] iArr = this.dirs;
            int i2 = i - 2;
            int i3 = i2 >>> 3;
            iArr[i3] = (list.get(i).shortValue() << ((i2 % 8) << 2)) | iArr[i3];
        }
    }

    public Way(IntList intList) {
        this.startX = intList.get(0);
        this.startY = intList.get(1);
        int size = intList.size();
        this.size = size - 2;
        this.startLevel = 0;
        this.startIndex = 0;
        this.dirs = new int[(size + 5) / 8];
        for (int i = 2; i < intList.size(); i++) {
            int[] iArr = this.dirs;
            int i2 = i - 2;
            int i3 = i2 >>> 3;
            iArr[i3] = (intList.get(i) << ((i2 % 8) << 2)) | iArr[i3];
        }
    }

    public Way(int i, int i2, int i3, int i4) {
        this.startX = i;
        this.startY = i2;
        this.size = 2;
        this.startLevel = i3;
        this.startIndex = 0;
        this.dirs = new int[]{i4};
    }

    public Way(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "lvl":
                    this.startLevel = jsonReader.nextInt();
                    break;
                case "pos":
                    int iNextInt = jsonReader.nextInt();
                    this.startX = iNextInt >>> 16;
                    this.startY = iNextInt & 65535;
                    break;
                case "way":
                    jsonReader.beginArray();
                    this.size = jsonReader.nextInt();
                    this.startIndex = jsonReader.nextInt();
                    this.dirs = new int[jsonReader.nextInt()];
                    int i = 0;
                    while (jsonReader.hasNext()) {
                        this.dirs[i] = jsonReader.nextInt();
                        i++;
                    }
                    jsonReader.endArray();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("pos").value((this.startX << 16) | this.startY);
        jsonWriter.name("way");
        jsonWriter.beginArray();
        jsonWriter.value(this.size);
        jsonWriter.value(this.startIndex);
        jsonWriter.value(this.dirs.length);
        int i = 0;
        while (true) {
            int[] iArr = this.dirs;
            if (i >= iArr.length) {
                break;
            }
            jsonWriter.value(iArr[i]);
            i++;
        }
        jsonWriter.endArray();
        if (this.startLevel != 0) {
            jsonWriter.name("lvl").value(this.startLevel);
        }
    }

    public void setStart(int i, int i2, int i3) {
        this.startX = i;
        this.startY = i2;
        this.startLevel = i3;
    }

    public void addDir(int i) {
        int i2 = this.startIndex - 1;
        this.startIndex = i2;
        int i3 = i2 >>> 3;
        int[] iArr = this.dirs;
        iArr[i3] = (i << ((i2 & 7) << 2)) | iArr[i3];
        this.size++;
    }

    public void startFromFront() {
        this.startIndex = 0;
    }

    public void addDirToFront(int i) {
        int i2 = this.startIndex;
        int i3 = i2 >>> 3;
        int[] iArr = this.dirs;
        iArr[i3] = (i << ((i2 & 7) << 2)) | iArr[i3];
        this.startIndex = i2 + 1;
        this.size++;
    }

    public int getDir(int i) {
        int i2 = i + this.startIndex;
        return (this.dirs[i2 >>> 3] >>> ((i2 & 7) << 2)) & 15;
    }

    public void setDir(int i, int i2) {
        int i3 = i + this.startIndex;
        int i4 = i3 >>> 3;
        int i5 = (i3 & 7) << 2;
        int[] iArr = this.dirs;
        iArr[i4] = (i2 << i5) | (iArr[i4] & (~(15 << i5)));
    }

    public int getStartX() {
        return this.startX;
    }

    public int getStartY() {
        return this.startY;
    }

    public int getStartLevel() {
        return this.startLevel;
    }

    public int size() {
        return this.size;
    }
}
