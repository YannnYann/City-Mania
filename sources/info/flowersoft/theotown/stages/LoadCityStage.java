package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.LoadCityGuard;
import info.flowersoft.theotown.city.MapSize;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityfile.MapPreviewRenderer;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.LoadCityStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.ExternalStorageDialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.RestoreCityDialog;
import info.flowersoft.theotown.ui.listitem.SmoothHeightListItem;
import info.flowersoft.theotown.util.Cursor;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.VersionFormatter;
import io.bidmachine.protobuf.sdk.ErrorReasonAnalytics;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Predicate;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public class LoadCityStage extends BaseStage {
    public CityKeeper cityLoadingFailed;
    public Dialog deleteDialog;
    public ExecutorService executor;
    public final LoadCityGuard.Handler handler;
    public CityListItem lastItem;
    public ListBox listBox;
    public float listBoxMovement;
    public LoadCityGuard loadCityGuard;
    public LocalMapDirectory mapDirectory;
    public final List<MapPreviewRenderer> mapPreviewRenderers;
    public CityKeeper selectedCity;
    public final List<MapPreviewRenderer> waitingForUpload;

    public LoadCityStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.waitingForUpload = new ArrayList();
        this.mapPreviewRenderers = new ArrayList();
        this.handler = new LoadCityGuard.Handler() { // from class: info.flowersoft.theotown.stages.LoadCityStage.1
            @Override // info.flowersoft.theotown.city.LoadCityGuard.Handler
            public void onLoadCity(CityKeeper cityKeeper) {
                LoadCityStage.this.getGameStack().pop();
            }

            @Override // info.flowersoft.theotown.city.LoadCityGuard.Handler
            public void onError(CityKeeper cityKeeper) {
                LoadCityStage.this.cityLoadingFailed = cityKeeper;
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
        this.executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors(), new ThreadFactory() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda6
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return LoadCityStage.$r8$lambda$IhQKCR6PqJ1PytEva48UYu5iwrI(runnable);
            }
        });
    }

    public static /* synthetic */ Thread $r8$lambda$IhQKCR6PqJ1PytEva48UYu5iwrI(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("LoadCityExecutor");
        return thread;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        CityKeeper.waitForSaving();
        this.loadCityGuard = new LoadCityGuard(this.gui, this.context, getGameStack());
        Page page = new Page(this.context, this.translator.translate(ErrorReasonAnalytics.ERROR_REASON_ANALYTICS_MONITOR_NO_CONTENT_VALUE), Resources.ICON_LOAD, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
        Panel contentPanel = page.getContentPanel();
        this.listBox = new ListBox(0, 0, contentPanel.getClientWidth(), contentPanel.getClientHeight(), contentPanel);
        LocalMapDirectory localMapDirectory = LocalMapDirectory.getDefault(this.context);
        this.mapDirectory = localMapDirectory;
        localMapDirectory.loadMaps(null, null);
        for (CityKeeper cityKeeper : this.mapDirectory.getMaps()) {
            MapPreviewRenderer mapPreviewRenderer = new MapPreviewRenderer(cityKeeper, this.engine, this.executor);
            this.mapPreviewRenderers.add(mapPreviewRenderer);
            this.waitingForUpload.add(mapPreviewRenderer);
            this.listBox.addItem(new CityListItem(mapPreviewRenderer, cityKeeper));
            if (cityKeeper.equals(this.selectedCity)) {
                ListBox listBox = this.listBox;
                listBox.selectItemIndex(listBox.countItems() - 1);
            }
        }
        if (this.mapDirectory.hasNoMemoryAccess() && Settings.showNoMemAccessDialog) {
            showDialog(new ExternalStorageDialog(this.translator, this.gui));
        }
        CityKeeper cityKeeper2 = this.cityLoadingFailed;
        if (cityKeeper2 != null) {
            showErrorDialog(cityKeeper2.getLoadingException());
        }
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 5, this.translator.translate(2246), this.translator.translate(1785), this.gui);
        this.deleteDialog = dialog;
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1481)).setMarked(true);
        this.deleteDialog.addButton(Resources.ICON_TRASH, this.translator.translate(1067), false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage.2
            @Override // java.lang.Runnable
            public void run() {
                CityListItem cityListItem = (CityListItem) LoadCityStage.this.listBox.getItem(LoadCityStage.this.listBox.getSelectedItemIndex());
                File file = cityListItem.city.getFile();
                LoadCityStage.this.listBox.removeItem(cityListItem);
                Gdx.app.debug("LoadCityStage", "Delete city in " + file.getName() + ": " + file.delete());
                LoadCityStage.this.getGameStack().refreshCurrentStage();
            }
        });
        this.deleteDialog.distributeButtons();
        this.deleteDialog.setVisible(false);
        page.addButton(Resources.ICON_TRASH, "", false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LoadCityStage loadCityStage = this.f$0;
                loadCityStage.showDialog(loadCityStage.deleteDialog);
            }
        }).setVisible(!this.mapDirectory.getMaps().isEmpty());
        page.addButton(Resources.ICON_MEDIC, "", false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LoadCityStage.$r8$lambda$yoCdceE3YXF2Z2BV4ucep8alNGQ(this.f$0);
            }
        }).setVisible(!this.mapDirectory.getMaps().isEmpty());
        page.addButton(Resources.ICON_COPY, "", false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage.3
            @Override // java.lang.Runnable
            public void run() {
                int i;
                CityKeeper cityKeeper3 = LoadCityStage.this.mapDirectory.getMaps().get(LoadCityStage.this.listBox.getSelectedItemIndex());
                String name = cityKeeper3.getInfo().getName();
                int length = name.length();
                while (length > 0 && Character.isDigit(name.charAt(length - 1))) {
                    length--;
                }
                if (length < name.length()) {
                    i = Integer.parseInt(name.substring(length)) + 1;
                    name = name.substring(0, length);
                } else {
                    i = 2;
                }
                while (true) {
                    String str = name + i;
                    if (!LoadCityStage.this.mapDirectory.isNameInUse(str)) {
                        LoadCityStage loadCityStage = LoadCityStage.this;
                        loadCityStage.showDialog(new RenameDialogBuilder(loadCityStage.gui, loadCityStage.translator, loadCityStage.context.getKey()).setFilter(new Predicate<String>() { // from class: info.flowersoft.theotown.stages.LoadCityStage.3.2
                            @Override // io.blueflower.stapel2d.util.Predicate
                            public boolean apply(String str2) {
                                return CityKeeper.isCityNameValid(str2) && !LoadCityStage.this.mapDirectory.isNameInUse(str2);
                            }
                        }).setOnOk(new AnonymousClass1(cityKeeper3)).setOkText(LoadCityStage.this.translator.translate(170)).setCancelText(LoadCityStage.this.translator.translate(Sdk.SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE)).build(Resources.ICON_COPY, LoadCityStage.this.translator.translate(IronSourceError.ERROR_CAPPING_VALIDATION_FAILED), LoadCityStage.this.translator.translate(1710), str));
                        return;
                    }
                    i++;
                }
            }

            /* JADX INFO: renamed from: info.flowersoft.theotown.stages.LoadCityStage$3$1, reason: invalid class name */
            public class AnonymousClass1 implements RenameDialogBuilder.Consumer<String> {
                public final /* synthetic */ CityKeeper val$currentCity;

                /* JADX INFO: renamed from: $r8$lambda$SttCANZ_O0_uWAPheO5g-fCLQvE, reason: not valid java name */
                public static /* synthetic */ void m2239$r8$lambda$SttCANZ_O0_uWAPheO5gfCLQvE() {
                }

                public AnonymousClass1(CityKeeper cityKeeper) {
                    this.val$currentCity = cityKeeper;
                }

                @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
                public void accept(final String str) {
                    final CityKeeper cityKeeper = new CityKeeper(LoadCityStage.this.mapDirectory.findFileForNewCity(str), LoadCityStage.this.translator);
                    LoadCityStage.this.listBox.removeAllItems();
                    GameStack gameStack = LoadCityStage.this.getGameStack();
                    LoadCityStage loadCityStage = LoadCityStage.this;
                    Stapel2DGameContext stapel2DGameContext = loadCityStage.context;
                    int i = Resources.ICON_COPY;
                    String strTranslate = loadCityStage.translator.translate(2812);
                    final CityKeeper cityKeeper2 = this.val$currentCity;
                    gameStack.push(new WaitingStage(stapel2DGameContext, i, strTranslate, new Thread(new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            LoadCityStage.AnonymousClass3.AnonymousClass1.$r8$lambda$GnOYeMVqoDEXqMOzAQPoeNl0MDw(cityKeeper2, cityKeeper, str);
                        }
                    }), new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            LoadCityStage.AnonymousClass3.AnonymousClass1.m2239$r8$lambda$SttCANZ_O0_uWAPheO5gfCLQvE();
                        }
                    }, cityKeeper.getProgressProvider(), cityKeeper.getStateProvider()));
                }

                public static /* synthetic */ void $r8$lambda$GnOYeMVqoDEXqMOzAQPoeNl0MDw(CityKeeper cityKeeper, CityKeeper cityKeeper2, String str) {
                    cityKeeper.load();
                    cityKeeper2.setCity(cityKeeper.getCity());
                    cityKeeper2.getCity().setName(str);
                    if (cityKeeper.getInfo().hasPreview()) {
                        cityKeeper2.setPreview(cityKeeper.getInfo().getPreviewData(), cityKeeper.getInfo().getPreviewWidth(), cityKeeper.getInfo().getPreviewHeight());
                    }
                    cityKeeper2.save();
                    cityKeeper2.getCity().dispose();
                    cityKeeper2.setCity(null);
                }
            }
        }).setVisible(!this.mapDirectory.getMaps().isEmpty());
        if (this.listBox.countItems() > 0) {
            ListBox listBox2 = this.listBox;
            this.lastItem = (CityListItem) listBox2.getItem(listBox2.getSelectedItemIndex());
            page.addButton(Resources.ICON_FORWARD, this.translator.translate(851), false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    LoadCityStage loadCityStage = this.f$0;
                    loadCityStage.loadCityGuard.loadCityProtected(loadCityStage.mapDirectory.getMaps().get(loadCityStage.listBox.getSelectedItemIndex()), loadCityStage.handler);
                }
            }).setGolden(true).setMarked(false);
        }
        page.addButton(Resources.ICON_CITY, this.translator.translate(257), true, true, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LoadCityStage.$r8$lambda$xrav3JfLmGWpqkMnj2o_zlBd7KM(this.f$0);
            }
        });
        page.addButton(Resources.ICON_FOLDER, "", true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LoadCityStage.$r8$lambda$YyxHGWaCKPCBcq3yX1EVAPDwgq4(this.f$0);
            }
        }).setVisible(Gdx.app.getType() == Application.ApplicationType.Desktop);
        if (this.mapDirectory.getMaps().isEmpty()) {
            Dialog dialog2 = new Dialog(Resources.ICON_LOAD, this.translator.translate(2801), this.translator.translate(2107), this.gui);
            dialog2.addButton(Resources.ICON_CITY, this.translator.translate(1576), false, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage.4
                @Override // java.lang.Runnable
                public void run() {
                    LoadCityStage.this.getGameStack().pop();
                    LoadCityStage.this.getGameStack().push(new CreateCityStage(LoadCityStage.this.context, false));
                }
            }).setMarked(true);
            dialog2.addButton(Resources.ICON_CANCEL, this.translator.translate(3089), true, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage.5
                @Override // java.lang.Runnable
                public void run() {
                    LoadCityStage.this.getGameStack().pop();
                }
            });
        }
        this.listBox.setShiftY(this.listBoxMovement);
        this.listBox.setShiftY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public static /* synthetic */ void $r8$lambda$yoCdceE3YXF2Z2BV4ucep8alNGQ(final LoadCityStage loadCityStage) {
        CityKeeper cityKeeper = loadCityStage.mapDirectory.getMaps().get(loadCityStage.listBox.getSelectedItemIndex());
        RestoreCityDialog restoreCityDialog = RestoreCityDialog.INSTANCE;
        if (restoreCityDialog.supportsRestore(loadCityStage.mapDirectory, cityKeeper)) {
            restoreCityDialog.show(loadCityStage.mapDirectory, cityKeeper, new Runnable() { // from class: info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.getGameStack().refreshCurrentStage();
                }
            }, loadCityStage.context, loadCityStage.gui);
        }
    }

    public static /* synthetic */ void $r8$lambda$xrav3JfLmGWpqkMnj2o_zlBd7KM(LoadCityStage loadCityStage) {
        loadCityStage.getGameStack().pop();
        loadCityStage.getGameStack().push(new CreateCityStage(loadCityStage.context, false));
    }

    public static /* synthetic */ void $r8$lambda$YyxHGWaCKPCBcq3yX1EVAPDwgq4(LoadCityStage loadCityStage) {
        loadCityStage.getClass();
        TheoTown.runtimeFeatures.openURI(loadCityStage.mapDirectory.getDirectory().getAbsolutePath().replace("\\", "/"));
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        if (this.waitingForUpload.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.waitingForUpload.size(); i++) {
            MapPreviewRenderer mapPreviewRenderer = this.waitingForUpload.get(i);
            if (mapPreviewRenderer.readyForUpload()) {
                mapPreviewRenderer.upload();
                this.waitingForUpload.remove(i);
                return;
            }
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.listBoxMovement = this.listBox.getShiftY();
        this.cityLoadingFailed = null;
        if (this.listBox.countItems() > 0) {
            this.selectedCity = this.mapDirectory.getMaps().get(this.listBox.getSelectedItemIndex());
        }
        this.listBox.removeAllItems();
        this.mapDirectory = null;
        for (int i = 0; i < this.mapPreviewRenderers.size(); i++) {
            this.mapPreviewRenderers.get(i).release();
        }
        this.mapPreviewRenderers.clear();
        this.waitingForUpload.clear();
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
        this.executor.shutdown();
        this.executor = null;
    }

    public String toString() {
        return "LoadCityStage";
    }

    public class CityListItem extends SmoothHeightListItem {
        public final CityKeeper city;
        public final Cursor cursor;
        public final MapPreviewRenderer minimap;
        public String scenarioAuthor;
        public String scenarioTitle;

        public CityListItem(MapPreviewRenderer mapPreviewRenderer, CityKeeper cityKeeper) {
            super(cityKeeper.getInfo().getName());
            this.cursor = new Cursor();
            this.minimap = mapPreviewRenderer;
            this.city = cityKeeper;
            LightCityInfo info2 = cityKeeper.getInfo();
            if (info2.isScenario()) {
                ScenarioDraft scenarioDraft = (ScenarioDraft) Drafts.get(info2.getScenarioId(), ScenarioDraft.class);
                if (scenarioDraft != null) {
                    this.scenarioTitle = new DraftLocalizer(LoadCityStage.this.context, info2.getName()).getTitle(scenarioDraft);
                    this.scenarioAuthor = scenarioDraft.author;
                } else {
                    this.scenarioTitle = info2.getScenarioTitle();
                    this.scenarioAuthor = info2.getScenarioAuthor();
                }
                this.scenarioTitle = StringFormatter.format(LoadCityStage.this.translator.translate(2003), this.scenarioTitle);
                if (this.scenarioAuthor.isEmpty()) {
                    return;
                }
                this.scenarioAuthor = StringFormatter.format(LoadCityStage.this.translator.translate(372), this.scenarioAuthor);
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            float f;
            drawBackground(z, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            LightCityInfo info2 = this.city.getInfo();
            float f2 = i4;
            float f3 = i5;
            float f4 = i2 + 2;
            this.cursor.resetTo(f4, i3 + 2);
            if (this.minimap.isFinished()) {
                int iFinishedSince = this.minimap.finishedSince();
                engine.setColor(Colors.WHITE);
                engine.setTransparency(Math.round(Math.min(iFinishedSince / 200.0f, 1.0f) * 255.0f));
                Image image = this.minimap.getImage();
                engine.setColor(skin.cTextAccent);
                int i6 = i2 + 1;
                int i7 = i5 - 11;
                float f5 = i3 + (i5 / 2);
                float f6 = i6 + i7;
                float f7 = i7 * 0.5f;
                f = 1.0f;
                Drawing.getInstance().drawQuad(i6, f5, f6, f5 + f7, (i7 * 2) + i6, f5, f6, f5 - f7, engine);
                engine = engine;
                engine.reset();
                float f8 = (i5 - 12) * 2;
                engine.drawImage(image, f4, f5, f8, (image.getHeight() * f8) / image.getWidth(), 0);
                engine.setTransparency(255);
                f2 -= r10 + 6;
                this.cursor.moveX(r10 + 4);
                this.cursor.resetTo();
            } else {
                f = 1.0f;
            }
            float f9 = f2 - 2.0f;
            float f10 = f3 - 4.0f;
            engine.setColor(z ? skin.cTextSelected : skin.cText);
            engine.drawText(skin.fontBig, this.text, this.cursor.getX(), this.cursor.getY());
            engine.setColor(z ? skin.cTextSelected : skin.cTextSecondary);
            this.cursor.moveX(skin.fontBig.getWidth(this.text) + f);
            if (info2.isScenario()) {
                engine.setColor(z ? Colors.ORANGE : Colors.DARK_ORANGE);
                engine.drawText(skin.fontSmall, this.scenarioTitle, this.cursor.getX(), this.cursor.getY(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, skin.fontBig.getHeight(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            } else if (info2.getAuthor() != null && !info2.getAuthor().isEmpty()) {
                engine.drawText(skin.fontSmall, info2.getAuthor(), this.cursor.getX(), this.cursor.getY(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, skin.fontBig.getHeight(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            }
            engine.setColor(z ? skin.cTextSelected : skin.cTextSecondary);
            if (info2.getRank() != null) {
                engine.drawText(skin.fontSmall, new DraftLocalizer(LoadCityStage.this.context, info2.getName()).getTitle(info2.getRank()), this.cursor.getX(), this.cursor.getY());
            }
            this.cursor.resetX();
            this.cursor.moveY(skin.fontBig.getHeight() + 2.0f);
            float height = f10 - (skin.fontBig.getHeight() + 2.0f);
            String str = LoadCityStage.this.translator.translate(3466) + " " + LoadCityStage.this.translator.translate(MapSize.fromSize(info2.getWidth(), info2.getHeight()).getLocalizationId());
            if (info2.getHabitants() >= 0) {
                str = str + ", " + StringFormatter.format(LoadCityStage.this.translator.translate(2574), Integer.valueOf(info2.getHabitants()));
            }
            String str2 = str + ", " + LoadCityStage.this.translator.translate(1182) + " " + LoadCityStage.this.translator.translate(info2.getGameMode().getLocalizationId());
            if (info2.isUber()) {
                str2 = str2 + " " + LoadCityStage.this.translator.translate(1219);
            }
            engine.drawText(skin.fontSmall, str2, this.cursor.getX(), this.cursor.getY());
            if (Settings.debugMode) {
                engine.drawText(skin.fontSmall, this.city.getFile().getName() + " " + Localizer.localizeFileSize(LoadCityStage.this.translator, info2.getSize()), this.cursor.getX(), this.cursor.getY(), f9, height, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                if (info2.getVersion() < TheoTown.VERSION_CODE) {
                    engine.setColor(z ? skin.cTextSelected : skin.cTextOrange);
                }
                Engine engine2 = engine;
                engine2.drawText(skin.fontSmall, "v" + VersionFormatter.INSTANCE.format(info2.getVersion()), this.cursor.getX(), this.cursor.getY() - 12.0f, f9, height, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                engine = engine2;
            }
            engine.setColor(Colors.WHITE);
        }

        @Override // info.flowersoft.theotown.ui.listitem.SmoothHeightListItem
        public int getTargetHeight(boolean z) {
            if (this.minimap != null) {
                return (z ? 64 : 42) + 12;
            }
            return 50;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            if (LoadCityStage.this.lastItem == this) {
                LoadCityStage.this.loadCityGuard.loadCityProtected(this.city, LoadCityStage.this.handler);
            }
            LoadCityStage.this.lastItem = this;
        }
    }

    public final void showErrorDialog(Exception exc) {
        Dialog dialog = new Dialog(Resources.FRAME_PEOPLE + 4, this.translator.translate(3120), this.translator.translate(2427) + "\n" + exc, this.gui);
        new IconButton(Resources.ICON_MEDIC, this.translator.translate(1628), 0, 0, 0, dialog.getControlLine().getThirdPart().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.LoadCityStage.6
            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return LoadCityStage.this.cityLoadingFailed != null && LoadCityStage.this.mapDirectory.canRecoverFile(LoadCityStage.this.cityLoadingFailed.getFile());
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (LoadCityStage.this.cityLoadingFailed != null) {
                    File file = LoadCityStage.this.cityLoadingFailed.getFile();
                    if (LoadCityStage.this.mapDirectory.canRecoverFile(file) && LoadCityStage.this.mapDirectory.recoverFile(file)) {
                        LoadCityStage.this.loadCityGuard.loadCityProtected(LoadCityStage.this.cityLoadingFailed, LoadCityStage.this.handler);
                    }
                }
            }
        };
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(3233)).setMarked(true);
        showDialog(dialog);
    }
}
