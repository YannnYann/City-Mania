package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RoadFlagsLoader {
    public final List<String> customFlags = new ArrayList();

    public long load(JSONObject jSONObject, String str, long j) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("allocate " + str);
        if (jSONArrayOptJSONArray == null) {
            if (jSONObject.has("allocate " + str)) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put(jSONObject.optString("allocate " + str));
            }
        }
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i);
                if (!strOptString.isEmpty() && !this.customFlags.contains(strOptString)) {
                    if (this.customFlags.size() >= 32) {
                        throw new IllegalArgumentException("Too much custom flags (max. 32 allowed)");
                    }
                    this.customFlags.add(strOptString);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" normal");
        long jInterpretFlag = interpretFlag(jSONObject, str + " emergency", interpretFlag(jSONObject, str + " tractor", interpretFlag(jSONObject, str + " subway", interpretFlag(jSONObject, str + " high speed", interpretFlag(jSONObject, str + " monorail", interpretFlag(jSONObject, str + " maglev", interpretFlag(jSONObject, str + " train", interpretFlag(jSONObject, str + " bus", interpretFlag(jSONObject, str + " lkw", interpretFlag(jSONObject, str + " pkw", interpretFlag(jSONObject, str + " none", interpretFlag(jSONObject, str + " native pedestrian", interpretFlag(jSONObject, str + " elevated train", interpretFlag(jSONObject, str + " user7", interpretFlag(jSONObject, str + " user6", interpretFlag(jSONObject, str + " user5", interpretFlag(jSONObject, str + " user4", interpretFlag(jSONObject, str + " user3", interpretFlag(jSONObject, str + " user2", interpretFlag(jSONObject, str + " user1", interpretFlag(jSONObject, str + " user0", interpretFlag(jSONObject, str + " airport", interpretFlag(jSONObject, str + " tram", interpretFlag(jSONObject, str + " pedestrian", interpretFlag(jSONObject, str + " military", jSONObject.optBoolean(sb.toString(), true) ? j : 0L, 2L), 4L), 8L), 16L), 8192L), 16384L), 32768L), 65536L), 131072L), 262144L), 524288L), 1048576L), 2097152L), 4194304L), 33554432L), 32L), 64L), 128L), 256L), 512L), 1024L), 2048L), 4096L), 8388608L), 25166048L);
        if (jSONObject.optBoolean(str + " all", false)) {
            jInterpretFlag = -1;
        }
        for (int i2 = 0; i2 < this.customFlags.size(); i2++) {
            if (jSONObject.optBoolean(str + " " + this.customFlags.get(i2), false)) {
                jInterpretFlag |= 1 << (63 - i2);
            }
        }
        return jInterpretFlag;
    }

    public final long interpretFlag(JSONObject jSONObject, String str, long j, long j2) {
        return jSONObject.has(str) ? jSONObject.optBoolean(str) ? j | j2 : (~j2) & j : j;
    }
}
