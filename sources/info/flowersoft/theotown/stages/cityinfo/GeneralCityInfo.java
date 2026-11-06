package info.flowersoft.theotown.stages.cityinfo;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.ScenarioInfo;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.components.statistics.ResidentialLvl1Item;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.ScenarioDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.OSUtil;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.GUICache;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.StaticGetter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GeneralCityInfo extends ListBasedCityInfo {
    public Dialog sandboxDialog;

    /* JADX INFO: renamed from: $r8$lambda$Z-qjT5vrOEmQCXAw5Ta96dMghKk, reason: not valid java name */
    public static /* synthetic */ void m2308$r8$lambda$ZqjT5vrOEmQCXAw5Ta96dMghKk() {
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getTitleId(City city) {
        return 2272;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public int getIcon() {
        return Resources.ICON_CITY;
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getHelpText(City city) {
        return city.getTranslator().translate(424);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo, info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(final City city, final Gadget gadget, final Stapel2DGameContext stapel2DGameContext, final GameStack gameStack) {
        final GeneralCityInfo generalCityInfo;
        GameMode gameMode;
        super.build(city, gadget, stapel2DGameContext, gameStack);
        DefaultManagement defaultManagement = (DefaultManagement) city.getComponent(3);
        People people = (People) city.getComponent(9);
        BuildingSurvey buildingSurvey = defaultManagement.getBuildingSurvey();
        final ScenarioInfo scenarioInfo = city.getScenarioInfo();
        final TranslationManager translator = stapel2DGameContext.getTranslator();
        DraftLocalizer draftLocalizer = new DraftLocalizer(city);
        Skin skin = Resources.skin;
        if (scenarioInfo != null) {
            String title = scenarioInfo.getTitle();
            String author = scenarioInfo.getAuthor();
            ScenarioDraft scenarioDraft = (ScenarioDraft) Drafts.get(scenarioInfo.getId(), ScenarioDraft.class);
            if (scenarioDraft != null) {
                title = draftLocalizer.getTitle(scenarioDraft);
                author = scenarioDraft.author;
            }
            String str = StringFormatter.format(translator.translate(2003), title);
            String str2 = scenarioInfo.getAuthor().isEmpty() ? null : StringFormatter.format(translator.translate(372), author);
            addClickableItem(new StaticGetter(str), str2 != null ? new StaticGetter(str2) : null, skin.cTextOrange, Resources.ICON_SCENARIO, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ScenarioInfoDialog.Companion.forInfo(stapel2DGameContext, scenarioInfo, (Master) gadget.getAbsoluteParent(), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda8
                        @Override // java.lang.Runnable
                        public final void run() {
                            GeneralCityInfo.m2308$r8$lambda$ZqjT5vrOEmQCXAw5Ta96dMghKk();
                        }
                    }).setVisible(true);
                }
            });
        }
        addClickableItem(new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda1
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return StringFormatter.format(translator.translate(1120), city.getName());
            }
        }, (Getter<String>) null, skin.cText, Resources.ICON_EDIT, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GeneralCityInfo.$r8$lambda$P64Lsm35zH0h7jTtui3prhfMiDQ(gadget, translator, stapel2DGameContext, city);
            }
        }, !city.isReadonly());
        addClickableItem(new Getter() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda3
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return StringFormatter.format(translator.translate(2881), city.getAuthor());
            }
        }, (Getter<String>) null, skin.cText, Resources.ICON_EDIT, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GeneralCityInfo.m2309$r8$lambda$coa4jM9SxB16DcFCUcyTc1AQ7k(gadget, translator, stapel2DGameContext, city);
            }
        }, !city.isOnline());
        if (city.getSeed() != null) {
            generalCityInfo = this;
            generalCityInfo.addClickableItem(new StaticGetter(StringFormatter.format(translator.translate(3139), city.getSeed())), null, skin.cText, Resources.ICON_COPY, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    GeneralCityInfo.m2307$r8$lambda$D50NilCZu4PGU52RlZ5VxvU_Mg(city, translator);
                }
            });
        } else {
            generalCityInfo = this;
        }
        GameMode gameMode2 = city.getGameMode();
        String str3 = translator.translate(1182) + " " + translator.translate(city.getGameMode().getLocalizationId());
        if (city.isUber()) {
            str3 = str3 + " " + translator.translate(1219);
        }
        if (!city.isOnline() && gameMode2.hasGameLogic() && city.getTransitionVar("_mooncolonydsa", 0L) == 0 && !gameMode2.hasInfinityMoney() && city.getScenarioInfo() == null) {
            gameMode = gameMode2;
            generalCityInfo.addClickableItem(new StaticGetter(str3), (Getter<String>) null, (Color) null, Resources.ICON_WIZARD, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.showConvertToSandboxDialog(city, gadget, gameStack);
                }
            }, !city.isReadonly());
        } else {
            gameMode = gameMode2;
            generalCityInfo.addItem(str3);
        }
        if (gameMode != GameMode.SANDBOX) {
            generalCityInfo.addItem(StringFormatter.format(translator.translate(3057), StringFormatter.format("%1$,d", Integer.valueOf(city.getCurrentXp()))));
        }
        generalCityInfo.addSpace();
        generalCityInfo.addClickableItem(new StaticGetter(translator.translate(2823)), new StaticGetter(""), skin.cTextAccent, Resources.ICON_STATISTICS, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                GeneralCityInfo.m2310$r8$lambda$dqFCnCzzp2pD58UsMIgSSHeuYw(gameStack, city, stapel2DGameContext);
            }
        });
        final PieChart pieChart = new PieChart(translator.translate(6), skin);
        pieChart.addEntry(translator.translate(476), people.getPeople(0), Resources.COLOR_RES1);
        pieChart.addEntry(translator.translate(477), people.getPeople(1), Resources.COLOR_RES2);
        pieChart.addEntry(translator.translate(478), people.getPeople(2), Resources.COLOR_RES3);
        final PieChart pieChart2 = new PieChart(translator.translate(1579), skin);
        pieChart2.addEntry(translator.translate(476), buildingSurvey.getShoppingPlaces(0, 0), Resources.COLOR_COM1);
        pieChart2.addEntry(translator.translate(477), buildingSurvey.getShoppingPlaces(1, 0), Resources.COLOR_COM2);
        pieChart2.addEntry(translator.translate(478), buildingSurvey.getShoppingPlaces(2, 0), Resources.COLOR_COM3);
        final PieChart pieChart3 = new PieChart(translator.translate(3074), skin);
        pieChart3.addEntry(translator.translate(476), buildingSurvey.getProducers(0, 0), Resources.COLOR_IND1);
        pieChart3.addEntry(translator.translate(477), buildingSurvey.getProducers(1, 0), Resources.COLOR_IND2);
        pieChart3.addEntry(translator.translate(478), buildingSurvey.getProducers(2, 0), Resources.COLOR_IND3);
        generalCityInfo.listBox.addItem(new ListItem("") { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo.1
            @Override // io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                return 100;
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin2) {
                super.drawBackground(false, i, i2, i3, i4, i5, skin2);
                int i6 = i5 - 1;
                int i7 = i3 + ((i5 - i6) / 2);
                PieChart pieChart4 = pieChart;
                Engine engine = skin2.engine;
                int i8 = i6 / 2;
                pieChart4.draw(engine, ((i4 / 6) + i2) - i8, i7, i6, i6);
                pieChart2.draw(skin2.engine, (((i4 * 3) / 6) + i2) - i8, i7, i6, i6);
                pieChart3.draw(skin2.engine, (((i4 * 5) / 6) + i2) - i8, i7, i6, i6);
            }
        });
        addItem(StringFormatter.format(translator.translate(3385), Integer.valueOf(people.getPeople(0))));
        addItem(StringFormatter.format(translator.translate(3384), Integer.valueOf(people.getPeople(1))));
        addItem(StringFormatter.format(translator.translate(3382), Integer.valueOf(people.getPeople(2))));
        addSeparator();
        addItem(StringFormatter.format(translator.translate(3018), Integer.valueOf(people.getPeople())));
    }

    public static /* synthetic */ void $r8$lambda$P64Lsm35zH0h7jTtui3prhfMiDQ(Gadget gadget, Translator translator, Stapel2DGameContext stapel2DGameContext, final City city) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) gadget.getAbsoluteParent(), translator, stapel2DGameContext.getKey());
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda9
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return CityKeeper.isCityNameValid((String) obj);
            }
        });
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda10
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                GeneralCityInfo.$r8$lambda$wwjEA8brPxsqlCfKzyYoAXOHzN4(city, (String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_CITY, translator.translate(2577), translator.translate(1580), city.getName()).setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$wwjEA8brPxsqlCfKzyYoAXOHzN4(City city, String str) {
        city.setName(str);
        GUICache.invalidateAllCaches();
    }

    /* JADX INFO: renamed from: $r8$lambda$coa4jM9SxB16DcFCUcy-Tc1AQ7k, reason: not valid java name */
    public static /* synthetic */ void m2309$r8$lambda$coa4jM9SxB16DcFCUcyTc1AQ7k(Gadget gadget, Translator translator, Stapel2DGameContext stapel2DGameContext, final City city) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) gadget.getAbsoluteParent(), translator, stapel2DGameContext.getKey());
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda11
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return GeneralCityInfo.$r8$lambda$d3411bWKzj9_Mh3WJyvtqyZXcV8((String) obj);
            }
        });
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo$$ExternalSyntheticLambda12
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                GeneralCityInfo.$r8$lambda$1SkNq9lo43iZGcIri12gAZYO0UE(city, (String) obj);
            }
        });
        String author = city.getAuthor();
        if (author.isEmpty()) {
            author = "";
        }
        renameDialogBuilder.build(Resources.PEOPLE_MAYOR, translator.translate(709), translator.translate(2222), author).setVisible(true);
    }

    public static /* synthetic */ boolean $r8$lambda$d3411bWKzj9_Mh3WJyvtqyZXcV8(String str) {
        return str.trim().length() >= 3;
    }

    public static /* synthetic */ void $r8$lambda$1SkNq9lo43iZGcIri12gAZYO0UE(City city, String str) {
        city.setAuthor(str);
        GUICache.invalidateAllCaches();
    }

    /* JADX INFO: renamed from: $r8$lambda$D50NilCZu4PGU52RlZ5VxvU_-Mg, reason: not valid java name */
    public static /* synthetic */ void m2307$r8$lambda$D50NilCZu4PGU52RlZ5VxvU_Mg(City city, Translator translator) {
        OSUtil.pasteIntoClipboard(city.getSeed());
        TheoTown.runtimeFeatures.showToast(translator.translate(3010));
    }

    /* JADX INFO: renamed from: $r8$lambda$dqFCnCzzp2pD58U-sMIgSSHeuYw, reason: not valid java name */
    public static /* synthetic */ void m2310$r8$lambda$dqFCnCzzp2pD58UsMIgSSHeuYw(GameStack gameStack, City city, Stapel2DGameContext stapel2DGameContext) {
        gameStack.pop();
        CityInfoStage cityInfoStage = new CityInfoStage(city, stapel2DGameContext);
        cityInfoStage.selectCityInfo(new StatisticsCityInfo(ResidentialLvl1Item.class));
        gameStack.push(cityInfoStage);
    }

    public final void showConvertToSandboxDialog(final City city, Gadget gadget, final GameStack gameStack) {
        if (this.sandboxDialog == null) {
            Translator translator = city.getTranslator();
            Dialog dialog = new Dialog(Resources.FRAME_ZONE_OVERLOADED, translator.translate(IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW), translator.translate(1588), (Master) gadget.getAbsoluteParent());
            dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477)).setGolden(true);
            dialog.addButton(Resources.ICON_GAMEMODE_SANDBOX, translator.translate(376), false, new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo.2
                @Override // java.lang.Runnable
                public void run() {
                    city.setGameMode(GameMode.SANDBOX);
                    gameStack.pop();
                }
            });
            dialog.distributeButtons();
            this.sandboxDialog = dialog;
        }
        this.sandboxDialog.setVisible(true);
    }

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public String getTag() {
        return "GeneralCityInfo";
    }

    public String toString() {
        return "General";
    }

    public static void buildCityInfos(List<String> list, Translator translator, LightCityInfo lightCityInfo) {
        if (lightCityInfo == null) {
            return;
        }
        GameMode gameMode = lightCityInfo.getGameMode();
        list.add(StringFormatter.format(translator.translate(1120), lightCityInfo.getName()));
        String str = translator.translate(1182) + " " + translator.translate(gameMode.getLocalizationId());
        if (lightCityInfo.isUber()) {
            str = str + " " + translator.translate(1219);
        }
        list.add(str);
        if (lightCityInfo.getSeed() != null && lightCityInfo.getTradingRelations().isEmpty()) {
            list.add(StringFormatter.format(translator.translate(3139), lightCityInfo.getSeed()));
        }
        list.add(TimeSpan.localize(lightCityInfo.getCityInfo().playtimeSeconds * 1000));
    }
}
