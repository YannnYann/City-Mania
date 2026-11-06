package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.Script;
import info.flowersoft.theotown.util.ExternalPluginImporter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import java.util.List;
import vm2.LuaValue;
import vm2.NoLuaAccess;

/* JADX INFO: loaded from: classes4.dex */
public class Draft {

    @NoLuaAccess
    public String[] aliases;
    public String author;
    public CategoryDraft category;

    @NoLuaAccess
    public boolean dev;

    @NoLuaAccess
    public MethodCluster drawMethods;
    public ExternalPluginImporter.ExternalPluginData externalPluginData;
    public boolean hidden;

    @NoLuaAccess
    public boolean hideId;
    public int[] iconFrames;
    public String id;

    @NoLuaAccess
    public boolean inherited;

    @NoLuaAccess
    public boolean inheritedFromNonPlugin;

    @NoLuaAccess
    public boolean isFinal;

    @NoLuaAccess
    public boolean is_unlocked;

    @NoLuaAccess
    public LuaValue luaMeta;
    public LuaValue luaRepr;

    @NoLuaAccess
    public List<Script> luaScripts;

    @NoLuaAccess
    public LocalPluginManifest manifest;

    @NoLuaAccess
    public JSONObject meta;

    @NoLuaAccess
    public boolean mustBeInherited;
    public boolean muteLua;
    public int ordinal;
    public AbstractFile parentFile;
    public AbstractFile path;
    public boolean plugin;
    public AbstractFile pluginFile;
    public int pluginId;

    @NoLuaAccess
    public boolean premium;
    public int[] previewFrames;

    @NoLuaAccess
    public boolean protectedPlugin;

    @NoLuaAccess
    public DraftRequirement requirement;

    @NoLuaAccess
    public String[] scenarioIds;
    public boolean separator;
    public boolean strictLua;
    public String text;
    public String textId;
    public String title;
    public String titleId;
    public String type;
    public boolean active = true;
    public boolean loaded = true;

    @NoLuaAccess
    public PrivilegedMode privilegedMode = PrivilegedMode.Unprivileged;
    public boolean index = true;
    public int soundClick = -1;
    public boolean showNewMarker = true;
    public boolean searchable = true;

    public boolean isFinal() {
        return this.isFinal;
    }

    public void setFinal() {
        this.isFinal = true;
    }

    public boolean isPrivileged() {
        return this.privilegedMode.isPrivileged();
    }

    public boolean isSuperPrivileged() {
        return this.privilegedMode.isSuperPrivileged();
    }

    @NoLuaAccess
    public void setPrivileged(Class<Draft> cls, PrivilegedMode privilegedMode) {
        if (cls == Draft.class) {
            this.privilegedMode = privilegedMode;
        }
    }

    public boolean isExternalPlugin() {
        return this.plugin && this.pluginId == 0;
    }

    public String getUnifiedId() {
        return this.id.replaceAll("\\$", "");
    }

    public boolean matchesScenario(String str) {
        if (str != null && this.scenarioIds != null) {
            int i = 0;
            while (true) {
                String[] strArr = this.scenarioIds;
                if (i >= strArr.length) {
                    break;
                }
                if (str.equals(strArr[i])) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Draft) {
            return this.id.equals(((Draft) obj).id);
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    public boolean hasRequirement() {
        DraftRequirement draftRequirement = this.requirement;
        return (draftRequirement == null || draftRequirement.getSingleRequirements().isEmpty() || this.hidden) ? false : true;
    }

    public DraftRequirement getRequirement() {
        return this.requirement;
    }

    @NoLuaAccess
    public void setRequirement(DraftRequirement draftRequirement) {
        this.requirement = draftRequirement;
    }

    public boolean isUnlocked() {
        if (this.loaded) {
            return this.requirement == null || this.is_unlocked;
        }
        return false;
    }

    @NoLuaAccess
    public void setUnlocked(boolean z) {
        this.is_unlocked = z;
    }

    public String toString() {
        return this.id + " (" + getClass().getSimpleName() + ")";
    }

    @NoLuaAccess
    public JSONObject getMetaTag(String str) {
        JSONObject jSONObjectOptJSONObject;
        Object objOpt;
        JSONObject jSONObject = this.meta;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("tags")) == null || (objOpt = jSONObjectOptJSONObject.opt(str)) == null) {
            return null;
        }
        if (objOpt instanceof JSONObject) {
            return (JSONObject) objOpt;
        }
        if (objOpt instanceof JSONArray) {
            return new JSONObject();
        }
        return null;
    }

    public LuaValue getLuaMeta() {
        JSONObject jSONObject = this.meta;
        if (jSONObject != null && this.luaMeta == null) {
            try {
                this.luaMeta = LuaTableSerializer.deserialize(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        LuaValue luaValue = this.luaMeta;
        return luaValue != null ? luaValue : LuaValue.NIL;
    }
}
