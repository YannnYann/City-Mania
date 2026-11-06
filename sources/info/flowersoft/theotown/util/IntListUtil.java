package info.flowersoft.theotown.util;

import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class IntListUtil {
    public static void load(IntList intList, JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            intList.add(jsonReader.nextInt());
        }
        jsonReader.endArray();
    }

    public static void save(IntList intList, JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginArray();
        for (int i = 0; i < intList.size(); i++) {
            jsonWriter.value(intList.get(i));
        }
        jsonWriter.endArray();
    }
}
