package info.flowersoft.theotown.draftloader;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.common.api.Api;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.ColorDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.PrivilegeLevel;
import info.flowersoft.theotown.draft.PrivilegedMode;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.draft.SpawnDefinition;
import info.flowersoft.theotown.draft.SpawnInBiomeDefinition;
import info.flowersoft.theotown.draft.TemplateDraft;
import info.flowersoft.theotown.draft.Transition;
import info.flowersoft.theotown.draft.ViewportDraft;
import info.flowersoft.theotown.draft.requirement.DraftRequirement;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.PluginScriptPolicy;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.ScriptingManager;
import info.flowersoft.theotown.resources.TPCModule;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.ExternalPluginImporter;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.VirtualFile;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.SessionLogger;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DraftLoader {
    public Draft oldDraft;
    public RoadFlagsLoader roadFlags;
    public JSONObject src;

    public void afterLoading() {
    }

    public void beforeLoading() {
    }

    public abstract String[] getLoadingTags();

    public abstract Draft load() throws MissingDraftException, JSONException;

    public void setup(RoadFlagsLoader roadFlagsLoader) {
        this.roadFlags = roadFlagsLoader;
    }

    public void setSource(JSONObject jSONObject) {
        this.src = jSONObject;
    }

    public void loadDefaults(Draft draft) throws JSONException {
        loadDefaults(draft, this.src);
    }

    public final void loadPrivileged(Draft draft) {
        int i;
        String str;
        if (draft.pluginId > 0 && ManagedPluginsController.getInstance().isInternalPlugin(draft.pluginId)) {
            draft.setPrivileged(Draft.class, PrivilegedMode.Internal);
        }
        if (this.src.has("privileged")) {
            String strOptString = this.src.optString("privileged", "");
            if (TPCModule.getInstance().isTrusted(strOptString)) {
                draft.setPrivileged(Draft.class, PrivilegedMode.PrivilegedKey);
                if (draft.pluginId == 0 && draft.plugin && !draft.protectedPlugin) {
                    SessionLogger.logPriv(strOptString, this.src.toString());
                }
            } else if (PluginHelper.PLUGIN_ID == 0) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        if (this.src.optBoolean("require privileges", false)) {
            i = 1;
        } else if (!this.src.optBoolean("require super privileges", false)) {
            return;
        } else {
            i = 2;
        }
        int i2 = draft.pluginId;
        if (i2 > 0) {
            if (getPluginTrustLevel(i2) >= i) {
                draft.setPrivileged(Draft.class, PrivilegedMode.forStore(i));
                return;
            }
            return;
        }
        ExternalPluginImporter.ExternalPluginData externalPluginData = draft.externalPluginData;
        if (externalPluginData != null) {
            if (externalPluginData.getPrivilegeLevel() < i || TPCModule.getInstance().getUserTrustLevel(draft.externalPluginData.getUserId()) < i) {
                return;
            }
            draft.setPrivileged(Draft.class, PrivilegedMode.forVerifiedExternalPlugin(i));
            return;
        }
        if (draft.protectedPlugin) {
            throw new NotPrivilegedException("\"requires privileges\" is not supported in *.plugin or *.zip files");
        }
        if (TPCModule.getInstance().getCurrentUserTrustLevel() >= i) {
            draft.setPrivileged(Draft.class, PrivilegedMode.forLocal(i));
            return;
        }
        User user = Backend.getInstance().getUser();
        if (user == null || !user.isValid()) {
            str = "Not logged in";
        } else if (user.getForumId() == 0) {
            str = "No forum account";
        } else {
            str = "Insufficient permissions";
        }
        throw new NotPrivilegedException("Could not grant privileged status " + PrivilegeLevel.localize(i) + " to " + draft.id + ". Make sure that you are logged in and have sufficient permissions. More info: " + str);
    }

    public final int getPluginTrustLevel(int i) {
        ManagedPluginFile managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(i);
        if (managedPluginFile == null) {
            return 0;
        }
        if (managedPluginFile.isPermanent()) {
            return 2;
        }
        return TPCModule.getInstance().getUserTrustLevel(managedPluginFile.getAuthorId());
    }

    public <T extends Draft> T getDraft(JSONObject jSONObject, Class<T> cls, Getter<T> getter) throws JSONException {
        if (jSONObject.has("inherit")) {
            T t = (T) Drafts.get(jSONObject.getString(C3670j8.x), cls);
            if (t == null) {
                throw new IllegalArgumentException(jSONObject.optString(C3670j8.x) + " could not be found!");
            }
            t.inherited = true;
            t.inheritedFromNonPlugin = (true ^ t.plugin) | t.inheritedFromNonPlugin;
            return t;
        }
        try {
            return getter.get();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void loadDefaults(Draft draft, JSONObject jSONObject) throws JSONException {
        String string;
        int i;
        int i2;
        draft.plugin = PluginHelper.isPlugin();
        draft.manifest = PluginHelper.MANIFEST;
        draft.id = jSONObject.getString(C3670j8.x);
        if (draft.plugin) {
            draft.protectedPlugin = PluginHelper.PRIVATE;
            draft.pluginFile = PluginHelper.FILE;
            draft.parentFile = PluginHelper.PARENT_FILE;
            draft.externalPluginData = PluginHelper.EXTERNAL_PLUGIN_DATA;
            draft.path = PluginHelper.PATH;
            draft.pluginId = PluginHelper.PLUGIN_ID;
            loadPrivileged(draft);
        } else {
            draft.setPrivileged(Draft.class, PrivilegedMode.Internal);
        }
        Draft draft2 = Drafts.ALL.get(draft.id);
        this.oldDraft = draft2;
        if (draft2 == draft) {
            if (!jSONObject.optBoolean("inherit", false)) {
                throw new IllegalArgumentException(draft.id + " is already in use. Use another id or add \"override\":true to your plugin.");
            }
            if (this.oldDraft.isFinal()) {
                throw new IllegalArgumentException(draft.id + " may not be inherited from because it's final!");
            }
        } else if (draft2 != null) {
            if (!jSONObject.optBoolean("override", false)) {
                if (this.oldDraft.isExternalPlugin()) {
                    string = this.oldDraft.parentFile.toString();
                } else if (this.oldDraft.pluginId != 0) {
                    ManagedPluginFile managedPluginFile = ManagedPluginsController.getInstance().getManagedPluginFile(this.oldDraft.pluginId);
                    string = managedPluginFile == null ? "unknown plugin " + this.oldDraft.pluginId : "plugin `" + managedPluginFile.getTitle() + "`";
                } else {
                    string = "the game";
                }
                throw new IllegalArgumentException(draft.id + " is already in use by " + string + ". Use another id or add \"override\":true to your plugin.");
            }
            if (this.oldDraft.isFinal()) {
                throw new IllegalArgumentException(draft.id + " may not be overridden because it's final!");
            }
            Draft draft3 = this.oldDraft;
            CategoryDraft categoryDraft = draft3.category;
            if (categoryDraft != null) {
                categoryDraft.removeChild(draft3);
            }
            String[] strArr = this.oldDraft.aliases;
            if (strArr != null) {
                for (String str : strArr) {
                    Drafts.ALL.remove(str);
                }
            }
        } else if (jSONObject.optBoolean("override", false)) {
            throw new IllegalArgumentException("Id " + draft.id + " could not be overridden as no prior definition has been found!");
        }
        if (jSONObject.has("min version") && (i2 = jSONObject.getInt("min version")) > TheoTown.VERSION_CODE) {
            throw new IllegalArgumentException("" + draft.id + " requires at least version " + i2 + " but got " + TheoTown.VERSION_CODE);
        }
        if (jSONObject.has("max version") && (i = jSONObject.getInt("max version")) < TheoTown.VERSION_CODE) {
            throw new IllegalArgumentException("" + draft.id + " requires at max version " + i + " but got " + TheoTown.VERSION_CODE);
        }
        String strOptString = jSONObject.optString("template prefix");
        String str2 = jSONObject.has("template") ? "template" : "templates";
        if (jSONObject.has(str2)) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str2);
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put(jSONObject.getString(str2));
            }
            for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
                String str3 = strOptString + jSONArrayOptJSONArray.getString(i3);
                TemplateDraft templateDraft = (TemplateDraft) Drafts.get(str3, TemplateDraft.class);
                if (templateDraft == null) {
                    throw new IllegalArgumentException("Could not find template " + str3);
                }
                JSONObject jSONObjectDeepCopy = templateDraft.content;
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("template parameters");
                JSONObject jSONObjectOptJSONObject2 = jSONObjectDeepCopy.optJSONObject("template parameters");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject2 != null) {
                    JSONUtil.mergeJSONObjects(jSONObjectOptJSONObject, jSONObjectOptJSONObject2, false, false);
                } else if (jSONObjectOptJSONObject == null && jSONObjectOptJSONObject2 != null) {
                    jSONObjectOptJSONObject = JSONUtil.deepCopy(jSONObjectOptJSONObject2);
                }
                if (jSONObjectOptJSONObject != null && !(draft instanceof TemplateDraft)) {
                    jSONObjectDeepCopy = JSONUtil.deepCopy(jSONObjectDeepCopy);
                    JSONUtil.applyParameters(jSONObjectDeepCopy, jSONObjectOptJSONObject);
                }
                if (jSONObjectOptJSONObject != null) {
                    jSONObject.remove("template parameters");
                }
                JSONUtil.mergeJSONObjects(jSONObject, jSONObjectDeepCopy, false, templateDraft.additive);
                if (jSONObjectOptJSONObject != null) {
                    jSONObject.put("template parameters", jSONObjectOptJSONObject);
                }
            }
        }
        draft.type = jSONObject.optString("type", "none");
        draft.title = jSONObject.optString(C3522b4.i.D0, draft.title);
        draft.text = jSONObject.optString(C3522b4.i.K0, draft.text);
        draft.hidden = jSONObject.optBoolean("hidden", draft.hidden);
        draft.author = jSONObject.optString("author", "Lobby & theotheoderich");
        draft.dev = jSONObject.optBoolean("dev", draft.dev);
        if (jSONObject.optBoolean("final", draft.isFinal())) {
            draft.setFinal();
        }
        boolean z = true;
        draft.hideId = jSONObject.optBoolean("hide id", (draft.plugin && (draft.isPrivileged() || PluginHelper.PRIVATE)) || draft.isFinal());
        draft.muteLua = jSONObject.optBoolean("mute lua", draft.muteLua);
        draft.strictLua = jSONObject.optBoolean("strict lua", draft.strictLua);
        draft.index = jSONObject.optBoolean("index", !(draft instanceof ScenarioDraft));
        if (!jSONObject.has("not implemented") && !draft.mustBeInherited) {
            z = false;
        }
        draft.mustBeInherited = z;
        if (jSONObject.has("sound click")) {
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sound click");
            if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.has(C3522b4.i.b)) {
                draft.soundClick = PluginHelper.loadSound(jSONObjectOptJSONObject3.getString(C3522b4.i.b));
            } else if (jSONObjectOptJSONObject3 != null && jSONObjectOptJSONObject3.has("res")) {
                draft.soundClick = Resources.resolve(jSONObjectOptJSONObject3.optString("res", ""), 0);
            } else {
                draft.soundClick = 0;
            }
        }
        draft.ordinal = jSONObject.optInt(MediationMetaData.KEY_ORDINAL, Integer.MIN_VALUE);
        if (jSONObject.has("ordinal from")) {
            if (draft.ordinal == Integer.MIN_VALUE) {
                throw new IllegalArgumentException("ordinal from can only be used in combination with ordinal");
            }
            String string2 = jSONObject.getString("ordinal from");
            Draft draft4 = Drafts.ALL.get(string2);
            if (draft4 == null) {
                throw new IllegalArgumentException("May not find " + string2 + " to get ordinal from");
            }
            draft.ordinal += draft4.ordinal;
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("meta");
        if (jSONObjectOptJSONObject4 != null) {
            draft.meta = jSONObjectOptJSONObject4;
        }
        draft.titleId = jSONObject.optString("title id", draft.titleId);
        draft.textId = jSONObject.optString("text id", draft.textId);
        draft.separator = jSONObject.optBoolean("separator", draft.separator);
        draft.previewFrames = loadFrames("preview frames", "preview frame", jSONObject, draft, draft.previewFrames);
        draft.iconFrames = loadFrames("icon frames", "icon frame", jSONObject, draft, draft.iconFrames);
        draft.showNewMarker = jSONObject.optBoolean("show new marker", draft.showNewMarker);
        draft.searchable = jSONObject.optBoolean("searchable", draft.searchable);
        CategoryDraft categoryDraft2 = draft.category;
        String strOptString2 = jSONObject.optString("category", categoryDraft2 != null ? categoryDraft2.id : null);
        if (strOptString2 != null && !strOptString2.equals(draft.id)) {
            CategoryDraft categoryDraft3 = (CategoryDraft) Drafts.get(strOptString2, CategoryDraft.class);
            draft.category = categoryDraft3;
            if (categoryDraft3 == null) {
                throw new IllegalArgumentException("No category " + strOptString2 + " could be found");
            }
        }
        String strOptString3 = jSONObject.optString("category from", null);
        if (strOptString3 != null) {
            Draft draft5 = Drafts.ALL.get(strOptString3);
            if (draft5 == null) {
                throw new IllegalArgumentException("May not find " + strOptString3 + " to get category from");
            }
            draft.category = draft5.category;
        }
        loadAliases(draft, jSONObject);
        draft.setRequirement(getRequirement(jSONObject, draft.id, draft.isPrivileged(), draft.getRequirement()));
        if (this.oldDraft != draft) {
            ScriptingEnvironment.getInstance().registerDraft(draft);
        }
        if (jSONObject.has("script") || jSONObject.has("scripts")) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            collectScripts(draft, jSONObject, arrayList, arrayList2, arrayList3);
            if (arrayList.size() > 0 && PluginScriptPolicy.INSTANCE.isAllowedToLoadScripts(draft)) {
                long jMillis = TimeUtils.millis();
                ScriptingEnvironment.getInstance().registerScripts(draft, arrayList2, arrayList, arrayList3);
                long jMillis2 = TimeUtils.millis() - jMillis;
                if (jMillis2 >= 10 && draft.pluginFile != null && (draft.pluginId == 0 || !ManagedPluginsController.getInstance().isInternalPlugin(draft.pluginId))) {
                    Gdx.app.debug("DraftLoader", "Plugin " + draft.id + " in " + draft.pluginFile + " took " + jMillis2 + " ms to initiate scripts");
                }
            }
        }
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, "require scenario");
        if (jSONArrayOptArrayOrSingle != null) {
            if (!draft.isPrivileged()) {
                throw new PluginLoadingException(draft.id, "Permissions required to define \"require scenario\"");
            }
            String[] strArr2 = new String[jSONArrayOptArrayOrSingle.length()];
            for (int i4 = 0; i4 < jSONArrayOptArrayOrSingle.length(); i4++) {
                strArr2[i4] = jSONArrayOptArrayOrSingle.getString(i4);
            }
            draft.scenarioIds = strArr2;
        }
    }

    public static void collectScripts(Draft draft, JSONObject jSONObject, List<AbstractFile> list, List<String> list2, List<byte[]> list3) throws JSONException {
        String str = jSONObject.has("scripts") ? "scripts" : "script";
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObject.getString(str));
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            String string = jSONArrayOptJSONArray.getString(i);
            String lowerCase = string.toLowerCase(Locale.ENGLISH);
            if (string.startsWith("#")) {
                String strSubstring = string.substring(1);
                ScriptingManager.ScriptEntry scriptEntry = ScriptingManager.getInstance().get(strSubstring);
                if (scriptEntry == null) {
                    throw new IllegalArgumentException("Script #" + strSubstring + " could not be resolved");
                }
                list.add(VirtualFile.createDirectory(scriptEntry.getPath(), null));
                if (scriptEntry.isBinary()) {
                    list2.add(null);
                    list3.add(Base64Coder.decode(scriptEntry.getCode()));
                } else {
                    list2.add(scriptEntry.getCode());
                    list3.add(null);
                }
            } else if (lowerCase.endsWith(".lua")) {
                AbstractFile file = draft.path.getFile(lowerCase);
                if (file != null && file.isFile()) {
                    try {
                        String textFile = Files.readTextFile(file.read());
                        list.add(file);
                        list2.add(textFile);
                        list3.add(null);
                    } catch (IOException e) {
                        throw new IllegalStateException(e);
                    }
                } else {
                    throw new IllegalArgumentException("Couldn't find script " + string);
                }
            } else {
                if (lowerCase.endsWith(".luac")) {
                    throw new IllegalArgumentException("Loading binary scripts is not supported: " + lowerCase);
                }
                list.add(VirtualFile.createDirectory(PluginHelper.FILE + ":" + draft.id + ":" + (i + 1), null));
                list2.add(string);
                list3.add(null);
            }
        }
    }

    public String readFileOrString(AbstractFile abstractFile, JSONObject jSONObject, String str) throws JSONException {
        String string = jSONObject.getString(str);
        AbstractFile file = abstractFile.getFile(string);
        if (file != null && file.isFile()) {
            try {
                return Files.readTextFile(file.read());
            } catch (IOException unused) {
            }
        }
        return string;
    }

    public DraftRequirement getRequirement(JSONObject jSONObject, String str, boolean z, DraftRequirement draftRequirement) throws JSONException {
        if (TheoTown.PREMIUM && jSONObject.has("premium requirement")) {
            return new DraftRequirement(jSONObject.getJSONObject("premium requirement"), str, z);
        }
        if (TheoTown.PREMIUM && jSONObject.has("premium requirements")) {
            return new DraftRequirement(jSONObject.getJSONArray("premium requirements"), str, z);
        }
        if (jSONObject.has("requirement")) {
            return new DraftRequirement(jSONObject.getJSONObject("requirement"), str, z);
        }
        return jSONObject.has("requirements") ? new DraftRequirement(jSONObject.getJSONArray("requirements"), str, z) : draftRequirement;
    }

    public Color optColor(String str, Color color) throws JSONException {
        Color colorLoadColor = loadColor(str);
        return colorLoadColor == null ? color : colorLoadColor;
    }

    public Color loadColor(String str) throws JSONException {
        return loadColor(str, this.src);
    }

    public Color[] loadColors(String str, JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObject.get(str));
        }
        if (jSONArrayOptJSONArray.length() == 0) {
            return null;
        }
        int length = jSONArrayOptJSONArray.length();
        Color[] colorArr = new Color[length];
        for (int i = 0; i < length; i++) {
            if (jSONArrayOptJSONArray.get(i) instanceof String) {
                colorArr[i] = loadColorFromString(jSONArrayOptJSONArray.getString(i));
            } else {
                colorArr[i] = loadColorFromObject(jSONArrayOptJSONArray.getJSONObject(i));
            }
        }
        return colorArr;
    }

    public Color loadColor(String str, JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(str)) {
            return null;
        }
        if (jSONObject.get(str) instanceof String) {
            return loadColorFromString(jSONObject.optString(str, ""));
        }
        return loadColorFromObject(jSONObject.getJSONObject(str));
    }

    public Color loadColorFromString(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (str.startsWith("#")) {
            jSONObject.put("hex", str.substring(1));
        } else {
            jSONObject.put(C3670j8.x, str);
        }
        return loadColorFromObject(jSONObject);
    }

    public Color loadColorFromObject(JSONObject jSONObject) throws JSONException {
        int iDigit;
        int iDigit2;
        int iDigit3;
        if (jSONObject.has(C3670j8.x) && !jSONObject.has("type")) {
            String string = jSONObject.getString(C3670j8.x);
            ColorDraft colorDraft = (ColorDraft) Drafts.ALL.get(string);
            if (colorDraft == null) {
                throw new IllegalArgumentException("No color of id " + string + " could be found");
            }
            return colorDraft.color;
        }
        int iDigit4 = 255;
        if (jSONObject.has("hex")) {
            String string2 = jSONObject.getString("hex");
            int length = string2.length();
            if (string2.length() >= 6) {
                int i = length - 6;
                int i2 = length - 4;
                iDigit = Integer.valueOf(string2.substring(i, i2), 16).intValue();
                int i3 = length - 2;
                iDigit2 = Integer.valueOf(string2.substring(i2, i3), 16).intValue();
                iDigit3 = Integer.valueOf(string2.substring(i3, length), 16).intValue();
                if (length >= 8) {
                    iDigit4 = Integer.valueOf(string2.substring(length - 8, i), 16).intValue();
                }
            } else if (length >= 3) {
                iDigit = Character.digit(string2.charAt(length - 3), 16) * 17;
                iDigit2 = Character.digit(string2.charAt(length - 2), 16) * 17;
                iDigit3 = Character.digit(string2.charAt(length - 1), 16) * 17;
                if (length >= 4) {
                    iDigit4 = Character.digit(string2.charAt(length - 4), 16) * 17;
                }
            } else {
                throw new IllegalArgumentException("Color hex string " + string2 + " must have length >=3");
            }
            return new Color(iDigit, iDigit2, iDigit3, iDigit4);
        }
        return new Color(jSONObject.getInt(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ), jSONObject.getInt("g"), jSONObject.getInt("b"), jSONObject.optInt("a", 255));
    }

    public int[] loadFrames(String str, String str2, Draft draft, int[] iArr) throws JSONException {
        return loadFrames(str, str2, ImageHandleResolver.DEFAULT, this.src, draft, iArr);
    }

    public int[] loadFrames(String str, String str2, ImageHandleResolver imageHandleResolver, Draft draft, int[] iArr) throws JSONException {
        return loadFrames(str, str2, imageHandleResolver, this.src, draft, iArr);
    }

    public int[] loadFrames(String str, String str2, JSONObject jSONObject, Draft draft, int[] iArr) throws JSONException {
        return loadFrames(str, str2, ImageHandleResolver.DEFAULT, jSONObject, draft, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
    
        if (r11.has(r9 + " winter") != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int[] loadFrames(java.lang.String r8, java.lang.String r9, info.flowersoft.theotown.draftloader.ImageHandleResolver r10, info.flowersoft.theotown.util.json.JSONObject r11, info.flowersoft.theotown.draft.Draft r12, int[] r13) throws info.flowersoft.theotown.util.json.JSONException {
        /*
            r7 = this;
            int[] r13 = r7.loadFramesRaw(r8, r9, r10, r11, r12, r13)
            if (r13 == 0) goto L90
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            java.lang.String r1 = " winter"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            boolean r0 = r11.has(r0)
            if (r0 != 0) goto L32
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r9)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            boolean r0 = r11.has(r0)
            if (r0 == 0) goto L90
        L32:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r8)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r9)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            r6 = 0
            r3 = r10
            r4 = r11
            r5 = r12
            r1 = r0
            r0 = r7
            int[] r9 = r0.loadFramesRaw(r1, r2, r3, r4, r5, r6)
            int r10 = r9.length
            int r11 = r13.length
            if (r10 != r11) goto L67
            info.flowersoft.theotown.resources.WinterManager r8 = info.flowersoft.theotown.resources.WinterManager.getInstance()
            int r10 = r13.length
            r8.registerWinterFrames(r13, r9, r10)
            return r13
        L67:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "Winter frames for "
            r11.append(r12)
            r11.append(r8)
            java.lang.String r8 = " have length "
            r11.append(r8)
            int r8 = r9.length
            r11.append(r8)
            java.lang.String r8 = " instead of "
            r11.append(r8)
            int r8 = r13.length
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            r10.<init>(r8)
            throw r10
        L90:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.DraftLoader.loadFrames(java.lang.String, java.lang.String, info.flowersoft.theotown.draftloader.ImageHandleResolver, info.flowersoft.theotown.util.json.JSONObject, info.flowersoft.theotown.draft.Draft, int[]):int[]");
    }

    public final int[] loadFramesRaw(String str, String str2, ImageHandleResolver imageHandleResolver, JSONObject jSONObject, Draft draft, int[] iArr) throws JSONException {
        JSONArray jSONArray;
        int i;
        String str3;
        JSONArray jSONArray2;
        int iOptInt;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr2;
        IntList intList;
        int i6;
        int[] iArr3;
        int i7;
        int[] iArr4;
        String str4 = "frames";
        String str5 = str;
        if (!jSONObject.has(str5) && str2 != null) {
            str5 = str2;
        }
        if (!jSONObject.has(str5)) {
            return iArr;
        }
        if (jSONObject.get(str5) instanceof JSONArray) {
            jSONArray = jSONObject.getJSONArray(str5);
        } else {
            JSONArray jSONArray3 = new JSONArray();
            jSONArray3.put(jSONObject.getJSONObject(str5));
            jSONArray = jSONArray3;
        }
        IntList intList2 = new IntList(jSONArray.length());
        Image image = Resources.IMAGE_WORLD;
        int i8 = 0;
        int i9 = 0;
        int[] iArrLoadFramesRaw = null;
        while (i9 < jSONArray.length()) {
            if (jSONArray.isNull(i9)) {
                intList2.add(i8);
                i6 = i8;
                i = i9;
                iArr2 = iArrLoadFramesRaw;
                str3 = str4;
                jSONArray2 = jSONArray;
                intList = intList2;
            } else {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                if (jSONObject2.has("silent frames")) {
                    iArrLoadFramesRaw = loadFramesRaw("silent frames", "silent frame", imageHandleResolver, jSONObject2, draft, null);
                    i6 = i8;
                    i = i9;
                    str3 = str4;
                    jSONArray2 = jSONArray;
                    intList = intList2;
                    i9 = i + 1;
                    intList2 = intList;
                    i8 = i6;
                    jSONArray = jSONArray2;
                    str4 = str3;
                } else {
                    ImageHandleResolver imageHandleResolver2 = imageHandleResolver;
                    int i10 = i9;
                    String str6 = "handle x";
                    if (jSONObject2.has("steal")) {
                        String string = jSONObject2.getString("steal");
                        Draft draft2 = Drafts.ALL.get(string);
                        if (draft2 == null) {
                            throw new IllegalArgumentException("May not find draft " + string + " to steal frames from");
                        }
                        if (draft2.isFinal() && !draft.isPrivileged()) {
                            throw new IllegalArgumentException("Cannot steal frames from " + string);
                        }
                        i = i10;
                        jSONArray2 = jSONArray;
                        String strOptString = jSONObject2.optString("type", str4);
                        strOptString.getClass();
                        if (strOptString.equals(str4)) {
                            str3 = str4;
                            iArr4 = ((ViewportDraft) draft2).frames;
                        } else {
                            str3 = str4;
                            if (!strOptString.equals("preview frames")) {
                                throw new IllegalArgumentException("Steal type " + jSONObject2.getString("type") + " is not supported");
                            }
                            iArr4 = draft2.previewFrames;
                        }
                        if (iArr4 == null) {
                            throw new IllegalArgumentException("May not steal any frames from " + string);
                        }
                        int iOptInt2 = jSONObject2.optInt("count", 1);
                        int iOptInt3 = jSONObject2.optInt("move x", 0);
                        int iOptInt4 = jSONObject2.optInt("move y", 0);
                        int iOptInt5 = iOptInt3 - jSONObject2.optInt("handle x", 0);
                        int iOptInt6 = iOptInt4 - jSONObject2.optInt("handle y", 0);
                        int i11 = iOptInt2 == -1 ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iOptInt2;
                        for (int iOptInt7 = jSONObject2.optInt("frame", 0); i11 > 0 && iOptInt7 < iArr4.length; iOptInt7++) {
                            int i12 = iArr4[iOptInt7];
                            if (iOptInt5 == 0 && iOptInt6 == 0 && jSONObject2.optBoolean("share", true)) {
                                intList2.add(i12);
                            } else {
                                float handleX = image.getHandleX(i12) - iOptInt5;
                                float handleY = image.getHandleY(i12) - iOptInt6;
                                image.selectTexture(image.getTextureId(i12));
                                intList2.add(image.addFrame(i12, handleX, handleY));
                                image.selectTexture(0);
                            }
                            i11--;
                        }
                        iArr2 = iArrLoadFramesRaw;
                        intList = intList2;
                        i6 = 0;
                    } else {
                        i = i10;
                        str3 = str4;
                        jSONArray2 = jSONArray;
                        if (jSONObject2.has("ref")) {
                            int i13 = jSONObject2.getInt("ref");
                            int iOptInt8 = jSONObject2.optInt("move x", 0);
                            int iOptInt9 = jSONObject2.optInt("move y", 0);
                            int iOptInt10 = jSONObject2.optInt("count", 1);
                            boolean zOptBoolean = jSONObject2.optBoolean("silent", false);
                            if (iOptInt10 == -1) {
                                iOptInt10 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                            }
                            while (iOptInt10 > 0) {
                                if (i13 >= (zOptBoolean ? iArrLoadFramesRaw.length : intList2.size())) {
                                    break;
                                }
                                int i14 = zOptBoolean ? iArrLoadFramesRaw[i13] : intList2.get(i13);
                                if (iOptInt8 == 0 && iOptInt9 == 0 && jSONObject2.optBoolean("share", true)) {
                                    intList2.add(i14);
                                } else {
                                    intList2.add(image.addFrame(i14, image.getHandleX(i14) - iOptInt8, image.getHandleY(i14) - iOptInt9));
                                }
                                iOptInt10--;
                                i13++;
                            }
                            iArr2 = iArrLoadFramesRaw;
                            intList = intList2;
                            i6 = 0;
                            iArrLoadFramesRaw = iArr2;
                            i9 = i + 1;
                            intList2 = intList;
                            i8 = i6;
                            jSONArray = jSONArray2;
                            str4 = str3;
                        } else {
                            if (jSONObject2.has("bmp")) {
                                if (jSONObject2.has("place x") || jSONObject2.has("place y")) {
                                    if (!draft.isPrivileged()) {
                                        throw new IllegalArgumentException("Unknown attribute `place x/y`");
                                    }
                                    i7 = 0;
                                    iArr3 = new int[]{jSONObject2.optInt("place x"), jSONObject2.optInt("place y")};
                                } else {
                                    i7 = 0;
                                    iArr3 = null;
                                }
                                PluginHelper.Parcel parcelAddBitmapFrame = PluginHelper.addBitmapFrame(null, jSONObject2.getString("bmp"), iArr3);
                                iOptInt = jSONObject2.optInt("x", i7) + parcelAddBitmapFrame.x;
                                int iOptInt11 = jSONObject2.optInt("y", i7) + parcelAddBitmapFrame.y;
                                int iOptInt12 = jSONObject2.optInt("w", parcelAddBitmapFrame.w);
                                int iOptInt13 = jSONObject2.optInt("h", parcelAddBitmapFrame.h);
                                int iOptInt14 = jSONObject2.optInt("rowlen", parcelAddBitmapFrame.w / Math.max(iOptInt12, 1));
                                image.selectTexture(parcelAddBitmapFrame.textureId);
                                i4 = iOptInt12;
                                i2 = iOptInt13;
                                i3 = iOptInt11;
                                i5 = iOptInt14;
                            } else {
                                int iOptInt15 = jSONObject2.optInt("offset x", 0);
                                int iOptInt16 = jSONObject2.optInt("offset y", 0);
                                iOptInt = jSONObject2.getInt("x") + iOptInt15;
                                int i15 = jSONObject2.getInt("y") + iOptInt16;
                                int i16 = jSONObject2.getInt("w");
                                i2 = jSONObject2.getInt("h");
                                i3 = i15;
                                i4 = i16;
                                i5 = 0;
                            }
                            int iOptInt17 = jSONObject2.optInt("target w", i4);
                            int iOptInt18 = jSONObject2.optInt("target h", i2);
                            int i17 = i3;
                            String str7 = "handle y";
                            IntList intList3 = intList2;
                            Image image2 = image;
                            float fOptDouble = (float) jSONObject2.optDouble("scale", 1.0d);
                            long j = 4607182418800017408L;
                            if (fOptDouble != 1.0d) {
                                iOptInt17 = Math.round(iOptInt17 * fOptDouble);
                                iOptInt18 = Math.round(fOptDouble * iOptInt18);
                            }
                            int iOptInt19 = jSONObject2.optInt("count", 1);
                            int iOptInt20 = jSONObject2.optInt("skip width factor", 1);
                            int iOptInt21 = jSONObject2.optInt("skip height factor", 0);
                            int i18 = i4 != 0 ? i4 : 1;
                            int i19 = i2 != 0 ? i2 : 1;
                            int i20 = i5;
                            iArr2 = iArrLoadFramesRaw;
                            int i21 = iOptInt;
                            int i22 = i17;
                            int i23 = 0;
                            while (i23 < iOptInt19) {
                                int i24 = iOptInt21;
                                int size = intList3.size();
                                int i25 = iOptInt19;
                                int handleX2 = imageHandleResolver2.getHandleX(i4, i2, size);
                                int handleY2 = imageHandleResolver2.getHandleY(i4, i2, size);
                                int iOptInt22 = jSONObject2.optInt(str6, handleX2);
                                String str8 = str7;
                                String str9 = str6;
                                int i26 = i22;
                                float fOptInt = jSONObject2.optInt(str8, handleY2);
                                Image image3 = image2;
                                int i27 = i23;
                                long j2 = j;
                                int iAddFrame = image3.addFrame(i21, i22, i4, i2, iOptInt22, fOptInt);
                                image3.scale(iAddFrame, iOptInt17 / i18, iOptInt18 / i19);
                                IntList intList4 = intList3;
                                intList4.add(iAddFrame);
                                int i28 = i21 + (iOptInt20 * i4);
                                int i29 = i26 + (i24 * i2);
                                if (i20 > 0 && (i27 + 1) % i20 == 0) {
                                    i29 += i2;
                                    i28 = iOptInt;
                                }
                                intList3 = intList4;
                                str7 = str8;
                                image2 = image3;
                                i22 = i29;
                                j = j2;
                                imageHandleResolver2 = imageHandleResolver;
                                str6 = str9;
                                i23 = i27 + 1;
                                i21 = i28;
                                iOptInt21 = i24;
                                iOptInt19 = i25;
                            }
                            intList = intList3;
                            int i30 = iOptInt19;
                            image = image2;
                            i6 = 0;
                            image.selectTexture(0);
                            int iOptInt23 = jSONObject2.optInt(G5.q, jSONObject2.optInt("copies", 0) + 1) - 1;
                            for (int i31 = 0; i31 < iOptInt23 * i30; i31++) {
                                intList.add(intList.get(intList.size() - i30));
                            }
                            iArrLoadFramesRaw = iArr2;
                            i9 = i + 1;
                            intList2 = intList;
                            i8 = i6;
                            jSONArray = jSONArray2;
                            str4 = str3;
                        }
                    }
                }
            }
            iArrLoadFramesRaw = iArr2;
            i9 = i + 1;
            intList2 = intList;
            i8 = i6;
            jSONArray = jSONArray2;
            str4 = str3;
        }
        IntList intList5 = intList2;
        if (jSONArray.length() == 0) {
            intList5.add(image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
        }
        return intList5.reduce();
    }

    public int[] loadInfluences() {
        return loadInfluences(null, this.src);
    }

    public int[] loadInfluences(JSONObject jSONObject) {
        return loadInfluences(null, jSONObject);
    }

    public int[] loadInfluences(int[] iArr) {
        return loadInfluences(iArr, this.src);
    }

    public int[] loadInfluences(int[] iArr, JSONObject jSONObject) {
        int length = InfluenceType.cachedValues().length;
        int[] iArr2 = new int[length];
        if (iArr != null) {
            System.arraycopy(iArr, 0, iArr2, 0, Math.min(length, iArr.length));
        }
        for (InfluenceType influenceType : InfluenceType.cachedValues()) {
            int iOrdinal = influenceType.ordinal();
            iArr2[iOrdinal] = jSONObject.optInt(influenceType.getTag(), iArr2[iOrdinal]);
        }
        return iArr2;
    }

    public List<AnimationSpot> loadAnimations(int i, String str) throws JSONException {
        return loadAnimations(i, str, this.src);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e4  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r21v0, types: [info.flowersoft.theotown.draftloader.DraftLoader] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r7v1, types: [info.flowersoft.theotown.util.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v27 */
    /* JADX WARN: Type inference failed for: r9v28 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<info.flowersoft.theotown.draft.AnimationSpot> loadAnimations(int r22, java.lang.String r23, info.flowersoft.theotown.util.json.JSONObject r24) throws info.flowersoft.theotown.util.json.JSONException {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.DraftLoader.loadAnimations(int, java.lang.String, info.flowersoft.theotown.util.json.JSONObject):java.util.List");
    }

    public int[] loadTargetFrames(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, "frames");
        if (jSONArrayOptArrayOrSingle == null) {
            jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, "frame");
        }
        if (jSONArrayOptArrayOrSingle == null) {
            return null;
        }
        int[] iArr = new int[jSONArrayOptArrayOrSingle.length()];
        for (int i = 0; i < jSONArrayOptArrayOrSingle.length(); i++) {
            iArr[i] = jSONArrayOptArrayOrSingle.getInt(i);
        }
        return iArr;
    }

    public int[][] loadFrameAnimationIndices(String str, String str2, int i, int i2, JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has(str2)) {
            return null;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(str2);
        int length = jSONArray.length();
        int[][] iArr = new int[length][];
        for (int i3 = 0; i3 < jSONArray.length(); i3++) {
            JSONArray jSONArray2 = jSONArray.getJSONArray(i3);
            int[] iArr2 = new int[jSONArray2.length()];
            for (int i4 = 0; i4 < jSONArray2.length(); i4++) {
                int i5 = jSONArray2.getInt(i4);
                if (i5 < 0 || i5 >= i2) {
                    throw new PluginLoadingException(str, str2 + " index " + i5 + " is invalid, must be in 0..<" + i2);
                }
                iArr2[i4] = i5;
            }
            iArr[i3] = iArr2;
        }
        if (length >= i) {
            return iArr;
        }
        throw new JSONException("You have to provide at least " + i + " index lists instead of " + length);
    }

    public List<Transition> loadTransitions(JSONObject jSONObject, String str, List<Transition> list) throws JSONException {
        List<Transition> listLoadTransitions = new TransitionLoader().loadTransitions(jSONObject, str);
        return listLoadTransitions != null ? listLoadTransitions : list;
    }

    public int[] extendArray(int[] iArr, int i) {
        if (iArr.length >= i) {
            return iArr;
        }
        int[] iArr2 = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr2[i2] = iArr[i2 % iArr.length];
        }
        return iArr2;
    }

    public SpawnInBiomeDefinition[] loadLegacySpawn(String str, SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr, String str2) throws MissingDraftException, JSONException {
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(this.src, str);
        if (jSONArrayOptArrayOrSingle == null) {
            return spawnInBiomeDefinitionArr;
        }
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr2 = new SpawnInBiomeDefinition[jSONArrayOptArrayOrSingle.length()];
        for (int i = 0; i < jSONArrayOptArrayOrSingle.length(); i++) {
            SpawnInBiomeDefinition spawnInBiomeDefinition = new SpawnInBiomeDefinition();
            spawnInBiomeDefinition.spawnDefinition = new SpawnDefinition();
            spawnInBiomeDefinition.biome = (BiomeDraft) Drafts.get(str2, BiomeDraft.class);
            loadLegacySpawner(jSONArrayOptArrayOrSingle.get(i), spawnInBiomeDefinition.spawnDefinition);
            spawnInBiomeDefinitionArr2[i] = spawnInBiomeDefinition;
        }
        return spawnInBiomeDefinitionArr2;
    }

    public void loadLegacySpawner(Object obj, SpawnDefinition spawnDefinition) {
        if (obj instanceof String) {
            throw new UnsupportedOperationException("Spawn by filter id is not supported anymore");
        }
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject.has("filter")) {
                throw new UnsupportedOperationException("Spawn by filter id is not supported anymore");
            }
            float fOptDouble = (float) jSONObject.optDouble("p");
            float fOptDouble2 = (float) jSONObject.optDouble("height");
            float fOptDouble3 = (float) jSONObject.optDouble("radius");
            spawnDefinition.heightFactor = fOptDouble;
            spawnDefinition.heightCenter = fOptDouble2 * 1000.0f;
            spawnDefinition.heightRadius = fOptDouble3 * 1000.0f;
            return;
        }
        throw new UnsupportedOperationException("Could not load spawner " + obj);
    }

    public SpawnInBiomeDefinition[] loadInBiomeSpawners(String str, String str2, SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr, Getter<SpawnDefinition> getter, String str3) throws MissingDraftException, JSONException {
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(this.src, str);
        if (jSONArrayOptArrayOrSingle == null) {
            jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(this.src, str2);
        }
        if (jSONArrayOptArrayOrSingle == null) {
            return spawnInBiomeDefinitionArr;
        }
        int length = jSONArrayOptArrayOrSingle.length();
        SpawnInBiomeDefinition[] spawnInBiomeDefinitionArr2 = new SpawnInBiomeDefinition[length];
        for (int i = 0; i < length; i++) {
            SpawnInBiomeDefinition spawnInBiomeDefinition = new SpawnInBiomeDefinition();
            spawnInBiomeDefinition.spawnDefinition = getter.get();
            loadInBiomeSpawner(jSONArrayOptArrayOrSingle.get(i), spawnInBiomeDefinition, str3);
            spawnInBiomeDefinitionArr2[i] = spawnInBiomeDefinition;
        }
        return spawnInBiomeDefinitionArr2;
    }

    public final void loadInBiomeSpawner(Object obj, SpawnInBiomeDefinition spawnInBiomeDefinition, String str) throws MissingDraftException, JSONException {
        if (obj instanceof String) {
            str = (String) obj;
        } else if (obj != JSONObject.NULL) {
            JSONObject jSONObject = (JSONObject) obj;
            str = jSONObject.getString(jSONObject.has("biome") ? "biome" : C3670j8.x);
            SpawnDefinition spawnDefinition = new SpawnDefinition();
            spawnInBiomeDefinition.spawnDefinition = spawnDefinition;
            loadSpawnDefinition(jSONObject, spawnDefinition);
        }
        spawnInBiomeDefinition.biome = (BiomeDraft) Drafts.getOrThrow(str, BiomeDraft.class);
    }

    public final void loadAliases(Draft draft, JSONObject jSONObject) throws JSONException {
        String str = jSONObject.has("aliases") ? "aliases" : "alias";
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null && jSONObject.has(str)) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObject.optString(str, ""));
        }
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strOptString = jSONArrayOptJSONArray.optString(i, "");
                if (strOptString != null && !strOptString.isEmpty() && !Drafts.ALL.containsKey(strOptString)) {
                    arrayList.add(strOptString);
                    Drafts.ALL.put(strOptString, draft);
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            draft.aliases = (String[]) arrayList.toArray(new String[0]);
        }
    }

    public Draft[] loadDraftList(JSONObject jSONObject, String str, String str2, Draft[] draftArr) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray == null && jSONObject.has(str)) {
            jSONArrayOptJSONArray = new JSONArray();
            jSONArrayOptJSONArray.put(jSONObject.optString(str, ""));
        }
        if (jSONArrayOptJSONArray == null) {
            return draftArr;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            String strOptString = jSONArrayOptJSONArray.optString(i);
            if (strOptString != null && !strOptString.isEmpty()) {
                Draft draft = Drafts.get(strOptString, Draft.class);
                if (draft == null) {
                    throw new IllegalArgumentException("Did not find " + strOptString + " references as price draft in " + str2);
                }
                arrayList.add(draft);
            }
        }
        return (Draft[]) arrayList.toArray(new Draft[0]);
    }

    public int positivePrice(int i) {
        return Math.min(Math.max(i, 0), 2000000000);
    }

    public int signedPrice(int i) {
        return Math.min(Math.max(i, -2000000000), 2000000000);
    }

    public int[] loadRoadDirs(JSONArray jSONArray, boolean z) {
        if (jSONArray == null) {
            return null;
        }
        if (z) {
            if (jSONArray.length() != 64) {
                throw new IllegalArgumentException("Dirs length must be 64 but got " + jSONArray.length());
            }
            int[] iArr = new int[256];
            for (int i = 0; i < jSONArray.length(); i++) {
                iArr[i] = jSONArray.optInt(i);
            }
            for (int i2 = 1; i2 < 4; i2++) {
                for (int i3 = 0; i3 < 16; i3++) {
                    int i4 = (i2 * 64) + (i3 * 4);
                    int iRotateCW = ((i2 - 1) * 64) + (Direction.rotateCW(i3, 1) * 4);
                    iArr[i4 + 2] = Direction.rotateCCW(iArr[iRotateCW + 3], 1);
                    iArr[i4 + 3] = Direction.rotateCCW(iArr[iRotateCW + 1], 1);
                    iArr[i4 + 1] = Direction.rotateCCW(iArr[iRotateCW], 1);
                    iArr[i4] = Direction.rotateCCW(iArr[iRotateCW + 2], 1);
                }
            }
            return iArr;
        }
        int[] iArr2 = new int[64];
        if (jSONArray.length() != 24) {
            throw new IllegalArgumentException("Dirs length must be 24 but got " + jSONArray.length());
        }
        int[] iArr3 = {0, 1, 3, 5, 7, 15};
        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
            iArr2[(iArr3[i5 / 4] * 4) + (i5 % 4)] = jSONArray.optInt(i5);
        }
        int[] iArr4 = {2, 4, 6, 8, 9, 10, 11, 12, 13, 14};
        int[] iArr5 = {1, 1, 3, 1, 3, 5, 7, 3, 7, 7};
        int[] iArr6 = {1, 2, 1, 3, 3, 1, 3, 2, 2, 1};
        for (int i6 = 0; i6 < 10; i6++) {
            int i7 = iArr4[i6];
            int i8 = iArr5[i6];
            int i9 = iArr6[i6];
            int i10 = i7 * 4;
            int i11 = i8 * 4;
            for (int i12 = 0; i12 < 4; i12++) {
                iArr2[i10 + i12] = iArr2[i11 + i12];
            }
            for (int i13 = 0; i13 < i9; i13++) {
                int i14 = i10 + 2;
                int i15 = iArr2[i14];
                int i16 = i10 + 3;
                iArr2[i14] = Direction.rotateCCW(iArr2[i16], 1);
                int i17 = i10 + 1;
                iArr2[i16] = Direction.rotateCCW(iArr2[i17], 1);
                iArr2[i17] = Direction.rotateCCW(iArr2[i10], 1);
                iArr2[i10] = Direction.rotateCCW(i15, 1);
            }
        }
        return iArr2;
    }

    public void loadSpawnDefinition(JSONObject jSONObject, SpawnDefinition spawnDefinition) throws MissingDraftException, JSONException {
        spawnDefinition.noiseSeed = jSONObject.optInt("noise seed", spawnDefinition.noiseSeed);
        spawnDefinition.noiseScale = (float) jSONObject.optDouble("noise scale", spawnDefinition.noiseScale);
        spawnDefinition.noiseOffset = (float) jSONObject.optDouble("noise offset", spawnDefinition.noiseOffset);
        spawnDefinition.noiseFactor = (float) jSONObject.optDouble("noise factor", spawnDefinition.noiseFactor);
        spawnDefinition.noiseVariance = (float) jSONObject.optDouble("noise variance", spawnDefinition.noiseVariance);
        spawnDefinition.heightCenter = (float) jSONObject.optDouble("height center", spawnDefinition.heightCenter);
        spawnDefinition.heightRadius = (float) jSONObject.optDouble("height radius", spawnDefinition.heightRadius);
        spawnDefinition.heightOffset = (float) jSONObject.optDouble("height offset", spawnDefinition.heightOffset);
        spawnDefinition.heightFactor = (float) jSONObject.optDouble("height factor", spawnDefinition.heightFactor);
        spawnDefinition.derivCenter = (float) jSONObject.optDouble("deriv center", spawnDefinition.derivCenter);
        spawnDefinition.derivRadius = (float) jSONObject.optDouble("deriv radius", spawnDefinition.derivRadius);
        spawnDefinition.derivOffset = (float) jSONObject.optDouble("deriv offset", spawnDefinition.derivOffset);
        spawnDefinition.derivFactor = (float) jSONObject.optDouble("deriv factor", spawnDefinition.derivFactor);
        spawnDefinition.offset = (float) jSONObject.optDouble("offset", spawnDefinition.offset);
        spawnDefinition.coverage = (float) jSONObject.optDouble("coverage", spawnDefinition.coverage);
        spawnDefinition.precedence = (float) jSONObject.optDouble("precedence", spawnDefinition.precedence);
        JSONArray jSONArrayOptArrayOrSingle = JSONUtil.optArrayOrSingle(jSONObject, "allowed ground");
        if (jSONArrayOptArrayOrSingle != null) {
            spawnDefinition.allowedGroundSet = new HashSet();
            for (int i = 0; i < jSONArrayOptArrayOrSingle.length(); i++) {
                spawnDefinition.allowedGroundSet.add((GroundDraft) Drafts.getOrThrow(jSONArrayOptArrayOrSingle.getString(i), GroundDraft.class));
            }
        }
    }
}
