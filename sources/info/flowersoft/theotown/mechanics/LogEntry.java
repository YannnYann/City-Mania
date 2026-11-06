package info.flowersoft.theotown.mechanics;

import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class LogEntry {
    public int change;
    public int newValue;
    public String tag;
    public long time;

    public LogEntry(int i, int i2, String str, long j) {
        this.change = i;
        this.newValue = i2;
        this.tag = str;
        this.time = j;
    }

    public LogEntry(JSONObject jSONObject) throws JSONException {
        this.change = jSONObject.getInt("change");
        this.newValue = jSONObject.getInt("new");
        this.tag = jSONObject.getString("tag");
        this.time = jSONObject.getLong("time");
    }

    public void save(JSONObject jSONObject) throws JSONException {
        jSONObject.put("change", this.change);
        jSONObject.put("new", this.newValue);
        jSONObject.put("tag", this.tag);
        jSONObject.put("time", this.time);
    }

    public String toString() {
        return this.time + ":   " + this.newValue + "   " + this.change + "   " + this.tag;
    }
}
