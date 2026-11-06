package info.flowersoft.theotown.store;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class PluginFileTranslation {
    public JSONObject applyTranslations;
    public Map<String, String> mappingTranslations = new HashMap();

    public PluginFileTranslation(JSONObject jSONObject) throws JSONException {
        this.applyTranslations = null;
        jSONObject.getInt("version");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("mapping");
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("apply");
        if (jSONObjectOptJSONObject != null) {
            JSONArray jSONArrayNames = jSONObjectOptJSONObject.names();
            for (int i = 0; i < jSONArrayNames.length(); i++) {
                String string = jSONArrayNames.getString(i);
                String string2 = jSONObjectOptJSONObject.getString(string);
                if (!string.isEmpty()) {
                    this.mappingTranslations.put(string, string2);
                }
            }
        }
        if (jSONObjectOptJSONObject2 != null) {
            this.applyTranslations = jSONObjectOptJSONObject2;
        }
    }

    public String translateInline(String str) {
        String str2 = this.mappingTranslations.get(str);
        return str2 != null ? str2 : str;
    }

    public JSONObject getApplyTranslations() {
        return this.applyTranslations;
    }
}
