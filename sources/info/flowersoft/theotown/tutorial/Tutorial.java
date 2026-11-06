package info.flowersoft.theotown.tutorial;

import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.components.BuildMask;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.components.NotificationAction;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.DefaultPeople;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityInfoStage;
import info.flowersoft.theotown.tools.BuildingTool;
import info.flowersoft.theotown.tools.PipeTool;
import info.flowersoft.theotown.tools.RemoveTool;
import info.flowersoft.theotown.tools.RoadTool;
import info.flowersoft.theotown.tools.TwoModesTool;
import info.flowersoft.theotown.tools.WireTool;
import info.flowersoft.theotown.tools.ZoneTool;
import info.flowersoft.theotown.tutorial.TutorialBuildMask;
import info.flowersoft.theotown.ui.NotificationBar;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class Tutorial {
    public static Tutorial instance = null;
    public static int nextAllocId = 1;
    public static Tool tmpTool;
    public boolean active;
    public Stage activeStage;
    public City city;
    public Stapel2DGameContext context;
    public int currentIcon;
    public int currentShowMask;
    public int currentStage;
    public DefaultDate date;
    public boolean focusActive;
    public long focusLastMS;
    public float focusScale;
    public long focusStartMS;
    public float focusStartScale;
    public float focusStartX;
    public float focusStartY;
    public float focusX;
    public float focusY;
    public Gadget gadget;
    public GameStack gameStack;
    public Master gui;
    public long lastStageChange;
    public DefaultManagement management;
    public NotificationBar notificationBar;
    public BuildMask originalBuildMask;
    public Gadget parent;
    public DefaultPeople people;
    public DefaultPower power;
    public final Runnable runNextStage;
    public final NotificationAction runNextStageAction;
    public final List<Stage> stages;
    public TutorialBuildMask tutorialBuildMask;
    public Building user_building;
    public float user_x;
    public DefaultWater water;
    public static final int FLAG_DATE = alloc();
    public static final int FLAG_NAME = alloc();
    public static final int FLAG_RATING = alloc();
    public static final int FLAG_MONEY = alloc();
    public static final int FLAG_DIAMONDS = alloc();
    public static final int FLAG_MAP = alloc();
    public static final int FLAG_REGION = alloc();
    public static final int FLAG_RANK = alloc();
    public static final int FLAG_PRESENT = alloc();
    public static final int FLAG_REMOVE = alloc();
    public static final int FLAG_VIEW = alloc();
    public static final int FLAG_ALERT = alloc();
    public static final int FLAG_DEMAND = alloc();
    public static final int FLAG_BUILD = alloc();
    public static final int FLAG_NOTIFICATION = alloc();
    public static final int FLAG_CATASTROPHE = alloc();
    public static final int FLAG_IDLE_CASH = alloc();
    public static final int FLAG_FEATURES = alloc();
    public static final int FLAG_OFFER = alloc();
    public static final int FLAG_SPECIAL_OFFER = alloc();
    public static final int FLAG_TASK = alloc();
    public static final int FLAG_SHORT_BUILD_TIME = alloc();
    public static final int FLAG_HALF_TUNNEL_PRICE = alloc();
    public static final int FLAG_PLUGIN_STORE = alloc();
    public static int visibleMask = -1;
    public static int markMask = 0;
    public static String lastText = null;

    public static int alloc() {
        int i = nextAllocId;
        if (i == 0) {
            throw new IllegalStateException("Out of ids!");
        }
        nextAllocId = i << 1;
        return i;
    }

    public static boolean isVisible(int i) {
        return (i & visibleMask) != 0;
    }

    public static boolean isMarked(int i) {
        return (i & markMask) != 0;
    }

    public static void mark(int i) {
        visibleMask |= i;
        markMask = i | markMask;
    }

    public static void showAll() {
        visibleMask = -1;
    }

    public static void removeMarks() {
        markMask = 0;
    }

    public final void build() {
        final TranslationManager translator = this.context.getTranslator();
        this.currentShowMask = FLAG_REGION;
        this.currentIcon = Resources.PEOPLE_GIRL;
        addStage("$start00", null, null, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.2
            @Override // java.lang.Runnable
            public void run() {
                ((DefaultWeather) Tutorial.this.city.getComponent(12)).setTime(0);
                Settings.showMinimap = false;
                Settings.roadAutoJoin = true;
                Tutorial.this.nextStage();
            }
        }, null, null);
        int i = this.currentShowMask;
        int i2 = FLAG_BUILD;
        this.currentShowMask = i | i2;
        addZoneStage("$build01", translator.translate(921), Arrays.asList("cmd$cat_zone00", "cmdSelectableSelect$zoneresidential"), 41, 21, 6, 4, Zones.getInstance().RESIDENTIAL0, 2.0f);
        addLineStage("$build02", translator.translate(920), Arrays.asList("cmd$cat_road00", "cmdSelectableSelect$road00", "cmdBuild", "selectable:$road00"), RoadTool.class, IntList.asList(47, 20, 40, 20, 40, 20, 40, 25, 40, 25, 47, 25), TutorialBuildMask.getRoadCondition());
        this.currentShowMask &= ~i2;
        addStage("$build03", translator.translate(919), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$3YHgu9LiUF2VLQwpHEV4IMVRPDQ(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$Vb4295Hry85U0MoDSNN0gytR1XM(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$rhqWAq7hLYIr5UrjfA58gWTsJbM(this.f$0);
            }
        }, null);
        addStage("$build030", translator.translate(34), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$5K7ipZtr9nA4Re6SpYjnBQWCVoU(this.f$0);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction)).saveable = false;
        this.currentShowMask |= i2;
        addBuildingStage("$build04", translator.translate(918), Arrays.asList("cmd$cat_energy00", "cmdSelectableSelect$solarpanels00"), IntList.asList(44, 48), (BuildingDraft) Drafts.ALL.get("$solarpanels00"), true, 2.0f);
        addLineStage("$build05", translator.translate(916), Arrays.asList("cmd$cat_energy00", "cmdSelectableSelect$wire00", "cmdBuild", "selectable:$wire00"), WireTool.class, IntList.asList(45, 46, 45, 27), new TutorialBuildMask.TileCondition() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda15
            @Override // info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition
            public final boolean isFulfilled(Tiles tiles, int i3, int i4) {
                return Tutorial.$r8$lambda$vnz3F1d8uwNdqb3vzz8ivOQXvgs(this.f$0, tiles, i3, i4);
            }
        });
        this.currentShowMask &= ~i2;
        this.currentIcon = Resources.PEOPLE_GIRL;
        addStage("$build07", translator.translate(931), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.3
            @Override // java.lang.Runnable
            public void run() {
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.addButton("cmdOk");
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
                if (Tutorial.this.user_building != null) {
                    Tutorial.this.focus(r0.user_building.getX(), Tutorial.this.user_building.getY(), 2.0f);
                }
            }
        }, null, null, Collections.singletonList(this.runNextStageAction)).saveable = false;
        this.currentShowMask |= i2;
        addBuildingStage("$build08", translator.translate(929), Arrays.asList("cmd$cat_water00", "cmdSelectableSelect$watertower00"), IntList.asList(46, 26), (BuildingDraft) Drafts.ALL.get("$watertower00"), true, 2.0f);
        this.currentShowMask &= ~i2;
        addStage("$build09", translator.translate(928), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.m2356$r8$lambda$I25SXWl6ZAe5r3ansbiCV9O2Is(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$C2Hb8RDqasWxaZG4QeS3r2uZe4Y(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$eB9NHlwO3vYXjeZNqNWi0I0Lk40(this.f$0);
            }
        }, null).saveable = false;
        this.currentShowMask |= i2;
        addLineStage("$build10", translator.translate(950), Arrays.asList("cmd$cat_water00", "cmdSelectableSelect$pipe00", "cmdBuild", "selectable:$pipe00"), PipeTool.class, IntList.asList(41, 23, 50, 23, 46, 20, 46, 54), new TutorialBuildMask.TileCondition() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda19
            @Override // info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition
            public final boolean isFulfilled(Tiles tiles, int i3, int i4) {
                return Tutorial.$r8$lambda$Io_NYqDIZHkrEegB4fQxoRc4cUw(this.f$0, tiles, i3, i4);
            }
        });
        this.currentShowMask &= ~i2;
        this.currentIcon = Resources.PEOPLE_GIRL;
        addStage("$build11", translator.translate(948), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$1RYc3yBcG6vZfrGhCFUPfZ3fKYg(this.f$0);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction));
        this.currentIcon = Resources.PEOPLE_OFFICEWORKER;
        addStage("$build110", translator.translate(876), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$u1Aw7P0RfF9G3rIta6MyZuJmPWw(this.f$0);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction));
        this.currentIcon = Resources.PEOPLE_GIRL;
        this.currentShowMask |= FLAG_DEMAND;
        addStage("$build12", translator.translate(946), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.4
            @Override // java.lang.Runnable
            public void run() {
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.addButton("cmdRCI", true, Tutorial.this.runNextStage);
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
            }
        }, null, null, null);
        addStage("$build13", translator.translate(944), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.5
            @Override // java.lang.Runnable
            public void run() {
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.addButton("cmdOk");
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction)).saveable = false;
        addStage("$build14", translator.translate(942), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.6
            @Override // java.lang.Runnable
            public void run() {
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.addButton("cmdOk");
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction)).saveable = false;
        addStage("$build15", translator.translate(941), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.7
            @Override // java.lang.Runnable
            public void run() {
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.addButton("cmdClose", true, Tutorial.this.runNextStage);
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
            }
        }, null, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.8
            @Override // java.lang.Runnable
            public void run() {
                Tutorial.this.gui.setFilter(null);
            }
        }, null).saveable = false;
        this.currentIcon = Resources.PEOPLE_GIRL;
        this.currentShowMask |= i2;
        addZoneStage("$build16", translator.translate(939), Arrays.asList("cmd$cat_zone00", "cmdSelectableSelect$zonecommercial"), 48, 21, 4, 4, Zones.getInstance().COMMERCIAL0, 2.0f);
        this.currentShowMask = (this.currentShowMask & (~i2)) | i2;
        addZoneStage("$build17", translator.translate(956), Arrays.asList("cmd$cat_zone00", "cmdSelectableSelect$zoneindustrial"), 48, 48, 4, 4, Zones.getInstance().INDUSTRIAL0, 2.0f);
        int i3 = (this.currentShowMask & (~i2)) | FLAG_MAP | FLAG_NAME;
        this.currentShowMask = i3;
        this.currentIcon = Resources.PEOPLE_GIRL;
        this.currentShowMask = i3 | i2;
        addBuildingStage("$build32", translator.translate(1095), Arrays.asList("cmd$cat_park00", "cmdSelectableSelect$park01"), IntList.asList(48, 19), (BuildingDraft) Drafts.ALL.get("$park01"), true, 2.0f);
        this.currentShowMask |= FLAG_REMOVE;
        addRemoveStage("$build33", translator.translate(1094), Arrays.asList("cmdRemoveCollector", "cmdSelectableSelect$Remove$All"), IntList.asList(48, 19), RemoveTool.class, new TutorialBuildMask.TileCondition() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition
            public final boolean isFulfilled(Tiles tiles, int i4, int i5) {
                return Tutorial.$r8$lambda$5l0IOqPSc4s71tH4idBqGLCqP6M(this.f$0, tiles, i4, i5);
            }
        });
        this.currentShowMask |= FLAG_RANK;
        addStage("$build34", translator.translate(1093), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$MLcg9vAqDZ50AKYH9b4YIJqVOCA(this.f$0);
            }
        }, null, null, null);
        addStage("$build35", translator.translate(1092), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$eYyPRVv4JN3oGNGVvUV6VedarpI(this.f$0);
            }
        }, null, null, null);
        this.currentIcon = Resources.PEOPLE_FIREFIGHTER0;
        this.currentShowMask |= FLAG_ALERT;
        addStage("$build36", translator.translate(1089), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$R4Dje078GAqYoJ9xdY9V6MWAhrw(this.f$0);
            }
        }, null, null, null);
        this.currentIcon = Resources.PEOPLE_GIRL;
        this.currentShowMask |= FLAG_VIEW;
        addStage("$build37", translator.translate(1088), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$lVeBiSPO4VWLEjyXNE4qamGB_20(this.f$0);
            }
        }, null, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$RHfD_E9GtTY_vkJAUNn8EdqVJHU(this.f$0);
            }
        }, null);
        this.currentShowMask |= FLAG_PRESENT | FLAG_DIAMONDS;
        addStage("$present00", translator.translate(422), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.m2360$r8$lambda$f1bpGKpOWRhjvj_FX7UhPBWpRE(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.9
            @Override // java.lang.Runnable
            public void run() {
                if (GameHandler.getInstance().getRewardManager().isTimeForReward()) {
                    return;
                }
                Tutorial.this.runNextStage.run();
            }
        }, null, null);
        addStage("$present01", translator.translate(418), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.inCaseOfCityInfo(new String[0]);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction));
        addStage("$plugins00", translator.translate(3121), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.m2359$r8$lambda$TjDmtImYAVqLbg5bX7FtNop_M0(this.f$0);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction));
        addStage("$end01", translator.translate(880), new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$vrLRuuJGc63Pdxze7YwKcdwjTMA(this.f$0);
            }
        }, null, null, Collections.singletonList(this.runNextStageAction));
    }

    public static /* synthetic */ void $r8$lambda$3YHgu9LiUF2VLQwpHEV4IMVRPDQ(Tutorial tutorial) {
        tutorial.date.setSpeed(1);
        tutorial.power.getWorker().setAdaptionRate(0.1f);
    }

    public static /* synthetic */ void $r8$lambda$Vb4295Hry85U0MoDSNN0gytR1XM(Tutorial tutorial) {
        Building building = tutorial.management.getBuildingSurvey().properties[0].getBuilding();
        tutorial.user_building = building;
        if (building != null) {
            tutorial.nextStage();
        }
    }

    public static /* synthetic */ void $r8$lambda$rhqWAq7hLYIr5UrjfA58gWTsJbM(Tutorial tutorial) {
        tutorial.date.setSpeed(2);
        tutorial.power.getWorker().setDefaultAdaptionRate();
    }

    public static /* synthetic */ void $r8$lambda$5K7ipZtr9nA4Re6SpYjnBQWCVoU(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdOk");
        tutorial.gui.setFilter(tutorialButtonFilter);
        if (tutorial.user_building != null) {
            tutorial.focus(r0.getX(), tutorial.user_building.getY(), 2.0f);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$vnz3F1d8uwNdqb3vzz8ivOQXvgs(Tutorial tutorial, Tiles tiles, int i, int i2) {
        City city = tutorial.city;
        return city != null && city.getTiles().hasWire(i, i2);
    }

    /* JADX INFO: renamed from: $r8$lambda$I25SXWl6ZAe5r3ansbiCV9O-2Is, reason: not valid java name */
    public static /* synthetic */ void m2356$r8$lambda$I25SXWl6ZAe5r3ansbiCV9O2Is(Tutorial tutorial) {
        tutorial.date.setSpeed(1);
        tutorial.user_x = GameHandler.getInstance().getDiamonds();
    }

    public static /* synthetic */ void $r8$lambda$C2Hb8RDqasWxaZG4QeS3r2uZe4Y(Tutorial tutorial) {
        Building building = tutorial.user_building;
        if (building == null || !building.inConstruction()) {
            tutorial.nextStage();
        }
    }

    public static /* synthetic */ void $r8$lambda$eB9NHlwO3vYXjeZNqNWi0I0Lk40(Tutorial tutorial) {
        tutorial.getClass();
        GameHandler gameHandler = GameHandler.getInstance();
        int iRound = Math.round(tutorial.user_x) - gameHandler.getDiamonds();
        if (iRound > 0) {
            gameHandler.earnDiamonds(iRound, true, "tutorial present");
        }
    }

    public static /* synthetic */ boolean $r8$lambda$Io_NYqDIZHkrEegB4fQxoRc4cUw(Tutorial tutorial, Tiles tiles, int i, int i2) {
        City city = tutorial.city;
        return (city == null || city.getTiles().getPipe(i, i2) == null) ? false : true;
    }

    public static /* synthetic */ void $r8$lambda$1RYc3yBcG6vZfrGhCFUPfZ3fKYg(Tutorial tutorial) {
        tutorial.focus(45.0f, 28.0f, 0.5f);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdOk");
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$u1Aw7P0RfF9G3rIta6MyZuJmPWw(Tutorial tutorial) {
        tutorial.focus(43.0f, 24.0f, 2.0f);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdOk");
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ boolean $r8$lambda$5l0IOqPSc4s71tH4idBqGLCqP6M(Tutorial tutorial, Tiles tiles, int i, int i2) {
        City city = tutorial.city;
        return city != null && city.getTiles().getBuilding(i, i2) == null;
    }

    public static /* synthetic */ void $r8$lambda$MLcg9vAqDZ50AKYH9b4YIJqVOCA(Tutorial tutorial) {
        tutorial.getClass();
        mark(FLAG_RANK);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdRank", true, tutorial.runNextStage);
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$eYyPRVv4JN3oGNGVvUV6VedarpI(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdClose", true, tutorial.runNextStage);
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$R4Dje078GAqYoJ9xdY9V6MWAhrw(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdAlertCollector", true, tutorial.runNextStage);
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$lVeBiSPO4VWLEjyXNE4qamGB_20(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdViewMarkerCollector", true, tutorial.runNextStage);
        tutorialButtonFilter.addButton("cmdAlertCollector", false);
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$RHfD_E9GtTY_vkJAUNn8EdqVJHU(Tutorial tutorial) {
        City city = tutorial.city;
        city.applyComponent(city.getDefaultTool());
    }

    /* JADX INFO: renamed from: $r8$lambda$f1bp-GKpOWRhjvj_FX7UhPBWpRE, reason: not valid java name */
    public static /* synthetic */ void m2360$r8$lambda$f1bpGKpOWRhjvj_FX7UhPBWpRE(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdViewMarkerCollector", false);
        tutorialButtonFilter.addButton("cmdAlertCollector", false);
        tutorialButtonFilter.addButton("cmdPresent", true, tutorial.runNextStage);
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    /* JADX INFO: renamed from: $r8$lambda$TjDmtImYAVqLbg5bX7F-tNop_M0, reason: not valid java name */
    public static /* synthetic */ void m2359$r8$lambda$TjDmtImYAVqLbg5bX7FtNop_M0(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdOk");
        tutorial.gui.setFilter(tutorialButtonFilter);
    }

    public static /* synthetic */ void $r8$lambda$vrLRuuJGc63Pdxze7YwKcdwjTMA(Tutorial tutorial) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdOk");
        tutorial.gui.setFilter(tutorialButtonFilter);
        if (tutorial.date.getSpeed() == 2) {
            tutorial.date.setSpeed(0);
        }
    }

    public final void inCaseOfCityInfo(String... strArr) {
        if (this.gameStack.peek() instanceof CityInfoStage) {
            TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
            for (String str : strArr) {
                tutorialButtonFilter.addButton(str);
            }
            tutorialButtonFilter.addButton("cmdClose");
            tutorialButtonFilter.addButton("cmdOk");
            this.gui.setFilter(tutorialButtonFilter);
        }
    }

    public final void focus(float f, float f2, float f3) {
        this.focusX = f;
        this.focusY = f2;
        this.focusScale = f3;
        this.focusStartX = this.city.getViewX();
        this.focusStartY = this.city.getViewY();
        this.focusStartScale = this.city.getScale();
        this.focusActive = true;
        long jMillis = TimeUtils.millis();
        this.focusStartMS = jMillis;
        this.focusLastMS = jMillis;
    }

    public final void updateFocus() {
        if (this.focusActive) {
            long jMillis = TimeUtils.millis();
            float fMin = Math.min((jMillis - this.focusStartMS) / 3000.0f, 1.0f);
            float fApply = Interpolation.fade.apply(fMin);
            this.city.focus(MathUtils.lerp(this.focusStartX, this.focusX, fApply), MathUtils.lerp(this.focusStartY, this.focusY, fApply), MathUtils.lerp(this.focusStartScale, this.focusScale, fApply));
            if (fMin >= 1.0f) {
                this.focusActive = false;
            }
            this.focusLastMS = jMillis;
        }
    }

    public Tutorial() {
        Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.1
            @Override // java.lang.Runnable
            public void run() {
                Tutorial.this.nextStage();
            }
        };
        this.runNextStage = runnable;
        this.runNextStageAction = new NotificationAction(Resources.ICON_OK, runnable, "cmdOk");
        this.stages = new ArrayList();
        this.currentStage = 0;
        this.focusActive = false;
    }

    public boolean isActive() {
        return this.active;
    }

    public void skip() {
        String str;
        if (this.active) {
            TheoTown.notifications.remove("tutorial reminder");
            Analytics analytics = TheoTown.analytics;
            Stage stage = this.activeStage;
            if (stage != null) {
                str = stage.id;
            } else {
                str = "??? (" + this.currentStage + ")";
            }
            analytics.logEvent("Tutorial", "Skip", str);
            setStageDown();
            this.active = false;
            setStageUp();
        }
    }

    public final void setStageDown() {
        if (this.activeStage != null) {
            this.city.applyComponent(this.originalBuildMask);
            NotificationBar notificationBar = this.notificationBar;
            if (notificationBar != null) {
                notificationBar.free();
                this.notificationBar = null;
            }
            Runnable runnable = this.activeStage.setDown;
            if (runnable != null) {
                runnable.run();
            }
            this.activeStage = null;
            this.parent.removeChild(this.gadget);
            this.gadget.free();
            showAll();
            removeMarks();
            this.gui.setFilter(null);
        }
    }

    public final void setStageUp() {
        setStageDown();
        while (this.currentStage < this.stages.size() && !this.stages.get(this.currentStage).isActive()) {
            this.currentStage++;
        }
        if (this.currentStage >= this.stages.size() || !this.active) {
            if (this.active) {
                TheoTown.analytics.logEvent("Tutorial", "Completed", "");
                TheoTown.gamesService.unlockAchievement("tutorial_finish");
            }
            TheoTown.notifications.remove("tutorial reminder");
            this.active = false;
            DefaultDate defaultDate = this.date;
            if (defaultDate != null) {
                defaultDate.setSpeed(0);
            }
            City city = this.city;
            if (city != null) {
                city.getCityInfo().tutorialStage = null;
            }
            this.city = null;
            this.gui = null;
            this.parent = null;
            this.activeStage = null;
            this.gameStack = null;
            this.context = null;
            return;
        }
        TranslationManager translator = this.context.getTranslator();
        TheoTown.notifications.add("tutorial reminder", translator.translate(836), translator.translate(3308), 60000 * ((long) Resources.CONFIG.optJSONObject("notification").optInt("tutorial reminder")), 36000000L, 5);
        this.tutorialBuildMask.clear();
        DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
        if (defaultBudget.getEstate() < 10000.0d) {
            defaultBudget.earn(10000.0d - defaultBudget.getEstate(), "tutorial" + this.currentStage);
        }
        this.city.applyComponent(this.tutorialBuildMask);
        Stage stage = this.stages.get(this.currentStage);
        this.activeStage = stage;
        if (stage.saveable) {
            this.city.getCityInfo().tutorialStage = this.activeStage.id;
        }
        visibleMask = this.activeStage.showMask;
        this.lastStageChange = TimeUtils.millis();
        this.gui.setFilter(null);
        Runnable runnable = this.activeStage.setUp;
        if (runnable != null) {
            runnable.run();
            TheoTown.analytics.logEvent("Tutorial", "Stage", this.activeStage.id);
        }
        buildNotification();
        this.gadget = new Gadget(0, 0, 0, 0, this.parent) { // from class: info.flowersoft.theotown.tutorial.Tutorial.10
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                Tutorial.this.updateFocus();
                if (Tutorial.this.activeStage == null || Tutorial.this.activeStage.update == null) {
                    return;
                }
                Tutorial.this.activeStage.update.run();
            }
        };
    }

    public final void buildNotification() {
        if (this.activeStage.text != null) {
            Gadget gadget = this.parent;
            NotificationBar notificationBar = new NotificationBar(gadget, gadget.getWidth() < 310);
            this.notificationBar = notificationBar;
            notificationBar.setIcon(this.activeStage.icon);
            this.notificationBar.setText(this.activeStage.text);
            this.notificationBar.setActions(this.activeStage.actions);
            this.notificationBar.build(!Objects.equals(lastText, this.activeStage.text));
        }
        lastText = this.activeStage.text;
    }

    public void setCity(City city) {
        int i = 0;
        boolean z = city.getCityInfo().tutorialStage != null;
        this.active = z;
        if (z) {
            this.city = city;
            this.date = (DefaultDate) city.getComponent(1);
            this.people = (DefaultPeople) city.getComponent(9);
            this.management = (DefaultManagement) city.getComponent(3);
            this.power = (DefaultPower) city.getComponent(5);
            this.water = (DefaultWater) city.getComponent(8);
            this.originalBuildMask = (BuildMask) city.getComponent(14);
            if (this.tutorialBuildMask == null) {
                this.tutorialBuildMask = new TutorialBuildMask();
            }
            this.currentStage = this.stages.size();
            while (true) {
                if (i >= this.stages.size()) {
                    break;
                }
                if (this.stages.get(i).id.equals(city.getCityInfo().tutorialStage)) {
                    this.currentStage = i;
                    break;
                }
                i++;
            }
            if (this.currentStage == 0) {
                TheoTown.analytics.logEvent("Tutorial", "Begin", "");
            }
        }
    }

    public void setContext(Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        this.context = stapel2DGameContext;
        this.gameStack = gameStack;
        if (this.stages.isEmpty()) {
            build();
        }
    }

    public void setGUI(Master master, Gadget gadget) {
        if (!(master == this.gui && gadget == this.parent) && this.active) {
            setStageDown();
            this.gui = master;
            this.parent = gadget;
            setStageUp();
        }
    }

    public final void nextStage() {
        setStageDown();
        this.currentStage++;
        setStageUp();
    }

    public static Tutorial getInstance() {
        if (instance == null) {
            instance = new Tutorial();
        }
        return instance;
    }

    public final void addZoneStage(String str, String str2, final List<String> list, final int i, final int i2, final int i3, final int i4, final ZoneDraft zoneDraft, final float f) {
        addStage(str, str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.11
            @Override // java.lang.Runnable
            public void run() {
                Tutorial.this.focus(i + (i3 / 2), i2 + (i4 / 2), f);
                Settings.autoRoadForZones = false;
                Tutorial.this.date.setSpeed(2);
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                for (int i5 = 0; i5 < list.size(); i5++) {
                    tutorialButtonFilter.addButton((String) list.get(i5));
                }
                tutorialButtonFilter.addButton("cmdBuild");
                tutorialButtonFilter.addButton("selectable:" + zoneDraft.id);
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
                Tutorial.this.inCaseOfCityInfo(new String[0]);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.12
            @Override // java.lang.Runnable
            public void run() {
                if (Tutorial.this.city.getComponent(13) instanceof ZoneTool) {
                    Tool unused = Tutorial.tmpTool = (Tool) Tutorial.this.city.getComponent(13);
                    if (((ZoneTool) Tutorial.tmpTool).getZone() == zoneDraft) {
                        Tutorial.this.nextStage();
                    }
                }
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.13
            @Override // java.lang.Runnable
            public void run() {
                Settings.autoRoadForZones = true;
            }
        }, null);
        addStage(str + "_0", str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.14
            @Override // java.lang.Runnable
            public void run() {
                Tutorial.this.tutorialBuildMask.addTiles(i, i2, i3, i4);
                Settings.autoRoadForZones = false;
                Tutorial.this.tutorialBuildMask.setCondition(TutorialBuildMask.getZoneCondition(zoneDraft), Tutorial.this.runNextStage);
                Tutorial.this.date.setSpeed(2);
                TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
                tutorialButtonFilter.removeButton("cmdCloseTool");
                Tutorial.this.gui.setFilter(tutorialButtonFilter);
                Tutorial.this.inCaseOfCityInfo(new String[0]);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.15
            @Override // java.lang.Runnable
            public void run() {
                if (((Tool) Tutorial.this.city.getComponent(13)) != Tutorial.tmpTool) {
                    Tutorial.this.city.applyComponent(Tutorial.tmpTool);
                }
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.16
            @Override // java.lang.Runnable
            public void run() {
                Settings.autoRoadForZones = true;
            }
        }, null).saveable = false;
    }

    public final void addRemoveStage(String str, String str2, final List<String> list, final IntList intList, final Class<? extends Tool> cls, final TutorialBuildMask.TileCondition tileCondition) {
        addStage(str, str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$neSrdkLiRO5TLg6vvGF25SFd3j8(this.f$0, intList, list);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.m2355$r8$lambda$B9afzinETLCN4kv8VUdpU8XC1A(this.f$0, cls);
            }
        }, null, null);
        addStage(str + "_0", str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$OatcQEVBWXiT919_3NCnuDum42I(this.f$0, intList, tileCondition);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$88kD_B4tXk5yPTtGUiALnryyMqY(this.f$0);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$3zCCBldjyGuxhNwlvC7B07r4aMs(this.f$0);
            }
        }, null).saveable = false;
    }

    public static /* synthetic */ void $r8$lambda$neSrdkLiRO5TLg6vvGF25SFd3j8(Tutorial tutorial, IntList intList, List list) {
        tutorial.getClass();
        tutorial.focus(intList.get(0), intList.get(1), 2.0f);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        for (int i = 0; i < list.size(); i++) {
            tutorialButtonFilter.addButton((String) list.get(i));
        }
        tutorial.gui.setFilter(tutorialButtonFilter);
        tutorial.inCaseOfCityInfo(new String[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$B9afzinETLCN4kv8VUdpU8-XC1A, reason: not valid java name */
    public static /* synthetic */ void m2355$r8$lambda$B9afzinETLCN4kv8VUdpU8XC1A(Tutorial tutorial, Class cls) {
        Tool tool = (Tool) tutorial.city.getComponent(13);
        tmpTool = tool;
        if (tool.getClass().equals(cls)) {
            tutorial.nextStage();
        }
    }

    public static /* synthetic */ void $r8$lambda$OatcQEVBWXiT919_3NCnuDum42I(Tutorial tutorial, IntList intList, TutorialBuildMask.TileCondition tileCondition) {
        tutorial.getClass();
        for (int i = 0; i < intList.size(); i += 2) {
            tutorial.tutorialBuildMask.addTile(intList.get(i), intList.get(i + 1));
        }
        tutorial.tutorialBuildMask.setCondition(tileCondition, tutorial.runNextStage);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.removeButton("cmdCloseTool");
        tutorial.gui.setFilter(tutorialButtonFilter);
        tutorial.inCaseOfCityInfo(new String[0]);
    }

    public static /* synthetic */ void $r8$lambda$88kD_B4tXk5yPTtGUiALnryyMqY(Tutorial tutorial) {
        CityComponent component = tutorial.city.getComponent(13);
        Tool tool = tmpTool;
        if (component != tool) {
            tutorial.city.applyComponent(tool);
        }
    }

    public static /* synthetic */ void $r8$lambda$3zCCBldjyGuxhNwlvC7B07r4aMs(Tutorial tutorial) {
        City city = tutorial.city;
        city.applyComponent(city.getDefaultTool());
    }

    public final void addBuildingStage(String str, String str2, final List<String> list, final IntList intList, final BuildingDraft buildingDraft, final boolean z, final float f) {
        final int[] iArr = new int[1];
        final Getter getter = new Getter() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda25
            @Override // io.blueflower.stapel2d.util.Getter
            public final Object get() {
                return Tutorial.$r8$lambda$7nWWFnIm4QIjoUZe95FxnR0WKLU(this.f$0, intList, buildingDraft);
            }
        };
        final int i = buildingDraft.buildTime;
        addStage(str, str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$4Ewe1FCwRpO24st5DMb_T3ZryrU(this.f$0, intList, buildingDraft, f, list);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.m2358$r8$lambda$Krj1H0YIEQeA7JAJt7EhAD3HXc(this.f$0, getter);
            }
        }, null, null);
        addStage(str + "_0", str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$W1ivT18K5fPIPlT6c4IIy4_oBP4(this.f$0, intList, buildingDraft, iArr, z);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$UXiLJojYyoE0bIH6MfCBH5frpOs(this.f$0, getter);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$hPAIWkX1w_PpnsOgOndcSsGwYmc(this.f$0, buildingDraft, i);
            }
        }, null).saveable = false;
    }

    public static /* synthetic */ Boolean $r8$lambda$7nWWFnIm4QIjoUZe95FxnR0WKLU(Tutorial tutorial, IntList intList, BuildingDraft buildingDraft) {
        tutorial.getClass();
        for (int i = 0; i < intList.size(); i += 2) {
            Building building = tutorial.city.getTiles().getBuilding(intList.get(i), intList.get(i + 1));
            if (building == null || !buildingDraft.equals(building.getDraft())) {
                return Boolean.FALSE;
            }
        }
        return Boolean.TRUE;
    }

    public static /* synthetic */ void $r8$lambda$4Ewe1FCwRpO24st5DMb_T3ZryrU(Tutorial tutorial, IntList intList, BuildingDraft buildingDraft, float f, List list) {
        tutorial.getClass();
        tutorial.focus(intList.get(0) + (buildingDraft.width / 2), intList.get(1) + (buildingDraft.height / 2), f);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        for (int i = 0; i < list.size(); i++) {
            tutorialButtonFilter.addButton((String) list.get(i));
        }
        tutorialButtonFilter.addButton("cmdBuild");
        tutorialButtonFilter.addButton("selectable:" + buildingDraft.id);
        tutorial.gui.setFilter(tutorialButtonFilter);
        tutorial.inCaseOfCityInfo(new String[0]);
    }

    /* JADX INFO: renamed from: $r8$lambda$Krj1H0YIEQeA7JA-Jt7EhAD3HXc, reason: not valid java name */
    public static /* synthetic */ void m2358$r8$lambda$Krj1H0YIEQeA7JAJt7EhAD3HXc(Tutorial tutorial, Getter getter) {
        Tool tool = (Tool) tutorial.city.getComponent(13);
        tmpTool = tool;
        if ((tool instanceof BuildingTool) || ((Boolean) getter.get()).booleanValue()) {
            tutorial.nextStage();
        }
    }

    public static /* synthetic */ void $r8$lambda$W1ivT18K5fPIPlT6c4IIy4_oBP4(Tutorial tutorial, IntList intList, BuildingDraft buildingDraft, int[] iArr, boolean z) {
        tutorial.getClass();
        for (int i = 0; i < intList.size(); i += 2) {
            tutorial.tutorialBuildMask.addTiles(intList.get(i), intList.get(i + 1), buildingDraft.width, buildingDraft.height);
        }
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.addButton("cmdPrev", false);
        tutorialButtonFilter.addButton("cmdNext", false);
        tutorialButtonFilter.addButton("cmdBuildTool", false);
        tutorialButtonFilter.removeButton("cmdCloseTool");
        tutorial.gui.setFilter(tutorialButtonFilter);
        iArr[0] = tutorial.city.getBuildings().getBuildingsOfDraft(buildingDraft).size();
        tutorial.inCaseOfCityInfo(new String[0]);
        if (z) {
            buildingDraft.buildTime = 0;
        }
    }

    public static /* synthetic */ void $r8$lambda$UXiLJojYyoE0bIH6MfCBH5frpOs(Tutorial tutorial, Getter getter) {
        CityComponent component = tutorial.city.getComponent(13);
        Tool tool = tmpTool;
        if (component != tool) {
            tutorial.city.applyComponent(tool);
        }
        if (((Boolean) getter.get()).booleanValue()) {
            City city = tutorial.city;
            city.applyComponent(city.getDefaultTool());
            tutorial.nextStage();
        }
    }

    public static /* synthetic */ void $r8$lambda$hPAIWkX1w_PpnsOgOndcSsGwYmc(Tutorial tutorial, BuildingDraft buildingDraft, int i) {
        City city = tutorial.city;
        city.applyComponent(city.getDefaultTool());
        buildingDraft.buildTime = i;
    }

    public final void addLineStage(String str, String str2, final List<String> list, final Class<? extends TwoModesTool> cls, final IntList intList, final TutorialBuildMask.TileCondition tileCondition) {
        addStage(str, str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                Tutorial.$r8$lambda$Vid0ggH75iwS4uV6rUk_pmh6vk8(this.f$0, list);
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial.17
            @Override // java.lang.Runnable
            public void run() {
                Tool unused = Tutorial.tmpTool = (Tool) Tutorial.this.city.getComponent(13);
                if (Tutorial.tmpTool.getClass().equals(cls)) {
                    Tutorial.this.nextStage();
                }
            }
        }, null, null);
        for (final int i = 0; i < intList.size(); i += 4) {
            final int i2 = intList.get(i);
            final int i3 = intList.get(i + 1);
            final int i4 = intList.get(i + 2);
            final int i5 = intList.get(i + 3);
            addStage(str + "_" + i + "_0", str2, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    Tutorial.$r8$lambda$9m9_RkpMhRX77mV9c96e1QWTfG0(this.f$0, i2, i4, i3, i5, tileCondition);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    Tutorial.$r8$lambda$AoUAvW1G1_JEU7jpXRpBNoxDOiY(this.f$0);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tutorial.Tutorial$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    Tutorial.$r8$lambda$_DZobezgcpDrsKWSycdgbuK1TOQ(this.f$0, i, intList);
                }
            }, null).saveable = false;
        }
    }

    public static /* synthetic */ void $r8$lambda$Vid0ggH75iwS4uV6rUk_pmh6vk8(Tutorial tutorial, List list) {
        tutorial.getClass();
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        for (int i = 0; i < list.size(); i++) {
            tutorialButtonFilter.addButton((String) list.get(i));
        }
        tutorial.gui.setFilter(tutorialButtonFilter);
        tutorial.inCaseOfCityInfo(new String[0]);
    }

    public static /* synthetic */ void $r8$lambda$9m9_RkpMhRX77mV9c96e1QWTfG0(Tutorial tutorial, int i, int i2, int i3, int i4, TutorialBuildMask.TileCondition tileCondition) {
        tutorial.getClass();
        int iMin = Math.min(i, i2);
        int iMin2 = Math.min(i3, i4);
        tutorial.tutorialBuildMask.addTiles(iMin, iMin2, (Math.max(i, i2) - iMin) + 1, (Math.max(i3, i4) - iMin2) + 1);
        tutorial.tutorialBuildMask.setCondition(tileCondition, tutorial.runNextStage);
        TutorialButtonFilter tutorialButtonFilter = new TutorialButtonFilter();
        tutorialButtonFilter.removeButton("cmdCloseTool");
        tutorial.gui.setFilter(tutorialButtonFilter);
        tutorial.inCaseOfCityInfo(new String[0]);
    }

    public static /* synthetic */ void $r8$lambda$AoUAvW1G1_JEU7jpXRpBNoxDOiY(Tutorial tutorial) {
        CityComponent component = tutorial.city.getComponent(13);
        Tool tool = tmpTool;
        if (component != tool) {
            tutorial.city.applyComponent(tool);
        }
    }

    public static /* synthetic */ void $r8$lambda$_DZobezgcpDrsKWSycdgbuK1TOQ(Tutorial tutorial, int i, IntList intList) {
        tutorial.getClass();
        if (i + 4 >= intList.size()) {
            City city = tutorial.city;
            city.applyComponent(city.getDefaultTool());
        }
    }

    public final Stage addStage(String str, String str2, Runnable runnable, Runnable runnable2, Runnable runnable3, List<NotificationAction> list) {
        Stage stage = new Stage();
        stage.id = str;
        stage.icon = this.currentIcon;
        stage.text = str2;
        stage.setUp = runnable;
        stage.update = runnable2;
        stage.setDown = runnable3;
        stage.actions = list;
        stage.showMask = this.currentShowMask;
        this.stages.add(stage);
        return stage;
    }

    public static void dispose() {
        visibleMask = -1;
        markMask = 0;
        tmpTool = null;
        instance = null;
    }

    public class Stage {
        public List<NotificationAction> actions;
        public int icon;
        public String id;
        public boolean saveable;
        public Runnable setDown;
        public Runnable setUp;
        public int showMask;
        public String text;
        public Runnable update;

        public Stage() {
            this.saveable = true;
        }

        public boolean isActive() {
            try {
                return Resources.CONFIG.getJSONObject("tutorial").getJSONObject("stages").getJSONObject(this.id).optBoolean("active", true);
            } catch (JSONException unused) {
                return true;
            }
        }
    }
}
