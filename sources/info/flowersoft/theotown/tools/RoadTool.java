package info.flowersoft.theotown.tools;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.IntIntMap;
import com.google.android.gms.common.api.Api;
import com.ironsource.C3841se;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.QuestionListener;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.modifier.ZoneBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.marker.TrafficMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.PackedInt2;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class RoadTool extends TwoModesTool {
    public final AnimationDraft METRO_MARKER;
    public boolean buildPermission;
    public int calculatedPos;
    public final List<ConnectionCandidate> connectionCandidates;
    public int currentLevel;
    public List<RoadDraft> decorationRoads;
    public List<BuildingDraft> decorations;
    public int diamondPrice;
    public final RoadDraft draft;
    public int fixedDiamondPrice;
    public boolean invertedLanes;
    public final IntList lanes;
    public int levelMode;
    public long price;
    public final IntList redoLevelHistory;
    public boolean singleLaneMode;
    public int startLevel;
    public final IntIntMap tileToPrice;
    public int tunnelTiles;
    public final IntList undoLevelHistory;
    public ZoneBuilder zoneBuilder;

    /* JADX INFO: renamed from: $r8$lambda$UhJtsxSt_bmmxFIb1RXI-B3CNDc, reason: not valid java name */
    public static /* synthetic */ void m2353$r8$lambda$UhJtsxSt_bmmxFIb1RXIB3CNDc() {
    }

    public final void logModification(int i, int i2, int i3, int i4, int i5, int i6) {
    }

    public RoadTool(final RoadDraft roadDraft) {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$metro_marker00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.METRO_MARKER = animationDraft;
        this.lanes = new IntList();
        this.levelMode = 0;
        this.calculatedPos = -1;
        this.tileToPrice = new IntIntMap();
        this.connectionCandidates = new ArrayList();
        this.singleLaneMode = false;
        this.undoLevelHistory = new IntList();
        this.redoLevelHistory = new IntList();
        this.buildPermission = false;
        this.draft = roadDraft;
        this.currentLevel = Math.min(Math.max(0, roadDraft.minLevel), roadDraft.maxLevel);
        setHasToBeLine(true);
        setLineWidth(roadDraft.width);
        if (roadDraft.width > 1) {
            this.decorations = new ArrayList();
            this.decorationRoads = new ArrayList();
            for (String str : roadDraft.decorationBuildingIds) {
                Draft draft = Drafts.ALL.get(str);
                if (draft instanceof BuildingDraft) {
                    this.decorations.add((BuildingDraft) draft);
                } else if (draft instanceof RoadDraft) {
                    this.decorationRoads.add((RoadDraft) draft);
                } else {
                    Gdx.app.error("Road Tool", "Could not find decoration " + str + " for road " + roadDraft.id);
                }
            }
            if (!this.decorationRoads.isEmpty()) {
                this.decorations.clear();
            }
        }
        if (roadDraft.autoJoin && !roadDraft.devoted) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.1
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_ROADAUTOJOIN;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdAutoJoinRoad";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    Settings.roadAutoJoin = !Settings.roadAutoJoin;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return Settings.roadAutoJoin;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RoadTool.this.city.getTranslator().translate(C3841se.h);
                }
            });
        }
        ArrayList arrayList = new ArrayList();
        if (roadDraft.trafficLights != null && Settings.experimentalFeatures) {
            arrayList.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.2
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Settings.autoTrafficLights ? Resources.ICON_TRAFFIC_LIGHTS_ON : Resources.ICON_TRAFFIC_LIGHTS_OFF;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdTrafficLightsOff";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    Settings.autoTrafficLights = !Settings.autoTrafficLights;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return Settings.autoTrafficLights;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RoadTool.this.city.getTranslator().translate(2486);
                }
            });
        }
        if (roadDraft.hasDecorations()) {
            arrayList.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.3
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_ROAD_DECORATION;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRoadAutoDecorations";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    Settings.autoRoadDecorations = !Settings.autoRoadDecorations;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return Settings.autoRoadDecorations;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RoadTool.this.city.getTranslator().translate(1923);
                }
            });
        }
        this.actions.add(arrayList);
        if (roadDraft.width > 1 && this.decorationRoads.isEmpty()) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.4
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_SINGLELANE;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdSingleLane";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RoadTool.this.singleLaneMode = !r0.singleLaneMode;
                    RoadTool roadTool = RoadTool.this;
                    roadTool.setLineWidth(roadTool.getRoadWidth());
                    RoadTool.this.resetCalculation();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isPressed() {
                    return RoadTool.this.singleLaneMode;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return RoadTool.this.city.getTranslator().translate(2226);
                }
            });
        }
        if (roadDraft.maxLevel > 0 && roadDraft.minLevel <= 0) {
            addModeAction(Resources.ICON_ROAD_BRIDGE, "cmdRoadBridge", 1, 3412);
        }
        if (roadDraft.minLevel < 0 && roadDraft.maxLevel >= 0) {
            addModeAction(Resources.ICON_ROAD_CONSTANT, "cmdRoadConstant", 5, 1096);
        }
        if (roadDraft.minLevel < roadDraft.maxLevel) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.5
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    if (RoadTool.this.mode == 1) {
                        return Resources.ICON_ROAD_DOWN;
                    }
                    return Resources.ICON_LEVEL_DOWN;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRoadLevelDown";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    r0.currentLevel--;
                    RoadTool.this.resetCalculation();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    RoadTool roadTool = RoadTool.this;
                    if (roadTool.currentLevel > roadDraft.minLevel) {
                        return (roadTool.mode == 1 && (roadTool.levelMode == 1 || RoadTool.this.levelMode == 5)) ? false : true;
                    }
                    return false;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    RoadTool roadTool = RoadTool.this;
                    return roadTool.mode == 1 ? roadTool.city.getTranslator().translate(3020) : roadTool.city.getTranslator().translate(2970);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public KeyAction getHotkey() {
                    return KeyAction.TOOL_ROAD_DOWN;
                }
            }, new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.6
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    if (RoadTool.this.mode == 1) {
                        return Resources.ICON_ROAD_UP;
                    }
                    return Resources.ICON_LEVEL_UP;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdRoadLevelUp";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    RoadTool roadTool = RoadTool.this;
                    roadTool.currentLevel++;
                    roadTool.resetCalculation();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    RoadTool roadTool = RoadTool.this;
                    if (roadTool.currentLevel < roadDraft.maxLevel) {
                        return (roadTool.mode == 1 && (roadTool.levelMode == 1 || RoadTool.this.levelMode == 5)) ? false : true;
                    }
                    return false;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    RoadTool roadTool = RoadTool.this;
                    return roadTool.mode == 1 ? roadTool.city.getTranslator().translate(597) : roadTool.city.getTranslator().translate(2138);
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public KeyAction getHotkey() {
                    return KeyAction.TOOL_ROAD_UP;
                }
            });
        }
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Road:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        if (!this.undoLevelHistory.isEmpty()) {
            this.redoLevelHistory.add(this.startLevel);
            this.startLevel = this.undoLevelHistory.removeAt(r0.size() - 1);
        }
        this.currentLevel = this.startLevel;
        super.undo(z);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        if (!this.redoLevelHistory.isEmpty()) {
            this.undoLevelHistory.add(this.startLevel);
            this.startLevel = this.redoLevelHistory.removeAt(r0.size() - 1);
        }
        this.currentLevel = this.startLevel;
        super.redo(z);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.zoneBuilder = new ZoneBuilder(city);
        if (Settings.showTrafficMarkerInRoadTool) {
            setMarker(new TrafficMarker(city) { // from class: info.flowersoft.theotown.tools.RoadTool.7
                @Override // info.flowersoft.theotown.tools.marker.TrafficMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
                public float overlayAlpha(int i, int i2) {
                    if (RoadTool.this.tiles.getRoad(i, i2, RoadTool.this.currentLevel) != null) {
                        return 1.0f;
                    }
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
            });
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.city.components.CityComponent
    public void unbind() {
        this.undoLevelHistory.clear();
        this.redoLevelHistory.clear();
        super.unbind();
    }

    public final int getRoadWidth() {
        if (this.singleLaneMode) {
            return 1;
        }
        return this.draft.width;
    }

    public final void addModeAction(final int i, final String str, final int i2, final int i3) {
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadTool.8
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return i;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return str;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                int i4 = RoadTool.this.levelMode;
                int i5 = i2;
                if (i4 == i5) {
                    RoadTool.this.levelMode = 0;
                } else {
                    RoadTool.this.levelMode = i5;
                }
                RoadTool.this.resetCalculation();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isPressed() {
                return RoadTool.this.levelMode == i2;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                if (!RoadTool.this.draft.hasBridge()) {
                    return false;
                }
                RoadTool roadTool = RoadTool.this;
                return roadTool.startLevel == roadTool.currentLevel || roadTool.mode == 0;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return RoadTool.this.city.getTranslator().translate(i3);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setBuilderMode(int r8) {
        /*
            Method dump skipped, instruction units count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.RoadTool.setBuilderMode(int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0421  */
    @Override // info.flowersoft.theotown.tools.TwoModesTool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void build(final int r29, final int r30, final int r31, final int r32) {
        /*
            Method dump skipped, instruction units count: 1241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.RoadTool.build(int, int, int, int):void");
    }

    public static /* synthetic */ void $r8$lambda$kshPAxL6PcGYT3jGLBLUQcbWsN0(RoadTool roadTool, int i, int i2, int i3, int i4, int i5) {
        roadTool.getClass();
        GameHandler.getInstance().earnDiamonds(i, false, "build " + roadTool.draft.id);
        roadTool.buildPermission = true;
        roadTool.build(i2, i3, i4, i5);
    }

    /* JADX INFO: renamed from: $r8$lambda$7A0kmV5v5roUJsICE21f-71We7o, reason: not valid java name */
    public static /* synthetic */ void m2352$r8$lambda$7A0kmV5v5roUJsICE21f71We7o(RoadTool roadTool, int i, int i2, int i3, int i4) {
        roadTool.buildPermission = true;
        roadTool.build(i, i2, i3, i4);
    }

    public final void setTrafficLights(int i, int i2, RoadBuilder roadBuilder) {
        int dir = roadBuilder.getDir();
        int iDifferenceX = Direction.differenceX(dir);
        int iDifferenceY = Direction.differenceY(dir);
        int length = roadBuilder.getLength();
        for (int i3 = 0; i3 < length; i3++) {
            Road road = this.tiles.getRoad((i3 * iDifferenceX) + i, (i3 * iDifferenceY) + i2, roadBuilder.getRelativeLevel(i3));
            if (road != null && road.shouldHaveTrafficLights()) {
                road.setTrafficLights(Settings.autoTrafficLights);
            }
        }
    }

    public final void addCandidate(int i, int i2, int i3, int i4) {
        Road road;
        if (i == 0 || i2 == 0 || i == this.city.getWidth() - 1 || i2 == this.city.getHeight() - 1) {
            if (this.city.isValid(Direction.differenceX(i4) + i, Direction.differenceY(i4) + i2) || (road = this.tiles.getRoad(i, i2, i3)) == null || road.dLevel != 0 || Direction.isIn(i4, road.getConnectionDir()) || !road.draft.connectable) {
                return;
            }
            ConnectionCandidate connectionCandidate = new ConnectionCandidate();
            connectionCandidate.road = road;
            connectionCandidate.dir = i4;
            this.connectionCandidates.add(connectionCandidate);
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawBuildingMarker(int i, int i2, Drawer drawer) {
        super.drawBuildingMarker(i, i2, drawer);
        Building building = this.tiles.getBuilding(i, i2);
        if (building == null || !this.drawUndergroundRoad || building.getDraft().getMetaTag("metro") == null) {
            return;
        }
        drawer.engine.setTransparency(255);
        drawer.engine.setColor(Colors.WHITE);
        drawer.draw(Resources.IMAGE_WORLD, (building.getWidth() - 1) * 16, (-building.getMaxTerrainLevel()) * 12, this.METRO_MARKER.frames[0]);
    }

    private void askForConnection(final int i, final int i2, final int i3, final int i4) {
        QuestionListener questionListener = this.questionListener;
        if (questionListener != null) {
            questionListener.ask(Resources.ICON_CITY, 2179, 1787, new Runnable() { // from class: info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    RoadTool.$r8$lambda$ZrVofE8jYRoLF42enG5A8X04AXE(this.f$0, i, i2, i3, i4);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    RoadTool.m2353$r8$lambda$UhJtsxSt_bmmxFIb1RXIB3CNDc();
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$ZrVofE8jYRoLF42enG5A8X04AXE(RoadTool roadTool, int i, int i2, int i3, int i4) {
        roadTool.captureState(i, i2, i3, i4);
        for (ConnectionCandidate connectionCandidate : roadTool.connectionCandidates) {
            roadTool.city.getRoads().remove(connectionCandidate.road);
            connectionCandidate.road.setConnection(connectionCandidate.dir);
            if (connectionCandidate.road.shouldHaveTrafficLights()) {
                connectionCandidate.road.setTrafficLights(Settings.autoTrafficLights);
            }
            roadTool.city.getRoads().add(connectionCandidate.road);
        }
        roadTool.endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        Engine engine = drawer.engine;
        Ground ground = this.city.getTiles().getGround(i, i2);
        drawHelperLines(i, i2, drawer);
        int i5 = this.mode;
        if (i5 == 0) {
            if (((TwoModesTool) this).drawnTargetHover && (i3 = ((TwoModesTool) this).drawnTargetX) == i && (i4 = ((TwoModesTool) this).drawnTargetY) == i2) {
                engine.setColor(isValid(i3, i4) ? Colors.GREEN : Colors.RED);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
                if (this.startLevel != 0) {
                    engine.setTransparency(50);
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (this.startLevel + drawer.baseTerrainHeight) * (-12), Resources.FRAME_TOOLMARK_CHECKER);
                    engine.setTransparency(255);
                }
                engine.setColor(Colors.WHITE);
                return;
            }
            return;
        }
        if (i5 != 1) {
            return;
        }
        int i6 = this.selectedX;
        if (i6 == i && this.selectedY == i2) {
            if (this.drawnTarget && !this.drawnTargetValid) {
                engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            engine.setColor(Colors.WHITE);
            if (this.startLevel != 0) {
                engine.setTransparency(50);
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (this.startLevel + drawer.baseTerrainHeight) * (-12), Resources.FRAME_TOOLMARK_CHECKER);
                engine.setTransparency(255);
                return;
            }
            return;
        }
        if (isValid(i6, this.selectedY, i, i2) || this.notBuildableBecauseOfPrice) {
            drawOverlay(drawer, i, i2, this.notBuildableBecauseOfPrice ? Resources.FRAME_TOOLMARK_YELLOW_DOTTED : Resources.FRAME_TOOLMARK_GREEN_DOTTED, Math.max(Math.abs(this.selectedX - i), Math.abs(this.selectedY - i2)));
            return;
        }
        int roadWidth = getRoadWidth();
        int i7 = i - this.selectedX;
        int i8 = i2 - this.selectedY;
        boolean z = Math.min(Math.abs(i7), Math.abs(i8)) == 0;
        int baseTerrainHeight = this.city.getTiles().getBaseTerrainHeight(this.selectedX, this.selectedY) + this.startLevel;
        int baseTerrainHeight2 = this.city.getTiles().getBaseTerrainHeight(i, i2);
        int i9 = this.currentLevel;
        int i10 = baseTerrainHeight2 + i9;
        if (roadWidth != 1 || !z || this.startLevel == i9) {
            if (roadWidth <= 1 || !z) {
                return;
            }
            drawOverlay(drawer, i, i2, Resources.FRAME_TOOLMARK_YELLOW_DOTTED, -1);
            return;
        }
        int iRotateCW = Direction.rotateCW(Direction.fromDifferential(i7, i8), drawer.rotation);
        if (this.currentLevel < this.startLevel) {
            iRotateCW = Direction.opposite(iRotateCW);
        }
        Direction.toIndex(iRotateCW);
        int i11 = i10 - baseTerrainHeight;
        int iMax = i11 / Math.max(Math.abs(i11), 1);
        Math.max(Math.abs(i7), Math.abs(i8));
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void cancel(int i, int i2, int i3, int i4) {
        super.cancel(i, i2, i3, i4);
        this.currentLevel = this.startLevel;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        super.drawBefore(engine);
        boolean z = this.currentLevel < 0;
        this.drawUndergroundRoad = z;
        this.drawUnderground = z;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        Drawer drawer2;
        if (i3 == this.currentLevel) {
            drawer.engine.setTransparency(255);
        }
        boolean z = drawer.useShading;
        drawer.useShading = false;
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null) {
            return false;
        }
        road.draw(drawer, this.city.getTiles().isGroundWater(i, i2));
        this.traffic.drawRoad(i, i2, road, drawer);
        road.drawForeground(drawer);
        if (road.draft.oneWay && road.dLevel == 0) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-road.absLevel) * 12, Resources.FRAME_TOOLMARK_ARROWS + ((((road.getFrame() / 16) + 4) - drawer.rotation) % 4));
        }
        Ground ground = this.city.getTiles().getGround(i, i2);
        int i4 = this.mode;
        if (i4 == 0) {
            drawer2 = drawer;
            drawTileOverlayFrame(drawer2, i, i2, ground, Resources.FRAME_TOOLMARK + Direction.rotateCW(road.getAlign(), drawer2.rotation));
        } else if (i4 != 1) {
            drawer2 = drawer;
        } else {
            int i5 = this.selectedX;
            if (i == i5 && i2 == this.selectedY) {
                drawer2 = drawer;
                drawTileOverlayFrame(drawer2, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            } else {
                drawer2 = drawer;
                if (!isValid(i5, this.selectedY, i, i2) && !this.notBuildableBecauseOfPrice) {
                    drawTileOverlayFrame(drawer2, i, i2, ground, Resources.FRAME_TOOLMARK_RED);
                } else {
                    Engine engine = drawer2.engine;
                    engine.setColor((i + i2) % 2 == 0 ? Colors.WHITE : Colors.LIGHT_GRAY);
                    drawTileOverlayFrame(drawer2, i, i2, ground, Resources.FRAME_TOOLMARK_GREEN);
                    engine.setColor(Colors.WHITE);
                }
            }
        }
        drawer2.useShading = z;
        return true;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        this.notBuildableBecauseOfPrice = false;
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        roadBuilder.setDraft(this.draft, null);
        roadBuilder.setLine(i, i2, i, i2);
        this.startLevel = this.currentLevel;
        this.selectedX = i;
        this.selectedY = i2;
        setBuilderMode(0);
        if (!roadBuilder.isBuildable()) {
            return false;
        }
        this.price = roadBuilder.getPrice();
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        resetCalculation();
        super.onClick(i, i2, f, f2, i3, i4);
        if (this.mode == 1 && this.draft.singlePlacement) {
            super.onClick(i, i2, f, f2, i3, i4);
        }
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.city.components.Tool
    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        if (this.draft.singlePlacement) {
            return false;
        }
        return super.updateMove(f, f2, f3, f4, i, i2, f5, f6);
    }

    public final void resetCalculation() {
        this.tileToPrice.clear();
        this.calculatedPos = -1;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        int i9;
        int i10;
        int i11;
        int i12 = 0;
        this.tunnelTiles = 0;
        this.notBuildableBecauseOfPrice = false;
        if (!this.city.isValid(i, i2) || !this.city.isValid(i3, i4)) {
            return false;
        }
        if (!super.isValid(i, i2, i3, i4)) {
            return false;
        }
        int iPack = PackedInt2.pack(i, i2);
        int iPack2 = PackedInt2.pack(i3, i4);
        int roadWidth = getRoadWidth();
        int iAbs = Math.abs(this.startLevel - this.currentLevel);
        if (iAbs > 0) {
            iAbs += 2;
        }
        if (this.calculatedPos != iPack) {
            this.calculatedPos = iPack;
            this.tileToPrice.clear();
        }
        long j = this.tileToPrice.get(iPack2, -2);
        long price = 0;
        if (j != -2) {
            if (j < 0) {
                return false;
            }
            boolean zCanSpend = getBudget().canSpend(j);
            this.notBuildableBecauseOfPrice = !zCanSpend;
            return zCanSpend;
        }
        RoadBuilder roadBuilder = this.modifier.getRoadBuilder();
        roadBuilder.setDraft(this.draft, null);
        this.diamondPrice = 0;
        RoadDraft roadDraft = this.draft;
        if (roadDraft.buildZone) {
            this.zoneBuilder.setZone(roadDraft.zone);
            this.zoneBuilder.setArea(i, i2, i3, i4);
            if (!this.zoneBuilder.isBuildable()) {
                return false;
            }
            price = this.zoneBuilder.getPrice();
        }
        if (roadWidth == 1) {
            if (i != i3 && i2 != i4 && allowsDiagonal()) {
                RoadDraft roadDraft2 = this.draft.diagonalRoad;
                if (roadDraft2 != null) {
                    roadBuilder.setDraft(roadDraft2, null);
                }
                int i13 = i3 - i;
                int i14 = i4 - i2;
                boolean z2 = Math.abs(i13) > Math.abs(i14);
                int iAbs2 = i13 / Math.abs(i13);
                int iAbs3 = i14 / Math.abs(i14);
                int i15 = i;
                int i16 = i2;
                int absoluteLevel = 0;
                while (true) {
                    if (i15 == i3 && i16 == i4) {
                        break;
                    }
                    if (z2) {
                        i10 = iAbs2;
                        i11 = i15 + iAbs2;
                        z = z2;
                        i9 = i16;
                    } else {
                        z = z2;
                        i9 = i16 + iAbs3;
                        i10 = iAbs2;
                        i11 = i15;
                    }
                    roadBuilder.setLine(i15, i16, i11, i9);
                    setBuilderMode(i12);
                    if (i15 == i && i16 == i2) {
                        absoluteLevel = roadBuilder.getAbsoluteLevel(i12);
                    }
                    int i17 = absoluteLevel;
                    if (!roadBuilder.isBuildable() || roadBuilder.getLength() < iAbs) {
                        break;
                    }
                    int i18 = i11;
                    if (roadBuilder.getAbsoluteLevel(i12) != roadBuilder.getAbsoluteLevel(1) || roadBuilder.getAbsoluteLevel(0) != i17) {
                        break;
                    }
                    price += roadBuilder.getPrice();
                    this.diamondPrice += roadBuilder.getDiamondPrice();
                    for (int i19 = 0; i19 < roadBuilder.getLength(); i19++) {
                        if (roadBuilder.getRelativeLevel(i19) < 0) {
                            this.tunnelTiles++;
                        }
                    }
                    absoluteLevel = i17;
                    iAbs2 = i10;
                    i15 = i18;
                    i16 = i9;
                    z2 = !z;
                    i12 = 0;
                }
                this.tileToPrice.put(iPack2, -1);
                return false;
            }
            roadBuilder.setLine(i, i2, i3, i4);
            setBuilderMode(0);
            if (!roadBuilder.isBuildable() || roadBuilder.getLength() < iAbs) {
                this.tileToPrice.put(iPack2, -1);
                return false;
            }
            price += roadBuilder.getPrice();
            int diamondPrice = this.diamondPrice + roadBuilder.getDiamondPrice();
            this.diamondPrice = diamondPrice;
            if (diamondPrice < 0) {
                this.diamondPrice = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            for (int i20 = 0; i20 < roadBuilder.getLength(); i20++) {
                if (roadBuilder.getRelativeLevel(i20) < 0) {
                    this.tunnelTiles++;
                }
            }
        } else {
            calculateLanes(i, i2, i3, i4);
            if (!this.lanes.isEmpty()) {
                for (int i21 = 0; i21 < this.lanes.size() / 4; i21++) {
                    int i22 = i21 * 4;
                    int i23 = this.lanes.get(i22);
                    int i24 = this.lanes.get(i22 + 1);
                    int i25 = this.lanes.get(i22 + 2);
                    int i26 = this.lanes.get(i22 + 3);
                    if (i21 == (this.lanes.size() / 4) - 1 && (this.lanes.size() / 4) % 2 == 1 && !this.decorations.isEmpty()) {
                        int iAbs4 = Math.abs(i24 == i26 ? i25 - i23 : i26 - i24) + 1;
                        int iFromDifferential = Direction.fromDifferential(i25 - i23, i26 - i24);
                        int size = this.decorations.size();
                        int[] iArr = new int[size];
                        int i27 = 0;
                        while (i27 < iAbs4) {
                            if (roadBuilder.getRelativeLevel(i21) == 0) {
                                int iDifferenceX = (Direction.differenceX(iFromDifferential) * i27) + i23;
                                int iDifferenceY = (Direction.differenceY(iFromDifferential) * i27) + i24;
                                i5 = iFromDifferential;
                                Building building = this.tiles.getBuilding(iDifferenceX, iDifferenceY);
                                List<BuildingDraft> list = this.decorations;
                                i6 = iAbs4;
                                BuildingDraft buildingDraft = list.get(i27 % list.size());
                                if ((building == null || !building.getDraft().equals(buildingDraft)) && this.modifier.isBuildable(buildingDraft, iDifferenceX, iDifferenceY, true, true, -1) == null) {
                                    int size2 = i27 % this.decorations.size();
                                    iArr[size2] = iArr[size2] + 1;
                                }
                            } else {
                                i5 = iFromDifferential;
                                i6 = iAbs4;
                            }
                            i27++;
                            iFromDifferential = i5;
                            iAbs4 = i6;
                        }
                        for (int i28 = 0; i28 < size; i28++) {
                            price += getBudget().getPrice(this.decorations.get(i28), iArr[i28]);
                        }
                    } else {
                        roadBuilder.setLine(i23, i24, i25, i26);
                        setBuilderMode(i21);
                        if (!roadBuilder.isBuildable() || roadBuilder.getLength() < iAbs) {
                            this.tileToPrice.put(iPack2, -1);
                            return false;
                        }
                        price += roadBuilder.getPrice();
                        this.diamondPrice += roadBuilder.getDiamondPrice();
                        for (int i29 = 0; i29 < roadBuilder.getLength(); i29++) {
                            if (roadBuilder.getRelativeLevel(i29) < 0) {
                                this.tunnelTiles++;
                            }
                        }
                    }
                }
            }
        }
        int i30 = this.draft.tunnelDiamondPrice;
        if (i30 > 0 && (i7 = this.tunnelTiles) > 0 && (i8 = this.diamondPrice) > 0) {
            int iMin = Math.min(i7, i8 / i30);
            this.tunnelTiles = iMin;
            this.diamondPrice -= Math.min(iMin, GameHandler.getInstance().getTimedEffectManager().getFreeTunnels()) * this.draft.tunnelDiamondPrice;
        }
        if (price > 2147483647L) {
            price = 2147483647L;
        }
        this.diamondPrice = Math.max(this.diamondPrice, 0);
        this.tileToPrice.put(iPack2, (int) price);
        DefaultBudget budget = getBudget();
        this.price = price;
        boolean zCanSpend2 = budget.canSpend(price);
        this.notBuildableBecauseOfPrice = !zCanSpend2;
        return zCanSpend2;
    }

    public final void calculateLanes(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        this.lanes.clear();
        int iAbs = Math.abs(i3 - i);
        int iAbs2 = Math.abs(i4 - i2);
        int roadWidth = getRoadWidth();
        int i7 = roadWidth - 1;
        if (Math.min(iAbs, iAbs2) != i7 || Math.max(iAbs, iAbs2) <= i7) {
            return;
        }
        int iMin = Math.min(i, i3);
        int iMin2 = Math.min(i2, i4);
        int iMax = Math.max(i, i3);
        int iMax2 = Math.max(i2, i4);
        if (iAbs > iAbs2) {
            int i8 = 0;
            while (true) {
                i6 = roadWidth / 2;
                if (i8 >= i6) {
                    break;
                }
                this.lanes.add(iMin);
                int i9 = iMin2 + i8;
                this.lanes.add(i9);
                this.lanes.add(iMax);
                this.lanes.add(i9);
                this.lanes.add(iMax);
                int i10 = iMax2 - i8;
                this.lanes.add(i10);
                this.lanes.add(iMin);
                this.lanes.add(i10);
                i8++;
            }
            if (roadWidth % 2 == 1) {
                this.lanes.add(iMin);
                int i11 = iMin2 + i6;
                this.lanes.add(i11);
                this.lanes.add(iMax);
                this.lanes.add(i11);
            }
            this.invertedLanes = iMin != i;
        } else {
            int i12 = 0;
            while (true) {
                i5 = roadWidth / 2;
                if (i12 >= i5) {
                    break;
                }
                int i13 = iMax - i12;
                this.lanes.add(i13);
                this.lanes.add(iMin2);
                this.lanes.add(i13);
                this.lanes.add(iMax2);
                int i14 = iMin + i12;
                this.lanes.add(i14);
                this.lanes.add(iMax2);
                this.lanes.add(i14);
                this.lanes.add(iMin2);
                i12++;
            }
            if (roadWidth % 2 == 1) {
                int i15 = iMin + i5;
                this.lanes.add(i15);
                this.lanes.add(iMin2);
                this.lanes.add(i15);
                this.lanes.add(iMax2);
            }
            this.invertedLanes = iMin2 != i2;
        }
        if (roadWidth <= 1 || !this.city.isLeftSideTraffic() || this.lanes.isEmpty()) {
            return;
        }
        for (int i16 = 0; i16 < (roadWidth / 2) * 2 && i16 < this.lanes.size() / 4; i16++) {
            int i17 = i16 * 4;
            int i18 = this.lanes.get(i17);
            int i19 = i17 + 1;
            int i20 = this.lanes.get(i19);
            IntList intList = this.lanes;
            int i21 = i17 + 2;
            intList.set(i17, intList.get(i21));
            IntList intList2 = this.lanes;
            int i22 = i17 + 3;
            intList2.set(i19, intList2.get(i22));
            this.lanes.set(i21, i18);
            this.lanes.set(i22, i20);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_TRAFFIC;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        DraftLocalizer draftLocalizer = new DraftLocalizer(this.city);
        RoadDraft roadDraft = this.draft;
        if (roadDraft.minLevel == roadDraft.maxLevel) {
            return draftLocalizer.getTitle(roadDraft);
        }
        return draftLocalizer.getTitle(this.draft) + ", " + this.currentLevel;
    }

    public static class ConnectionCandidate {
        public int dir;
        public Road road;

        public ConnectionCandidate() {
        }
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean allowsDiagonal() {
        RoadDraft roadDraft;
        if (this.lineWidth != 1) {
            return false;
        }
        RoadDraft roadDraft2 = this.draft;
        if (roadDraft2.allowDiagonal || roadDraft2.diagonalRoad != null) {
            return (this.startLevel == 0 || (roadDraft2.hasBridge() && (roadDraft = this.draft.diagonalRoad) != null && roadDraft.hasBridge())) && Settings.diagonalRoadTool;
        }
        return false;
    }
}
