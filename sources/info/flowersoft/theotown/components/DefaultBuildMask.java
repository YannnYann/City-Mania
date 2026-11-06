package info.flowersoft.theotown.components;

import info.flowersoft.theotown.city.components.BuildMask;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultBuildMask extends BuildMask {
    @Override // info.flowersoft.theotown.city.components.BuildMask
    public boolean accessGranted(int i, int i2) {
        return true;
    }

    @Override // info.flowersoft.theotown.city.components.BuildMask
    public int[] correct(int i, int i2) {
        return null;
    }

    @Override // info.flowersoft.theotown.city.components.BuildMask
    public boolean isClickable(int i, int i2) {
        return true;
    }

    public void save(JsonWriter jsonWriter) throws IOException {
    }

    public DefaultBuildMask() {
    }

    public DefaultBuildMask(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
    }
}
