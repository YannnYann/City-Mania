package info.flowersoft.theotown.store;

import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.demandOnly.b;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.crossplatform.RuntimeFeatures;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.AbstractStoreStage;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.store.StoreCategory;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.LimitedAccessOfflineModeDialog;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.ui.TaskCompletionDialogShower;
import info.flowersoft.theotown.ui.listitem.GadgetListItem;
import info.flowersoft.theotown.ui.listitem.SmoothHeightListItem;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StaticGetter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class StoreStage extends AbstractStoreStage {
    public static long lastEnterTime;
    public final int ACTIVE_FRAME;
    public final int CHUNK_SIZE;
    public final int DOWNLOAD_FRAME;
    public final int INACTIVE_FRAME;
    public final ResponseHandler<JSONObject> JSON_HANDLER;
    public final int RESTART_FRAME;
    public final Setter<StorePlugin> authorVisitor;
    public final Setter<StoreCategory> categoryVisitor;
    public City city;
    public final JSONObject config;
    public StorePlugin currentAuthor;
    public StoreCategory currentCategory;
    public int currentCategoryId;
    public StoreMode currentMode;
    public String currentSearch;
    public IntSet fetchedPluginIds;
    public JSONArray fetchedPlugins;
    public boolean isFetching;
    public List<StoreCategory> lastCategories;
    public List<StorePlugin> lastPlugins;
    public final LightStoreQuery lsq;
    public int maxLoadedChunk;
    public List<LightManagedPluginInfo> missingPlugins;
    public String missingPluginsHint;
    public final ManagedPluginsController mpc;
    public final List<Runnable> postponedTasks;
    public boolean reachedEnd;
    public final List<PluginWrapper> remainingPlugins;
    public boolean requestedDownloadAll;
    public final Setter<Stage> stageVisitor;
    public int targetLoadChunk;
    public final Runnable updateRunner;

    public static int getIcon() {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_icon00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        return animationDraft.frames[0];
    }

    /* JADX INFO: renamed from: $r8$lambda$-Mh46LUc_mp5CEw_3v66QQ-L5cs, reason: not valid java name */
    public static /* synthetic */ void m2337$r8$lambda$Mh46LUc_mp5CEw_3v66QQL5cs(StoreStage storeStage) throws Throwable {
        storeStage.lastShiftY = storeStage.listBox.getShiftY();
        storeStage.listBox.setLimitYScrolling(false);
        storeStage.clear();
        storeStage.fetch();
    }

    public StoreStage(Stapel2DGameContext stapel2DGameContext) {
        this(stapel2DGameContext, null);
    }

    public StoreStage(Stapel2DGameContext stapel2DGameContext, City city) {
        super(stapel2DGameContext);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_store_restart00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.RESTART_FRAME = animationDraft.frames[0];
        AnimationDraft animationDraft2 = (AnimationDraft) Drafts.get("$anim_store_download00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft2);
        this.DOWNLOAD_FRAME = animationDraft2.frames[0];
        AnimationDraft animationDraft3 = (AnimationDraft) Drafts.get("$anim_store_active00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft3);
        this.ACTIVE_FRAME = animationDraft3.frames[0];
        AnimationDraft animationDraft4 = (AnimationDraft) Drafts.get("$anim_store_inactive00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft4);
        this.INACTIVE_FRAME = animationDraft4.frames[0];
        this.CHUNK_SIZE = 20;
        this.maxLoadedChunk = -1;
        this.reachedEnd = false;
        this.JSON_HANDLER = new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.store.StoreStage.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                StoreStage storeStage = StoreStage.this;
                storeStage.maxLoadedChunk = storeStage.targetLoadChunk;
                StoreStage.this.fetchResult(jSONObject);
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                StoreStage.this.fetchError(exc);
            }
        };
        this.stageVisitor = new Setter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda0
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.getGameStack().push((Stage) obj);
            }
        };
        this.categoryVisitor = new Setter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.visitCategory((StoreCategory) obj);
            }
        };
        this.updateRunner = new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                StoreStage.m2337$r8$lambda$Mh46LUc_mp5CEw_3v66QQL5cs(this.f$0);
            }
        };
        this.authorVisitor = new Setter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.visitAuthor((StorePlugin) obj);
            }
        };
        this.config = Resources.getSpecificConfig(C3522b4.i.U);
        this.requestedDownloadAll = false;
        this.currentMode = StoreMode.EXPLORE;
        this.currentCategoryId = 0;
        this.currentSearch = Settings.storeSearchTerm;
        this.remainingPlugins = new ArrayList();
        this.postponedTasks = new ArrayList();
        this.missingPluginsHint = "";
        this.mpc = ManagedPluginsController.getInstance();
        this.lsq = new LightStoreQuery(stapel2DGameContext);
        this.city = city;
        TaskManager.getInstance().TASK_OPEN_STORE.completeForSeconds(259200L);
    }

    public final boolean isSupported() {
        return TheoTown.VERSION_CODE >= this.config.optInt("min version");
    }

    public void planToShowMissingPlugins(List<LightManagedPluginInfo> list, String str) {
        this.missingPlugins = list;
        this.missingPluginsHint = str;
        this.currentMode = StoreMode.MISSING;
    }

    public void configureMode(StoreMode storeMode) {
        this.currentMode = storeMode;
    }

    public void configureCategory(StoreCategory.Builtins builtins) {
        this.currentMode = StoreMode.CATEGORY;
        this.currentCategoryId = builtins.id;
        this.currentCategory = builtins.toCategory(this.translator);
    }

    public void configureLoaded(StorePluginWrapper storePluginWrapper, List<StorePluginWrapper> list) {
        this.lastPlugins = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            this.lastPlugins.add(list.get(i).plugin);
            if (list.get(i) == storePluginWrapper) {
                this.lastShiftY = (-i) * PluginEntry.getDefaultHeight(this.listBox);
            }
        }
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void bind(GameStack gameStack) {
        CityStage cityStage;
        super.bind(gameStack);
        if (this.city != null || (cityStage = (CityStage) gameStack.getStageByType(CityStage.class)) == null) {
            return;
        }
        this.city = cityStage.getCity();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void prepare() {
        super.prepare();
        if (GlobalTransitionVariables.getInstance().getLuaStorage().get("dOrFeEgVFK71f54k").optboolean(false)) {
            getGameStack().pop();
        }
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void enter() {
        try {
            super.enter();
            lastEnterTime = TimeUtils.millis();
            User user = Backend.getInstance().getUser();
            boolean zIsOffline = LimitedAccessOfflineModeDialog.isOffline();
            if (!zIsOffline) {
                addStoreTabButton(Resources.ICON_REGION, this.translator.translate(2963), StoreMode.EXPLORE);
                addStoreTabButton(Resources.ICON_RANK, this.translator.translate(1216), StoreMode.FEATURED);
                if (this.config.optBoolean("mode best rated", true)) {
                    addStoreTabButton(Resources.ICON_STAR, this.translator.translate(191), StoreMode.BEST_RATED);
                }
                if (this.config.optBoolean("mode certified creators", true)) {
                    addStoreTabButton(Resources.ICON_HEART, this.translator.translate(399), StoreMode.CERTIFIED_CREATORS);
                }
                addStoreTabButton(((AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class)).frames[0], this.translator.translate(b.C1050b.g), StoreMode.NEW);
                addStoreTabButton(Resources.ICON_CATEGORY, this.translator.translate(2925), StoreMode.CATEGORY);
                if (user.isValid() && user.isForumConnected()) {
                    addStoreTabButton(Resources.ICON_NOTIFICATION, this.translator.translate(721), StoreMode.COMMENTED);
                }
                addTabSeparator();
            }
            int i = this.DOWNLOAD_FRAME;
            Getter<String> getter = new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda7
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return StoreStage.m2345$r8$lambda$NxRRab_Cvc102fByyfRRYbo1Xc(this.f$0);
                }
            };
            StoreMode storeMode = StoreMode.INSTALLED;
            addStoreTabButton(i, getter, storeMode);
            addStoreTabButton(this.ACTIVE_FRAME, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda8
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return StoreStage.$r8$lambda$YqItHqdGRZ8vNu16gIH0sEYjR8k(this.f$0);
                }
            }, StoreMode.ACTIVE);
            addStoreTabButton(this.INACTIVE_FRAME, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda9
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return StoreStage.m2347$r8$lambda$efYzzLVTUtDZpMo0IC1dyLhZts(this.f$0);
                }
            }, StoreMode.INACTIVE);
            addStoreTabButton(Resources.ICON_ALERT, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda10
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return StoreStage.m2344$r8$lambda$M0ApFTyWKWeQhy1j4aQQUayYpA(this.f$0);
                }
            }, StoreMode.ERROR);
            if (!zIsOffline) {
                addStoreTabButton(((CategoryDraft) Drafts.get("$cat_wastedisposal00", CategoryDraft.class)).frames[0], new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda11
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return StoreStage.m2340$r8$lambda$0Uk44QM1DP7hR2jKfp4CBHMMBU(this.f$0);
                    }
                }, StoreMode.PREV_INSTALLED);
            }
            addTabSeparator();
            addStoreTabButton(Resources.ICON_PLUGIN, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda12
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return StoreStage.m2342$r8$lambda$EZqHl016p2ttBpij69zTDKZWk(this.f$0);
                }
            }, StoreMode.LOCAL);
            List<StorePlugin> list = this.lastPlugins;
            List<StoreCategory> list2 = this.lastCategories;
            if (zIsOffline) {
                this.currentMode = storeMode;
                LimitedAccessOfflineModeDialog.show(this.context, this.gui);
            }
            if (isSupported()) {
                if ((list != null && list.size() > 0) || list2 != null) {
                    rebuild(list, list2);
                    this.listBox.setShiftY(this.lastShiftY);
                } else {
                    clear();
                }
                TaskCompletionDialogShower.showDialog(3367, InterfaceC3681k1.a.b.e, this.translator, this.gui, TaskManager.getInstance().TASK_STORE_DISCLAIMER);
            } else {
                Dialog dialog = new Dialog(Resources.ICON_ALERT, this.translator.translate(816), this.translator.translate(1178), this.gui);
                dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), false, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.getGameStack().pop();
                    }
                });
                dialog.setVisible(true);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$NxRRab_Cvc-102fByyfRRYbo1Xc, reason: not valid java name */
    public static /* synthetic */ String m2345$r8$lambda$NxRRab_Cvc102fByyfRRYbo1Xc(StoreStage storeStage) {
        return storeStage.translator.translate(IronSourceError.ERROR_NON_EXISTENT_INSTANCE) + StringFormatter.format(" (%d)", Integer.valueOf(storeStage.mpc.countDownloadedPlugins() - storeStage.mpc.countInternalPlugins()));
    }

    public static /* synthetic */ String $r8$lambda$YqItHqdGRZ8vNu16gIH0sEYjR8k(StoreStage storeStage) {
        return storeStage.translator.translate(2124) + StringFormatter.format(" (%d)", Integer.valueOf(storeStage.collectEnabledDownloadedPlugins().size()));
    }

    /* JADX INFO: renamed from: $r8$lambda$ef-YzzLVTUtDZpMo0IC1dyLhZts, reason: not valid java name */
    public static /* synthetic */ String m2347$r8$lambda$efYzzLVTUtDZpMo0IC1dyLhZts(StoreStage storeStage) {
        return storeStage.translator.translate(2976) + StringFormatter.format(" (%d)", Integer.valueOf(storeStage.collectDisabledDownloadedPlugins().size()));
    }

    /* JADX INFO: renamed from: $r8$lambda$M0ApFTyWK-WeQhy1j4aQQUayYpA, reason: not valid java name */
    public static /* synthetic */ String m2344$r8$lambda$M0ApFTyWKWeQhy1j4aQQUayYpA(StoreStage storeStage) {
        return storeStage.translator.translate(3219) + StringFormatter.format(" (%d)", Integer.valueOf(storeStage.collectErroneousDownloadedPlugins().size()));
    }

    /* JADX INFO: renamed from: $r8$lambda$0Uk44QM1DP7hR-2jKfp4CBHMMBU, reason: not valid java name */
    public static /* synthetic */ String m2340$r8$lambda$0Uk44QM1DP7hR2jKfp4CBHMMBU(StoreStage storeStage) {
        return storeStage.translator.translate(2312) + StringFormatter.format(" (%d)", Integer.valueOf(storeStage.mpc.countAcquiredPlugins() - storeStage.mpc.countDownloadedPlugins()));
    }

    /* JADX INFO: renamed from: $r8$lambda$EZqHl016p2ttBpi-j69z-TDKZWk, reason: not valid java name */
    public static /* synthetic */ String m2342$r8$lambda$EZqHl016p2ttBpij69zTDKZWk(StoreStage storeStage) {
        return storeStage.translator.translate(2023) + StringFormatter.format(" (%d)", Integer.valueOf(Drafts.LOCAL_PLUGIN_MANIFESTS.size()));
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public int getFallbackIcon() {
        StoreMode storeMode = this.currentMode;
        if (storeMode == StoreMode.USER) {
            return Resources.ICON_ACCOUNT;
        }
        if (storeMode == StoreMode.SEARCH) {
            return Resources.FRAME_SEARCH_BUTTON;
        }
        if (storeMode == StoreMode.CATEGORY) {
            return this.currentCategory.getIcon();
        }
        if (storeMode == StoreMode.MISSING) {
            return Resources.ICON_PLUGIN;
        }
        return 0;
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public String getFallbackTitle() {
        StoreMode storeMode = this.currentMode;
        if (storeMode == StoreMode.USER) {
            StorePlugin storePlugin = this.currentAuthor;
            return storePlugin != null ? storePlugin.getAuthor() : "User";
        }
        if (storeMode == StoreMode.SEARCH) {
            return this.currentSearch;
        }
        if (storeMode == StoreMode.CATEGORY) {
            return this.currentCategory.getTitle();
        }
        if (storeMode == StoreMode.MISSING) {
            return this.missingPluginsHint;
        }
        return "";
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void buildHeaderButtons(LineLayout lineLayout) {
        addActionButton(this.RESTART_FRAME, 1.0f, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                StoreStage.$r8$lambda$xivPJ9XN3pf9P7t3bRGQnJv63pI(this.f$0);
            }
        }, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda18
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Boolean.valueOf(this.f$0.requiresRestart());
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$xivPJ9XN3pf9P7t3bRGQnJv63pI(StoreStage storeStage) {
        if (storeStage.requiresRestart()) {
            storeStage.showRestartDialog(null);
        }
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void search() {
        showSearchDialog();
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void help() {
        Dialog dialog = new Dialog(Resources.ICON_INFO, this.translator.translate(2956), this.translator.translate(2741), 300, 300, this.gui);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), true, null);
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public void close() {
        showRestartDialogOrExit();
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage
    public boolean isLoading() {
        return this.isFetching;
    }

    public final void sortDownloadedPluginsByDownloadTime(List<StorePlugin> list) {
        if (list.size() <= 1) {
            return;
        }
        List<ManagedPluginFile> downloadedPlugins = this.mpc.getDownloadedPlugins();
        final IntMap intMap = new IntMap();
        for (int i = 0; i < downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
            intMap.put(managedPluginFile.getPluginId(), managedPluginFile);
        }
        Collections.sort(list, new Comparator() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return StoreStage.$r8$lambda$OjO5hCdEbJCiJrUrq7lSWN7nLvs(intMap, (StorePlugin) obj, (StorePlugin) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$OjO5hCdEbJCiJrUrq7lSWN7nLvs(IntMap intMap, StorePlugin storePlugin, StorePlugin storePlugin2) {
        return (int) Math.signum(((ManagedPluginFile) intMap.get(storePlugin2.getPluginId())).getFirstDownloaded() - ((ManagedPluginFile) intMap.get(storePlugin.getPluginId())).getFirstDownloaded());
    }

    public final List<StorePlugin> collectDownloadedPlugins() {
        List<ManagedPluginFile> downloadedPlugins = this.mpc.getDownloadedPlugins();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
            if (!this.mpc.isPermanent(managedPluginFile.getPluginId())) {
                arrayList.add(new StorePlugin(managedPluginFile));
            }
        }
        sortDownloadedPluginsByDownloadTime(arrayList);
        return arrayList;
    }

    public final List<StorePlugin> collectDisabledDownloadedPlugins() {
        List<ManagedPluginFile> downloadedPlugins = this.mpc.getDownloadedPlugins();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
            if (!this.mpc.isPermanent(managedPluginFile.getPluginId()) && !managedPluginFile.isActive()) {
                arrayList.add(new StorePlugin(managedPluginFile));
            }
        }
        sortDownloadedPluginsByDownloadTime(arrayList);
        return arrayList;
    }

    public final List<StorePlugin> collectEnabledDownloadedPlugins() {
        List<ManagedPluginFile> downloadedPlugins = this.mpc.getDownloadedPlugins();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
            if (!this.mpc.isPermanent(managedPluginFile.getPluginId()) && managedPluginFile.isActive()) {
                arrayList.add(new StorePlugin(managedPluginFile));
            }
        }
        sortDownloadedPluginsByDownloadTime(arrayList);
        return arrayList;
    }

    public final List<StorePlugin> collectErroneousDownloadedPlugins() {
        List<ManagedPluginFile> downloadedPlugins = this.mpc.getDownloadedPlugins();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = downloadedPlugins.get(i);
            if (!this.mpc.isPermanent(managedPluginFile.getPluginId()) && managedPluginFile.getError() != null) {
                arrayList.add(new StorePlugin(managedPluginFile));
            }
        }
        sortDownloadedPluginsByDownloadTime(arrayList);
        return arrayList;
    }

    public final void showSearchDialog() {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.gui, this.translator, this.context.getKey());
        renameDialogBuilder.setOkText(this.translator.translate(449));
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda19
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                this.f$0.visitSearch((String) obj);
            }
        });
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda20
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return StoreStage.$r8$lambda$QL2EGxRMv9y4BZOpDfQTikv1jT8((String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_EYE, this.translator.translate(2958), this.translator.translate(1387), this.currentSearch).setVisible(true);
    }

    public static /* synthetic */ boolean $r8$lambda$QL2EGxRMv9y4BZOpDfQTikv1jT8(String str) {
        return str != null && str.trim().length() >= 2;
    }

    public final void showRestartDialog(final Runnable runnable) {
        Dialog dialog = new Dialog(this.RESTART_FRAME, this.translator.translate(915), this.translator.translate(900), this.gui);
        dialog.addButton(Resources.ICON_CANCEL, this.translator.translate(882), runnable == null, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                StoreStage.m2341$r8$lambda$1OpILAD6XXb1H4_wmMwHTmx1xA(runnable);
            }
        });
        dialog.addButton(this.RESTART_FRAME, this.translator.translate(1836), false, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                StoreStage.m2346$r8$lambda$Wp4ajYqTrTput07RW11B580K2c(this.f$0);
            }
        }).setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$1OpILAD6XXb1H4_wmMwHTmx1x-A, reason: not valid java name */
    public static /* synthetic */ void m2341$r8$lambda$1OpILAD6XXb1H4_wmMwHTmx1xA(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Wp4ajYqTrTput-07RW11B580K2c, reason: not valid java name */
    public static /* synthetic */ void m2346$r8$lambda$Wp4ajYqTrTput07RW11B580K2c(final StoreStage storeStage) {
        City city = storeStage.city;
        if (city != null) {
            CityStage.showSaveDialog(storeStage.translator, storeStage.gui, city.getController().isSavable(), new Setter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda25
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    ((Dialog) obj).setVisible(true);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    StoreStage storeStage2 = this.f$0;
                    storeStage2.city.getController().save(true, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda28
                        @Override // java.lang.Runnable
                        public final void run() {
                            storeStage2.context.requestRestart();
                        }
                    });
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.context.requestRestart();
                }
            });
        } else {
            storeStage.context.requestRestart();
        }
    }

    public final void showRestartDialogOrExit() {
        if (requiresRestart()) {
            showRestartDialog(new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.getGameStack().pop();
                }
            });
        } else {
            getGameStack().pop();
        }
    }

    public final boolean requiresRestart() {
        return this.mpc.requiresRestart() || PluginUnloader.getInstance().requiresRestart();
    }

    public final void addStoreTabButton(int i, String str, StoreMode storeMode) {
        addStoreTabButton(i, new StaticGetter(str), storeMode);
    }

    public final void addStoreTabButton(int i, Getter<String> getter, final StoreMode storeMode) {
        addTabButton(i, getter, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.changeMode(storeMode);
            }
        }, new Getter() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda24
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                StoreStage storeStage = this.f$0;
                return Boolean.valueOf(storeStage.currentMode == storeMode && storeStage.currentCategory == null);
            }
        }, null);
        if (storeMode == StoreMode.INSTALLED) {
            SuccessOverlay.getInstance().setPlacement(2, 0, 0);
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public synchronized void onUpdate() {
        try {
            drawBackground();
            this.engine.setTransparency(100);
            this.engine.setColor(40, 40, 40);
            this.engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r2.getVirtualWidth(), this.engine.getVirtualHeight(), Resources.FRAME_RECT);
            this.engine.setColor(Colors.WHITE);
            this.engine.setTransparency(255);
            while (!this.postponedTasks.isEmpty()) {
                this.postponedTasks.remove(0).run();
            }
            expandList();
            this.header.layout();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void expandList() {
        while (!this.remainingPlugins.isEmpty() && (-this.listBox.getShiftY()) + this.listBox.getClientHeight() >= this.listBox.getContentHeight() - 200) {
            try {
                buildPluginEntry(this.remainingPlugins.remove(0));
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!this.isFetching && !this.reachedEnd && (-this.listBox.getShiftY()) + this.listBox.getClientHeight() >= this.listBox.getContentHeight() - 200) {
            fetch(this.maxLoadedChunk + 1);
        }
        if (!this.isFetching || this.reachedEnd) {
            this.listBox.setLimitYScrolling(true);
        }
    }

    @Override // info.flowersoft.theotown.stages.AbstractStoreStage, info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void leave() {
        super.leave();
        this.lsq.clearTextureCache();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public synchronized void drop() {
        super.drop();
    }

    public String toString() {
        return "Store";
    }

    public final synchronized void clear() {
        rebuild(Collections.EMPTY_LIST, null);
    }

    public final synchronized void rebuild(final List<LocalPluginManifest> list) {
        this.lastPlugins = null;
        this.lastCategories = null;
        this.postponedTasks.add(new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                StoreStage.$r8$lambda$7udQnh_Cey77PBGWz5wMWoOy4I4(this.f$0, list);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$7udQnh_Cey77PBGWz5wMWoOy4I4(StoreStage storeStage, List list) {
        storeStage.remainingPlugins.clear();
        storeStage.listBox.removeAllItems();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                storeStage.remainingPlugins.add(new LocalPluginWrapper(i, (LocalPluginManifest) list.get(i)));
            }
        }
        storeStage.expandList();
    }

    public final synchronized void rebuild(final List<StorePlugin> list, final List<StoreCategory> list2) {
        this.lastPlugins = list;
        this.lastCategories = list2;
        this.postponedTasks.add(new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                StoreStage.$r8$lambda$D5ZNcdNvLCqBobhFGkRSPYTJKA4(this.f$0, list2, list);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$D5ZNcdNvLCqBobhFGkRSPYTJKA4(final StoreStage storeStage, List list, final List list2) {
        storeStage.remainingPlugins.clear();
        storeStage.listBox.removeAllItems();
        storeStage.listBox.removeAllChildren();
        if (list != null && storeStage.currentMode == StoreMode.CATEGORY && storeStage.currentCategoryId == 0) {
            boolean zOptBoolean = storeStage.config.optBoolean("hide empty categories");
            for (int i = 0; i < list.size(); i++) {
                final StoreCategory storeCategory = (StoreCategory) list.get(i);
                if (storeCategory.getCount() > 0 || !zOptBoolean) {
                    GadgetListItem gadgetListItem = new GadgetListItem(new CategoryEntry(storeStage.listBox, storeCategory.getTitle(), StringFormatter.format(storeStage.translator.translate(3072), Integer.valueOf(storeCategory.getCount())), storeCategory.getIcon(), Resources.ICON_NEXT, storeStage.context, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda21
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.categoryVisitor.set(storeCategory);
                        }
                    }));
                    gadgetListItem.setDrawBackground(true);
                    gadgetListItem.setCanBeSelected(false);
                    storeStage.listBox.addItem(gadgetListItem);
                }
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int i2 = 0;
            for (int i3 = 0; i3 < list2.size(); i3++) {
                StorePluginWrapper storePluginWrapperWrap = storeStage.lsq.wrap(i3, (StorePlugin) list2.get(i3), storeStage.authorVisitor);
                storeStage.remainingPlugins.add(storePluginWrapperWrap);
                if (!storePluginWrapperWrap.isActive() || (!storePluginWrapperWrap.isDownloaded() && !storePluginWrapperWrap.isDownloading() && storePluginWrapperWrap.isAvailableInStore())) {
                    i2++;
                }
            }
            if (TheoTown.PREMIUM && storeStage.currentMode == StoreMode.MISSING && i2 > 0 && !storeStage.requestedDownloadAll) {
                GadgetListItem gadgetListItem2 = new GadgetListItem(new CategoryEntry(storeStage.listBox, storeStage.translator.translate(1426), storeStage.translator.translate(180), 0, Resources.ICON_DOWNLOAD, storeStage.context, new Runnable() { // from class: info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        StoreStage.$r8$lambda$qk1FCsjfvskqk4E48frnMrFaVeY(this.f$0, list2);
                    }
                }).setClickOnWholeThing(false));
                gadgetListItem2.setDrawBackground(true);
                gadgetListItem2.setCanBeSelected(false);
                storeStage.listBox.addItem(gadgetListItem2);
            }
        }
        storeStage.expandList();
    }

    public static /* synthetic */ void $r8$lambda$qk1FCsjfvskqk4E48frnMrFaVeY(StoreStage storeStage, List list) throws Throwable {
        storeStage.getClass();
        for (int i = 0; i < list.size(); i++) {
            StorePluginWrapper storePluginWrapperWrap = storeStage.lsq.wrap(i, (StorePlugin) list.get(i), storeStage.authorVisitor);
            if (storePluginWrapperWrap.isDownloaded()) {
                storePluginWrapperWrap.setActive(true);
            } else if (storePluginWrapperWrap.isAvailableInStore()) {
                storePluginWrapperWrap.acquireAndDownload();
            }
        }
        storeStage.requestedDownloadAll = true;
        storeStage.rebuild(storeStage.lastPlugins, storeStage.lastCategories);
    }

    public final void buildPluginEntry(PluginWrapper pluginWrapper) {
        final PluginEntry pluginEntry = new PluginEntry(this.listBox, pluginWrapper, this.context, this.stageVisitor, this.updateRunner);
        final GadgetListItem gadgetListItem = new GadgetListItem(pluginEntry) { // from class: info.flowersoft.theotown.store.StoreStage.2
            @Override // info.flowersoft.theotown.ui.listitem.GadgetListItem, io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                pluginEntry.setSelected(z);
                return super.getHeight(z);
            }
        };
        gadgetListItem.setDrawBackground(true);
        gadgetListItem.setCanBeSelected(false);
        this.listBox.addItem(new SmoothHeightListItem("") { // from class: info.flowersoft.theotown.store.StoreStage.3
            @Override // info.flowersoft.theotown.ui.listitem.SmoothHeightListItem
            public int getTargetHeight(boolean z) {
                return gadgetListItem.getHeight(z);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                StoreStage.this.engine.setColor(255, 0, 255);
                if (gadgetListItem.isVisible()) {
                    skin.engine.setColor(Colors.WHITE);
                }
                StoreStage.this.engine.setColor(255, 255, 255);
                gadgetListItem.draw(z, i, i2, i3, i4, i5, skin);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void onClick(int i, int i2) {
                gadgetListItem.onClick(i, i2);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public boolean isVisible() {
                return gadgetListItem.isVisible();
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void setVisible(boolean z) {
                gadgetListItem.setVisible(z);
            }
        });
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (isDialogOpen()) {
            super.onBack();
            return;
        }
        if (this.currentCategoryId != 0) {
            changeMode(this.currentMode);
        } else if (this.currentAuthor != null) {
            changeMode(StoreMode.EXPLORE);
        } else {
            showRestartDialogOrExit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void visitSearch(String str) {
        try {
            Settings.storeSearchTerm = str;
            Settings.save();
            this.currentMode = StoreMode.SEARCH;
            if (!str.equals(this.currentSearch)) {
                clear();
            }
            this.currentSearch = str;
            fetch();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void visitCategory(StoreCategory storeCategory) {
        int categoryId;
        if (storeCategory != null) {
            try {
                categoryId = storeCategory.getCategoryId();
            } catch (Throwable th) {
                throw th;
            }
        } else {
            categoryId = 0;
        }
        if (categoryId != this.currentCategoryId) {
            clear();
        }
        this.currentMode = StoreMode.CATEGORY;
        this.currentCategory = storeCategory;
        this.currentCategoryId = categoryId;
        fetch();
    }

    public final synchronized void visitAuthor(StorePlugin storePlugin) {
        try {
            StorePlugin storePlugin2 = this.currentAuthor;
            if (storePlugin2 == null || storePlugin2.getAuthorId() != storePlugin.getAuthorId()) {
                clear();
            }
            this.currentMode = StoreMode.USER;
            this.currentAuthor = storePlugin;
            fetch();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void changeMode(StoreMode storeMode) {
        try {
            if (this.currentCategoryId != 0 || storeMode != this.currentMode || this.currentAuthor != null) {
                clear();
                this.currentMode = storeMode;
            }
            this.currentCategoryId = 0;
            this.currentCategory = null;
            this.currentAuthor = null;
            this.lastShiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.listBox.setShiftY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            fetch();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void fetch() throws Throwable {
        fetch(0);
    }

    public final void fetch(int i) throws Throwable {
        this.lastShiftY = this.listBox.getShiftY();
        if (i == 0) {
            this.reachedEnd = false;
        }
        if (isSupported()) {
            if (this.currentMode.getTag() == null) {
                fetchLocal();
            } else {
                fetchOnline(i);
            }
        }
    }

    public final void fetchLocal() {
        this.isFetching = false;
        this.reachedEnd = true;
        if (AnonymousClass5.$SwitchMap$info$flowersoft$theotown$store$StoreMode[this.currentMode.ordinal()] != 1) {
            return;
        }
        rebuild(Drafts.LOCAL_PLUGIN_MANIFESTS);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.store.StoreStage$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$store$StoreMode;

        static {
            int[] iArr = new int[StoreMode.values().length];
            $SwitchMap$info$flowersoft$theotown$store$StoreMode = iArr;
            try {
                iArr[StoreMode.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.INSTALLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.INACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.EXPLORE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.FEATURED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.BEST_RATED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.CERTIFIED_CREATORS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.NEW.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.COMMENTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.CATEGORY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.USER.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.SEARCH.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.PREV_INSTALLED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$store$StoreMode[StoreMode.MISSING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public final void showPluginsById(final IntList intList, final int i, final List<StorePlugin> list) {
        this.mpc.fetchStore(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.store.StoreStage.4
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                StoreStage.this.maxLoadedChunk = i;
                StoreStage.this.fetchResultMerge(jSONObject, intList, list);
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                StoreStage.this.fetchError(exc);
            }
        }, this.currentMode, intList, "", true, i * 20, 20);
    }

    public final void showPluginsByInfo(List<StorePlugin> list, int i) {
        IntList intList = new IntList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            intList.add(list.get(i2).getPluginId());
        }
        rebuild(list, null);
        showPluginsById(intList, i, list);
    }

    public final void fetchOnline(int i) throws Throwable {
        List<StorePlugin> listCollectDownloadedPlugins = collectDownloadedPlugins();
        this.isFetching = true;
        this.maxLoadedChunk = i - 1;
        this.targetLoadChunk = i;
        this.mpc.fetchRatings();
        switch (AnonymousClass5.$SwitchMap$info$flowersoft$theotown$store$StoreMode[this.currentMode.ordinal()]) {
            case 2:
                showPluginsByInfo(listCollectDownloadedPlugins, i);
                break;
            case 3:
                showPluginsByInfo(collectEnabledDownloadedPlugins(), i);
                break;
            case 4:
                showPluginsByInfo(collectDisabledDownloadedPlugins(), i);
                break;
            case 5:
                showPluginsByInfo(collectErroneousDownloadedPlugins(), i);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                ManagedPluginsController managedPluginsController = this.mpc;
                managedPluginsController.fetchStore(this.JSON_HANDLER, this.currentMode, managedPluginsController.getAcquiredPluginIds(), "", true, i * 20, 20);
                break;
            case 11:
                User user = Backend.getInstance().getUser();
                IntList intList = new IntList();
                intList.add((int) user.getId());
                intList.add((int) user.getForumId());
                this.mpc.fetchStore(this.JSON_HANDLER, this.currentMode, intList, "", false, i * 20, 20);
                break;
            case 12:
                IntList intList2 = new IntList();
                intList2.add(this.currentCategoryId);
                this.mpc.fetchStore(this.JSON_HANDLER, this.currentMode, intList2, "", true, i * 20, 20);
                break;
            case 13:
                IntList intList3 = new IntList();
                StorePlugin storePlugin = this.currentAuthor;
                intList3.add(storePlugin != null ? storePlugin.getAuthorId() : 0);
                this.mpc.fetchStore(this.JSON_HANDLER, this.currentMode, intList3, "", true, i * 20, 20);
                break;
            case 14:
                ManagedPluginsController managedPluginsController2 = this.mpc;
                managedPluginsController2.fetchStore(this.JSON_HANDLER, this.currentMode, managedPluginsController2.getAcquiredPluginIds(), this.currentSearch, true, i * 20, 20);
                break;
            case 15:
                IntList acquiredPluginIds = this.mpc.getAcquiredPluginIds();
                while (i < acquiredPluginIds.size()) {
                    int i2 = acquiredPluginIds.get(i);
                    if (this.mpc.isDownloading(i2) || this.mpc.isDownloaded(i2)) {
                        acquiredPluginIds.removeAt(i);
                        i--;
                    }
                    i++;
                }
                acquiredPluginIds.reverse();
                showPluginsById(acquiredPluginIds, i, null);
                break;
            case 16:
                IntList intList4 = new IntList();
                while (i < this.missingPlugins.size()) {
                    intList4.add(this.missingPlugins.get(i).getId());
                    i++;
                }
                showPluginsById(intList4, i, null);
                break;
        }
    }

    public final void appendFetchedPlugins(JSONArray jSONArray) throws JSONException {
        if (this.maxLoadedChunk == 0 || this.fetchedPlugins == null) {
            this.reachedEnd = false;
            this.fetchedPlugins = new JSONArray();
            this.fetchedPluginIds = new IntSet();
        }
        if (jSONArray.length() == 0) {
            this.reachedEnd = true;
            return;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            int i2 = jSONArray.getJSONObject(i).getInt("plugin_id");
            if (!this.fetchedPluginIds.contains(i2)) {
                this.fetchedPlugins.put(jSONArray.get(i));
                this.fetchedPluginIds.add(i2);
            }
        }
    }

    public final synchronized void fetchResult(JSONObject jSONObject) {
        try {
            this.isFetching = false;
            try {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("plugins");
                if (jSONArrayOptJSONArray != null) {
                    appendFetchedPlugins(jSONArrayOptJSONArray);
                    for (int i = 0; i < this.fetchedPlugins.length(); i++) {
                        arrayList.add(new StorePlugin(this.fetchedPlugins.getJSONObject(i), this.translator));
                    }
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("categories");
                if (jSONArrayOptJSONArray2 != null) {
                    this.reachedEnd = true;
                    for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                        arrayList2.add(new StoreCategory(jSONArrayOptJSONArray2.getJSONObject(i2), this.translator));
                    }
                }
                rebuild(arrayList, arrayList2);
            } catch (JSONException e) {
                fetchError(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void fetchResultMerge(JSONObject jSONObject, IntList intList, List<StorePlugin> list) {
        try {
            this.isFetching = false;
            try {
                IntMap intMap = new IntMap();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("plugins");
                if (jSONArrayOptJSONArray != null) {
                    appendFetchedPlugins(jSONArrayOptJSONArray);
                    for (int i = 0; i < this.fetchedPlugins.length(); i++) {
                        StorePlugin storePlugin = new StorePlugin(this.fetchedPlugins.getJSONObject(i), this.translator);
                        intMap.put(storePlugin.getPluginId(), storePlugin);
                    }
                }
                if (list != null) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        StorePlugin storePlugin2 = list.get(i2);
                        if (!intMap.containsKey(storePlugin2.getPluginId())) {
                            intMap.put(storePlugin2.getPluginId(), storePlugin2);
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < intList.size(); i3++) {
                    StorePlugin storePlugin3 = (StorePlugin) intMap.get(intList.get(i3));
                    if (storePlugin3 != null) {
                        arrayList.add(storePlugin3);
                    }
                }
                rebuild(arrayList, null);
            } catch (JSONException e) {
                fetchError(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void fetchError(Exception exc) {
        String string;
        this.isFetching = false;
        this.reachedEnd = true;
        if (LimitedAccessOfflineModeDialog.isOffline()) {
            exc.printStackTrace();
            return;
        }
        TheoTown.analytics.logException(exc);
        if (!(exc instanceof InterruptedException)) {
            RuntimeFeatures runtimeFeatures = TheoTown.runtimeFeatures;
            if (TheoTown.DEBUG) {
                string = exc.toString();
            } else {
                string = this.translator.translate(810) + " - " + exc.getMessage();
            }
            runtimeFeatures.showToast(string);
        }
    }
}
