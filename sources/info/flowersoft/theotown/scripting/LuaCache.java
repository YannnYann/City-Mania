package info.flowersoft.theotown.scripting;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class LuaCache {
    public final Map<String, byte[]> data = new HashMap();
    public final Set<String> untouchedKeys = new HashSet();

    public LuaCache() {
        load();
    }

    public final void load() {
        long jMillis = TimeUtils.millis();
        JSONObject object = getSSP().load().getObject("data");
        if (object == null) {
            object = new JSONObject();
        }
        try {
            JSONArray jSONArrayNames = object.names();
            if (jSONArrayNames != null) {
                for (int i = 0; i < jSONArrayNames.length(); i++) {
                    String string = jSONArrayNames.getString(i);
                    this.data.put(string, Base64Coder.decode(object.getString(string)));
                    this.untouchedKeys.add(string);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        long jMillis2 = TimeUtils.millis() - jMillis;
        Gdx.app.debug("LuaCache", "Load took " + jMillis2 + " ms");
    }

    public byte[] get(String str) {
        this.untouchedKeys.remove(str);
        return this.data.get(str);
    }

    public void put(String str, byte[] bArr) {
        this.untouchedKeys.remove(str);
        this.data.put(str, bArr);
    }

    public void save() {
        long jMillis = TimeUtils.millis();
        Iterator<String> it = this.untouchedKeys.iterator();
        while (it.hasNext()) {
            this.data.remove(it.next());
        }
        this.untouchedKeys.clear();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, byte[]> entry : this.data.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), new String(Base64Coder.encode(entry.getValue())));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        SSP.Writer writerEdit = getSSP().edit();
        writerEdit.putObject("data", jSONObject);
        writerEdit.apply();
        long jMillis2 = TimeUtils.millis() - jMillis;
        Gdx.app.debug("LuaCache", "Save took " + jMillis2 + " ms");
    }

    public void clear() {
        this.data.clear();
        this.untouchedKeys.clear();
    }

    public final SSP getSSP() {
        return new SSP("lua_cache", false, false, true);
    }
}
