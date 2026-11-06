package info.flowersoft.theotown.city.objects;

import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.SignStyleProvider;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class Sign implements Saveable {
    public int b;
    public int color;
    public int g;
    public int r;
    public int size;
    public String text;
    public float x;
    public float y;

    public Sign(JsonReader jsonReader) throws IOException {
        load(jsonReader);
    }

    public Sign(String str, float f, float f2, int i, int i2) {
        this.text = str;
        this.x = f;
        this.y = f2;
        this.size = i;
        this.color = i2;
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        this.text = "";
        this.y = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.x = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "x":
                    this.x = jsonReader.nextFloat();
                    break;
                case "y":
                    this.y = jsonReader.nextFloat();
                    break;
                case "rgb":
                    jsonReader.beginArray();
                    this.r = jsonReader.nextInt();
                    this.g = jsonReader.nextInt();
                    this.b = jsonReader.nextInt();
                    while (jsonReader.hasNext()) {
                        jsonReader.skipValue();
                    }
                    jsonReader.endArray();
                    break;
                case "size":
                    this.size = jsonReader.nextInt();
                    break;
                case "text":
                    this.text = jsonReader.nextString();
                    break;
                case "color":
                    this.color = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3522b4.i.K0).value(this.text);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("size").value(this.size);
        jsonWriter.name(C3522b4.i.S).value(this.color);
        jsonWriter.name("rgb").beginArray();
        jsonWriter.value(this.r);
        jsonWriter.value(this.g);
        jsonWriter.value(this.b);
        jsonWriter.endArray();
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public float getX() {
        return this.x;
    }

    public void setX(float f) {
        this.x = f;
    }

    public float getY() {
        return this.y;
    }

    public void setY(float f) {
        this.y = f;
    }

    public int getColorIndex() {
        return this.color;
    }

    public Color getColor() {
        int i = this.color;
        if (i >= 0) {
            return SignStyleProvider.COLORS[Math.min(i, r1.length - 1)];
        }
        return new Color(this.r, this.g, this.b);
    }

    public void setColor(int i) {
        this.color = i;
    }

    public void setColor(int i, int i2, int i3) {
        int i4 = 0;
        while (true) {
            Color[] colorArr = SignStyleProvider.COLORS;
            if (i4 < colorArr.length) {
                Color color = colorArr[i4];
                if (color.getRed() == i && color.getGreen() == i2 && color.getBlue() == i3) {
                    this.color = i4;
                    return;
                }
                i4++;
            } else {
                this.color = -1;
                this.r = i;
                this.g = i2;
                this.b = i3;
                return;
            }
        }
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }
}
