package info.flowersoft.theotown.city.objects;

import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Bridge {
    public int dir;
    public int length;
    public int sx;
    public int sy;
    public int tx;
    public int ty;
    public int type;

    public Bridge(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "length":
                    this.length = jsonReader.nextInt();
                    break;
                case "sx":
                    this.sx = jsonReader.nextInt();
                    break;
                case "sy":
                    this.sy = jsonReader.nextInt();
                    break;
                case "tx":
                    this.tx = jsonReader.nextInt();
                    break;
                case "ty":
                    this.ty = jsonReader.nextInt();
                    break;
                case "dir":
                    this.dir = jsonReader.nextInt();
                    break;
                case "type":
                    this.type = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public Bridge() {
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("sx").value(this.sx);
        jsonWriter.name("sy").value(this.sy);
        jsonWriter.name("tx").value(this.tx);
        jsonWriter.name("ty").value(this.ty);
        jsonWriter.name("length").value(this.length);
        jsonWriter.name("type").value(this.type);
        jsonWriter.name("dir").value(this.dir);
    }

    public int hashCode() {
        return this.sx + (this.sy * 65536);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Bridge) {
            Bridge bridge = (Bridge) obj;
            if (this.sx == bridge.sx && this.sy == bridge.sy && this.tx == bridge.tx && this.ty == bridge.ty) {
                return true;
            }
        }
        return false;
    }
}
