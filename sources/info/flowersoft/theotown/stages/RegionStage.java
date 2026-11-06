package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.Intersector;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.api.Api;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ads.BuildConfig;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.Service;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.PreviewCreator;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.LocalRegionProvider;
import info.flowersoft.theotown.cityfile.MapDirectory;
import info.flowersoft.theotown.cityfile.MapPreviewRenderer;
import info.flowersoft.theotown.cityfile.OnlineMapDirectory;
import info.flowersoft.theotown.cityfile.RegionInformation;
import info.flowersoft.theotown.cityfile.RegionProvider;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.components.management.attribute.GeneralHappiness;
import info.flowersoft.theotown.creation.CityCreator;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.DataDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.online.CityGiftManager;
import info.flowersoft.theotown.online.DownloadUtil;
import info.flowersoft.theotown.online.Multiplayer;
import info.flowersoft.theotown.online.OnlineNotificationDialog;
import info.flowersoft.theotown.online.OnlineNotificationManager;
import info.flowersoft.theotown.online.RegionUploader;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.region.Region;
import info.flowersoft.theotown.region.RegionIcon;
import info.flowersoft.theotown.region.RegionMap;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.FreeModeManager;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.resources.WordFilter;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.RegionStage;
import info.flowersoft.theotown.stages.background.RegionBackground;
import info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo;
import info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.store.PluginUnloader;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.ConfigureOnlineRegionDialog;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GameMenuBuilder;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.IconRadioButton;
import info.flowersoft.theotown.ui.Indicator;
import info.flowersoft.theotown.ui.LimitedAccessOfflineModeDialog;
import info.flowersoft.theotown.ui.MigrateAccountDialog;
import info.flowersoft.theotown.ui.MissingPluginsDialogBuilder;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.RegionCityPanel;
import info.flowersoft.theotown.ui.RegionCoinIndicator;
import info.flowersoft.theotown.ui.RegionRulesDialog;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.ReportDialog;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import info.flowersoft.theotown.ui.SelectUserDialog;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.ui.TextField;
import info.flowersoft.theotown.ui.TouchPane;
import info.flowersoft.theotown.ui.scenario.ScenarioListDialog;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.LineLayoutFiller;
import info.flowersoft.theotown.util.NameGenerator;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.bidmachine.protobuf.sdk.ErrorReasonAnalytics;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.MathUtil;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.ScreenRect;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public class RegionStage extends BaseStage {
    public int MAX_CONCURRENT_WAITING;
    public int REDUCE_TIME_MIN;
    public int TIME_TO_UNLOCK_MIN;
    public boolean allowToGoBack;
    public boolean duringScreenshot;
    public ExecutorService executor;
    public boolean ignoreCoolDownTime;
    public final IsoConverter iso;
    public CityKeeper lastLoaded;
    public int lastTPCount;
    public boolean loadLastCity;
    public boolean loadSelectedCity;
    public final float maxScale;
    public final float minScale;
    public float moveMomentumX;
    public float moveMomentumY;
    public int movementPivotX;
    public int movementPivotY;
    public int movementTargetX;
    public int movementTargetY;
    public boolean pendingLoadCity;
    public Region region;
    public RegionBackground regionBackground;
    public final RegionProvider regionProvider;
    public int selectedMapForUpload;
    public int targetCityId;
    public final FloatArray tempFloats;
    public TouchPane touchPane;
    public float touchStartCityScale;
    public float touchStartDistance;
    public boolean visitingCity;
    public boolean willBeShutDown;

    public RegionStage(Stapel2DGameContext stapel2DGameContext, RegionProvider regionProvider) {
        super(stapel2DGameContext);
        this.minScale = 0.5f;
        this.maxScale = 4.0f;
        this.MAX_CONCURRENT_WAITING = 2;
        this.TIME_TO_UNLOCK_MIN = 30;
        this.REDUCE_TIME_MIN = 30;
        this.loadLastCity = true;
        this.loadSelectedCity = false;
        this.pendingLoadCity = false;
        this.ignoreCoolDownTime = false;
        this.movementPivotX = -1;
        this.movementPivotY = -1;
        this.movementTargetX = -1;
        this.movementTargetY = -1;
        this.targetCityId = -1;
        this.iso = new IsoConverter();
        this.tempFloats = new FloatArray();
        this.selectedMapForUpload = -1;
        this.regionProvider = regionProvider;
    }

    public RegionStage setLoadLastCity(boolean z) {
        this.loadLastCity = z;
        return this;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        this.executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors(), new ThreadFactory() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return RegionStage.m2271$r8$lambda$IsuBRxbPnNgtQ7vzGSXtxiz6M0(runnable);
            }
        });
        fetchConfig();
        this.regionProvider.load(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$A8rYWaeVBOKE9qg9u88EBroTl9w(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$IsuBRxbPnNgtQ7vzGSX-txiz6M0, reason: not valid java name */
    public static /* synthetic */ Thread m2271$r8$lambda$IsuBRxbPnNgtQ7vzGSXtxiz6M0(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("RegionExecutor");
        return thread;
    }

    public static /* synthetic */ void $r8$lambda$A8rYWaeVBOKE9qg9u88EBroTl9w(final RegionStage regionStage) {
        regionStage.getClass();
        regionStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$25upcqDrDHm4SRkHRozewOzLE_A(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$25upcqDrDHm4SRkHRozewOzLE_A(RegionStage regionStage) {
        regionStage.getClass();
        regionStage.selectRegion(regionStage.regionProvider.getDefaultRegionId(GameHandler.getInstance().getLastCityManager().getLastCityPath()));
        if ((Settings.autoLoading || Settings.isFirstStart) && !regionStage.regionProvider.isOnline() && regionStage.loadLastCity && !RecoveryMode.INSTANCE.getActive()) {
            regionStage.loadLastCity();
        }
    }

    public boolean waitingToLoadSelectedCity() {
        return this.loadSelectedCity || this.pendingLoadCity;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        this.executor.shutdown();
        this.executor = null;
        if (this.duringScreenshot) {
            return;
        }
        releasePreviews();
        Region region = this.region;
        if (region != null) {
            region.destroyBoard();
        }
    }

    public final void fetchConfig() {
        DataDraft dataDraft = (DataDraft) Drafts.get("$configdata_region", DataDraft.class);
        if (dataDraft != null) {
            this.MAX_CONCURRENT_WAITING = dataDraft.content.optInt("max concurrent waiting", this.MAX_CONCURRENT_WAITING);
            this.TIME_TO_UNLOCK_MIN = dataDraft.content.optInt("time to unlock min", this.TIME_TO_UNLOCK_MIN);
            this.REDUCE_TIME_MIN = dataDraft.content.optInt("reduce time min", this.REDUCE_TIME_MIN);
        }
        if (TheoTown.PREMIUM) {
            this.TIME_TO_UNLOCK_MIN = 0;
        }
    }

    public void reload() {
        this.visitingCity = false;
        selectRegion(this.region.getId());
    }

    public void locateOnline(int i, int i2) {
        Region region = this.region;
        if (region == null) {
            this.targetCityId = i2;
            return;
        }
        MapDirectory mapDirectory = region.getMapDirectory();
        if (mapDirectory.isOnline()) {
            if (((OnlineMapDirectory) mapDirectory).getRegionId() == i) {
                this.targetCityId = i2;
                return;
            } else {
                getGameStack().pop();
                ((OnlineRegionProviderStage) getGameStack().peek()).locateOnline(i, i2);
                return;
            }
        }
        getGameStack().push(new OnlineRegionProviderStage(this.context, i, i2));
    }

    public final void selectRegion(int i) {
        OnlineNotificationManager.getInstance().fetch(true);
        Region region = this.region;
        if (region != null && i != region.getId()) {
            disposeLastCity();
            this.region = null;
        }
        releasePreviews();
        final MapDirectory mapDirectory = this.regionProvider.get(i);
        if (mapDirectory == null && (mapDirectory = this.regionProvider.get((i = this.regionProvider.getAnyId()))) == null) {
            this.willBeShutDown = true;
            getGameStack().pop();
            return;
        }
        Region region2 = this.region;
        if (region2 == null) {
            this.region = new Region(i, mapDirectory, this.iso);
        } else {
            region2.reload(mapDirectory);
        }
        final Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.m2282$r8$lambda$lBSGl5SF63qIW_Jw3h46q8Z_8(this.f$0, mapDirectory, runnableArr);
            }
        };
        final Runnable[] runnableArr = {new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$rpg7TPqENZOKb4fUBOgIJmvxQKg(this.f$0, mapDirectory, runnable);
            }
        }};
        if (mapDirectory.requiresPassword() && mapDirectory.getPassword().isEmpty()) {
            addTask(runnable);
        } else {
            runnableArr[0].run();
        }
        this.region.reloadRegionInformation();
        if (this.regionProvider.isOnline()) {
            leave();
            enter();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$lBSG-l5SF63qI-W_Jw3h46q8Z_8, reason: not valid java name */
    public static /* synthetic */ void m2282$r8$lambda$lBSGl5SF63qIW_Jw3h46q8Z_8(RegionStage regionStage, final MapDirectory mapDirectory, final Runnable[] runnableArr) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(regionStage.gui, regionStage.translator, regionStage.context.getKey());
        renameDialogBuilder.setPassword(true);
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda44
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                RegionStage.m2283$r8$lambda$oRMmBGZF16steHApNWi5zwB2sI(mapDirectory, runnableArr, (String) obj);
            }
        });
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda45
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return RegionStage.$r8$lambda$ittOEcT_M397iWn7ZJKGrFNKpPQ((String) obj);
            }
        });
        renameDialogBuilder.setOkText(regionStage.translator.translate(2447));
        renameDialogBuilder.build(Resources.ICON_LOCKED, regionStage.translator.translate(3199), regionStage.translator.translate(586), (TheoTown.isPickleMode() || TheoTown.DEBUG) ? "KFcbCXVt" : "").setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$o-RMmBGZF16steHApNWi5zwB2sI, reason: not valid java name */
    public static /* synthetic */ void m2283$r8$lambda$oRMmBGZF16steHApNWi5zwB2sI(MapDirectory mapDirectory, Runnable[] runnableArr, String str) {
        mapDirectory.setPassword(str);
        runnableArr[0].run();
    }

    public static /* synthetic */ boolean $r8$lambda$ittOEcT_M397iWn7ZJKGrFNKpPQ(String str) {
        return str.length() > 0;
    }

    /* JADX INFO: renamed from: $r8$lambda$KThV-ej_VBgS75QuMj1F9ZXM0Xc, reason: not valid java name */
    public static /* synthetic */ void m2273$r8$lambda$KThVej_VBgS75QuMj1F9ZXM0Xc(final RegionStage regionStage) {
        regionStage.getClass();
        regionStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda51
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$qZVhJhFaqjuWnzfFGSn4QUNpCXM(this.f$0);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$rpg7TPqENZOKb4fUBOgIJmvxQKg(final RegionStage regionStage, final MapDirectory mapDirectory, final Runnable runnable) {
        regionStage.getClass();
        mapDirectory.loadMaps(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.m2273$r8$lambda$KThVej_VBgS75QuMj1F9ZXM0Xc(this.f$0);
            }
        }, new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda35
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                RegionStage.$r8$lambda$UnUl7JYkWbgwHQk8PpaWGlWKdlE(this.f$0, mapDirectory, runnable, (String) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$qZVhJhFaqjuWnzfFGSn4QUNpCXM(RegionStage regionStage) {
        regionStage.region.reloadRegionInformation();
        regionStage.leave();
        regionStage.enter();
    }

    public static /* synthetic */ void $r8$lambda$UnUl7JYkWbgwHQk8PpaWGlWKdlE(RegionStage regionStage, MapDirectory mapDirectory, Runnable runnable, String str) {
        regionStage.getClass();
        TheoTown.runtimeFeatures.showToast("ERROR: " + str);
        if (mapDirectory.requiresPassword()) {
            regionStage.addTask(runnable);
        }
    }

    public void setAllowToGoBack(boolean z) {
        this.allowToGoBack = z;
    }

    public boolean isOnline() {
        return this.regionProvider.isOnline();
    }

    public boolean isNoUnlockNeeded() {
        return !isOnline() && TheoTown.PREMIUM;
    }

    public final void showGameMenu() {
        new GameMenuBuilder().build(this.gui, null, this.region, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.takeScreenshot();
            }
        }, this.context, new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda29
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                this.f$0.getGameStack().push((Stage) obj);
            }
        });
    }

    public final void showRegionActions(Gadget gadget) {
        if (this.region == null) {
            return;
        }
        PopupBuilder popupBuilder = new PopupBuilder(gadget);
        boolean z = false;
        boolean z2 = Backend.getInstance().getUser().getAdmin() != 0;
        MapDirectory mapDirectory = this.region.getMapDirectory();
        if (mapDirectory instanceof LocalMapDirectory) {
            final LocalMapDirectory localMapDirectory = (LocalMapDirectory) mapDirectory;
            if (mapDirectory.isLoaded()) {
                popupBuilder.addItem(Resources.ICON_STATISTICS, this.translator.translate(InterfaceC3681k1.a.b.k), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda12
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showRegionStats();
                    }
                });
                popupBuilder.addSeparator();
            }
            if (Multiplayer.isAvailable()) {
                popupBuilder.addItem(Resources.ICON_UPGRADE, this.translator.translate(618), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.m2272$r8$lambda$JzyEFdkd6rihgBawlctGUhsVtc(this.f$0, localMapDirectory);
                    }
                });
                popupBuilder.addSeparator();
            }
            if (localMapDirectory.hasSource()) {
                popupBuilder.addItem(Resources.ICON_REMOVE, this.translator.translate(3022), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda16
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showResetRegionDialog(localMapDirectory);
                    }
                });
            } else {
                popupBuilder.addItem(Resources.ICON_REMOVE, this.translator.translate(349), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showDeleteRegionDialog(localMapDirectory);
                    }
                });
            }
        } else if (mapDirectory instanceof OnlineMapDirectory) {
            final OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) mapDirectory;
            User user = Backend.getInstance().getUser();
            if (user != null && user.isValid() && onlineMapDirectory.getOwnerId() == user.getId()) {
                z = true;
            }
            if (z2 && onlineMapDirectory.getReports() > 0) {
                popupBuilder.addItem(Resources.ICON_CANCEL, "Clear reports", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.$r8$lambda$35RNABGFIF01oPsnDf4s2hbrtuw(this.f$0, onlineMapDirectory);
                    }
                });
                popupBuilder.addSeparator();
            }
            popupBuilder.addItem(Resources.ICON_INFO, this.translator.translate(1837), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showRegionRulesDialog(onlineMapDirectory);
                }
            });
            if (mapDirectory.isLoaded()) {
                popupBuilder.addItem(Resources.ICON_STATISTICS, this.translator.translate(InterfaceC3681k1.a.b.k), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showRegionStats();
                    }
                });
            }
            popupBuilder.addSeparator();
            if (z || z2) {
                popupBuilder.addItem(Resources.ICON_SETTINGS, this.translator.translate(975), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.$r8$lambda$2m1RQJvxagnnK3yjRWRzDQ4Gjq4(this.f$0, onlineMapDirectory);
                    }
                });
                popupBuilder.addItem(Resources.ICON_NEXT, this.translator.translate(2118), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showRegionTransferOwnershipDialog(onlineMapDirectory);
                    }
                });
                popupBuilder.addItem(Resources.ICON_DOWNLOAD, this.translator.translate(334), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda23
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage regionStage = this.f$0;
                        DownloadUtil.downloadRegion(regionStage.getGameStack(), regionStage.context, regionStage.region);
                    }
                });
            }
            popupBuilder.addSeparator();
            if (!z) {
                popupBuilder.addItem(Resources.ICON_REPORT, this.translator.translate(Sdk.SDKError.Reason.MRAID_JS_CALL_EMPTY_VALUE), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.$r8$lambda$iw29CEKjv3ViEy388ShTGp3Tc44(this.f$0, onlineMapDirectory);
                    }
                });
            }
            if (z2 || z) {
                popupBuilder.addItem(Resources.ICON_REMOVE, this.translator.translate(349), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.showDeleteRegionDialog(onlineMapDirectory);
                    }
                });
            }
        }
        popupBuilder.build();
    }

    /* JADX INFO: renamed from: $r8$lambda$JzyEFdkd6rihgBawlc-tGUhsVtc, reason: not valid java name */
    public static /* synthetic */ void m2272$r8$lambda$JzyEFdkd6rihgBawlctGUhsVtc(RegionStage regionStage, LocalMapDirectory localMapDirectory) {
        regionStage.getClass();
        if (!Backend.getInstance().getUser().isForumConnected()) {
            regionStage.showUploadRegionAccountNeededDialog();
            return;
        }
        if (regionStage.region.containsScenario()) {
            throw new IllegalArgumentException("Cannot upload scenario");
        }
        if (regionStage.region.isTooBigToUpload()) {
            regionStage.showUploadRegionTooBig();
            return;
        }
        if (localMapDirectory.getMaps().size() > 0 && ((!localMapDirectory.hasSource() && regionStage.countCreatedMaps(localMapDirectory) == 0) || Multiplayer.allowToUploadUsedRegions())) {
            regionStage.showUploadRegionDialog(localMapDirectory);
        } else {
            regionStage.showUploadRegionUnsuited();
        }
    }

    public static /* synthetic */ void $r8$lambda$35RNABGFIF01oPsnDf4s2hbrtuw(RegionStage regionStage, OnlineMapDirectory onlineMapDirectory) {
        regionStage.getClass();
        onlineMapDirectory.clearReports(new Service.Handler() { // from class: info.flowersoft.theotown.stages.RegionStage.1
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Success");
                RegionStage.this.addReloadTask();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast(jSONObject.optString("hint", "Error"));
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$2m1RQJvxagnnK3yjRWRzDQ4Gjq4(final RegionStage regionStage, final OnlineMapDirectory onlineMapDirectory) {
        regionStage.getClass();
        new ConfigureOnlineRegionDialog(onlineMapDirectory, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.m2279$r8$lambda$YbFaNPzguNElDpmaoVM64yUvL0(this.f$0, onlineMapDirectory);
            }
        }, regionStage.context, regionStage.gui).setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$YbFaNPzguNElDpmaoVM64yUvL-0, reason: not valid java name */
    public static /* synthetic */ void m2279$r8$lambda$YbFaNPzguNElDpmaoVM64yUvL0(RegionStage regionStage, OnlineMapDirectory onlineMapDirectory) {
        regionStage.getClass();
        GameHandler.getInstance().setLastSeenRegionRulesTime(onlineMapDirectory.getRegionId(), InternetTime.getInstance().getTime() + 10000);
        regionStage.addReloadTask();
    }

    public static /* synthetic */ void $r8$lambda$iw29CEKjv3ViEy388ShTGp3Tc44(final RegionStage regionStage, final OnlineMapDirectory onlineMapDirectory) {
        regionStage.getClass();
        final String name = onlineMapDirectory.getRegionInformation().getName();
        ReportDialog.show(regionStage.context, regionStage.gui, StringFormatter.format(regionStage.translator.translate(652), name), new ReportDialog.Reporter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda42
            @Override // info.flowersoft.theotown.ui.ReportDialog.Reporter
            public final void report(String str, Runnable runnable, Setter setter) {
                RegionStage.$r8$lambda$a_ZYXrulFi0kOz2rT_phQ6vRAks(this.f$0, onlineMapDirectory, name, str, runnable, setter);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$a_ZYXrulFi0kOz2rT_phQ6vRAks(RegionStage regionStage, OnlineMapDirectory onlineMapDirectory, final String str, String str2, final Runnable runnable, final Setter setter) {
        regionStage.getClass();
        onlineMapDirectory.reportRegion(str2, new Service.Handler() { // from class: info.flowersoft.theotown.stages.RegionStage.2
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                TheoTown.analytics.logEvent("online", "report region", str);
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                setter.set(jSONObject.optString("hint"));
            }
        });
    }

    public final int countCreatedMaps(LocalMapDirectory localMapDirectory) {
        RegionInformation regionInformation = localMapDirectory.getRegionInformation();
        Iterator<CityKeeper> it = localMapDirectory.getMaps().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (regionInformation.getCityInformation(it.next()).isCreated()) {
                i++;
            }
        }
        return i;
    }

    public void showUploadRegionDialog(final LocalMapDirectory localMapDirectory) {
        if (LimitedAccessOfflineModeDialog.showIfNeeded(this.context, this.gui)) {
            return;
        }
        if (TaskManager.getInstance().TASK_REGION_UPLOAD_DELETION_NOTICE.isCompleted()) {
            showUploadRegionDialogRaw(localMapDirectory);
        } else {
            showOnlineModeDeletionHint(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    RegionStage.m2286$r8$lambda$yjILQASagEk643jbR7DYg63ELQ(this.f$0, localMapDirectory);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$yjILQASagEk643jbR7DYg63-ELQ, reason: not valid java name */
    public static /* synthetic */ void m2286$r8$lambda$yjILQASagEk643jbR7DYg63ELQ(RegionStage regionStage, LocalMapDirectory localMapDirectory) {
        regionStage.getClass();
        TaskManager.getInstance().TASK_REGION_UPLOAD_DELETION_NOTICE.complete();
        regionStage.showUploadRegionDialogRaw(localMapDirectory);
    }

    public void showOnlineModeDeletionHint(Runnable runnable) {
        Dialog dialog = new Dialog(Resources.ICON_ONLINE_REGIONS, this.translator.translate(1512), this.translator.translate(2028), 300, AdSize.WIDE_SKYSCRAPER_WIDTH, this.gui);
        dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), runnable).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
    }

    public void showUploadRegionDialogRaw(final LocalMapDirectory localMapDirectory) {
        final String[] strArr = {""};
        final Dialog dialog = new Dialog(Resources.ICON_UPGRADE, this.translator.translate(618), this.translator.translate(2926), 342, 182, this.gui);
        dialog.addHiddenCancelButton();
        dialog.addButton(Resources.ICON_ONLINE_REGIONS, this.translator.translate(1651), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.openURLInApp(Multiplayer.getRulesUrl());
            }
        });
        dialog.addButton(Resources.ICON_LOCKED, this.translator.translate(1145), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.m2267$r8$lambda$PdlUIQ6IGnH6fdpwspAPCfasI(this.f$0, strArr);
            }
        });
        dialog.addButton(Resources.ICON_UPGRADE, this.translator.translate(3046), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda50
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$YHCZ370MydOLEiDO3PsLtMoqDOY(this.f$0, strArr, localMapDirectory, dialog);
            }
        }).setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$-PdlUIQ6-IGnH6fdpwspAPCfasI, reason: not valid java name */
    public static /* synthetic */ void m2267$r8$lambda$PdlUIQ6IGnH6fdpwspAPCfasI(RegionStage regionStage, final String[] strArr) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(regionStage.gui, regionStage.translator, regionStage.context.getKey());
        renameDialogBuilder.setOkText(regionStage.translator.translate(2447));
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda53
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                RegionStage.$r8$lambda$j4MZsR3flE9jaauaDueMp3tPFAI(strArr, (String) obj);
            }
        });
        int i = Resources.ICON_LOCKED;
        String strTranslate = regionStage.translator.translate(1403);
        String strTranslate2 = regionStage.translator.translate(268);
        String str = strArr[0];
        if (str == null) {
            str = "";
        }
        renameDialogBuilder.build(i, strTranslate, strTranslate2, str).setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$j4MZsR3flE9jaauaDueMp3tPFAI(String[] strArr, String str) {
        strArr[0] = str;
    }

    public static /* synthetic */ void $r8$lambda$YHCZ370MydOLEiDO3PsLtMoqDOY(final RegionStage regionStage, final String[] strArr, final LocalMapDirectory localMapDirectory, final Dialog dialog) {
        regionStage.getClass();
        int iMax = Math.max(Multiplayer.minUploadPrice(), Math.max(Multiplayer.uploadMapFactor() * regionStage.region.getMapCount(), Multiplayer.uploadSizeFactor() * regionStage.region.getArea()));
        if (!strArr[0].isEmpty()) {
            iMax *= 2;
        }
        new BuyOrVideoDialog(Resources.ICON_UPGRADE, regionStage.translator.translate(2933), regionStage.translator.translate(457), regionStage.gui, BuyOrVideoDialog.combinePriceAndFlags(iMax, TheoTown.PREMIUM ? SpendDiamondsButton.FLAG_REGION_COIN : 0), new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda52
            @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
            public final void handle(SpendDiamondsButton.HandlerReporter handlerReporter) {
                RegionStage.$r8$lambda$s3YIYFE7hzJQGISS6FVWXH47vcs(this.f$0, localMapDirectory, strArr, dialog, handlerReporter);
            }
        }, (Setter<Stage>) regionStage.getGameStack(), regionStage.context, "upload region", (String) null, false).setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$s3YIYFE7hzJQGISS6FVWXH47vcs(RegionStage regionStage, final LocalMapDirectory localMapDirectory, final String[] strArr, Dialog dialog, final SpendDiamondsButton.HandlerReporter handlerReporter) {
        regionStage.getClass();
        final ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        final RegionUploader regionUploader = new RegionUploader();
        regionStage.getGameStack().push(new WaitingStage(regionStage.context, Resources.ICON_WEATHER_FOG, regionStage.translator.translate(IronSourceError.ERROR_OLD_API_INIT_IN_PROGRESS), new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda54
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$LJKsha8qG8Q8LJufhJkPBNCUErI(regionUploader, localMapDirectory, progressVariable, strArr, handlerReporter);
            }
        }), null, progressVariable, null));
        dialog.setVisible(false);
    }

    public static /* synthetic */ void $r8$lambda$LJKsha8qG8Q8LJufhJkPBNCUErI(RegionUploader regionUploader, LocalMapDirectory localMapDirectory, ProgressVariable progressVariable, String[] strArr, SpendDiamondsButton.HandlerReporter handlerReporter) {
        String str = regionUploader.uploadRegion(localMapDirectory, progressVariable, null, strArr[0], true).get();
        if (str == null) {
            TheoTown.gamesService.unlockAchievement("region_upload");
        } else {
            TheoTown.runtimeFeatures.showToast("Failed: " + str);
        }
        handlerReporter.report(str == null);
    }

    public final void showUploadRegionAccountNeededDialog() {
        Dialog dialog = new Dialog(Resources.ICON_ACCOUNT, this.translator.translate(3511), this.translator.translate(2571), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477));
        dialog.addButton(Resources.ICON_OK, this.translator.translate(2447), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage regionStage = this.f$0;
                regionStage.getGameStack().push(new AccountStage(regionStage.context));
            }
        }).setGolden(true);
        dialog.setVisible(true);
    }

    public void enterReasonDialog(final Setter<String> setter, boolean z) {
        if (!z) {
            setter.set("");
            return;
        }
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.gui, this.translator, this.context.getKey());
        renameDialogBuilder.setOkText(this.translator.translate(2447));
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda8
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                setter.set((String) obj);
            }
        });
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda9
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return RegionStage.m2275$r8$lambda$PvOLQWNP7ufB5O7L_zantukx2s((String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_NOTIFICATION, this.translator.translate(3026), this.translator.translate(3348), "").setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$PvOLQWNP7u-fB5O7L_zantukx2s, reason: not valid java name */
    public static /* synthetic */ boolean m2275$r8$lambda$PvOLQWNP7ufB5O7L_zantukx2s(String str) {
        return (str == null || str.trim().length() < 3 || WordFilter.getInstance().isForbidden(str)) ? false : true;
    }

    public final void showDeleteRegionDialog(final OnlineMapDirectory onlineMapDirectory) {
        enterReasonDialog(new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda37
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                RegionStage.$r8$lambda$8XCSPPBFotfFMqVaSZD8xo72TYU(this.f$0, onlineMapDirectory, (String) obj);
            }
        }, ((long) onlineMapDirectory.getOwnerId()) != Backend.getInstance().getUser().getId());
    }

    public static /* synthetic */ void $r8$lambda$8XCSPPBFotfFMqVaSZD8xo72TYU(final RegionStage regionStage, final OnlineMapDirectory onlineMapDirectory, final String str) {
        regionStage.getClass();
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, regionStage.translator.translate(349), regionStage.translator.translate(1333), regionStage.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, regionStage.translator.translate(1477)).setMarked(true);
        dialog.addButton(Resources.ICON_REMOVE, regionStage.translator.translate(2611), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$on60tAxKXCwtcSnyIE3VF3lmSBo(this.f$0, onlineMapDirectory, str);
            }
        });
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$on60tAxKXCwtcSnyIE3VF3lmSBo(RegionStage regionStage, OnlineMapDirectory onlineMapDirectory, String str) {
        regionStage.getClass();
        onlineMapDirectory.deleteRegion(str, new Service.Handler() { // from class: info.flowersoft.theotown.stages.RegionStage.3
            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onSuccess(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Success");
                RegionStage.this.getGameStack().pop();
            }

            @Override // info.flowersoft.theotown.backend.Service.Handler
            public void onFailure(JSONObject jSONObject) {
                TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
            }
        });
    }

    public final void showRegionTransferOwnershipDialog(OnlineMapDirectory onlineMapDirectory) {
        int ownerId = onlineMapDirectory.getOwnerId();
        if (ownerId == 0) {
            return;
        }
        new SelectUserDialog(new AnonymousClass4(onlineMapDirectory.getRegionInformation().getName(), onlineMapDirectory), ownerId, this.context, this.gui).setVisible(true);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.RegionStage$4, reason: invalid class name */
    public class AnonymousClass4 implements SelectUserDialog.UserReceiver {
        public final /* synthetic */ OnlineMapDirectory val$omd;
        public final /* synthetic */ String val$regionName;

        @Override // info.flowersoft.theotown.ui.SelectUserDialog.UserReceiver
        public void canceled() {
        }

        public AnonymousClass4(String str, OnlineMapDirectory onlineMapDirectory) {
            this.val$regionName = str;
            this.val$omd = onlineMapDirectory;
        }

        @Override // info.flowersoft.theotown.ui.SelectUserDialog.UserReceiver
        public void select(final SelectUserDialog.User user) {
            RegionStage regionStage = RegionStage.this;
            final String str = this.val$regionName;
            final OnlineMapDirectory onlineMapDirectory = this.val$omd;
            regionStage.enterReasonDialog(new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$4$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    RegionStage.AnonymousClass4.$r8$lambda$hQCe9uIPskbE5R3twoBzZnrLARo(this.f$0, str, user, onlineMapDirectory, (String) obj);
                }
            }, ((long) this.val$omd.getOwnerId()) != Backend.getInstance().getUser().getId());
        }

        public static /* synthetic */ void $r8$lambda$hQCe9uIPskbE5R3twoBzZnrLARo(AnonymousClass4 anonymousClass4, final String str, final SelectUserDialog.User user, final OnlineMapDirectory onlineMapDirectory, final String str2) {
            anonymousClass4.getClass();
            Dialog dialog = new Dialog(Resources.ICON_NEXT, RegionStage.this.translator.translate(2118), StringFormatter.format(RegionStage.this.translator.translate(1362), str, user.name), RegionStage.this.gui);
            dialog.addCancelButton(Resources.ICON_CANCEL, RegionStage.this.translator.translate(1477)).setGolden(true);
            dialog.addButton(Resources.ICON_NEXT, RegionStage.this.translator.translate(173), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage.4.1
                @Override // java.lang.Runnable
                public void run() {
                    onlineMapDirectory.transferRegionOwnership((int) user.id, str2, new Service.Handler() { // from class: info.flowersoft.theotown.stages.RegionStage.4.1.1
                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onSuccess(JSONObject jSONObject) {
                            TheoTown.analytics.logEvent("online", "transfer region", str);
                            RegionStage.this.addReloadTask();
                        }

                        @Override // info.flowersoft.theotown.backend.Service.Handler
                        public void onFailure(JSONObject jSONObject) {
                            TheoTown.runtimeFeatures.showToast("Error: " + jSONObject.optString("hint", jSONObject.optString("status")));
                        }
                    });
                }
            });
            dialog.setVisible(true);
        }
    }

    public final void showDeleteRegionDialog(final LocalMapDirectory localMapDirectory) {
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, this.translator.translate(349), this.translator.translate(1333), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477)).setMarked(true);
        dialog.addButton(Resources.ICON_REMOVE, this.translator.translate(2611), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$Xw2RItarQ5NsSjeyYnsmktDJaEk(this.f$0, localMapDirectory);
            }
        });
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$Xw2RItarQ5NsSjeyYnsmktDJaEk(RegionStage regionStage, LocalMapDirectory localMapDirectory) {
        regionStage.getClass();
        Files.deleteFile(localMapDirectory.getDirectory());
        regionStage.reloadRegion(localMapDirectory);
    }

    public final void showResetRegionDialog(final LocalMapDirectory localMapDirectory) {
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, this.translator.translate(3022), this.translator.translate(2452), this.gui);
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477)).setMarked(true);
        dialog.addButton(Resources.ICON_REMOVE, this.translator.translate(2264), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$uyenFOR8Z3PgA9rMkOHPd4o662g(this.f$0, localMapDirectory);
            }
        });
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$uyenFOR8Z3PgA9rMkOHPd4o662g(RegionStage regionStage, LocalMapDirectory localMapDirectory) {
        regionStage.getClass();
        Files.deleteFile(localMapDirectory.getDirectory());
        regionStage.reloadRegion(localMapDirectory);
    }

    public final void showUploadRegionUnsuited() {
        Dialog dialog = new Dialog(Resources.ICON_UPGRADE, this.translator.translate(2670), this.translator.translate(1686), this.gui);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), true, null);
        goldButtonAddButton.setMarked(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
    }

    public final void showUploadRegionTooBig() {
        Dialog dialog = new Dialog(Resources.ICON_UPGRADE, this.translator.translate(IronSourceError.ERROR_RV_SHOW_CALLED_DURING_SHOW), this.translator.translate(182), this.gui);
        GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, this.translator.translate(1899), true, null);
        goldButtonAddButton.setMarked(true);
        goldButtonAddButton.addSensitiveKey(66);
        dialog.setVisible(true);
    }

    public final void showRegionRulesDialog(OnlineMapDirectory onlineMapDirectory) {
        VirtualRegion virtualRegion = onlineMapDirectory.getVirtualRegion();
        new RegionRulesDialog(RegionIcon.Companion.resolveOrDefault(virtualRegion.getIcon()).getFrame(), virtualRegion.getName(), virtualRegion.getRules(), virtualRegion.getInfos(), virtualRegion.isAllowPlugins(), virtualRegion.isAllowSandbox(), InternetTime.getInstance().getTime() - (virtualRegion.getRulesTime() * 1000), onlineMapDirectory.getOwnerId(), onlineMapDirectory.getAuthorName(), onlineMapDirectory.getAuthorColor(), new IntList(virtualRegion.getTags()), onlineMapDirectory.getRegionStore().getTags(), this.context, getGameStack(), this.gui).setVisible(true);
    }

    public final void showRegionStats() {
        RegionInformation regionInformation;
        float fPow;
        Dialog dialog = new Dialog(Resources.ICON_STATISTICS, this.translator.translate(InterfaceC3681k1.a.b.k), "", 300, 300, this.gui);
        dialog.addHiddenCancelButton();
        long[] jArr = new long[3];
        RegionInformation regionInformation2 = this.region.getRegionInformation();
        long producedPower = 0;
        int i = 0;
        int i2 = 0;
        long producedWater = 0;
        long usedWater = 0;
        float ratingValue = 1.0f;
        long usedPower = 0;
        for (CityKeeper cityKeeper : this.region.getMapDirectory().getMaps()) {
            long[] jArr2 = jArr;
            i2++;
            if (regionInformation2.getCityInformation(cityKeeper).isCreated()) {
                i++;
                LightCityInfo info2 = cityKeeper.getInfo();
                if (info2 != null) {
                    int[] detailedHabitants = info2.getDetailedHabitants();
                    int i3 = 0;
                    while (i3 < 3) {
                        int i4 = i3;
                        jArr2[i4] = jArr2[i3] + ((long) detailedHabitants[i3]);
                        i3 = i4 + 1;
                    }
                    producedPower += info2.getProducedPower();
                    usedPower += info2.getUsedPower();
                    producedWater += info2.getProducedWater();
                    usedWater += info2.getUsedWater();
                    ratingValue *= info2.getBuildingSurvey().getRatingValue();
                    i = i;
                }
            }
            jArr = jArr2;
        }
        long[] jArr3 = jArr;
        if (i > 0) {
            regionInformation = regionInformation2;
            fPow = (float) Math.pow(ratingValue, 1.0d / ((double) i));
        } else {
            regionInformation = regionInformation2;
            fPow = 0.5f;
        }
        long j = jArr3[0] + jArr3[1] + jArr3[2];
        dialog.getContentPane().setHeight(dialog.getContentPane().getHeight() + dialog.getControlLine().getHeight());
        ListBox listBox = new ListBox(0, 0, 0, 0, dialog.getContentPane());
        listBox.fillParent();
        Color color = Resources.skin.cText;
        listBox.addItem(new ListBasedCityInfo.CategoryListItem(this.translator.translate(2445), 0, null));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(regionInformation.getName() + ", " + StringFormatter.format(this.translator.translate(Sdk.SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE), Integer.valueOf(i), Integer.valueOf(i2)), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(3385), Long.valueOf(jArr3[0])), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(3384), Long.valueOf(jArr3[1])), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(3382), Long.valueOf(jArr3[2])), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(3018), Long.valueOf(j)), "", color));
        listBox.addItem(new ListBasedCityInfo.CategoryListItem(this.translator.translate(2223), 0, null));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(AttributeFactory.getAttribute((Class<? extends Attribute>) GeneralHappiness.class).getNameLocalizationId()) + ": %1$,.1f%%", Float.valueOf(100.0f * fPow)), "", color));
        listBox.addItem(new ListBasedCityInfo.CategoryListItem(this.translator.translate(360), 0, null));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(1445), Float.valueOf((float) producedPower), 0), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(566), Float.valueOf((float) usedPower), 0), "", color));
        listBox.addItem(new ListBasedCityInfo.CategoryListItem(this.translator.translate(1941), 0, null));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(12), Float.valueOf(producedWater), 0), "", color));
        listBox.addItem(new ListBasedCityInfo.ValueListItem(StringFormatter.format(this.translator.translate(95), Float.valueOf(usedWater), 0), "", color));
        dialog.setVisible(true);
    }

    public final void reloadRegion(LocalMapDirectory localMapDirectory) {
        this.willBeShutDown = true;
        getGameStack().pop();
        LocalRegionProvider localRegionProvider = new LocalRegionProvider(this.context);
        localRegionProvider.setSelectedRegionPath(localMapDirectory.getDirectory().getName());
        getGameStack().push(new RegionStage(this.context, localRegionProvider));
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        Color colorFromHexRGB;
        int i;
        super.enter();
        if (this.visitingCity) {
            this.visitingCity = false;
            reload();
        }
        this.touchPane = new TouchPane(0, -this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.RegionStage.5
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i2, int i3, TouchPoint touchPoint) {
                if (RegionStage.this.region == null) {
                    return;
                }
                for (int i4 = 0; i4 < RegionStage.this.region.getMapCount(); i4++) {
                    RegionMap sortedMapByIndex = RegionStage.this.region.getSortedMapByIndex((RegionStage.this.region.getMapCount() - 1) - i4);
                    if (RegionStage.this.mapContainsAbs(sortedMapByIndex, i2, i3)) {
                        RegionStage.this.clickMap(sortedMapByIndex);
                        return;
                    }
                }
                RegionStage.this.clickMap(null);
            }

            @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(touchUpdate);
                float scrollChange = touchUpdate.getScrollChange();
                if (scrollChange != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    touchUpdate.clearScrollChange();
                    if (Settings.smoothZoom == 0) {
                        scrollChange /= Math.abs(scrollChange);
                    }
                    float fPow = (float) Math.pow(RegionStage.this.getZoomStep(), Math.abs(scrollChange));
                    if (touchUpdate.getMousePos() != null) {
                        int x = (int) (touchUpdate.getMousePos().getX() * RegionStage.this.engine.getWidthRatio());
                        int y = (int) (touchUpdate.getMousePos().getY() * RegionStage.this.engine.getHeightRatio());
                        if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                            RegionStage.this.zoom(fPow, x, y);
                            return cursorTypeUpdateTouchInput;
                        }
                        RegionStage.this.zoom(1.0f / fPow, x, y);
                        return cursorTypeUpdateTouchInput;
                    }
                    if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        RegionStage.this.zoom(fPow);
                        return cursorTypeUpdateTouchInput;
                    }
                    RegionStage.this.zoom(1.0f / fPow);
                }
                return cursorTypeUpdateTouchInput;
            }
        };
        this.iso.setView(new ScreenRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.engine.getVirtualWidth(), this.engine.getVirtualHeight()));
        this.iso.setAbsScale(2.0f, 2.0f);
        ElementLine elementLine = new ElementLine(1, 1, 1, 1, 30, this.gui.getClientHeight() - 2, this.gui);
        elementLine.setId("leftSidebar");
        User user = Backend.getInstance().getUser();
        Region region = this.region;
        MapDirectory mapDirectory = region != null ? region.getMapDirectory() : null;
        if (mapDirectory != null && mapDirectory.isOnline()) {
            final OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) mapDirectory;
            Button button = new Button(0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.6
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    GameStack gameStack = RegionStage.this.getGameStack();
                    RegionStage regionStage = RegionStage.this;
                    gameStack.push(new RegionCommentStage(regionStage.context, regionStage.region.getName(), onlineMapDirectory, null));
                    RegionStage.this.visitingCity = true;
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    Engine engine = RegionStage.this.engine;
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    if (isMouseHovered()) {
                        RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    drawNinePatch(i2, i3, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                    RegionStage.this.engine.setColor(color);
                    drawChildren(i2, i3);
                    Drawing.getInstance().drawOutlinedText("" + onlineMapDirectory.getComments(), ((i2 + this.x) + this.width) - 3, ((i3 + this.y) + this.height) - 2, this.skin.fontSmall, Colors.BLACK, RegionStage.this.engine, 1.0f, 1.0f);
                }

                @Override // io.blueflower.stapel2d.gui.Gadget
                public boolean isVisible() {
                    if (super.isVisible()) {
                        return (onlineMapDirectory.requiresPassword() && onlineMapDirectory.getMaps().isEmpty()) ? false : true;
                    }
                    return false;
                }
            };
            button.setIcon(Resources.ICON_REGION_COMMENTS);
            button.setId("cmdRegionComments");
        }
        if (user.isForumConnected()) {
            Button button2 = new Button(0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.7
                public int lastNewCtr = -1;
                public String text = "";

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionStage regionStage = RegionStage.this;
                    new OnlineNotificationDialog(regionStage.context, regionStage.getGameStack(), RegionStage.this.gui).setVisible(true);
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    Engine engine = RegionStage.this.engine;
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    if (isMouseHovered()) {
                        RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    drawNinePatch(i2, i3, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                    RegionStage.this.engine.setColor(color);
                    drawChildren(i2, i3);
                    Drawing.getInstance().drawOutlinedText(this.text, ((i2 + this.x) + this.width) - 3, ((i3 + this.y) + this.height) - 2, this.skin.fontSmall, Colors.BLACK, RegionStage.this.engine, 1.0f, 1.0f);
                }

                @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
                public void onUpdate() {
                    super.onUpdate();
                    int unseenNotificationsCount = OnlineNotificationManager.getInstance().getUnseenNotificationsCount();
                    if (unseenNotificationsCount != this.lastNewCtr) {
                        if (unseenNotificationsCount == 0) {
                            this.text = "";
                        } else {
                            this.text = "" + unseenNotificationsCount;
                        }
                        this.lastNewCtr = unseenNotificationsCount;
                    }
                }
            };
            button2.setIcon(Resources.ICON_NOTIFICATION);
            button2.setId("cmdNotifications");
        } else {
            Button button3 = new Button(0, 0, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.8
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionStage.this.getGameStack().push(new AccountStage(RegionStage.this.context));
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i2, int i3) {
                    Engine engine = RegionStage.this.engine;
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    if (isMouseHovered()) {
                        RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    drawNinePatch(i2, i3, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                    RegionStage.this.engine.setColor(color);
                    drawChildren(i2, i3);
                }
            };
            button3.setIcon(Resources.ICON_ACCOUNT);
            button3.setId("cmdAccount");
        }
        int i2 = 30;
        int i3 = 0;
        int i4 = 0;
        int i5 = 30;
        Button button4 = new Button(i3, i4, i5, i2, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.9
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                RegionStage.this.showRegionActions(this);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                Engine engine = RegionStage.this.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                drawNinePatch(i6, i7, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                RegionStage.this.engine.setColor(color);
                drawChildren(i6, i7);
            }
        };
        button4.setIcon(Resources.ICON_HAMBURGER);
        button4.setId("cmdActions");
        Button button5 = new Button(i3, i4, i5, i2, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.10
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                RegionStage.this.showGameMenu();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                Engine engine = RegionStage.this.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                drawNinePatch(i6, i7, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                RegionStage.this.engine.setColor(color);
                drawChildren(i6, i7);
            }
        };
        button5.setIcon(Resources.ICON_MENU);
        button5.setId("cmdSettings");
        if (!this.regionProvider.isOnline()) {
            Indicator indicator = new Indicator(1, 1, 200, 30, this.gui) { // from class: info.flowersoft.theotown.stages.RegionStage.11
                @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i6, int i7) {
                    drawChildren(i6, i7);
                }
            };
            indicator.setPadding(0);
            indicator.setTouchThrough(true);
            indicator.setId("regionActions");
            int width = new IconButton(Resources.ICON_PLUS, this.translator.translate(1383), 0, 0, 0, indicator.getClientHeight(), indicator) { // from class: info.flowersoft.theotown.stages.RegionStage.12
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionStage.this.disposeLastCity();
                    RegionStage.this.getGameStack().push(new CreateCityStage(RegionStage.this.context, true));
                }
            }.getWidth() + 1;
            if (Multiplayer.isAvailable()) {
                width += new IconButton(Resources.ICON_ONLINE_REGIONS, this.translator.translate(682), width, 0, 0, indicator.getClientHeight(), indicator) { // from class: info.flowersoft.theotown.stages.RegionStage.13
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        RegionStage regionStage = RegionStage.this;
                        if (LimitedAccessOfflineModeDialog.showIfNeeded(regionStage.context, regionStage.gui)) {
                            return;
                        }
                        RegionStage.this.disposeLastCity();
                        RegionStage.this.getGameStack().push(new OnlineRegionProviderStage(RegionStage.this.context));
                    }
                }.getWidth() + 1;
            }
            int width2 = width + new IconButton(Resources.ICON_CITY, this.translator.translate(ErrorReasonAnalytics.ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT_VALUE), width, 0, 0, indicator.getClientHeight(), indicator) { // from class: info.flowersoft.theotown.stages.RegionStage.14
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    RegionStage.this.disposeLastCity();
                    RegionStage.this.getGameStack().push(new LoadCityStage(RegionStage.this.context));
                }
            }.getWidth() + 1;
            if (Drafts.SCENARIOS.isEmpty()) {
                i = 2;
            } else {
                final TaskManager.Task task = TaskManager.getInstance().TASK_OPEN_SCENARIOS_LIST;
                i = 2;
                width2 += new IconButton(Resources.ICON_SCENARIO, this.context.getTranslator().translate(2911), width2, 0, 0, indicator.getClientHeight(), indicator) { // from class: info.flowersoft.theotown.stages.RegionStage.15
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        task.complete();
                        RegionStage regionStage = RegionStage.this;
                        new ScenarioListDialog(regionStage.context, regionStage.gui, regionStage.getGameStack()).setVisible(true);
                    }

                    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i6, int i7) {
                        super.draw(i6, i7);
                        if (task.isCompleted()) {
                            return;
                        }
                        Drawing.getInstance().drawArrow(i6, i7, this, 2);
                    }
                }.getWidth() + 1;
            }
            indicator.setWidth((width2 - 1) + indicator.getPaddingLeft() + indicator.getPaddingRight());
            if (indicator.getWidth() > this.gui.getClientWidth() && indicator.countChildren() > 4) {
                indicator.removeChild(indicator.getChild(0));
                indicator.removeChild(indicator.getChild(0));
                int clientHeight = indicator.getClientHeight() + 1;
                indicator.getChild(i).setPosition(0, clientHeight);
                int width3 = indicator.getChild(i).getWidth() + 1;
                if (indicator.countChildren() > 3) {
                    indicator.getChild(3).setPosition(width3, clientHeight);
                    width3 += indicator.getChild(3).getWidth() + 1;
                }
                indicator.setClientSize(Math.max(width3 - 1, indicator.getChild(1).getX() + indicator.getChild(1).getWidth()), clientHeight + indicator.getClientHeight());
            }
        }
        if (this.regionProvider.isOnline()) {
            LineLayout lineLayout = new LineLayout(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, 1, this.gui);
            lineLayout.setFillParent(false);
            lineLayout.setShape(0, 0, this.gui.getClientWidth(), 30);
            lineLayout.setPadding(1);
            if (user.isForumConnected()) {
                Label textLabel = new IconButton(Resources.ICON_ACCOUNT, user.isForumConnected() ? user.getForumName() : this.translator.translate(2603), 0, 0, 0, lineLayout.getClientHeight(), lineLayout) { // from class: info.flowersoft.theotown.stages.RegionStage.16
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        RegionStage.this.getGameStack().push(new AccountStage(RegionStage.this.context));
                    }

                    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i6, int i7) {
                        Engine engine = RegionStage.this.engine;
                        Color color = Colors.WHITE;
                        engine.setColor(color);
                        if (isMouseHovered()) {
                            RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                        }
                        RegionStage.this.engine.drawNinePatch(Resources.IMAGE_WORLD, getX() + i6, getY() + i7, this.width, this.height, this.skin.npIndicator);
                        RegionStage.this.engine.setColor(color);
                        drawChildren(i6, i7);
                    }
                }.getTextLabel();
                if (user.isForumConnected()) {
                    colorFromHexRGB = Color.fromHexRGB(user.getForumColor(), Resources.skin.cIndicatorText, new Color());
                } else {
                    colorFromHexRGB = Resources.skin.cIndicatorText;
                }
                textLabel.setColor(colorFromHexRGB);
            }
            new RegionCoinIndicator(0, 0, lineLayout, this.translator);
        }
        LineLayout lineLayout2 = new LineLayout(1.0f, 0, 1, this.gui);
        lineLayout2.setFillParent(false);
        lineLayout2.setShape(0, 0, this.gui.getClientWidth(), 30);
        lineLayout2.setPadding(1);
        new Button(0, 0, 30, 30, lineLayout2) { // from class: info.flowersoft.theotown.stages.RegionStage.17
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i6, int i7) {
                Engine engine = this.skin.engine;
                drawNinePatch(i6, i7, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i6 + (this.width / 2), this.y + i7 + (this.height / 2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, Resources.ICON_CANCEL);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                RegionStage.this.onBack();
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return super.isVisible() && RegionStage.this.allowToGoBack;
            }
        };
        if (this.regionProvider.size() > 1) {
            int i6 = 30;
            int i7 = 30;
            KeyAction.PREVIOUS_REGION.applyTo(new IconButton(Resources.ICON_PREVIOUS, "", this.gui.getClientWidth() - 62, this.gui.getClientHeight() - 31, i7, i6, this.gui) { // from class: info.flowersoft.theotown.stages.RegionStage.18
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    if (RegionStage.this.region == null) {
                        return;
                    }
                    super.onClick();
                    RegionStage regionStage = RegionStage.this;
                    regionStage.selectRegion(regionStage.regionProvider.prevId(RegionStage.this.region.getId()));
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i8, int i9) {
                    if (isMouseHovered()) {
                        RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    drawNinePatch(i8, i9, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                    RegionStage.this.engine.setColor(Colors.WHITE);
                    drawChildren(i8, i9);
                }
            });
            KeyAction.NEXT_REGION.applyTo(new IconButton(Resources.ICON_NEXT, "", this.gui.getClientWidth() - 31, this.gui.getClientHeight() - 31, i7, i6, this.gui) { // from class: info.flowersoft.theotown.stages.RegionStage.19
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    if (RegionStage.this.region == null) {
                        return;
                    }
                    super.onClick();
                    RegionStage regionStage = RegionStage.this;
                    regionStage.selectRegion(regionStage.regionProvider.nextId(RegionStage.this.region.getId()));
                }

                @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i8, int i9) {
                    if (isMouseHovered()) {
                        RegionStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                    }
                    drawNinePatch(i8, i9, isPressed() ? this.skin.npButtonBlueDown : this.skin.npButtonBlue);
                    RegionStage.this.engine.setColor(Colors.WHITE);
                    drawChildren(i8, i9);
                }
            });
        }
        if (this.region == null) {
            return;
        }
        final Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda2
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return RegionStage.$r8$lambda$2jjlAkFCqEuqkpfywwVBNGLdlB0(this.f$0);
            }
        };
        Indicator indicator2 = new Indicator(32, this.gui.getClientHeight() - 36, 0, 35, this.gui) { // from class: info.flowersoft.theotown.stages.RegionStage.20
            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setWidth(Math.max(AdSize.WIDE_SKYSCRAPER_WIDTH, Math.max(((int) Resources.skin.fontBig.getWidth(RegionStage.this.region.getName())) + 30, ((int) Resources.skin.fontDefault.getWidth((String) getter.get())) + 10)));
            }

            @Override // info.flowersoft.theotown.ui.Indicator, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i8, int i9) {
                super.draw(i8, i9);
                drawChildren(i8, i9);
            }
        };
        Label label = new Label(this.region.getName(), 5, 2, 0, 20, indicator2);
        label.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        label.setFont(Resources.skin.fontBig);
        label.setColor(Resources.skin.cIndicatorText);
        new AnonymousClass21(Math.round(label.getFont().getWidth(label.getText())) + label.getX(), label.getY(), 20, 20, indicator2, mapDirectory);
        Label label2 = new Label("", 5, 20, 0, indicator2.getClientHeight() - 20, indicator2) { // from class: info.flowersoft.theotown.stages.RegionStage.22
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
                setText((String) getter.get());
            }
        };
        label2.setAlignment(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        label2.setColor(Resources.skin.cIndicatorText);
        new RegionCityPanel(this, this.region, this.gui, this.context, getGameStack(), isNoUnlockNeeded());
        if (TheoTown.DEBUG || TheoTown.isPickleMode()) {
            new AnonymousClass23(Resources.ICON_UNLOCK, "", this.gui.getClientWidth() - 30, this.gui.getClientHeight() - 61, 30, 30, this.gui, mapDirectory);
        }
        MigrateAccountDialog migrateAccountDialog = new MigrateAccountDialog();
        if (migrateAccountDialog.shouldShow()) {
            migrateAccountDialog.show(this.gui, this.context, getGameStack());
        }
        this.regionBackground = new RegionBackground(this.context);
    }

    public static /* synthetic */ String $r8$lambda$2jjlAkFCqEuqkpfywwVBNGLdlB0(RegionStage regionStage) {
        regionStage.getClass();
        String str = ("" + StringFormatter.format(regionStage.translator.translate(3270), Integer.valueOf(regionStage.regionProvider.getIndex(regionStage.region.getId()) + 1), Integer.valueOf(regionStage.regionProvider.size()))) + "   " + StringFormatter.format(regionStage.translator.translate(2574), Long.valueOf(regionStage.region.getInhabitants()));
        if (!Settings.debugMode) {
            return str;
        }
        return str + "    (#" + regionStage.region.getMapDirectory().getDirectory().getName() + ")";
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.RegionStage$21, reason: invalid class name */
    public class AnonymousClass21 extends Button {
        public final /* synthetic */ MapDirectory val$mapDirectory;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass21(int i, int i2, int i3, int i4, Gadget gadget, MapDirectory mapDirectory) {
            super(i, i2, i3, i4, gadget);
            this.val$mapDirectory = mapDirectory;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            RegionStage regionStage = RegionStage.this;
            RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(regionStage.gui, regionStage.translator, regionStage.context.getKey());
            renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Predicate
                public final boolean apply(Object obj) {
                    return CityKeeper.isCityNameValid((String) obj);
                }
            });
            renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.RegionStage$21$$ExternalSyntheticLambda1
                @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                public final void accept(Object obj) {
                    RegionStage.AnonymousClass21.$r8$lambda$N6SUEq464orzKmBp7f4pS9pNYVs(this.f$0, (String) obj);
                }
            });
            renameDialogBuilder.build(Resources.ICON_REGION, RegionStage.this.translator.translate(830), RegionStage.this.translator.translate(2291), RegionStage.this.region.getName()).setVisible(true);
        }

        public static /* synthetic */ void $r8$lambda$N6SUEq464orzKmBp7f4pS9pNYVs(AnonymousClass21 anonymousClass21, String str) {
            RegionInformation regionInformation = RegionStage.this.region.getRegionInformation();
            regionInformation.setName(str);
            RegionStage.this.region.updateRegionInformation(regionInformation);
            RegionStage.this.reload();
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            Engine engine = this.skin.engine;
            engine.setScale(0.5f, 0.5f);
            engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, 0.5f, 0.5f, Resources.ICON_EDIT);
            engine.setScale(1.0f, 1.0f);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            if (super.isVisible()) {
                return (this.val$mapDirectory.isOnline() && Backend.getInstance().getUser().getAdmin() == 0 && ((long) ((OnlineMapDirectory) this.val$mapDirectory).getOwnerId()) != Backend.getInstance().getUser().getId()) ? false : true;
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.RegionStage$23, reason: invalid class name */
    public class AnonymousClass23 extends IconButton {
        public final /* synthetic */ MapDirectory val$mapDirectory;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass23(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, MapDirectory mapDirectory) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$mapDirectory = mapDirectory;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            PopupBuilder popupBuilder = new PopupBuilder(this);
            if (!this.val$mapDirectory.isOnline()) {
                MapDirectory mapDirectory = this.val$mapDirectory;
                if (mapDirectory instanceof LocalMapDirectory) {
                    final LocalMapDirectory localMapDirectory = (LocalMapDirectory) mapDirectory;
                    popupBuilder.addItem(Resources.ICON_UPGRADE, "Upload region", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            RegionStage.AnonymousClass23.$r8$lambda$uZqiBVdno3BHaZx9705JSrQbIoI(this.f$0, localMapDirectory);
                        }
                    });
                }
            }
            popupBuilder.addItem(Resources.ICON_RANK, "Reset tasks", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RegionStage.AnonymousClass23.$r8$lambda$lW2rVN9jvF3qg32GaknN5gtVEkc(this.f$0);
                }
            });
            MapDirectory mapDirectory2 = this.val$mapDirectory;
            if (mapDirectory2 instanceof LocalMapDirectory) {
                final LocalMapDirectory localMapDirectory2 = (LocalMapDirectory) mapDirectory2;
                popupBuilder.addItem(Resources.ICON_RESET, "Reset region", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.AnonymousClass23.$r8$lambda$8cQdrgr2zIgTfGVpLZ1vmQHRzBU(this.f$0, localMapDirectory2);
                    }
                });
            }
            if (this.val$mapDirectory instanceof OnlineMapDirectory) {
                popupBuilder.addItem(Resources.ICON_CLOCK, "Disable cool down time", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.this.ignoreCoolDownTime = true;
                    }
                }, !RegionStage.this.ignoreCoolDownTime);
            }
            popupBuilder.build();
        }

        public static /* synthetic */ void $r8$lambda$uZqiBVdno3BHaZx9705JSrQbIoI(AnonymousClass23 anonymousClass23, final LocalMapDirectory localMapDirectory) {
            anonymousClass23.getClass();
            if (Backend.getInstance().getUser().isSocialConnected()) {
                final ProgressVariable progressVariable = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                final RegionUploader regionUploader = new RegionUploader();
                RegionStage.this.getGameStack().push(new WaitingStage(RegionStage.this.context, Resources.ICON_WEATHER_FOG, "Uploading region to cloud", new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$23$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        regionUploader.uploadRegion(localMapDirectory, progressVariable, null, null, true).get();
                    }
                }), null, progressVariable, null));
                return;
            }
            RegionStage.this.getGameStack().push(new AccountStage(RegionStage.this.context));
        }

        public static /* synthetic */ void $r8$lambda$lW2rVN9jvF3qg32GaknN5gtVEkc(AnonymousClass23 anonymousClass23) {
            RegionStage.this.disposeLastCity();
            GameHandler.getInstance().getLastCityManager().setLastCity("", "", false);
            TaskManager.getInstance().reset();
        }

        public static /* synthetic */ void $r8$lambda$8cQdrgr2zIgTfGVpLZ1vmQHRzBU(AnonymousClass23 anonymousClass23, LocalMapDirectory localMapDirectory) {
            RegionStage.this.disposeLastCity();
            GameHandler.getInstance().getLastCityManager().setLastCity("", "", false);
            localMapDirectory.deleteAnything();
            localMapDirectory.restoreFromZipSource();
            RegionStage.this.selectRegion(0);
            RegionStage.this.leave();
            RegionStage.this.enter();
        }
    }

    public long getRemainingRegionUnlockTime() {
        if (this.ignoreCoolDownTime) {
            return 0L;
        }
        long regionUnlockCooldownMinutes = Multiplayer.getRegionUnlockCooldownMinutes() * 60000;
        long time = InternetTime.getInstance().getTime();
        long regionUnlockTime = GameHandler.getInstance().getRegionUnlockTime(this.region.getId());
        if (regionUnlockTime >= 0) {
            return regionUnlockCooldownMinutes - (time - regionUnlockTime);
        }
        return Long.MAX_VALUE;
    }

    public final void disposeLastCity() {
        CityKeeper cityKeeper = this.lastLoaded;
        if (cityKeeper != null) {
            if (cityKeeper.getCity() != null) {
                this.lastLoaded.getCity().dispose();
                this.lastLoaded.setCity(null);
            }
            this.lastLoaded = null;
        }
    }

    public void doMapAction(final RegionMap regionMap) {
        final RegionStage regionStage = this;
        MapDirectory mapDirectory = regionStage.region.getMapDirectory();
        if (!regionStage.region.isLocked(regionMap) || regionStage.isNoUnlockNeeded()) {
            RegionInformation.CityInformation cityInformation = regionStage.region.getRegionInformation().getCityInformation(regionMap.getKeeper());
            if (cityInformation.isCreated()) {
                if (regionMap.getKeeper().getInfo().isScenario()) {
                    throw new IllegalArgumentException("Cannot play scenario in region");
                }
                List<LightManagedPluginInfo> missingPlugins = ManagedPluginsController.getInstance().getMissingPlugins(regionMap.getKeeper().getInfo().getUsedPlugins());
                List<LocalPluginManifest> missingPlugins2 = PluginUnloader.getInstance().getMissingPlugins(regionMap.getKeeper().getInfo().getUsedLocalPlugins());
                if ((missingPlugins.isEmpty() && missingPlugins2.isEmpty()) || (mapDirectory.isOnline() && !((OnlineMapDirectory) mapDirectory).getVirtualRegion().isAllowPlugins())) {
                    regionStage.loadCity(regionMap.getKeeper());
                    return;
                } else {
                    new MissingPluginsDialogBuilder(regionStage.gui, regionStage.context, regionStage.getGameStack()).showMissingPluginsDialog(missingPlugins, missingPlugins2, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            RegionStage.$r8$lambda$T2PdsDHect7Q6gqCjm1ZolsB4k4(this.f$0, regionMap);
                        }
                    });
                    return;
                }
            }
            Dialog dialog = new Dialog(Resources.ICON_CITY, regionStage.translator.translate(257), "", 400, Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, regionStage.gui);
            Panel contentPane = dialog.getContentPane();
            boolean z = true;
            LineLayoutFiller lineLayoutFiller = new LineLayoutFiller(30, 1, contentPane);
            boolean z2 = false;
            lineLayoutFiller.setTargetSize(0, 80);
            lineLayoutFiller.setTargetSize(2, 30);
            lineLayoutFiller.addLabel(regionStage.translator.translate(1328));
            final TextField textField = new TextField(0, 0, 0, lineLayoutFiller.getLineHeight(), contentPane);
            textField.setText(NameGenerator.generateFiltered());
            lineLayoutFiller.addGadget(textField);
            lineLayoutFiller.addButton(Resources.ICON_RANDOM, "", new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    textField.setText(NameGenerator.generateFiltered());
                }
            });
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setTargetSize(0, 0);
            lineLayoutFiller.setTargetSize(2, 0);
            GameMode gameMode = GameMode.MIDDLE;
            GameMode[] gameModeArr = {gameMode};
            final Runnable[] runnableArr = new Runnable[1];
            ArrayList<GameMode> arrayList = new ArrayList();
            arrayList.add(GameMode.EASY);
            arrayList.add(gameMode);
            arrayList.add(GameMode.HARD);
            if (FreeModeManager.getInstance().isAvailable() && (!mapDirectory.isOnline() || ((OnlineMapDirectory) mapDirectory).getVirtualRegion().isAllowSandbox())) {
                arrayList.add(null);
                arrayList.add(GameMode.SANDBOX);
            }
            for (final GameMode gameMode2 : arrayList) {
                if (gameMode2 == null) {
                    lineLayoutFiller.finalizeLine();
                } else {
                    boolean z3 = z2;
                    final GameMode[] gameModeArr2 = gameModeArr;
                    Panel panel = contentPane;
                    contentPane = panel;
                    lineLayoutFiller.addGadget(new IconButton(gameMode2.getIcon(), regionStage.translator.translate(gameMode2.getLocalizationId()), 0, 0, 0, 0, panel) { // from class: info.flowersoft.theotown.stages.RegionStage.24
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            gameModeArr2[0] = gameMode2;
                            runnableArr[0].run();
                        }

                        @Override // io.blueflower.stapel2d.gui.Button
                        public boolean isPressed() {
                            return super.isPressed() || gameModeArr2[0] == gameMode2;
                        }
                    });
                    regionStage = regionStage;
                    gameModeArr = gameModeArr2;
                    z2 = z3;
                    textField = textField;
                    dialog = dialog;
                    z = true;
                }
            }
            final RegionStage regionStage2 = regionStage;
            TextField textField2 = textField;
            final Dialog dialog2 = dialog;
            boolean z4 = z2;
            final GameMode[] gameModeArr3 = gameModeArr;
            lineLayoutFiller.finalizeLine();
            lineLayoutFiller.setLineHeight(lineLayoutFiller.getVerticalSpace());
            final ScrollableTextFrame scrollableTextFrame = new ScrollableTextFrame("", 0, 0, 0, 0, contentPane);
            Panel panel2 = contentPane;
            scrollableTextFrame.setShowBorder(z4);
            scrollableTextFrame.setFont(Resources.skin.fontSmall);
            lineLayoutFiller.addGadget(scrollableTextFrame);
            lineLayoutFiller.finalizeLine();
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    scrollableTextFrame.setText(this.f$0.translator.translate(gameModeArr3[0].getDescriptionId()));
                }
            };
            runnableArr[z4 ? 1 : 0] = runnable;
            runnable.run();
            IconRadioButton iconRadioButton = new IconRadioButton(Resources.ICON_ROAD, regionStage2.translator.translate(488), dialog2.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.RegionStage.25
                @Override // info.flowersoft.theotown.ui.IconRadioButton, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    Settings.leftSideTrafficNewCities = !Settings.leftSideTrafficNewCities;
                }

                @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button
                public boolean isPressed() {
                    return Settings.leftSideTrafficNewCities;
                }
            };
            iconRadioButton.setShape(z4 ? 1 : 0, z4 ? 1 : 0, 100, dialog2.getControlLine().getClientHeight());
            iconRadioButton.setWidth(((int) iconRadioButton.getTextLabel().getTextWidth()) + iconRadioButton.getIconGadget().getWidth() + 5);
            regionStage2.new AnonymousClass26(Resources.ICON_PLAY, regionStage2.translator.translate(388), 0, 0, 100, dialog2.getControlLine().getClientHeight(), dialog2.getControlLine().getThirdPart(), textField2, gameModeArr3, regionMap, cityInformation, dialog2).addSensitiveKey(66);
            int i = 0;
            int i2 = 0;
            dialog2.setCancelButton(new Button(i, i2, 0, 0, panel2) { // from class: info.flowersoft.theotown.stages.RegionStage.27
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i3, int i4) {
                }

                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    dialog2.free();
                }
            });
            dialog2.setVisible(true);
        }
    }

    public static /* synthetic */ void $r8$lambda$T2PdsDHect7Q6gqCjm1ZolsB4k4(RegionStage regionStage, RegionMap regionMap) {
        regionStage.getClass();
        regionStage.loadCity(regionMap.getKeeper());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.RegionStage$26, reason: invalid class name */
    public class AnonymousClass26 extends GoldButton {
        public final /* synthetic */ Dialog val$dialog;
        public final /* synthetic */ RegionMap val$map;
        public final /* synthetic */ RegionInformation.CityInformation val$meta;
        public final /* synthetic */ GameMode[] val$selectedMode;
        public final /* synthetic */ TextField val$tfName;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass26(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, TextField textField, GameMode[] gameModeArr, RegionMap regionMap, RegionInformation.CityInformation cityInformation, Dialog dialog) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$tfName = textField;
            this.val$selectedMode = gameModeArr;
            this.val$map = regionMap;
            this.val$meta = cityInformation;
            this.val$dialog = dialog;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            final String text = this.val$tfName.getText();
            final GameMode gameMode = this.val$selectedMode[0];
            if (gameMode != GameMode.FREE) {
                RegionStage.this.createCity(text, gameMode, this.val$map, this.val$meta);
                this.val$dialog.free();
                return;
            }
            this.val$tfName.setVisible(false);
            FreeModeManager freeModeManager = FreeModeManager.getInstance();
            int width = this.val$map.getWidth() * 64;
            RegionStage regionStage = RegionStage.this;
            Stapel2DGameContext stapel2DGameContext = regionStage.context;
            Master master = regionStage.gui;
            GameStack gameStack = regionStage.getGameStack();
            Getter<Boolean> getter = new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.RegionStage.26.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // io.blueflower.stapel2d.util.Getter
                public Boolean get() {
                    AnonymousClass26 anonymousClass26 = AnonymousClass26.this;
                    RegionStage.this.createCity(text, gameMode, anonymousClass26.val$map, anonymousClass26.val$meta);
                    AnonymousClass26.this.val$dialog.free();
                    return Boolean.TRUE;
                }
            };
            final TextField textField = this.val$tfName;
            freeModeManager.showDialog(width, stapel2DGameContext, master, gameStack, getter, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$26$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    textField.setVisible(true);
                }
            });
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isEnabled() {
            return CityKeeper.isCityNameValid(this.val$tfName.getText());
        }
    }

    public final void createCity(final String str, final GameMode gameMode, RegionMap regionMap, RegionInformation.CityInformation cityInformation) {
        cityInformation.setCreated(true);
        cityInformation.setLocked(false);
        Region region = this.region;
        region.updateRegionInformation(region.getRegionInformation());
        regionMap.getKeeper().getInfo().setGameMode(gameMode);
        loadCity(regionMap.getKeeper(), new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda36
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                RegionStage.$r8$lambda$KT0y6k1PX16pAzrwpRnxso8aAVQ(this.f$0, str, gameMode, (CityKeeper) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$KT0y6k1PX16pAzrwpRnxso8aAVQ(RegionStage regionStage, String str, GameMode gameMode, CityKeeper cityKeeper) {
        regionStage.getClass();
        City city = cityKeeper.getCity();
        city.setName(str);
        city.setGameMode(gameMode);
        city.setLeftSideTraffic(Settings.leftSideTrafficNewCities);
        new CityCreator(regionStage.context).resetCity(city);
        cityKeeper.save();
    }

    public void unlockMap(RegionMap regionMap) {
        this.region.unlockMap(regionMap, this.TIME_TO_UNLOCK_MIN);
    }

    public void unlockMapImmediately(RegionMap regionMap) {
        this.region.unlockMapImmediately(regionMap);
    }

    public void fastForwardMapUnlock(RegionMap regionMap) {
        this.region.fastForwardMapUnlock(regionMap, this.REDUCE_TIME_MIN);
    }

    public void acquireMap(RegionMap regionMap, final Runnable runnable, final Runnable runnable2) {
        MapDirectory mapDirectory = this.region.getMapDirectory();
        if (mapDirectory instanceof OnlineMapDirectory) {
            final OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) mapDirectory;
            onlineMapDirectory.acquire(regionMap.getKeeper(), new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    RegionStage.$r8$lambda$xFW3n0irBQzvVMeHtFAMtxBUB9U(this.f$0, runnable, onlineMapDirectory);
                }
            }, new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda11
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    RegionStage.m2277$r8$lambda$Rr6UOrVxZUkqrktDNZyoDCtuvE(this.f$0, runnable2, (String) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$xFW3n0irBQzvVMeHtFAMtxBUB9U(RegionStage regionStage, final Runnable runnable, final OnlineMapDirectory onlineMapDirectory) {
        regionStage.getClass();
        regionStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage.28
            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
                GameHandler.getInstance().setRegionUnlockTime(onlineMapDirectory.getRegionId());
                RegionStage.this.reload();
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Rr6UOrVxZUkqrk-tDNZyoDCtuvE, reason: not valid java name */
    public static /* synthetic */ void m2277$r8$lambda$Rr6UOrVxZUkqrktDNZyoDCtuvE(final RegionStage regionStage, final Runnable runnable, final String str) {
        regionStage.getClass();
        regionStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$dZ63BxK8Y5KQlDdQGLGWNuzksBY(this.f$0, runnable, str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$dZ63BxK8Y5KQlDdQGLGWNuzksBY(RegionStage regionStage, Runnable runnable, String str) {
        regionStage.getClass();
        runnable.run();
        TheoTown.runtimeFeatures.showToast("Failed to acquire map: " + str);
        regionStage.reload();
    }

    public final void loadLastCity() {
        CityKeeper map;
        String lastCityPath = GameHandler.getInstance().getLastCityManager().getLastCityPath();
        MapDirectory mapDirectory = this.region.getMapDirectory();
        RegionInformation regionInformation = this.region.getRegionInformation();
        if (!lastCityPath.isEmpty() && (map = mapDirectory.getMap(new File(TheoTown.APP_DIR, lastCityPath))) != null && regionInformation != null) {
            RegionInformation.CityInformation cityInformation = regionInformation.getCityInformation(map);
            if (cityInformation.isLocked() || !cityInformation.isCreated()) {
                lastCityPath = "";
            }
        }
        if (lastCityPath.isEmpty()) {
            mapDirectory.getMapByFileName("7_4.city");
            return;
        }
        File file = new File(TheoTown.APP_DIR, lastCityPath);
        if (file.exists()) {
            CityKeeper map2 = mapDirectory.getMap(file);
            if (map2 == null) {
                map2 = new CityKeeper(file, this.translator);
            }
            map2.loadLightInfo();
            if (map2.getInfo() == null || map2.getInfo().isScenario()) {
                return;
            }
            loadCity(map2);
        }
    }

    public final void loadCity(CityKeeper cityKeeper) {
        loadCity(cityKeeper, null);
    }

    public final void loadCity(final CityKeeper cityKeeper, final Setter<CityKeeper> setter) {
        if (cityKeeper == null) {
            return;
        }
        final RegionMap mapByCityKeeper = this.region.getMapByCityKeeper(cityKeeper);
        MapDirectory mapDirectory = this.region.getMapDirectory();
        CityGiftManager cityGiftManager = null;
        final OnlineMapDirectory onlineMapDirectory = mapDirectory.isOnline() ? (OnlineMapDirectory) mapDirectory : null;
        this.visitingCity = true;
        final CityCommentStage cityCommentStage = onlineMapDirectory != null ? new CityCommentStage(this.context, onlineMapDirectory, cityKeeper) : null;
        if (onlineMapDirectory != null && Multiplayer.giftsAreAvailable() && mapByCityKeeper != null) {
            cityGiftManager = new CityGiftManager(onlineMapDirectory.getRegionStore(), onlineMapDirectory.getRegionUploader(), onlineMapDirectory.getCityId(mapByCityKeeper.getKeeper()), onlineMapDirectory.getCityOwnerId(mapByCityKeeper.getKeeper()));
        }
        final CityGiftManager cityGiftManager2 = cityGiftManager;
        if (mapByCityKeeper != null) {
            this.region.selectMap(mapByCityKeeper);
        }
        final CityStage.CityVisitor cityVisitor = new CityStage.CityVisitor() { // from class: info.flowersoft.theotown.stages.RegionStage.29
            @Override // info.flowersoft.theotown.stages.CityStage.CityVisitor
            public void visit(int i, int i2) {
                RegionMap regionMap = mapByCityKeeper;
                if (regionMap == null) {
                    return;
                }
                int x = i + (regionMap.getX() * 64);
                int y = i2 + (mapByCityKeeper.getY() * 64);
                RegionMap map = RegionStage.this.region.getMap(MathUtil.floorDiv(x, 64), MathUtil.floorDiv(y, 64));
                if (map != null) {
                    RegionStage.this.loadSelectedCity = true;
                } else {
                    map = mapByCityKeeper;
                }
                RegionStage.this.region.selectMap(map);
            }
        };
        CityKeeper cityKeeper2 = this.lastLoaded;
        if (cityKeeper2 != null && cityKeeper2.getCity() != null && !this.lastLoaded.getCity().isDisposed() && this.lastLoaded.getFile().equals(cityKeeper.getFile()) && !this.lastLoaded.isOnline()) {
            Thread thread = new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    CityKeeper.waitForSaving();
                }
            });
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    RegionStage.m2285$r8$lambda$vSxoH4Pn8q4UQNTb1CiR22bPGc(this.f$0, setter, cityKeeper, mapByCityKeeper, cityCommentStage, cityGiftManager2, cityVisitor);
                }
            };
            if (CityKeeper.isSaving()) {
                getGameStack().push(new LoadWaitingStage(this.context, thread, runnable, cityKeeper));
                return;
            } else {
                runnable.run();
                return;
            }
        }
        Thread thread2 = new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.m2281$r8$lambda$izZaq9ZUv4P4Tx2SXzHftmqwC8(this.f$0, cityKeeper, mapByCityKeeper, setter);
            }
        });
        final CityCommentStage cityCommentStage2 = cityCommentStage;
        getGameStack().push(new LoadWaitingStage(this.context, thread2, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                RegionStage.$r8$lambda$4DAM063ZuRgpkU9wP0_PYDAU0xk(this.f$0, cityKeeper, onlineMapDirectory, cityCommentStage2, cityGiftManager2, mapByCityKeeper, cityVisitor);
            }
        }, cityKeeper));
    }

    /* JADX INFO: renamed from: $r8$lambda$vSxoH4Pn8q4-UQNTb1CiR22bPGc, reason: not valid java name */
    public static /* synthetic */ void m2285$r8$lambda$vSxoH4Pn8q4UQNTb1CiR22bPGc(RegionStage regionStage, Setter setter, CityKeeper cityKeeper, RegionMap regionMap, AbstractCommentsStage abstractCommentsStage, CityGiftManager cityGiftManager, CityStage.CityVisitor cityVisitor) {
        if (setter != null) {
            regionStage.getClass();
            setter.set(cityKeeper);
        }
        if (regionMap != null) {
            regionStage.region.applyNeighbors(regionMap);
        }
        regionStage.getGameStack().push(new CityStage(regionStage.context, regionStage.lastLoaded, abstractCommentsStage, cityGiftManager, regionStage.region.getRegionInformation(), cityVisitor));
    }

    /* JADX INFO: renamed from: $r8$lambda$izZaq9ZUv4P4Tx2-SXzHftmqwC8, reason: not valid java name */
    public static /* synthetic */ void m2281$r8$lambda$izZaq9ZUv4P4Tx2SXzHftmqwC8(final RegionStage regionStage, CityKeeper cityKeeper, final RegionMap regionMap, Setter setter) {
        regionStage.getClass();
        CityKeeper.waitForSaving();
        CityKeeper cityKeeper2 = regionStage.lastLoaded;
        if (cityKeeper2 != null && cityKeeper2.getCity() != null) {
            regionStage.lastLoaded.getCity().dispose();
            regionStage.lastLoaded.setCity(null);
        }
        regionStage.lastLoaded = null;
        cityKeeper.setBeforeCityPreparationCall(new Setter() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda39
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                RegionStage.$r8$lambda$oVJFIsgYltHSkr1_dw0pWrTb7SE(this.f$0, regionMap, (City) obj);
            }
        });
        try {
            cityKeeper.load();
            if (cityKeeper.getCity() == null || setter == null) {
                return;
            }
            setter.set(cityKeeper);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static /* synthetic */ void $r8$lambda$oVJFIsgYltHSkr1_dw0pWrTb7SE(RegionStage regionStage, RegionMap regionMap, City city) {
        if (regionMap != null) {
            regionStage.region.applyNeighbors(regionMap);
        } else {
            regionStage.getClass();
        }
    }

    public static /* synthetic */ void $r8$lambda$4DAM063ZuRgpkU9wP0_PYDAU0xk(RegionStage regionStage, CityKeeper cityKeeper, OnlineMapDirectory onlineMapDirectory, AbstractCommentsStage abstractCommentsStage, CityGiftManager cityGiftManager, RegionMap regionMap, CityStage.CityVisitor cityVisitor) {
        regionStage.getClass();
        if (cityKeeper.getCity() != null) {
            regionStage.lastLoaded = cityKeeper;
            if (onlineMapDirectory != null) {
                cityKeeper.getCity().setAuthor(onlineMapDirectory.getCityAuthor(cityKeeper));
            }
            regionStage.getGameStack().push(new CityStage(regionStage.context, cityKeeper, abstractCommentsStage, cityGiftManager, regionMap != null ? regionStage.region.getRegionInformation() : null, cityVisitor));
        }
    }

    public final void createPreviews() {
        this.region.createPreviews(this.engine, this.executor);
    }

    public final void releasePreviews() {
        Region region = this.region;
        if (region != null) {
            region.removeMapPreviews();
        }
        this.selectedMapForUpload = -1;
    }

    public final void clickMap(RegionMap regionMap) {
        RegionMap selectedMap = this.region.getSelectedMap();
        this.region.selectMap(regionMap);
        if (regionMap != selectedMap) {
            SoundPlayer.getInstance().play(Resources.SOUND_BUILD_LAND, SoundType.GAME);
        }
    }

    public void resetMap(RegionMap regionMap) {
        disposeLastCity();
        if (this.region.getMapDirectory().reset(regionMap.getKeeper())) {
            RegionInformation regionInformation = this.region.getRegionInformation();
            regionInformation.getCityInformation(regionMap.getKeeper()).setCreated(false);
            this.region.updateRegionInformation(regionInformation);
            releasePreviews();
            this.region.createBoard();
            createPreviews();
        }
        this.region.selectMap(null);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        int i;
        RegionMap mapByCityKeeper;
        VirtualRegion virtualRegion;
        if (this.willBeShutDown) {
            return;
        }
        OnlineNotificationManager.getInstance().fetch(false);
        Region region = this.region;
        MapDirectory mapDirectory = region != null ? region.getMapDirectory() : null;
        if (mapDirectory instanceof OnlineMapDirectory) {
            OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) mapDirectory;
            GameHandler gameHandler = GameHandler.getInstance();
            if (onlineMapDirectory.isLoaded() && Backend.getInstance().getUser().isForumConnected() && onlineMapDirectory.getMaps().size() > 0 && (virtualRegion = onlineMapDirectory.getVirtualRegion()) != null && gameHandler.getLastSeenRegionRulesTime(virtualRegion.getId()) < virtualRegion.getRulesTime() && !isDialogOpen()) {
                gameHandler.setLastSeenRegionRulesTime(virtualRegion.getId(), virtualRegion.getRulesTime());
                showRegionRulesDialog(onlineMapDirectory);
            }
        }
        MusicBox.getInstance().selectType(MusicBox.Type.GAME);
        if (isOnline() && mapDirectory != null) {
            this.region.reloadRegionInformation();
        }
        Region region2 = this.region;
        if (region2 != null && !region2.isBoardCreated() && mapDirectory != null && mapDirectory.isLoaded()) {
            Gdx.app.debug("RegionStage", "Create board and Stuff");
            this.region.createBoard();
            createPreviews();
        }
        if (mapDirectory != null) {
            mapDirectory.update();
            if (this.region.isBoardCreated() && mapDirectory.isOnline() && (i = this.targetCityId) > 0) {
                CityKeeper cityById = ((OnlineMapDirectory) mapDirectory).getCityById(i);
                if (cityById != null && (mapByCityKeeper = this.region.getMapByCityKeeper(cityById)) != null) {
                    this.region.selectMap(mapByCityKeeper);
                }
                this.targetCityId = -1;
            }
            if (this.region.isBoardCreated()) {
                this.region.updateMaps();
            }
            if (this.region.isBoardCreated()) {
                handleKeyInput();
                handleTouchInput();
            }
            drawOwnBackground();
            if (this.region.isBoardCreated()) {
                drawMaps();
            }
            if (this.movementPivotX >= 0) {
                this.engine.setColor(Colors.WHITE);
                this.engine.setTransparency(200);
                Drawing.getInstance().drawCircle(this.movementPivotX, this.movementPivotY, 6.0f, 8.0f, this.engine);
                this.engine.setTransparency(120);
                Drawing.getInstance().drawLine(this.movementPivotX, this.movementPivotY, this.movementTargetX, this.movementTargetY, 2.0f, this.engine);
                this.engine.setTransparency(255);
            }
        }
        if (mapDirectory == null || (!mapDirectory.isLoaded() && !mapDirectory.loadingFailed())) {
            float loadingProgress = mapDirectory != null ? mapDirectory.getLoadingProgress() : -1.0f;
            int virtualWidth = this.engine.getVirtualWidth() / 2;
            int virtualHeight = this.engine.getVirtualHeight() / 2;
            float fMillis = ((TimeUtils.millis() % 1000) / 1000.0f) * 2.0f * 3.1415927f;
            float f = 1.5707964f + fMillis;
            if (loadingProgress > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                f = (float) (((double) (loadingProgress - 0.25f)) * 6.283185307179586d);
                this.engine.setColor(Colors.LIGHT_GREEN);
                fMillis = -1.5707964f;
            }
            float f2 = virtualWidth;
            float f3 = virtualHeight;
            Drawing.getInstance().drawCircle(f2, f3, 50.0f, 55.0f, fMillis, f, 1.0f, 1.0f, this.engine);
            this.engine.setColor(Colors.WHITE);
            if (loadingProgress > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.engine.drawText(Resources.skin.fontBig, StringFormatter.format("%.1f%%", Float.valueOf(loadingProgress * 100.0f)), f2, f3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f);
            }
        }
        if (mapDirectory != null && mapDirectory.requiresPassword() && mapDirectory.getMaps().isEmpty()) {
            this.engine.setScale(2.0f, 2.0f);
            this.engine.drawImage(Resources.IMAGE_WORLD, r3.getVirtualWidth() / 2, this.engine.getVirtualHeight() / 2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, Resources.ICON_LOCKED);
            this.engine.setScale(1.0f, 1.0f);
        }
        maybeLoadSelectedCity();
    }

    public final void maybeLoadSelectedCity() {
        RegionMap selectedMap;
        RegionInformation.CityInformation cityInformation;
        this.pendingLoadCity = false;
        Region region = this.region;
        if (region != null && this.loadSelectedCity && region.getMapDirectory().isLoaded() && (selectedMap = this.region.getSelectedMap()) != null && this.region.isBoardCreated() && this.region.getMapByCityKeeper(selectedMap.getKeeper()) != null) {
            this.loadSelectedCity = false;
            if (this.region.isLocked(selectedMap) || (cityInformation = this.region.getRegionInformation().getCityInformation(selectedMap.getKeeper())) == null || !cityInformation.isCreated()) {
                return;
            }
            doMapAction(selectedMap);
            this.pendingLoadCity = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getZoomStep() {
        if (Settings.smoothZoom > 0) {
            return Constants.SMOOTH_ZOOM_STEP;
        }
        return 2.0f;
    }

    private void handleTouchInput() {
        this.movementPivotY = -1;
        this.movementPivotX = -1;
        float widthRatio = this.engine.getWidthRatio();
        float heightRatio = this.engine.getHeightRatio();
        List<TouchPoint> touchPoints = this.touchPane.getTouchPoints();
        if (touchPoints.size() == 1) {
            TouchPoint touchPoint = touchPoints.get(0);
            float firstX = touchPoint.getFirstX() * widthRatio;
            float firstY = touchPoint.getFirstY() * heightRatio;
            float xSpeed = touchPoint.getXSpeed() * widthRatio;
            float ySpeed = touchPoint.getYSpeed() * heightRatio;
            float x = touchPoint.getX() * widthRatio;
            float y = touchPoint.getY() * heightRatio;
            float f = x - firstX;
            float f2 = y - firstY;
            if (touchPoint.getButton() == 1) {
                xSpeed = f * (-0.4f);
                ySpeed = f2 * (-0.4f);
                this.movementPivotX = (int) firstX;
                this.movementPivotY = (int) firstY;
                this.movementTargetX = (int) x;
                this.movementTargetY = (int) y;
                setPreferredCursor(CursorType.Move);
            }
            this.moveMomentumX = xSpeed;
            this.moveMomentumY = ySpeed;
        } else if (touchPoints.size() == 2) {
            TouchPoint touchPoint2 = touchPoints.get(0);
            TouchPoint touchPoint3 = touchPoints.get(1);
            float xSpeed2 = (touchPoint2.getXSpeed() + touchPoint3.getXSpeed()) * 0.5f * widthRatio;
            float ySpeed2 = (touchPoint2.getYSpeed() + touchPoint3.getYSpeed()) * 0.5f * heightRatio;
            float x2 = (touchPoint3.getX() - touchPoint2.getX()) * widthRatio;
            float y2 = (touchPoint3.getY() - touchPoint2.getY()) * heightRatio;
            float fSqrt = (float) Math.sqrt((x2 * x2) + (y2 * y2));
            if (this.lastTPCount < 2) {
                this.touchStartDistance = fSqrt;
                this.touchStartCityScale = getScale();
            } else {
                if (fSqrt != this.touchStartDistance) {
                    zoom(Math.min(Math.max((this.touchStartCityScale * fSqrt) / this.touchStartDistance, City.getMinScale()), City.getMaxScale()) / getScale(), (int) (((touchPoint2.getFirstX() + touchPoint3.getFirstX()) / 2.0f) * widthRatio), (int) (((touchPoint2.getFirstY() + touchPoint3.getFirstY()) / 2.0f) * heightRatio));
                }
                this.moveMomentumX = xSpeed2;
                this.moveMomentumY = ySpeed2;
            }
        } else if (touchPoints.size() > 2) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        this.lastTPCount = touchPoints.size();
        if (TheoTown.runtimeFeatures.isFullscreen() && Settings.scrollEdges && this.context.getTouch().getActivePoints().size() == 0) {
            int x3 = Gdx.input.getX();
            int y3 = Gdx.input.getY();
            if (x3 < 2) {
                this.moveMomentumX = 10.0f;
            } else if (x3 >= Gdx.graphics.getWidth() - 2) {
                this.moveMomentumX = -10.0f;
            }
            if (y3 < 2) {
                this.moveMomentumY = 10.0f;
            } else if (y3 >= Gdx.graphics.getHeight() - 2) {
                this.moveMomentumY = -10.0f;
            }
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) >= 0.01f) {
            IsoConverter iso = this.region.getIso();
            iso.setAbsShift(iso.getAbsShiftX() + (this.moveMomentumX / iso.getAbsScaleX()), iso.getAbsShiftY() + (this.moveMomentumY / iso.getAbsScaleY()));
            limitView();
            float fPow = (float) Math.pow(0.0010000000474974513d, this.context.getDeltaTime());
            this.moveMomentumX *= fPow;
            this.moveMomentumY *= fPow;
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) < 0.1f) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (Settings.smoothScrolling) {
            return;
        }
        this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final void limitView() {
        float width = this.iso.getView().getWidth() / 2.0f;
        float height = this.iso.getView().getHeight() / 2.0f;
        float fAbsToIsoX = this.iso.absToIsoX(width, height);
        float fAbsToIsoY = this.iso.absToIsoY(width, height);
        float f = 4;
        float fClamp = MathUtils.clamp(fAbsToIsoX, this.region.getMinX() - f, this.region.getMaxX() + f);
        float fClamp2 = MathUtils.clamp(fAbsToIsoY, this.region.getMinY() - f, this.region.getMaxY() + f);
        float fIsoToAbsX = this.iso.isoToAbsX(fClamp, fClamp2);
        float fIsoToAbsY = this.iso.isoToAbsY(fClamp, fClamp2);
        IsoConverter isoConverter = this.iso;
        isoConverter.setAbsShift(isoConverter.getAbsShiftX() + ((width - fIsoToAbsX) / this.iso.getAbsScaleX()), this.iso.getAbsShiftY() + ((height - fIsoToAbsY) / this.iso.getAbsScaleY()));
    }

    private void handleKeyInput() {
        if (isDialogOpen()) {
            return;
        }
        if (keyDown(KeyAction.CITY_SCROLL_UP) || keyDown(KeyAction.CITY_SCROLL_UP_ALT)) {
            this.moveMomentumY = 10.0f;
        } else if (keyDown(KeyAction.CITY_SCROLL_DOWN) || keyDown(KeyAction.CITY_SCROLL_DOWN_ALT)) {
            this.moveMomentumY = -10.0f;
        }
        if (keyDown(KeyAction.CITY_SCROLL_LEFT) || keyDown(KeyAction.CITY_SCROLL_LEFT_ALT)) {
            this.moveMomentumX = 10.0f;
        } else if (keyDown(KeyAction.CITY_SCROLL_RIGHT) || keyDown(KeyAction.CITY_SCROLL_RIGHT_ALT)) {
            this.moveMomentumX = -10.0f;
        }
        int i = (keyHit(KeyAction.CITY_ZOOM_IN) || keyHit(KeyAction.CITY_ZOOM_IN_ALT)) ? 1 : 0;
        if (keyHit(KeyAction.CITY_ZOOM_OUT) || keyHit(KeyAction.CITY_ZOOM_OUT_ALT)) {
            i--;
        }
        if (keyHit(KeyAction.OPEN_CONSOLE)) {
            getGameStack().push(new ConsoleStage(this.context, null, this.region, true));
        }
        if (i != 0) {
            float fMin = (float) Math.min(Math.max(Math.pow(2.0d, i + ((int) Math.floor(Math.log(getScale()) / Math.log(2.0d)))), 0.5d), 4.0d);
            while (fMin > getScale() + 0.001f) {
                zoom(2.0f);
            }
            while (fMin < getScale() - 0.001f) {
                zoom(0.5f);
            }
        }
    }

    public final float getScale() {
        return this.iso.getAbsScaleX();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zoom(float f) {
        zoom(f, this.iso.getView().getWidth() / 2.0f, this.iso.getView().getHeight() / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zoom(float f, float f2, float f3) {
        float fMin = Math.min(Math.max(getScale() * f, 0.5f), 4.0f);
        float fAbsToIsoX = this.iso.absToIsoX(f2, f3);
        float fAbsToIsoY = this.iso.absToIsoY(f2, f3);
        this.iso.setAbsScale(fMin, fMin);
        IsoConverter isoConverter = this.iso;
        isoConverter.setAbsShift(isoConverter.getAbsShiftX() + ((f2 - this.iso.isoToAbsX(fAbsToIsoX, fAbsToIsoY)) / fMin), this.iso.getAbsShiftY() + ((f3 - this.iso.isoToAbsY(fAbsToIsoX, fAbsToIsoY)) / fMin));
        limitView();
    }

    public final void drawOwnBackground() {
        float absShiftY;
        float f;
        Region region = this.region;
        if (region == null) {
            return;
        }
        float width = region.getWidth();
        float absShiftX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        if (width <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || this.region.getHeight() <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            absShiftY = 0.0f;
            f = 0.0f;
        } else {
            f = 1.0f;
            float fMax = Math.max((this.region.getWidth() + this.region.getHeight()) * 0.5f, 1.0f) * 32.0f;
            float fMax2 = Math.max((this.region.getWidth() + this.region.getHeight()) * 0.5f, 1.0f) * 16.0f;
            float f2 = fMax * 0.5f;
            absShiftX = (((((this.iso.getAbsShiftX() + f2) * this.iso.getAbsScaleX()) - f2) * 2.0f) / fMax) - 0.5f;
            absShiftY = (((this.iso.getAbsShiftY() * 2.0f) * this.iso.getAbsScaleY()) / fMax2) - 0.5f;
        }
        this.regionBackground.draw(absShiftX, absShiftY, f);
    }

    public final void takeScreenshot() {
        if (this.region.isBoardCreated()) {
            this.duringScreenshot = true;
            final float maxX = this.region.getMaxX() - this.region.getMinX();
            final float maxY = this.region.getMaxY() - this.region.getMinY();
            final IsoConverter iso = this.region.getIso();
            PreviewCreator.SteppedTask<Pixmap> steppedTaskGenerate = PreviewCreator.generate(new PreviewCreator.LabeledDrawable(this.region.getName()) { // from class: info.flowersoft.theotown.stages.RegionStage.30
                public float shiftX;
                public float shiftY;
                public int viewH;
                public int viewW;

                @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
                public boolean hideBackground() {
                    return Settings.mapRenderingNoBackground;
                }

                @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
                public int getWidth() {
                    return Math.round((((maxX + maxY) * 32.0f) / 2.0f) * iso.getAbsScaleX());
                }

                @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
                public int getHeight() {
                    return Math.round(((((maxX + maxY) * 16.0f) / 2.0f) * iso.getAbsScaleY()) + 40.0f);
                }

                @Override // info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable, info.flowersoft.theotown.city.PreviewCreator.Drawable
                public void begin(float f, int i, int i2) {
                    super.begin(f, i, i2);
                    this.shiftX = iso.getAbsShiftX();
                    this.shiftY = iso.getAbsShiftY();
                    this.viewW = (int) iso.getView().getWidth();
                    this.viewH = (int) iso.getView().getHeight();
                }

                @Override // info.flowersoft.theotown.city.PreviewCreator.LabeledDrawable, info.flowersoft.theotown.city.PreviewCreator.Drawable
                public void draw(Engine engine, int i, int i2, int i3, int i4) {
                    iso.getView().setWidth(i3);
                    iso.getView().setHeight(i4);
                    if (!hideBackground()) {
                        RegionStage.this.drawSimpleBackground(i, i2, i3, i4);
                    }
                    IsoConverter isoConverter = iso;
                    isoConverter.setAbsShift((i - (i3 / 2)) / isoConverter.getAbsScaleX(), ((((this.absHeight / 2) + i2) - (i4 / 2)) - (((maxX - maxY) * 16.0f) / 2.0f)) / iso.getAbsScaleY());
                    RegionStage.this.drawMaps();
                    super.draw(engine, i, i2, i3, i4);
                }

                @Override // info.flowersoft.theotown.city.PreviewCreator.Drawable
                public void end() {
                    iso.setAbsShift(this.shiftX, this.shiftY);
                    iso.getView().setWidth(this.viewW);
                    iso.getView().setHeight(this.viewH);
                    RegionStage.this.duringScreenshot = false;
                }
            }, 1.0f);
            if (steppedTaskGenerate == null) {
                return;
            }
            WaitingStage waitingStage = new WaitingStage(this.context, Resources.ICON_MAP_SCREENSHOT, this.translator.translate(IronSourceConstants.errorCode_TEST_SUITE_EXCEPTION_ON_LAUNCH), null, null, null, null);
            waitingStage.append(new AnonymousClass31(steppedTaskGenerate.remainingSteps() + 1, steppedTaskGenerate));
            getGameStack().push(waitingStage);
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.RegionStage$31, reason: invalid class name */
    public class AnonymousClass31 implements PreviewCreator.SteppedTask<Void> {
        public int processedSteps = 0;
        public final /* synthetic */ PreviewCreator.SteppedTask val$bmpGenerator;
        public final /* synthetic */ int val$totalSteps;

        @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
        public Void getResult() {
            return null;
        }

        public AnonymousClass31(int i, PreviewCreator.SteppedTask steppedTask) {
            this.val$totalSteps = i;
            this.val$bmpGenerator = steppedTask;
        }

        @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
        public int remainingSteps() {
            return this.val$totalSteps - this.processedSteps;
        }

        @Override // info.flowersoft.theotown.city.PreviewCreator.SteppedTask
        public void run() {
            if (this.processedSteps < this.val$totalSteps - 1) {
                this.val$bmpGenerator.run();
            } else {
                Pixmap pixmap = (Pixmap) this.val$bmpGenerator.getResult();
                final String strSave = ScreenshotProcessorBuilder.save(ScreenshotProcessorBuilder.getSaveFile(RegionStage.this.region.getName()), pixmap);
                if (pixmap != null && !pixmap.isDisposed()) {
                    pixmap.dispose();
                }
                RegionStage.this.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$31$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RegionStage.AnonymousClass31.$r8$lambda$vrHUIhufNnHECC4VvqIiJIjXo9M(this.f$0, strSave);
                    }
                });
            }
            this.processedSteps++;
        }

        public static /* synthetic */ void $r8$lambda$vrHUIhufNnHECC4VvqIiJIjXo9M(AnonymousClass31 anonymousClass31, String str) {
            RegionStage regionStage = RegionStage.this;
            ScreenshotProcessorBuilder.getSavedImageDialog(str, regionStage.context, regionStage.gui).setVisible(true);
        }
    }

    public final void drawMaps() {
        int i;
        boolean z;
        float f;
        IsoConverter isoConverter;
        RegionInformation regionInformation;
        RegionMap regionMap;
        RegionInformation.CityInformation cityInformation;
        int i2;
        boolean z2;
        float f2;
        int i3;
        float f3;
        float f4;
        float f5;
        float f6;
        int i4;
        float f7;
        int i5;
        IsoConverter isoConverter2;
        int i6;
        int i7;
        IsoConverter iso = this.region.getIso();
        RegionInformation regionInformation2 = this.region.getRegionInformation();
        RegionMap selectedMap = this.region.getSelectedMap();
        iso.getAbsScaleX();
        iso.getAbsScaleY();
        this.engine.setType(7);
        Drawing drawing = Drawing.getInstance();
        int i8 = 0;
        int i9 = 0;
        while (i8 < this.region.getMapCount()) {
            RegionMap sortedMapByIndex = this.region.getSortedMapByIndex(i8);
            MapPreviewRenderer renderer = sortedMapByIndex.getRenderer();
            if (renderer == null) {
                isoConverter = iso;
                regionInformation = regionInformation2;
                regionMap = selectedMap;
                i = i8;
            } else {
                boolean z3 = selectedMap == sortedMapByIndex;
                int x = sortedMapByIndex.getX();
                int y = sortedMapByIndex.getY();
                if (renderer.readyForUpload()) {
                    if (this.duringScreenshot || (i7 = this.selectedMapForUpload) < 0 || i7 == i9 || i7 == 2147483646) {
                        renderer.upload();
                        this.selectedMapForUpload = this.selectedMapForUpload >= this.region.getMapCount() ? Api.BaseClientBuilder.API_PRIORITY_OTHER : 2147483646;
                    } else {
                        i9++;
                        isoConverter = iso;
                        regionInformation = regionInformation2;
                        regionMap = selectedMap;
                        i = i8;
                        i8 = i + 1;
                        regionInformation2 = regionInformation;
                        selectedMap = regionMap;
                        iso = isoConverter;
                    }
                }
                long jFinishedSince = renderer.finishedSince();
                float fApply = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                if (!z3 || this.duringScreenshot) {
                    i = i8;
                    z = true;
                } else {
                    z = true;
                    i = i8;
                    fApply = Interpolation.swingOut.apply(MathUtils.clamp((System.currentTimeMillis() - this.region.getMapSelectionTime()) / 200.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f)) * (-4.0f);
                }
                if (this.duringScreenshot || jFinishedSince >= 200) {
                    f = 1.0f;
                } else {
                    f = jFinishedSince / 200.0f;
                    fApply += (1.0f - Interpolation.swingOut.apply(f)) * 40.0f;
                }
                float level = fApply - ((sortedMapByIndex.getLevel() * 8) * iso.getAbsScaleY());
                if (!renderer.isFinished() || regionInformation2 == null || (cityInformation = regionInformation2.getCityInformation(sortedMapByIndex.getKeeper())) == null) {
                    isoConverter = iso;
                    regionInformation = regionInformation2;
                    regionMap = selectedMap;
                } else {
                    if (f < 1.0f) {
                        this.engine.setTransparency((int) (f * 255.0f));
                    }
                    float f8 = x;
                    float f9 = y;
                    float fIsoToAbsX = iso.isoToAbsX(f8, f9);
                    float fIsoToAbsY = iso.isoToAbsY(f8, f9) + level;
                    float fIsoToAbsX2 = iso.isoToAbsX(f8, sortedMapByIndex.getHeight() + y);
                    float fIsoToAbsY2 = iso.isoToAbsY(f8, sortedMapByIndex.getHeight() + y) + level;
                    float fIsoToAbsX3 = iso.isoToAbsX(sortedMapByIndex.getWidth() + f8, sortedMapByIndex.getHeight() + y);
                    float fIsoToAbsY3 = iso.isoToAbsY(sortedMapByIndex.getWidth() + f8, sortedMapByIndex.getHeight() + y) + level;
                    float fIsoToAbsX4 = iso.isoToAbsX(sortedMapByIndex.getWidth() + f8, f9);
                    regionInformation = regionInformation2;
                    float fIsoToAbsY4 = iso.isoToAbsY(f8 + sortedMapByIndex.getWidth(), f9) + level;
                    float f10 = fIsoToAbsX3 - fIsoToAbsX;
                    this.engine.setScale(iso.getAbsScaleX() * 0.5f, iso.getAbsScaleY() * 0.5f);
                    int height = (sortedMapByIndex.getHeight() + y) - 1;
                    while (height >= y) {
                        int i10 = x;
                        while (i10 < x + sortedMapByIndex.getWidth()) {
                            float f11 = i10;
                            RegionMap regionMap2 = selectedMap;
                            float f12 = height;
                            RegionInformation.CityInformation cityInformation2 = cityInformation;
                            float fIsoToAbsX5 = iso.isoToAbsX(f11, f12);
                            float fIsoToAbsY5 = iso.isoToAbsY(f11, f12) + level;
                            if (i10 == (sortedMapByIndex.getWidth() + x) - 1 || height == y || z3) {
                                isoConverter2 = iso;
                                i6 = height;
                                this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX5, fIsoToAbsY5, Resources.FRAME_REGION_BORDER);
                                if (!this.duringScreenshot && z3) {
                                    this.engine.setAdditive(AdSize.WIDE_SKYSCRAPER_WIDTH);
                                    this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX5, fIsoToAbsY5, Resources.FRAME_REGION_BORDER);
                                    this.engine.setAdditive(0);
                                }
                            } else {
                                isoConverter2 = iso;
                                i6 = height;
                            }
                            i10++;
                            selectedMap = regionMap2;
                            height = i6;
                            cityInformation = cityInformation2;
                            iso = isoConverter2;
                        }
                        height--;
                    }
                    isoConverter = iso;
                    regionMap = selectedMap;
                    RegionInformation.CityInformation cityInformation3 = cityInformation;
                    this.engine.setScale(1.0f, 1.0f);
                    this.engine.setColor(87, 103, 63);
                    i2 = i9;
                    drawing.drawQuad(fIsoToAbsX + 4.0f, fIsoToAbsY, fIsoToAbsX2, fIsoToAbsY2 + 2.0f, fIsoToAbsX3 - 4.0f, fIsoToAbsY3, fIsoToAbsX4, fIsoToAbsY4 - 2.0f, this.engine);
                    this.engine.setColor(255, 255, 255);
                    if (this.region.isLocked(sortedMapByIndex) && !this.region.isUnlockable(sortedMapByIndex) && !this.region.isWaitingToUnlock(sortedMapByIndex)) {
                        this.engine.setColor(AdSize.WIDE_SKYSCRAPER_WIDTH, AdSize.WIDE_SKYSCRAPER_WIDTH, AdSize.WIDE_SKYSCRAPER_WIDTH);
                    }
                    Image image = renderer.getImage();
                    float width = f10 / (image.getWidth() / image.getHeight());
                    this.engine.drawImage(image, fIsoToAbsX, fIsoToAbsY, f10, width, 0);
                    if (this.duringScreenshot || !z3) {
                        z2 = false;
                    } else {
                        this.engine.setAdditive(60);
                        this.engine.drawImage(image, fIsoToAbsX, fIsoToAbsY, f10, width, 0);
                        z2 = false;
                        this.engine.setAdditive(0);
                    }
                    if (this.duringScreenshot) {
                        f2 = fIsoToAbsX2;
                        i3 = 10;
                        f3 = fIsoToAbsX4;
                        f4 = fIsoToAbsY4;
                        f5 = fIsoToAbsY3;
                        f6 = fIsoToAbsY2;
                    } else {
                        if (z3) {
                            this.engine.setColor(Colors.YELLOW);
                            float f13 = fIsoToAbsY2 - 2.0f;
                            i4 = 100;
                            drawing.drawQuad(fIsoToAbsX, fIsoToAbsY, fIsoToAbsX2, fIsoToAbsY2, fIsoToAbsX2, f13, fIsoToAbsX, fIsoToAbsY - 2.0f, this.engine);
                            drawing.drawQuad(fIsoToAbsX2, fIsoToAbsY2, fIsoToAbsX3, fIsoToAbsY3, fIsoToAbsX3, fIsoToAbsY3 - 2.0f, fIsoToAbsX2, f13, this.engine);
                            float f14 = fIsoToAbsY4 + 2.0f;
                            drawing.drawQuad(fIsoToAbsX3, fIsoToAbsY3, fIsoToAbsX4, fIsoToAbsY4, fIsoToAbsX4, f14, fIsoToAbsX3, fIsoToAbsY3 + 2.0f, this.engine);
                            fIsoToAbsX3 = fIsoToAbsX3;
                            f5 = fIsoToAbsY3;
                            drawing.drawQuad(fIsoToAbsX4, fIsoToAbsY4, fIsoToAbsX, fIsoToAbsY, fIsoToAbsX, fIsoToAbsY + 2.0f, fIsoToAbsX4, f14, this.engine);
                            f3 = fIsoToAbsX4;
                            f4 = fIsoToAbsY4;
                            this.engine.setTransparency(100);
                            float f15 = fIsoToAbsY2 - 20.0f;
                            drawing.drawQuad(fIsoToAbsX, fIsoToAbsY, fIsoToAbsX2, fIsoToAbsY2, fIsoToAbsX2, f15, fIsoToAbsX, fIsoToAbsY - 20.0f, Resources.FRAME_GRADIENT_X, this.engine);
                            i5 = 10;
                            f7 = fIsoToAbsY;
                            drawing.drawQuad(fIsoToAbsX2, fIsoToAbsY2, fIsoToAbsX3, f5, fIsoToAbsX3, f5 - 20.0f, fIsoToAbsX2, f15, Resources.FRAME_GRADIENT_X, this.engine);
                            f2 = fIsoToAbsX2;
                            f6 = fIsoToAbsY2;
                        } else {
                            i4 = 100;
                            f2 = fIsoToAbsX2;
                            f3 = fIsoToAbsX4;
                            f7 = fIsoToAbsY;
                            f4 = fIsoToAbsY4;
                            f5 = fIsoToAbsY3;
                            f6 = fIsoToAbsY2;
                            i5 = 10;
                            if (markMap(sortedMapByIndex)) {
                                drawing.drawArrow((int) (fIsoToAbsX + (f10 / 2.0f)), ((int) f7) - 10, 0, 0, 0, this.engine);
                            }
                        }
                        this.engine.setScale(isoConverter.getAbsScaleX() * 0.5f, isoConverter.getAbsScaleY() * 0.5f);
                        if (this.region.isLocked(sortedMapByIndex) && !isNoUnlockNeeded() && (this.region.isUnlockable(sortedMapByIndex) || this.region.isWaitingToUnlock(sortedMapByIndex))) {
                            this.engine.setColor(Colors.WHITE);
                            this.engine.setTransparency(255);
                            if (!this.region.isWaitingToUnlock(sortedMapByIndex) && this.region.getUnlockedOrWaitingMaps() - this.region.getUnlockedMaps() >= this.MAX_CONCURRENT_WAITING) {
                                this.engine.setTransparency(i4);
                            }
                            if (this.region.isWaitingToUnlock(sortedMapByIndex)) {
                                fIsoToAbsY = f7;
                                this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_CLOCK);
                            } else {
                                fIsoToAbsY = f7;
                                this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_LOCKED);
                            }
                            i3 = i5;
                        } else {
                            fIsoToAbsY = f7;
                            if (this.regionProvider.isOnline()) {
                                OnlineMapDirectory onlineMapDirectory = (OnlineMapDirectory) this.region.getMapDirectory();
                                this.engine.setColor(Colors.WHITE);
                                i3 = i5;
                                if (onlineMapDirectory.getCityReports(sortedMapByIndex.getKeeper()) >= i3) {
                                    this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_ALERT);
                                } else if (onlineMapDirectory.getNewCityGifts(sortedMapByIndex.getKeeper()) > 0) {
                                    this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_GOLDEN_PRESENT);
                                } else if (cityInformation3.isAcquired()) {
                                    if (cityInformation3.isCreated()) {
                                        this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_STAR);
                                    } else {
                                        this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_PLUS);
                                    }
                                } else if (cityInformation3.isCanBeAcquired()) {
                                    this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_LOCKED);
                                }
                            } else {
                                i3 = i5;
                                if (cityInformation3.isAcquired() && !cityInformation3.isCreated() && this.region.isUnlockable(sortedMapByIndex)) {
                                    this.engine.drawImage(Resources.IMAGE_WORLD, fIsoToAbsX, fIsoToAbsY, f10, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.7f, Resources.ICON_PLUS);
                                }
                            }
                        }
                        this.engine.setScale(1.0f, 1.0f);
                    }
                    Engine engine = this.engine;
                    Color color = Colors.WHITE;
                    engine.setColor(color);
                    this.engine.setTransparency((!this.region.isLocked(sortedMapByIndex) || this.region.isUnlockable(sortedMapByIndex) || this.region.isWaitingToUnlock(sortedMapByIndex)) ? 32 : i3);
                    float f16 = 1;
                    float f17 = f2;
                    float f18 = f6;
                    drawing.drawLine(fIsoToAbsX, fIsoToAbsY, f17, f18, f16, this.engine);
                    float f19 = fIsoToAbsX3;
                    float f20 = f5;
                    drawing.drawLine(f17, f18, f19, f20, f16, this.engine);
                    float f21 = f3;
                    float f22 = f4;
                    drawing.drawLine(f19, f20, f21, f22, f16, this.engine);
                    drawing.drawLine(f21, f22, fIsoToAbsX, fIsoToAbsY, f16, this.engine);
                    this.engine.setColor(color);
                    this.engine.setTransparency(255);
                    i9 = i2;
                    i8 = i + 1;
                    regionInformation2 = regionInformation;
                    selectedMap = regionMap;
                    iso = isoConverter;
                }
            }
            i2 = i9;
            i9 = i2;
            i8 = i + 1;
            regionInformation2 = regionInformation;
            selectedMap = regionMap;
            iso = isoConverter;
        }
        int i11 = i9;
        this.engine.setTransparency(255);
        this.selectedMapForUpload = i11 > 0 ? Resources.RND.nextInt(i11) : 1;
    }

    public final boolean mapContainsAbs(RegionMap regionMap, int i, int i2) {
        float level = regionMap.getLevel() * (-8) * this.iso.getAbsScaleY();
        float absScaleY = this.iso.getAbsScaleY() * 16.0f;
        int x = regionMap.getX();
        int y = regionMap.getY();
        float fIsoToAbsX = this.iso.isoToAbsX(x, y);
        float fIsoToAbsX2 = this.iso.isoToAbsX(regionMap.getWidth() + x, regionMap.getHeight() + y);
        float f = i;
        if (f < fIsoToAbsX || fIsoToAbsX2 < f) {
            return false;
        }
        float fIsoToAbsY = this.iso.isoToAbsY(x, y) + level;
        float fIsoToAbsX3 = this.iso.isoToAbsX(x, regionMap.getHeight() + y);
        float fIsoToAbsY2 = this.iso.isoToAbsY(x, regionMap.getHeight() + y) + level;
        float fIsoToAbsY3 = this.iso.isoToAbsY(regionMap.getWidth() + x, regionMap.getHeight() + y) + level;
        this.tempFloats.clear();
        this.tempFloats.add(fIsoToAbsX, fIsoToAbsY);
        this.tempFloats.add(fIsoToAbsX3, fIsoToAbsY2);
        this.tempFloats.add(fIsoToAbsX2, fIsoToAbsY3);
        this.tempFloats.add(fIsoToAbsX2, fIsoToAbsY3 + absScaleY);
        this.tempFloats.add(this.iso.isoToAbsX(regionMap.getWidth() + x, y), this.iso.isoToAbsY(x + regionMap.getWidth(), y) + level + absScaleY);
        this.tempFloats.add(fIsoToAbsX, fIsoToAbsY + absScaleY);
        FloatArray floatArray = this.tempFloats;
        return Intersector.isPointInPolygon(floatArray.items, 0, floatArray.size, f, i2);
    }

    public final boolean markMap(RegionMap regionMap) {
        LightCityInfo info2;
        return regionMap != null && regionMap.getX() == 7 && regionMap.getY() == 4 && !isOnline() && ((LocalMapDirectory) this.region.getMapDirectory()).getDirectory().getName().equals(BuildConfig.FLAVOR) && (info2 = regionMap.getKeeper().getInfo()) != null && info2.getLastModified() == 1498587047558L;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public boolean shouldRenderFullspeed() {
        return this.selectedMapForUpload > 0;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        RegionBackground regionBackground = this.regionBackground;
        if (regionBackground != null) {
            regionBackground.dispose();
            this.regionBackground = null;
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (isDialogOpen() || this.allowToGoBack) {
            super.onBack();
            return;
        }
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            showGameMenu();
            return;
        }
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 8, this.translator.translate(2594), this.translator.translate(2934), this.gui);
        dialog.addButton(Resources.ICON_CLOSE, this.translator.translate(1574), false, new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.closeApp();
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1340)).setGolden(true);
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    public void addReloadTask() {
        addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.RegionStage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.reload();
            }
        });
    }

    public String toString() {
        return "RegionStage";
    }
}
