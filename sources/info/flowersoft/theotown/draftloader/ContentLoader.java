package info.flowersoft.theotown.draftloader;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.ObjectLongMap;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.Ba;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.R6;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.BuildingPeopleCounter;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.store.ManagedPluginFile;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.util.BuildingDraftList;
import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.Watchdog;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.util.MinimumSelector;
import io.blueflower.stapel2d.util.Tuple;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import vm2.lib.OneArgFunction;
import vm2.lib.ThreeArgFunction;

/* JADX INFO: loaded from: classes4.dex */
public final class ContentLoader implements Watchdog.TimeoutHandler {
    public static OneArgFunction appendFunction;
    public static ThreeArgFunction mergeFunction;
    public final String PLATFORM_ID = Gdx.app.getType().name().substring(0, 1).toLowerCase(Locale.ENGLISH);
    public JSONObject currentObject;
    public final List<DraftLoader> loaders;
    public long patchTime;
    public final Map<String, DraftLoader> tagToLoader;
    public final Watchdog watchdog;

    public ContentLoader() {
        ArrayList arrayList = new ArrayList();
        this.loaders = arrayList;
        this.patchTime = 0L;
        this.watchdog = new Watchdog(Resources.getSpecificConfig("loading").optInt("content watchdog timeout", UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS), this);
        arrayList.add(new TopicDraftLoader());
        arrayList.add(new ColorDraftLoader());
        arrayList.add(new ThemeDraftLoader());
        arrayList.add(new ShaderDraftLoader());
        arrayList.add(new CategoryDraftLoader());
        arrayList.add(new PressureDraftLoader());
        arrayList.add(new InfluenceDraftLoader());
        arrayList.add(new GroundDraftLoader());
        arrayList.add(new TreeDraftLoader());
        arrayList.add(new RoadDraftLoader());
        arrayList.add(new RoadDecorationDraftLoader());
        arrayList.add(new CarDraftLoader());
        arrayList.add(new ShipDraftLoader());
        arrayList.add(new PedestrianDraftLoader());
        arrayList.add(new SmokeDraftLoader());
        arrayList.add(new BuildingDraftLoader());
        arrayList.add(new SiteDraftLoader());
        arrayList.add(new CraneDraftLoader());
        arrayList.add(new AnimationDraftLoader());
        arrayList.add(new WireDraftLoader());
        arrayList.add(new PipeDraftLoader());
        arrayList.add(new BusStopDraftLoader());
        arrayList.add(new ZoneDraftLoader());
        arrayList.add(new RailDraftLoader());
        arrayList.add(new TrainDraftLoader());
        arrayList.add(new FlyingObjectDraftLoader());
        arrayList.add(new RankDraftLoader());
        arrayList.add(new FeatureDraftLoader());
        arrayList.add(new TaskDraftLoader());
        arrayList.add(new ToolDraftLoader());
        arrayList.add(new NotificationDraftLoader());
        arrayList.add(new SoundDraftLoader());
        arrayList.add(new MusicDraftLoader());
        arrayList.add(new TemplateDraftLoader());
        arrayList.add(new DataDraftLoader());
        arrayList.add(new ScriptDraftLoader());
        arrayList.add(new TranslationDraftLoader());
        arrayList.add(new FenceDraftLoader());
        arrayList.add(new BiomeDraftLoader());
        arrayList.add(new ToolGroupDraftLoader());
        arrayList.add(new ScenarioDraftLoader());
        arrayList.add(new HeightMapDraftLoader());
        RoadFlagsLoader roadFlagsLoader = new RoadFlagsLoader();
        this.tagToLoader = new HashMap();
        for (int i = 0; i < this.loaders.size(); i++) {
            DraftLoader draftLoader = this.loaders.get(i);
            draftLoader.setup(roadFlagsLoader);
            for (String str : draftLoader.getLoadingTags()) {
                if (this.tagToLoader.containsKey(str)) {
                    throw new IllegalStateException("Multiple use of draft type " + str);
                }
                this.tagToLoader.put(str, draftLoader);
            }
        }
    }

