package info.flowersoft.theotown.store;

import com.badlogic.gdx.utils.IntSet;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class PluginUnloader {
    public static PluginUnloader instance;
    public final SSP ssp = new SSP("localplugins");
    public final Map<String, Boolean> pluginStates = new HashMap();
    public final List<Draft> unloadedDrafts = new ArrayList();
    public final List<Draft> hiddenDrafts = new ArrayList();
    public final List<Draft> deactivatedDrafts = new ArrayList();

    public PluginUnloader() {
        loadState();
    }

    public final int classifyDraftType(Draft draft) {
        if (!draft.plugin || draft.inheritedFromNonPlugin) {
            return 4;
        }
        if (draft.pluginId > 0) {
            return ManagedPluginsController.getInstance().isInternalPlugin(draft.pluginId) ? 3 : 2;
        }
        LocalPluginManifest localPluginManifest = draft.manifest;
        return (localPluginManifest == null || !localPluginManifest.isMultiplayer()) ? 0 : 1;
    }

    public void apply(int i, Set<String> set, Set<String> set2, IntSet intSet, String str) {
        int i2;
        reset();
        for (Draft draft : Drafts.ALL.values()) {
            if (!draft.matchesScenario(str) && (set2 == null || !set2.contains(draft.id))) {
                if (intSet == null || (i2 = draft.pluginId) <= 0 || !intSet.contains(i2)) {
                    if ((set != null && set.contains(draft.id)) || classifyDraftType(draft) < i || draft.scenarioIds != null) {
                        MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("unload", draft);
                        if (methodClusterOrNull != null) {
                            methodClusterOrNull.invoke();
                        }
                        draft.loaded = false;
                        this.unloadedDrafts.add(draft);
                        if (!draft.hidden) {
                            draft.hidden = true;
                            this.hiddenDrafts.add(draft);
                        }
                        if (draft.active) {
                            draft.active = false;
                            this.deactivatedDrafts.add(draft);
                        }
                    }
                }
            }
        }
        ScriptingEnvironment.getInstance().updateDraftCallbacks();
    }

    public void reset() {
        for (int i = 0; i < this.hiddenDrafts.size(); i++) {
            this.hiddenDrafts.get(i).hidden = false;
        }
        for (int i2 = 0; i2 < this.deactivatedDrafts.size(); i2++) {
            this.deactivatedDrafts.get(i2).active = true;
        }
        for (int i3 = 0; i3 < this.unloadedDrafts.size(); i3++) {
            Draft draft = this.unloadedDrafts.get(i3);
            draft.loaded = true;
            MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("load", draft);
            if (methodClusterOrNull != null) {
                methodClusterOrNull.invoke();
            }
        }
        this.unloadedDrafts.clear();
        this.hiddenDrafts.clear();
        this.deactivatedDrafts.clear();
        ScriptingEnvironment.getInstance().updateDraftCallbacks();
    }

    public final void loadState() {
        try {
            JSONArray jSONArray = new JSONArray(this.ssp.load().getString("plugins", "[]"));
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                this.pluginStates.put(jSONObject.getString(C3670j8.x), Boolean.valueOf(jSONObject.getBoolean("active")));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public boolean shouldPluginBeActive(String str) {
        if (this.pluginStates.containsKey(str)) {
            return this.pluginStates.get(str).booleanValue();
        }
        return true;
    }

    public synchronized void saveState() {
        JSONArray jSONArray = new JSONArray();
        for (LocalPluginManifest localPluginManifest : Drafts.LOCAL_PLUGIN_MANIFESTS) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C3670j8.x, localPluginManifest.getId());
                jSONObject.put("active", localPluginManifest.isActive());
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        SSP.Writer writerEdit = this.ssp.edit();
        writerEdit.putString("plugins", jSONArray.toString());
        writerEdit.apply();
    }

    public synchronized boolean requiresRestart() {
        for (int i = 0; i < Drafts.LOCAL_PLUGIN_MANIFESTS.size(); i++) {
            if (Drafts.LOCAL_PLUGIN_MANIFESTS.get(i).requiresRestart()) {
                return true;
            }
        }
        return Drafts.LOCAL_PLUGIN_MANIFESTS.size() != Drafts.ID_TO_PLUGIN_MANIFEST.size();
    }

    public synchronized List<LocalPluginManifest> getMissingPlugins(List<LocalPluginManifest> list) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                LocalPluginManifest localPluginManifest = Drafts.ID_TO_PLUGIN_MANIFEST.get(list.get(i).getId());
                if (localPluginManifest == null || !localPluginManifest.isLoaded()) {
                    arrayList.add(list.get(i));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public void reuse() {
        this.pluginStates.clear();
        this.unloadedDrafts.clear();
        this.hiddenDrafts.clear();
        this.deactivatedDrafts.clear();
        loadState();
    }

    public static PluginUnloader getInstance() {
        if (instance == null) {
            instance = new PluginUnloader();
        }
        return instance;
    }
}
