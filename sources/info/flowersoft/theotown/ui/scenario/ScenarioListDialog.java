package info.flowersoft.theotown.ui.scenario;

import com.google.android.gms.ads.AdSize;
import info.flowersoft.theotown.ScenarioIsNewlyStarted;
import info.flowersoft.theotown.city.LoadCityGuard;
import info.flowersoft.theotown.cityfile.LocalMapDirectory;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.LoadCityStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.scenario.ScenarioListDialog;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import java.io.File;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: ScenarioListDialog.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioListDialog extends Dialog {
    public static final Companion Companion = new Companion(null);
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final Master gui;

    /* JADX INFO: renamed from: $r8$lambda$Pm_bK3Jclw3s-V5oileix92nWoM, reason: not valid java name */
    public static void m2398$r8$lambda$Pm_bK3Jclw3sV5oileix92nWoM() {
    }

    public final Stapel2DGameContext getContext() {
        return this.context;
    }

    public final Master getGui() {
        return this.gui;
    }

    public final GameStack getGameStack() {
        return this.gameStack;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v2, types: [info.flowersoft.theotown.ui.scenario.ScenarioListDialog$listBox$1, io.blueflower.stapel2d.gui.Gadget, io.blueflower.stapel2d.gui.ListBox] */
    public ScenarioListDialog(Stapel2DGameContext context, Master gui, GameStack gameStack) {
        super(Resources.ICON_SCENARIO, context.getTranslator().translate(1491), "", 300, Math.min(gui.getHeight() - 100, Math.max(AdSize.WIDE_SKYSCRAPER_WIDTH, (Drafts.SCENARIOS.size() * 40) + 80)), gui);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gui, "gui");
        Intrinsics.checkNotNullParameter(gameStack, "gameStack");
        this.context = context;
        this.gui = gui;
        this.gameStack = gameStack;
        addHiddenCancelButton();
        addInfoButton(gui, context);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final Panel panel = this.contentPane;
        final ?? r2 = new ListBox(panel) { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$listBox$1
            @Override // io.blueflower.stapel2d.gui.ListBox, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Function0<Unit> function0 = ref$ObjectRef.element;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        };
        r2.fillParent();
        final LocalMapDirectory scenario = LocalMapDirectory.getScenario(context);
        scenario.loadMaps(null, null);
        List<ScenarioDraft> SCENARIOS = Drafts.SCENARIOS;
        Intrinsics.checkNotNullExpressionValue(SCENARIOS, "SCENARIOS");
        List<ScenarioDraft> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) SCENARIOS);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$special$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ScenarioDraft) t).ordinal), Integer.valueOf(((ScenarioDraft) t2).ordinal));
                }
            });
        }
        List list = mutableList;
        final LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(obj, scenario.getMapByScenarioId(((ScenarioDraft) obj).id));
        }
        CollectionsKt__MutableCollectionsKt.removeAll(mutableList, new Function1() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Boolean.valueOf(ScenarioListDialog._init_$lambda$2(linkedHashMap, (ScenarioDraft) obj2));
            }
        });
        if (mutableList.isEmpty()) {
            Panel panel2 = this.contentPane;
            panel2.setClientHeight(panel2.getClientHeight() + this.lineControl.getHeight());
            addEmptyItem(r2);
            return;
        }
        final DraftLocalizer draftLocalizer = new DraftLocalizer(this.context, "");
        for (ScenarioDraft scenarioDraft : mutableList) {
            Intrinsics.checkNotNull(scenarioDraft);
            CityKeeper cityKeeper = (CityKeeper) linkedHashMap.get(scenarioDraft);
            TranslationManager translator = this.context.getTranslator();
            Intrinsics.checkNotNullExpressionValue(translator, "getTranslator(...)");
            r2.addItem(new ScenarioListItem(scenarioDraft, cityKeeper, translator, draftLocalizer));
        }
        ref$ObjectRef.element = new Function0() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ScenarioListDialog._init_$lambda$3(this.f$0, r2, linkedHashMap, draftLocalizer, scenario);
            }
        };
        r2.selectItemIndex(0);
        ((Function0) ref$ObjectRef.element).invoke();
    }

    /* JADX INFO: compiled from: ScenarioListDialog.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public static final boolean _init_$lambda$2(Map map, ScenarioDraft scenarioDraft) {
        return scenarioDraft.getCityFile() == null && map.get(scenarioDraft) == null;
    }

    public static final Unit _init_$lambda$3(final ScenarioListDialog scenarioListDialog, final ScenarioListDialog$listBox$1 scenarioListDialog$listBox$1, final Map map, final DraftLocalizer draftLocalizer, final LocalMapDirectory localMapDirectory) {
        String strTranslate;
        final ScenarioDraft selectedScenario = scenarioListDialog.getSelectedScenario(scenarioListDialog$listBox$1);
        final CityKeeper cityKeeper = (CityKeeper) map.get(selectedScenario);
        scenarioListDialog.clearButtons();
        scenarioListDialog.addHiddenCancelButton();
        if (cityKeeper != null && selectedScenario.getCityFile() != null) {
            scenarioListDialog.addButton(Resources.ICON_RESET, scenarioListDialog.context.getTranslator().translate(3556), false, false, false, new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ScenarioListDialog.$r8$lambda$AXsh9YA7ISDwgjs5QnbrcTw7S8g(this.f$0, scenarioListDialog$listBox$1, draftLocalizer, map);
                }
            });
        }
        scenarioListDialog.addButton(Resources.ICON_INFO, scenarioListDialog.context.getTranslator().translate(2703), false, false, true, new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ScenarioListDialog scenarioListDialog2 = this.f$0;
                ScenarioInfoDialog.Companion.forDraft(scenarioListDialog2.context, scenarioListDialog2.getSelectedScenario(scenarioListDialog$listBox$1), scenarioListDialog2.gui, new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScenarioListDialog.m2398$r8$lambda$Pm_bK3Jclw3sV5oileix92nWoM();
                    }
                }).setVisible(true);
            }
        });
        int i = Resources.ICON_PLAY;
        if (cityKeeper == null) {
            strTranslate = scenarioListDialog.context.getTranslator().translate(2267);
        } else {
            strTranslate = scenarioListDialog.context.getTranslator().translate(3444);
        }
        GoldButton goldButtonAddButton = scenarioListDialog.addButton(i, strTranslate, false, true, true, new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ScenarioListDialog.m2401$r8$lambda$yFBLzePzVaKAMVmiIidJ7KcAkk(cityKeeper, scenarioListDialog, selectedScenario, localMapDirectory);
            }
        });
        goldButtonAddButton.setGolden(true);
        goldButtonAddButton.addSensitiveKey(66);
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$AXsh9YA7ISDwgjs5QnbrcTw7S8g(ScenarioListDialog scenarioListDialog, ScenarioListDialog$listBox$1 scenarioListDialog$listBox$1, DraftLocalizer draftLocalizer, Map map) {
        ScenarioDraft selectedScenario = scenarioListDialog.getSelectedScenario(scenarioListDialog$listBox$1);
        Object obj = map.get(scenarioListDialog.getSelectedScenario(scenarioListDialog$listBox$1));
        Intrinsics.checkNotNull(obj);
        scenarioListDialog.showResetDialog(selectedScenario, draftLocalizer, (CityKeeper) obj);
    }

    /* JADX INFO: renamed from: $r8$lambda$yFBLzePzVaKAMVm-iIidJ7KcAkk, reason: not valid java name */
    public static void m2401$r8$lambda$yFBLzePzVaKAMVmiIidJ7KcAkk(CityKeeper cityKeeper, ScenarioListDialog scenarioListDialog, ScenarioDraft scenarioDraft, LocalMapDirectory localMapDirectory) {
        if (cityKeeper == null) {
            ScenarioIsNewlyStarted scenarioIsNewlyStarted = ScenarioIsNewlyStarted.INSTANCE;
            String id = scenarioDraft.id;
            Intrinsics.checkNotNullExpressionValue(id, "id");
            scenarioIsNewlyStarted.setNewlyStarted(id, true);
            Intrinsics.checkNotNull(localMapDirectory);
            cityKeeper = scenarioListDialog.copyCity(localMapDirectory, scenarioDraft);
        }
        scenarioListDialog.loadCity(cityKeeper);
    }

    public final void showResetDialog(ScenarioDraft scenarioDraft, DraftLocalizer draftLocalizer, final CityKeeper cityKeeper) {
        Dialog dialog = new Dialog(Resources.ICON_RESET, this.context.getTranslator().translate(521), this.context.getTranslator().translate(193), 260, 140, this.gui);
        dialog.addButton(Resources.ICON_LOAD, this.context.getTranslator().translate(1693), new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ScenarioListDialog.showResetDialog$lambda$0(cityKeeper, this);
            }
        });
        dialog.addButton(Resources.ICON_REMOVE, this.context.getTranslator().translate(293), new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ScenarioListDialog.showResetDialog$lambda$1(cityKeeper, this);
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, this.context.getTranslator().translate(1477)).setMarked(true);
        dialog.setVisible(true);
    }

    public static final void showResetDialog$lambda$0(CityKeeper cityKeeper, ScenarioListDialog scenarioListDialog) {
        File file = new File(Resources.getOldMapSaveDir(), cityKeeper.getFile().getName());
        int i = 1;
        while (file.exists()) {
            File oldMapSaveDir = Resources.getOldMapSaveDir();
            StringBuilder sb = new StringBuilder();
            File file2 = cityKeeper.getFile();
            Intrinsics.checkNotNullExpressionValue(file2, "getFile(...)");
            sb.append(FilesKt__UtilsKt.getNameWithoutExtension(file2));
            sb.append('_');
            sb.append(i);
            sb.append(".png");
            file = new File(oldMapSaveDir, sb.toString());
            i++;
        }
        if (!Files.copyFile(cityKeeper.getFile(), file)) {
            throw new IllegalArgumentException(("Could not copy " + cityKeeper.getFile() + " to " + file).toString());
        }
        cityKeeper.getFile().delete();
        scenarioListDialog.gameStack.push(new LoadCityStage(scenarioListDialog.context));
    }

    public static final void showResetDialog$lambda$1(CityKeeper cityKeeper, ScenarioListDialog scenarioListDialog) {
        cityKeeper.getFile().delete();
        scenarioListDialog.setVisible(false);
        new ScenarioListDialog(scenarioListDialog.context, scenarioListDialog.gui, scenarioListDialog.gameStack).setVisible(true);
    }

    public final ScenarioDraft getSelectedScenario(ListBox listBox) {
        ListItem item = listBox.getItem(listBox.getSelectedItemIndex());
        Intrinsics.checkNotNull(item, "null cannot be cast to non-null type info.flowersoft.theotown.ui.scenario.ScenarioListItem");
        return ((ScenarioListItem) item).getScenario();
    }

    public final void addEmptyItem(final ListBox listBox) {
        listBox.addItem(new ListItem(this.context.getTranslator().translate(949)) { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog.addEmptyItem.1
            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                Intrinsics.checkNotNullParameter(skin, "skin");
                Engine engine = skin.engine;
                engine.setColor(Colors.GRAY);
                engine.drawText(skin.fontSmall, this.text, i2, i3, i4, i5, 0.5f, 0.5f);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                return listBox.getClientHeight() - 2;
            }
        });
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addInfoButton$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ScenarioListDialog.kt */
    public static final class C41001 extends Button {
        public final /* synthetic */ Stapel2DGameContext $context;
        public final /* synthetic */ Master $gui;

        public static final void onClick$lambda$0() {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C41001(Stapel2DGameContext stapel2DGameContext, Master master, int i, Panel panel) {
            super(i, 0, 20, 30, panel);
            this.$context = stapel2DGameContext;
            this.$gui = master;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            Engine engine = this.skin.engine;
            engine.setScale(0.8f, 0.8f);
            engine.drawImage(Resources.IMAGE_WORLD, i + this.x, i2 + this.y, getClientWidth(), getClientHeight(), 0.8f, 0.5f, Resources.ICON_HELP);
            engine.reset();
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            Dialog dialog = new Dialog(Resources.ICON_EDUCATION, this.$context.getTranslator().translate(594), this.$context.getTranslator().translate(3133), 260, 140, this.$gui);
            GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, this.$context.getTranslator().translate(1899), new Runnable() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog$addInfoButton$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ScenarioListDialog.C41001.onClick$lambda$0();
                }
            });
            goldButtonAddButton.setGolden(true);
            goldButtonAddButton.addSensitiveKey(66);
            dialog.setVisible(true);
        }
    }

    public final void addInfoButton(Master master, Stapel2DGameContext stapel2DGameContext) {
        new C41001(stapel2DGameContext, master, this.window.getClientWidth() - 50, this.window);
    }

    public final CityKeeper copyCity(LocalMapDirectory localMapDirectory, ScenarioDraft scenarioDraft) {
        File directory = localMapDirectory.getDirectory();
        File file = new File(directory, scenarioDraft.getNormalizedTargetFileName() + ".city");
        int i = 1;
        while (file.exists()) {
            File file2 = new File(directory, FilesKt__UtilsKt.getNameWithoutExtension(file) + '_' + i + ".city");
            i++;
            if (i >= 1000) {
                throw new IllegalStateException("Something went really wrong with scenario initialisation");
            }
            file = file2;
        }
        if (file.exists() && !file.delete()) {
            throw new IllegalArgumentException(("Could not delete existing scenario file for " + scenarioDraft.id).toString());
        }
        AbstractFile cityFile = scenarioDraft.getCityFile();
        Intrinsics.checkNotNull(cityFile);
        if (!Files.copyFile(cityFile.read(), file)) {
            throw new IllegalArgumentException(("Could not initiate scenario " + scenarioDraft.id).toString());
        }
        localMapDirectory.collectCities();
        localMapDirectory.loadMaps(null, null);
        CityKeeper mapByScenarioId = localMapDirectory.getMapByScenarioId(scenarioDraft.id);
        if (mapByScenarioId != null) {
            return mapByScenarioId;
        }
        file.delete();
        throw new IllegalStateException(("City file not found for " + scenarioDraft.id + ", maybe the id was not set correctly").toString());
    }

    public final void loadCity(CityKeeper cityKeeper) {
        new LoadCityGuard(this.gui, this.context, this.gameStack).loadCityProtected(cityKeeper, new LoadCityGuard.Handler() { // from class: info.flowersoft.theotown.ui.scenario.ScenarioListDialog.loadCity.1
            @Override // info.flowersoft.theotown.city.LoadCityGuard.Handler
            public void onError(CityKeeper map) {
                Intrinsics.checkNotNullParameter(map, "map");
            }

            @Override // info.flowersoft.theotown.city.LoadCityGuard.Handler
            public void onLoadCity(CityKeeper map) {
                Intrinsics.checkNotNullParameter(map, "map");
            }
        });
    }
}
