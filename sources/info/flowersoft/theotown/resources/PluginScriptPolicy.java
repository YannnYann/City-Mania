package info.flowersoft.theotown.resources;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PluginScriptPolicy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PluginScriptPolicy {
    public static boolean running;
    public static final PluginScriptPolicy INSTANCE = new PluginScriptPolicy();
    public static final Set<String> undecidedPlugins = new LinkedHashSet();
    public static final Map<String, PluginPolicy> policies = new LinkedHashMap();
    public static final Map<String, PluginPolicy> lastPolicies = new LinkedHashMap();

    public final Set<String> getUndecidedPlugins() {
        return undecidedPlugins;
    }

    public final Map<String, PluginPolicy> getPolicies() {
        return policies;
    }

    public final void begin() throws JSONException {
        load();
        Map<String, PluginPolicy> map = lastPolicies;
        Map<String, PluginPolicy> map2 = policies;
        map.putAll(map2);
        map2.clear();
        running = true;
    }

    public final void end() {
        running = false;
        undecidedPlugins.clear();
        for (Map.Entry<String, PluginPolicy> entry : policies.entrySet()) {
            String key = entry.getKey();
            PluginPolicy value = entry.getValue();
            PluginPolicy pluginPolicy = lastPolicies.get(key);
            boolean z = (pluginPolicy == null || value.getPrivileged() == pluginPolicy.getPrivileged()) ? false : true;
            if (pluginPolicy == null || z) {
                undecidedPlugins.add(key);
            }
        }
    }

    public final SSP getSsp() {
        return new SSP("plugin-policies.pref", false, false, false);
    }

    public final void load() throws JSONException {
        SSP.Reader readerLoad = getSsp().load();
        policies.clear();
        JSONArray array = readerLoad.getArray("policies");
        if (array != null) {
            int length = array.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = array.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String string = jSONObjectOptJSONObject.getString("path");
                    Map<String, PluginPolicy> map = policies;
                    Intrinsics.checkNotNull(string);
                    map.put(string, new PluginPolicy(string, null, jSONObjectOptJSONObject.optBoolean("allowed", false), false, jSONObjectOptJSONObject.optBoolean("privileged", false), jSONObjectOptJSONObject.optLong("time", 0L), 10, null));
                }
            }
        }
    }

    public final void save() {
        SSP.Writer writerEdit = getSsp().edit();
        Collection<PluginPolicy> collectionValues = policies.values();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
        for (PluginPolicy pluginPolicy : collectionValues) {
            arrayList.add(new JSONObject().put("path", pluginPolicy.getPath()).put("allowed", pluginPolicy.getAllowed()).put("privileged", pluginPolicy.getPrivileged()).put("time", pluginPolicy.getChangeTimeMS()));
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONArray.put((JSONObject) it.next());
        }
        writerEdit.putArray("policies", jSONArray);
        writerEdit.apply();
    }

    public final boolean isAllowedToLoadScripts(Draft draft) {
        Intrinsics.checkNotNullParameter(draft, "draft");
        if (!running) {
            throw new IllegalArgumentException("Tried to load draft outside of loading context");
        }
        if (!draft.isExternalPlugin()) {
            return true;
        }
        String string = draft.parentFile.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Map<String, PluginPolicy> map = policies;
        PluginPolicy pluginPolicy = map.get(string);
        if (pluginPolicy == null) {
            pluginPolicy = new PluginPolicy(string, null, false, false, false, 0L, 62, null);
            pluginPolicy.setPresent(true);
            Map<String, PluginPolicy> map2 = lastPolicies;
            PluginPolicy pluginPolicy2 = map2.get(string);
            pluginPolicy.setAllowed(pluginPolicy2 != null ? pluginPolicy2.getAllowed() : false);
            PluginPolicy pluginPolicy3 = map2.get(string);
            pluginPolicy.setChangeTimeMS(pluginPolicy3 != null ? pluginPolicy3.getChangeTimeMS() : TimeUtils.millis());
            map.put(string, pluginPolicy);
        }
        PluginPolicy pluginPolicy4 = pluginPolicy;
        List<String> ids = pluginPolicy4.getIds();
        String id = draft.id;
        Intrinsics.checkNotNullExpressionValue(id, "id");
        ids.add(id);
        pluginPolicy4.setPrivileged(draft.isPrivileged() | pluginPolicy4.getPrivileged());
        return pluginPolicy4.getAllowed();
    }
}
