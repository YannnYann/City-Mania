package info.flowersoft.theotown.util;

import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class InfoGrid {
    public float[] grid;
    public int gridHeight;
    public int gridWidth;
    public int height;
    public float maxValue;
    public float minValue;
    public int tilesPerCell;
    public int widht;

    public InfoGrid(int i, int i2, int i3) {
        this.widht = i;
        this.height = i2;
        this.tilesPerCell = i3;
        int i4 = (((i + i3) - 1) / i3) + 1;
        this.gridWidth = i4;
        int i5 = (((i2 + i3) - 1) / i3) + 1;
        this.gridHeight = i5;
        this.grid = new float[i4 * i5];
    }

    public InfoGrid(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "tiles per cell":
                    this.tilesPerCell = jsonReader.nextInt();
                    break;
                case "height":
                    this.height = jsonReader.nextInt();
                    break;
                case "grid width":
                    this.gridWidth = jsonReader.nextInt();
                    break;
                case "grid":
                    this.grid = new float[this.gridWidth * this.gridHeight];
                    jsonReader.beginArray();
                    this.maxValue = Float.MAX_VALUE;
                    this.minValue = -3.4028235E38f;
                    for (int i = 0; i < this.grid.length && jsonReader.hasNext(); i++) {
                        float fNextFloat = jsonReader.nextFloat();
                        this.grid[i] = fNextFloat;
                        this.minValue = Math.min(this.minValue, fNextFloat);
                        this.maxValue = Math.max(this.maxValue, fNextFloat);
                    }
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "width":
                    this.widht = jsonReader.nextInt();
                    break;
                case "grid height":
                    this.gridHeight = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("width").value(this.widht);
        jsonWriter.name("height").value(this.height);
        jsonWriter.name("tiles per cell").value(this.tilesPerCell);
        jsonWriter.name("grid width").value(this.gridWidth);
        jsonWriter.name("grid height").value(this.gridHeight);
        jsonWriter.name("grid").beginArray();
        int i = 0;
        while (true) {
            float[] fArr = this.grid;
            if (i < fArr.length) {
                jsonWriter.value(fArr[i]);
                i++;
            } else {
                jsonWriter.endArray();
                return;
            }
        }
    }

    public final void setGrid(int i, int i2, float f) {
        this.minValue = Math.min(this.minValue, f);
        this.maxValue = Math.max(this.maxValue, f);
        this.grid[i + (i2 * this.gridWidth)] = f;
    }

    public final float queryGrid(int i, int i2) {
        return this.grid[i + (i2 * this.gridWidth)];
    }

    public void add(int i, int i2, float f) {
        int i3 = this.tilesPerCell;
        float f2 = i / i3;
        float f3 = i2 / i3;
        int iFloor = (int) Math.floor(f2);
        int iFloor2 = (int) Math.floor(f3);
        float f4 = f2 - iFloor;
        float f5 = f3 - iFloor2;
        int i4 = this.tilesPerCell;
        float f6 = (1.0f / i4) / i4;
        float f7 = (1.0f - f4) * f6;
        float f8 = 1.0f - f5;
        setGrid(iFloor, iFloor2, queryGrid(iFloor, iFloor2) + (f7 * f8 * f));
        int i5 = iFloor + 1;
        float f9 = f6 * f4;
        setGrid(i5, iFloor2, queryGrid(i5, iFloor2) + (f8 * f9 * f));
        int i6 = iFloor2 + 1;
        setGrid(iFloor, i6, queryGrid(iFloor, i6) + (f7 * f5 * f));
        setGrid(i5, i6, queryGrid(i5, i6) + (f9 * f5 * f));
    }

    public float get(int i, int i2) {
        int i3 = this.tilesPerCell;
        float f = i / i3;
        float f2 = i2 / i3;
        int iFloor = (int) Math.floor(f);
        int iFloor2 = (int) Math.floor(f2);
        float f3 = f - iFloor;
        float f4 = f2 - iFloor2;
        float f5 = 1.0f - f3;
        float f6 = 1.0f - f4;
        int i4 = iFloor + 1;
        float fQueryGrid = (f5 * f6 * queryGrid(iFloor, iFloor2)) + (f6 * f3 * queryGrid(i4, iFloor2));
        int i5 = iFloor2 + 1;
        return fQueryGrid + (f5 * f4 * queryGrid(iFloor, i5)) + (f3 * f4 * queryGrid(i4, i5));
    }

    public float getMinValue() {
        return this.minValue;
    }

    public float getMaxValue() {
        return this.maxValue;
    }
}
