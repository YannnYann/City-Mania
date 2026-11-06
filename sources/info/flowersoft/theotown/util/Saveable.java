package info.flowersoft.theotown.util;

import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public interface Saveable {
    void load(JsonReader jsonReader) throws IOException;

    void save(JsonWriter jsonWriter) throws IOException;
}
