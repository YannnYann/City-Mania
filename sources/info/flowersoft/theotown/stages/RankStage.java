package info.flowersoft.theotown.stages;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultRequirement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RankDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.draft.requirement.FeatureRequirement;
import info.flowersoft.theotown.draft.requirement.RankRequirement;
import info.flowersoft.theotown.draft.requirement.SingleRequirement;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundPlayer;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.cityinfo.RankCityInfo;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.PlayVideoAdButton;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.ui.TaskCompletionDialogShower;
import info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft;
import info.flowersoft.theotown.ui.selectable.SelectableRoadDraft;
import info.flowersoft.theotown.ui.selectable.SelectableUpgrade;
import info.flowersoft.theotown.ui.selectable.SelectableZone;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RankStage extends BaseStage {
    public static long lastShowRateMS;
    public int award;
    public int awardDiamonds;
    public final City city;
    public final boolean newlyReached;
    public final List<RankDraft> ranks;

    public static /* synthetic */ void $r8$lambda$WedN47XdcqeRcafPHrgj_SsMJdM() {
    }

    public RankStage(Stapel2DGameContext stapel2DGameContext, City city) {
        super(stapel2DGameContext);
        this.ranks = new ArrayList();
        this.city = city;
        DefaultDate defaultDate = (DefaultDate) city.getComponent(1);
        DefaultRequirement defaultRequirement = (DefaultRequirement) city.getComponent(11);
        RankDraft rank = city.getRank();
        RankDraft newRank = defaultRequirement.getNewRank();
        city.setRank(newRank, defaultDate.getAbsoluteDay());
        this.award = 0;
        this.awardDiamonds = 0;
        GameHandler gameHandler = GameHandler.getInstance();
        if (!city.isReadonly()) {
            for (int i = newRank.ordinal; i > rank.ordinal; i--) {
                RankDraft rankDraft = Drafts.RANKS.get(i);
                this.award += rankDraft.award.get();
                this.ranks.add(rankDraft);
                String str = "rank:" + city.getId() + ":" + i;
                if (!gameHandler.isEventRedeemed(str) && !TheoTown.PREMIUM) {
                    gameHandler.earnDiamondsEvent(rankDraft.awardDiamonds.get(), str, "new rank " + rankDraft.id + " " + str, false);
                    this.awardDiamonds = this.awardDiamonds + rankDraft.awardDiamonds.get();
                }
            }
        }
        this.newlyReached = true;
        if (this.awardDiamonds > 0) {
            SuccessOverlay.getInstance().addEvent(0, this.awardDiamonds);
        }
        ((DefaultBudget) city.getComponent(0)).earn(this.award, "rank " + newRank.id);
        SuccessOverlay.getInstance().addEvent(1, (double) this.award);
        defaultRequirement.nextDay();
        defaultRequirement.flushUnlocked();
        TheoTown.analytics.logRankUpgrade(newRank);
        if (city.getGameMode().hasInfinityMoney() || city.isReadonly()) {
            return;
        }
        SoundPlayer.getInstance().play(Resources.SOUND_NEWRANK, SoundType.GAME);
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void bind(GameStack gameStack) {
        super.bind(gameStack);
        if (this.city.getGameMode().hasInfinityMoney()) {
            gameStack.pop();
        }
    }

    public RankStage(Stapel2DGameContext stapel2DGameContext, City city, RankDraft rankDraft) {
        super(stapel2DGameContext);
        ArrayList arrayList = new ArrayList();
        this.ranks = arrayList;
        this.city = city;
        arrayList.add(rankDraft);
        this.award = rankDraft.award.get();
        this.awardDiamonds = TheoTown.PREMIUM ? 0 : rankDraft.awardDiamonds.get();
        this.newlyReached = false;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        int i;
        final RankStage rankStage;
        RankStage rankStage2;
        Selectable selectableUpgrade;
        super.enter();
        Translator translator = this.city.getTranslator();
        final RankCityInfo rankCityInfo = new RankCityInfo();
        int i2 = 0;
        Page page = new Page(this.context, this.newlyReached ? translator.translate(3441) : new DraftLocalizer(this.city).getTitle(this.ranks.get(0)), Resources.ICON_RANK, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage.1
            @Override // java.lang.Runnable
            public void run() {
                RankStage.this.getGameStack().pop();
            }
        });
        if (this.newlyReached) {
            RankDraft rank = this.city.getRank();
            new Label(StringFormatter.format(translator.translate(1587), this.city.getName()), 0, 0, 0, 15, page.getContentPanel());
            Label label = new Label(new DraftLocalizer(this.city).getTitle(rank), 0, 15, page.getContentPanel().getClientWidth(), 20, page.getContentPanel()) { // from class: info.flowersoft.theotown.stages.RankStage.2
                @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i3, int i4) {
                    this.skin.engine.setColor(Colors.MARINE_BLUE);
                    this.skin.engine.drawImage(Resources.IMAGE_WORLD, this.x + i3 + this.paddingLeft, this.y + i4 + this.paddingTop, getClientWidth(), getClientHeight(), Resources.FRAME_RECT);
                    this.skin.engine.setColor(Colors.WHITE);
                    super.draw(i3, i4);
                }
            };
            label.setColor(Colors.WHITE);
            label.setAlignment(0.5f, 0.5f);
            label.setFont(this.gui.getSkin().fontBig);
            TaskCompletionDialogShower.showDialog(2462, 1631, translator, this.gui, TaskManager.getInstance().TASK_REACH_RANK);
            i = 35;
        } else {
            i = 0;
        }
        if (!this.city.getGameMode().hasGameLogic() || this.city.getGameMode().hasInfinityMoney()) {
            rankStage = this;
        } else {
            if (this.award > 0) {
                new Label(StringFormatter.format(translator.translate(1922), Localizer.localizeMoney(this.award)), 0, i, page.getContentPanel().getClientWidth(), 15, page.getContentPanel()).setAlignment(0.5f, 0.5f);
            }
            if (this.awardDiamonds > 0) {
                rankStage2 = this;
                new Label("+" + this.awardDiamonds, 0, i, page.getContentPanel().getClientWidth(), 15, page.getContentPanel()) { // from class: info.flowersoft.theotown.stages.RankStage.3
                    @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i3, int i4) {
                        super.draw(i3, i4);
                        Engine engine = this.skin.engine;
                        engine.setColor(Colors.WHITE);
                        engine.drawImage(Resources.IMAGE_WORLD, this.x + i3, this.y + i4, Math.round(this.width - Resources.IMAGE_WORLD.getWidth(Resources.ICON_DIAMOND_SMALL)), this.height, this.alignmentX, this.alignmentY, Resources.ICON_DIAMOND_SMALL);
                    }
                }.setAlignment(1.0f, 0.5f);
            } else {
                rankStage2 = this;
            }
            ArrayList arrayList = new ArrayList();
            for (RankDraft rankDraft : rankStage2.ranks) {
                for (Draft draft : Drafts.ALL.values()) {
                    if (draft.hasRequirement() && !draft.hidden) {
                        List<SingleRequirement> singleRequirements = draft.getRequirement().getSingleRequirements();
                        int i3 = i2;
                        while (true) {
                            if (i3 < singleRequirements.size()) {
                                SingleRequirement singleRequirement = singleRequirements.get(i3);
                                if (!(singleRequirement instanceof FeatureRequirement) || singleRequirement.isFulfilled(rankStage2.city)) {
                                    if ((singleRequirement instanceof RankRequirement) && ((RankRequirement) singleRequirement).getRank() == rankDraft) {
                                        if (draft instanceof BuildingDraft) {
                                            selectableUpgrade = new SelectableBuildingDraft(rankStage2.city, (BuildingDraft) draft);
                                        } else if (draft instanceof RoadDraft) {
                                            selectableUpgrade = new SelectableRoadDraft(rankStage2.city, (RoadDraft) draft);
                                        } else if (draft instanceof ZoneDraft) {
                                            selectableUpgrade = new SelectableZone(rankStage2.city, (ZoneDraft) draft);
                                        } else {
                                            selectableUpgrade = draft instanceof UpgradeDraft ? new SelectableUpgrade(rankStage2.city, (UpgradeDraft) draft, null) : null;
                                        }
                                        if (selectableUpgrade != null) {
                                            selectableUpgrade.setOnSelect(new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage.4
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    while (!RankStage.this.getGameStack().isEmpty() && !(RankStage.this.getGameStack().peek() instanceof CityStage)) {
                                                        RankStage.this.getGameStack().pop();
                                                    }
                                                }
                                            });
                                            arrayList.add(selectableUpgrade);
                                            break;
                                        }
                                    }
                                    i3++;
                                }
                            }
                        }
                    }
                    i2 = 0;
                }
            }
            if (arrayList.isEmpty()) {
                rankStage = rankStage2;
            } else {
                new Label(translator.translate(2200), 0, i, 0, 15, page.getContentPanel());
                int i4 = i + 15;
                rankStage = this;
                new Selector(null, new Panel(0, i4, page.getContentPanel().getClientWidth(), page.getContentPanel().getClientHeight() - i4, page.getContentPanel()) { // from class: info.flowersoft.theotown.stages.RankStage.5
                    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i5, int i6) {
                        drawChildren(i5, i6);
                    }
                }, arrayList, true);
            }
        }
        final boolean z = (!rankStage.newlyReached || rankStage.city.isReadonly() || rankStage.award <= 0 || rankStage.city.getGameMode().hasInfinityMoney() || TheoTown.PREMIUM) ? false : true;
        if (z) {
            PlayVideoAdButton playVideoAdButton = new PlayVideoAdButton("3X", page.getControlLine().getThirdPart(), new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    RankStage.$r8$lambda$WedN47XdcqeRcafPHrgj_SsMJdM();
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    RankStage.m2265$r8$lambda$mzDvsyMWuRJpHfXgHocVESupgE(this.f$0);
                }
            }, rankStage.getGameStack(), "3x rank", rankStage.context);
            playVideoAdButton.setHeight(playVideoAdButton.getParent().getClientHeight());
        }
        GoldButton goldButtonAddButton = page.addButton(Resources.ICON_OK, translator.translate(2447), false, true, new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage.6
            @Override // java.lang.Runnable
            public void run() {
                RankStage.this.getGameStack().pop();
                RankDraft rank2 = RankStage.this.city.getRank();
                if (!z || rank2 == null) {
                    return;
                }
                RankStage.this.showRateDialog(rank2.ordinal);
            }
        });
        goldButtonAddButton.setGolden(!z);
        goldButtonAddButton.addSensitiveKey(66);
        if (rankStage.newlyReached) {
            page.addButton(rankCityInfo.getIcon(), translator.translate(rankCityInfo.getTitleId(rankStage.city)), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.RankStage.7
                @Override // java.lang.Runnable
                public void run() {
                    RankStage.this.getGameStack().pop();
                    CityInfoStage cityInfoStage = new CityInfoStage(RankStage.this.city, RankStage.this.context);
                    cityInfoStage.selectCityInfo(rankCityInfo);
                    cityInfoStage.setOwnBackgroundCity(RankStage.this.ownBackgroundCity);
                    RankStage.this.getGameStack().push(cityInfoStage);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$mzDv-syMWuRJpHfXgHocVESupgE, reason: not valid java name */
    public static /* synthetic */ void m2265$r8$lambda$mzDvsyMWuRJpHfXgHocVESupgE(RankStage rankStage) {
        if (rankStage.awardDiamonds > 0) {
            GameHandler.getInstance().earnDiamonds(rankStage.awardDiamonds * 2, false, "3X rank:" + rankStage.city.getId() + ":" + rankStage.city.getRank().id);
            SuccessOverlay.getInstance().addEvent(0, (double) (rankStage.awardDiamonds * 3));
        }
        ((DefaultBudget) rankStage.city.getComponent(0)).earn(rankStage.award * 2, "rank 3X " + rankStage.city.getRank());
        SuccessOverlay.getInstance().addEvent(1, (double) (rankStage.award * 3));
        rankStage.getGameStack().pop();
    }

    public final void showRateDialog(int i) {
        long jMillis = TimeUtils.millis();
        JSONObject specificConfig = Resources.getSpecificConfig("beginner");
        int iOptInt = specificConfig.optInt("rate light play min", 5) * 60;
        long jOptInt = ((long) (specificConfig.optInt("rate light delay min", 5) * 60)) * 1000;
        int iOptInt2 = specificConfig.optInt("rate light min rank", 5);
        if (jMillis - lastShowRateMS < jOptInt || Settings.playTimeSeconds < iOptInt || i < iOptInt2) {
            return;
        }
        lastShowRateMS = jMillis;
        TheoTown.runtimeFeatures.rateGameLight();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "RankStage";
    }
}