    public void logPlugins() {
        Gdx.app.log("ContentLoader", "The following plugins have been loaded:");
        Iterator<ManagedPluginFile> it = ManagedPluginsController.getInstance().getDownloadedPlugins().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ManagedPluginFile next = it.next();
            if (!next.isPermanent()) {
                Application application = Gdx.app;
                StringBuilder sb = new StringBuilder();
                sb.append(C3522b4.j.d);
                sb.append(next.isActive() ? "X" : " ");
                sb.append("] ");
                sb.append(next.getTitle());
                sb.append(" by ");
                sb.append(next.getAuthor());
                sb.append(" (");
                sb.append(next.getPluginId());
                sb.append(":");
                sb.append(next.getVersion());
                sb.append(")");
                application.log("ManagedPlugin", sb.toString());
            }
        }
        for (LocalPluginManifest localPluginManifest : Drafts.LOCAL_PLUGIN_MANIFESTS) {
            Application application2 = Gdx.app;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(C3522b4.j.d);
            sb2.append(localPluginManifest.isActive() ? "X" : " ");
            sb2.append("] ");
            sb2.append(localPluginManifest.getTitle());
            sb2.append(" by ");
            sb2.append(localPluginManifest.getAuthor());
            sb2.append(" (");
            sb2.append(localPluginManifest.getId());
            sb2.append(":");
            sb2.append(localPluginManifest.getVersion());
            sb2.append(")");
            application2.log("ExternalPlugin", sb2.toString());
        }
        HashSet hashSet = new HashSet();
        for (Draft draft : Drafts.ALL.values()) {
            if (draft.plugin && draft.pluginId == 0 && !draft.protectedPlugin && draft.manifest == null && hashSet.add(draft.pluginFile)) {
                Gdx.app.log("File", "[X] " + draft.parentFile);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void validateDrafts() {
        if (PluginHelper.errorOccured()) {
            return;
        }
        ObjectLongMap objectLongMap = new ObjectLongMap();
        for (Draft draft : Drafts.ALL.values()) {
            if (draft.mustBeInherited && !draft.inherited) {
                throw new IllegalStateException("Draft " + draft.id + " was not implemented!");
            }
            if (draft.pluginId == 0 && draft.manifest == null) {
                AbstractFile abstractFile = draft.parentFile;
                if ((abstractFile instanceof RealFile) && !abstractFile.equals(draft.pluginFile)) {
                    File realFile = ((RealFile) draft.parentFile).getRealFile();
                    objectLongMap.put(realFile.getPath(), Math.max(objectLongMap.get(realFile.getPath(), 0L), draft.pluginFile.getModificationTime()));
                }
            }
        }
        ObjectLongMap.Entries it = objectLongMap.iterator();
        while (it.hasNext) {
            ObjectLongMap.Entry next = it.next();
            if (next.value >= 1596240000000L) {
                String strSubstring = ((String) next.key).substring(Resources.getPluginDir().getParentFile().getPath().length());
                Gdx.app.debug("ContentLoader", "Missing manifest in: " + strSubstring + ", latest content " + new Date(next.value));
                PluginHelper.reportPluginWithoutManifest(strSubstring);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x03aa A[Catch: all -> 0x02dd, Exception -> 0x03b6, TRY_LEAVE, TryCatch #5 {Exception -> 0x03b6, blocks: (B:138:0x0399, B:140:0x03aa), top: B:163:0x0399 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03cd A[Catch: all -> 0x02dd, Exception -> 0x031f, LOOP:4: B:145:0x03c7->B:147:0x03cd, LOOP_END, TRY_LEAVE, TryCatch #2 {Exception -> 0x031f, blocks: (B:136:0x033f, B:126:0x02e8, B:128:0x02ef, B:131:0x0322, B:133:0x0328, B:137:0x0348, B:144:0x03c1, B:145:0x03c7, B:147:0x03cd, B:143:0x03b7, B:134:0x0334, B:135:0x033e), top: B:159:0x02e8 }] */
    /* JADX WARN: Type inference failed for: r16v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15 */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v2, types: [vm2.lib.OneArgFunction, vm2.lib.ThreeArgFunction] */
    /* JADX WARN: Type inference failed for: r17v3, types: [info.flowersoft.theotown.util.vfs.AbstractFile, vm2.lib.OneArgFunction, vm2.lib.ThreeArgFunction] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r17v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [info.flowersoft.theotown.cityloader.LocalPluginManifest, info.flowersoft.theotown.util.vfs.AbstractFile, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void loadContents(java.util.List<java.lang.String> r21, final java.util.List<info.flowersoft.theotown.resources.ContentData> r22, info.flowersoft.theotown.util.ProgressSetter r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1007
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.ContentLoader.loadContents(java.util.List, java.util.List, info.flowersoft.theotown.util.ProgressSetter):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addPatches(info.flowersoft.theotown.util.json.JSONArray r24) {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.draftloader.ContentLoader.addPatches(info.flowersoft.theotown.util.json.JSONArray):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3, types: [int] */
    /* JADX WARN: Type inference failed for: r11v5 */
    public final void readArray(JSONArray jSONArray) throws JSONException {
        String str;
        Draft draftLoad;
        JSONArray jSONArray2 = jSONArray;
        if (jSONArray2 == null) {
            return;
        }
        MinimumSelector minimumSelector = new MinimumSelector();
        boolean z = false;
        int i = 0;
        while (i < jSONArray2.length()) {
            JSONObject jSONObject = jSONArray2.getJSONObject(i);
            this.currentObject = jSONObject;
            String strOptString = jSONObject.optString(C3670j8.x, null);
            if (strOptString != null) {
                this.patchTime -= TimeUtils.millis();
                List<JSONObject> list = Drafts.PATCHES.get(strOptString);
                if (list != null) {
                    for (?? r11 = z; r11 < list.size(); r11++) {
                        JSONUtil.mergeJSONObjects(jSONObject, list.get(r11), true, z);
                    }
                }
                this.patchTime += TimeUtils.millis();
            }
            boolean zOptBoolean = jSONObject.optBoolean("active", true);
            if (jSONObject.has("premium")) {
                zOptBoolean &= jSONObject.optBoolean("premium") == TheoTown.PREMIUM ? true : z;
            }
            boolean zOptBoolean2 = jSONObject.optBoolean("premium", z);
            String strOptString2 = jSONObject.optString(R6.H, Ba.b);
            String strOptString3 = jSONObject.optString("type", "not defined");
            boolean zOptBoolean3 = jSONObject.optBoolean("once", z);
            boolean zOptBoolean4 = jSONObject.optBoolean("inherit", z);
            boolean zOptBoolean5 = jSONObject.optBoolean("mute", z);
            String strOptString4 = jSONObject.optString("is defined", null);
            int i2 = i;
            String strOptString5 = jSONObject.optString("is not defined", null);
            if (strOptString4 != null && !strOptString4.isEmpty()) {
                zOptBoolean &= Drafts.ALL.get(strOptString4) != null;
            }
            if (strOptString5 != null && !strOptString5.isEmpty()) {
                zOptBoolean &= Drafts.ALL.get(strOptString5) == null;
            }
            boolean zContains = strOptString2.contains(this.PLATFORM_ID) & zOptBoolean;
            this.watchdog.alive("Draft " + strOptString + " in " + PluginHelper.FILE);
            if (zContains && (strOptString == null || !Drafts.ALL.containsKey(strOptString) || !zOptBoolean3)) {
                if (zOptBoolean4) {
                    Draft draft = Drafts.ALL.get(strOptString);
                    if (draft == null) {
                        break;
                    }
                    strOptString3 = jSONObject.optString("type", draft.type);
                    jSONObject.put("type", strOptString3);
                }
                DraftLoader draftLoader = this.tagToLoader.get(strOptString3);
                if (draftLoader != null) {
                    long jMillis = TimeUtils.millis();
                    try {
                        try {
                            draftLoader.setSource(jSONObject);
                            draftLoad = draftLoader.load();
                        } catch (Exception e) {
                            if (!zOptBoolean5) {
                                e.printStackTrace();
                                throw new IllegalStateException("When loading \"" + strOptString + "\": " + e.getMessage(), e);
                            }
                            minimumSelector.assume(strOptString, -(TimeUtils.millis() - jMillis));
                            draftLoad = null;
                        }
                        if (draftLoad != null) {
                            CategoryDraft categoryDraft = draftLoad.category;
                            if (categoryDraft != null && !categoryDraft.children.absoluteContains(draftLoad)) {
                                if (draftLoad.ordinal == Integer.MIN_VALUE) {
                                    draftLoad.ordinal = draftLoad.category.children.size();
                                }
                                draftLoad.category.addChild(draftLoad);
                            }
                            draftLoad.premium = zOptBoolean2;
                            Drafts.ALL.put(draftLoad.id, draftLoad);
                            if (draftLoad.meta != null && !draftLoad.type.equals("template")) {
                                Drafts.addTaggedDraft(draftLoad);
                            }
                        }
                    } finally {
                        minimumSelector.assume(strOptString, -(TimeUtils.millis() - jMillis));
                    }
                } else {
                    Gdx.app.error("ContentLoader", "May not find loader for type " + strOptString3 + " for " + jSONObject.optString(C3670j8.x, "<unknown id>"));
                    throw new IllegalArgumentException("May not find a loader for type " + strOptString3);
                }
            } else if (PluginHelper.FILE != null) {
                if (!zContains) {
                    str = "it is inactive";
                } else if (!zOptBoolean3) {
                    str = "<unkown>";
                } else {
                    str = "it was defined before with \"once\": true";
                }
                Gdx.app.debug("ContentLoader", "Skip draft " + jSONObject.optString(C3670j8.x, "<unknown id>") + " of type " + strOptString3 + " because " + str);
            }
            i = i2 + 1;
            jSONArray2 = jSONArray;
            z = false;
        }
        if (minimumSelector.hasResult()) {
            minimumSelector.getMinimumValue();
        }
    }

    public void fixDrafts() {
        for (int i = 0; i < Drafts.BUILDINGS.size(); i++) {
            BuildingDraft buildingDraft = Drafts.BUILDINGS.get(i);
            ZoneDraft zoneDraft = buildingDraft.zone;
            if (zoneDraft != null && !zoneDraft.needsRoad && zoneDraft.rci && buildingDraft.needsRoad) {
                zoneDraft.needsRoad = true;
            }
        }
    }

    public void analyzeContents() {
        ArrayList<Tuple> arrayList = new ArrayList();
        arrayList.add(new Tuple("Residential", Drafts.RESIDENTIALS));
        arrayList.add(new Tuple("Commercial", Drafts.COMMERCIALS));
        arrayList.add(new Tuple("Industrial", Drafts.INDUSTRIALS));
        for (Tuple tuple : arrayList) {
            int[] iArr = new int[3];
            Iterator<BuildingDraft> it = ((BuildingDraftList) tuple.getSecond()).iterator();
            while (it.hasNext()) {
                int i = it.next().level - 1;
                iArr[i] = iArr[i] + 1;
            }
            int i2 = 0;
            while (i2 < 3) {
                Application application = Gdx.app;
                StringBuilder sb = new StringBuilder();
                sb.append((String) tuple.getFirst());
                sb.append(" level ");
                int i3 = i2 + 1;
                sb.append(i3);
                sb.append(": ");
                sb.append(iArr[i2]);
                application.debug("ContentAnalyzer", sb.toString());
                i2 = i3;
            }
        }
        Drafts.BUILDING_PEOPLE_COUNTER = new BuildingPeopleCounter();
    }

    @Override // info.flowersoft.theotown.util.Watchdog.TimeoutHandler
    public void handle(long j, Object obj) {
        TheoTown.analytics.logEvent("Watchdog", "" + obj, "" + j);
        throw new Error("Timeout after " + j + "ms when processing " + obj);
    }
}
