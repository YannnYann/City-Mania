package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ScriptingManager {
    public static final String[] LOCAL_SCRIPTS = new String[0];
    public static ScriptingManager instance;
    public final List<ScriptEntry> scripts = new ArrayList();

    public ScriptEntry get(String str) {
        for (int i = 0; i < this.scripts.size(); i++) {
            ScriptEntry scriptEntry = this.scripts.get(i);
            String name = scriptEntry.getName();
            if (name != null && !name.isEmpty() && name.equals(str)) {
                return scriptEntry;
            }
        }
        for (int i2 = 0; i2 < this.scripts.size(); i2++) {
            ScriptEntry scriptEntry2 = this.scripts.get(i2);
            String path = scriptEntry2.getPath();
            if (path != null) {
                if (!path.equals(str)) {
                    if (path.equals(str + ".lua")) {
                    }
                }
                return scriptEntry2;
            }
        }
        return null;
    }

    public void init() {
        this.scripts.clear();
        try {
            JSONObject jSONObject = new JSONObject(PackedUtils.INSTANCE.readInternalText("scripting.lby"));
            if (jSONObject.getInt("gversion") != TheoTown.VERSION_CODE) {
                throw new IllegalStateException("Incompatible scripting");
            }
            JSONArray jSONArray = jSONObject.getJSONArray("scripts");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    this.scripts.add(new ScriptEntry(jSONObjectOptJSONObject, true));
                }
            }
            for (String str : LOCAL_SCRIPTS) {
                this.scripts.add(new ScriptEntry("local/" + str, str, PackedUtils.INSTANCE.readInternalText(str), false));
            }
        } catch (JSONException e) {
            throw new Error(e);
        }
    }

    public static ScriptingManager getInstance() {
        if (instance == null) {
            instance = new ScriptingManager();
        }
        return instance;
    }

    public static class ScriptEntry {
        public final boolean binary;
        public final String code;
        public final String name;
        public final String path;

        public ScriptEntry(JSONObject jSONObject, boolean z) throws JSONException {
            this(jSONObject.optString("name"), jSONObject.optString("path"), jSONObject.getString("code"), z);
        }

        public ScriptEntry(String str, String str2, String str3, boolean z) {
            this.name = str;
            this.path = str2;
            this.code = str3;
            this.binary = z;
        }

        public String getName() {
            return this.name;
        }

        public String getPath() {
            return this.path;
        }

        public String getCode() {
            return this.code;
        }

        public boolean isBinary() {
            return this.binary;
        }
    }
}
