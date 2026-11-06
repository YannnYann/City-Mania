package info.flowersoft.theotown.tools;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.miniatureview.MarkerMiniatureViewColoring;
import info.flowersoft.theotown.city.modifier.CityReverter;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuildTool extends DefaultTool {
    public boolean addedUndoButton;
    public CityReverter currentCityState;
    public boolean drawUndergroundRoad;
    public BuildToolMarker marker;
    public int maxToolRadius;
    public int minToolRadius;
    public long movement;
    public int toolRadius;
    public final AnimationDraft TILE_HIGHLIGHT = (AnimationDraft) Drafts.get("$anim_ui_tilehighlight00", AnimationDraft.class);
    public final List<CityReverter> undoList = new ArrayList();
    public final List<CityReverter> redoList = new ArrayList();
    public final Color tempColor = new Color();
    public MarkerMiniatureViewColoring coloring = new MarkerMiniatureViewColoring();

    public void drawBuildingMarker(int i, int i2, Drawer drawer) {
    }

    public void drawOnTop(int i, int i2, Drawer drawer) {
    }

    public int getTreeTransparency() {
        return 120;
    }

    public void issueMovement() {
    }

    public BuildTool() {
        this.useZoneSetting = false;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void unbind() {
        this.undoList.clear();
        this.redoList.clear();
        this.currentCityState = null;
        super.unbind();
    }

    public boolean hasHistory() {
        return (this.undoList.isEmpty() && this.redoList.isEmpty()) ? false : true;
    }

    public boolean canUndo() {
        if (this.undoList.isEmpty()) {
            return false;
        }
        List<CityReverter> list = this.undoList;
        return list.get(list.size() - 1).canRevert() && hasHistory();
    }

    public boolean canRedo() {
        if (this.redoList.isEmpty()) {
            return false;
        }
        List<CityReverter> list = this.redoList;
        return list.get(list.size() - 1).canRevert() && hasHistory();
    }

    public final void undo() {
        undo(false);
    }

    public final void redo() {
        redo(false);
    }

    public void undo(boolean z) {
        if (canUndo()) {
            if (!z) {
                TheoTown.gamesService.unlockAchievement("tool_undo");
            }
            CityReverter cityReverterRemove = this.undoList.remove(r2.size() - 1);
            cityReverterRemove.revert();
            this.redoList.add(cityReverterRemove);
        }
    }

    public void redo(boolean z) {
        if (canRedo()) {
            CityReverter cityReverterRemove = this.redoList.remove(r2.size() - 1);
            cityReverterRemove.revert();
            this.undoList.add(cityReverterRemove);
        }
    }

    public void clearRedo() {
        this.redoList.clear();
    }

    public void captureState(int i, int i2, int i3, int i4) {
        captureState(i, i2, i3, i4, i3, i4, 8);
    }

    public void captureState(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        if (Settings.toolHistory) {
            CityReverter cityReverter = new CityReverter(this.city);
            this.currentCityState = cityReverter;
            cityReverter.begin(i, i2, i3, i4, i5, i6, i7);
        }
    }

    public boolean endCaptureState() {
        boolean z = false;
        if (!Settings.toolHistory) {
            return false;
        }
        CityReverter cityReverter = this.currentCityState;
        if (cityReverter != null) {
            cityReverter.end();
            if (this.currentCityState.canRevert()) {
                this.undoList.add(this.currentCityState);
                if (this.undoList.size() > 10) {
                    this.undoList.remove(0);
                }
                z = true;
            }
            this.currentCityState = null;
            this.redoList.clear();
        }
        return z;
    }

    public BuildToolMarker getMarker() {
        return this.marker;
    }

    public void setMarker(BuildToolMarker buildToolMarker) {
        this.marker = buildToolMarker;
        this.coloring.setMarker(buildToolMarker);
    }

    public DefaultBudget getBudget() {
        return (DefaultBudget) this.city.getComponent(0);
    }

    public void addUndoButton() {
        if (!Settings.toolHistory || this.addedUndoButton) {
            return;
        }
        this.addedUndoButton = true;
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_BACKWARD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdUndoUndo";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BuildTool.this.undo();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BuildTool.this.city.getTranslator().translate(179) + " (" + BuildTool.this.undoList.size() + ")";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return BuildTool.this.canUndo();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_UNDO;
            }
        }, new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_FORWARD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdUndoRedo";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BuildTool.this.redo();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BuildTool.this.city.getTranslator().translate(79) + " (" + BuildTool.this.redoList.size() + ")";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return BuildTool.this.canRedo();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_REDO;
            }
        });
    }

    public void addRadiusActionButtons(int i, int i2, int i3) {
        this.toolRadius = i;
        this.minToolRadius = i2;
        this.maxToolRadius = i3;
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildTool.3
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_MINUS;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdMinus";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BuildTool buildTool = BuildTool.this;
                buildTool.toolRadius = Math.max(buildTool.toolRadius - 1, buildTool.minToolRadius);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                BuildTool buildTool = BuildTool.this;
                return buildTool.toolRadius > buildTool.minToolRadius;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BuildTool.this.city.getTranslator().translate(1820);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_SMALLER;
            }
        }, new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildTool.4
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_PLUS;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdPlus";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BuildTool buildTool = BuildTool.this;
                buildTool.toolRadius = Math.min(buildTool.toolRadius + 1, buildTool.maxToolRadius);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                BuildTool buildTool = BuildTool.this;
                return buildTool.toolRadius < buildTool.maxToolRadius;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BuildTool.this.city.getTranslator().translate(2430);
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_BIGGER;
            }
        });
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void draw(int i, int i2, Drawer drawer) {
        Tree tree;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        BuildTool buildTool = this;
        int i8 = i;
        int i9 = i2;
        Ground ground = buildTool.city.getTiles().getGround(i8, i9);
        boolean zIsTileVisible = drawer.isTileVisible();
        Road topRoad = buildTool.tiles.getTopRoad(i8, i9);
        Road road = topRoad != null ? buildTool.tiles.getRoad(i8, i9, -1) : null;
        if (road != null && (((i7 = road.dLevel) == 0 || Direction.isIn(i7, drawer.upDirs)) && !buildTool.drawUndergroundRoad)) {
            road = null;
        }
        Road road2 = (!buildTool.drawUndergroundRoad || topRoad == null) ? null : buildTool.tiles.getRoad(i8, i9, -2);
        Road road3 = topRoad != null ? buildTool.tiles.getRoad(i8, i9, 0) : null;
        Road road4 = topRoad != null ? buildTool.tiles.getRoad(i8, i9, 1) : null;
        Road road5 = topRoad != null ? buildTool.tiles.getRoad(i8, i9, 2) : null;
        Tree tree2 = buildTool.tiles.getTree(i8, i9);
        Building building = buildTool.tiles.getBuilding(i8, i9);
        ZoneDraft zone = buildTool.tiles.getZone(i8, i9);
        Engine engine = drawer.engine;
        boolean z = drawer.useShading;
        if (zIsTileVisible) {
            if (buildTool.tiles.hasFence(i8, i9) && building == null) {
                buildTool.drawFenceBG(drawer, i8, i9, ground);
            }
            boolean zDrawRoad = (road == null || building != null) ? false : buildTool.drawRoad(i8, i9, drawer, -1);
            if (!zDrawRoad && road2 != null && building == null) {
                zDrawRoad = buildTool.drawRoad(i8, i9, drawer, -2);
            }
            if (!zDrawRoad) {
                if (road3 == null && building == null && zone == null) {
                    calculatePollutionColor(i, i2);
                    engine.setColor(buildTool.colorBuf);
                    drawGround(i, i2, drawer);
                    engine.setColor(Colors.WHITE);
                } else if (road3 != null) {
                    if (road3.draft.drawGround || drawer.upDirs != 0) {
                        calculatePollutionColor(i, i2);
                        engine.setColor(buildTool.colorBuf);
                        drawGround(i, i2, drawer);
                        engine.setColor(Colors.WHITE);
                    }
                    RoadDraft roadDraft = road3.draft;
                    if (!roadDraft.drawGround || road3.dLevel != 0 || roadDraft.drawWaterBorders) {
                        int[] iArr = roadDraft.waterBorderFrames;
                        buildTool.drawWaterGroundBorders(i8, i9, drawer, iArr != null ? iArr[0] : buildTool.groundBorders.frames[0]);
                    }
                    buildTool.drawRoad(i8, i9, drawer, 0);
                } else if (building == null) {
                    calculatePollutionColor(i, i2);
                    engine.setColor(buildTool.colorBuf);
                    drawGround(i, i2, drawer);
                    engine.setColor(Colors.WHITE);
                    drawZone(i, i2, drawer);
                }
            }
        }
        if (building == null && zIsTileVisible) {
            if (buildTool.lod.drawGrid()) {
                if (Settings.darkBuildTool) {
                    drawer.engine.setColor(Colors.WHITE);
                    tree = tree2;
                    buildTool.drawTileOverlayFrame(drawer, i8, i9, ground, Resources.FRAME_TOOLMARK_TILE);
                    buildTool = this;
                    i8 = i;
                    i9 = i2;
                } else {
                    tree = tree2;
                    drawer.engine.setColor(Colors.BLACK);
                    buildTool = this;
                    i8 = i;
                    i9 = i2;
                    buildTool.drawTileOverlayFrame(drawer, i8, i9, ground, Resources.FRAME_TOOLMARK_TILE);
                }
                drawer.engine.setColor(Colors.WHITE);
            } else {
                tree = tree2;
            }
            if (buildTool.marker != null) {
                drawer.useShading = false;
                drawMarkerOverlay(i, i2, drawer);
                drawer.useShading = z;
                engine.setColor(Colors.WHITE);
            }
        } else {
            tree = tree2;
        }
        if (building == null || !building.isPivot(i8, i9, drawer.rotation)) {
            i3 = 0;
            if (zIsTileVisible) {
                drawer.useShading = false;
                drawOnTop(i, i2, drawer);
                drawer.useShading = z;
            }
        } else {
            BuildingDraft draft = building.getDraft();
            buildTool.drawBuildingFenceBG(i8, i9, building, drawer);
            BuildToolMarker buildToolMarker = buildTool.marker;
            if (buildToolMarker != null && buildToolMarker.markBuilding(i8, i9)) {
                if (draft.drawGround) {
                    if (!draft.supportsSlope) {
                        if (draft.drawWaterBorders && !draft.needsWater && draft.needsLand) {
                            buildTool.drawBuildingWaterGroundBorders(i8, i9, building, drawer);
                        }
                        buildTool.drawBuildingTerrainGroundBorders(i8, i9, building, drawer);
                    }
                    int iOriginalToRotatedX = buildTool.city.originalToRotatedX(i8, i9);
                    int iOriginalToRotatedY = buildTool.city.originalToRotatedY(i8, i9);
                    int visualHeight = building.getVisualHeight(drawer.rotation) - 1;
                    while (visualHeight >= 0) {
                        int i10 = 0;
                        while (i10 < building.getVisualWidth(drawer.rotation)) {
                            int i11 = iOriginalToRotatedX;
                            int i12 = i10 + i11;
                            int i13 = iOriginalToRotatedY;
                            int i14 = visualHeight + i13;
                            int iRotatedToOriginalX = buildTool.city.rotatedToOriginalX(i12, i14);
                            int i15 = visualHeight;
                            int iRotatedToOriginalY = buildTool.city.rotatedToOriginalY(i12, i14);
                            drawer.setRealTile(iRotatedToOriginalX, iRotatedToOriginalY);
                            engine.setColor(buildTool.colorBuf);
                            buildTool.drawGround(iRotatedToOriginalX, iRotatedToOriginalY, drawer);
                            engine.setColor(building.isEmpty() ? Colors.DARK_GRAY : Colors.GRAY);
                            buildTool.drawZone(iRotatedToOriginalX, iRotatedToOriginalY, drawer);
                            engine.setColor(Colors.WHITE);
                            drawer.useShading = false;
                            buildTool.drawOnTop(iRotatedToOriginalX, iRotatedToOriginalY, drawer);
                            drawer.useShading = z;
                            i10++;
                            iOriginalToRotatedX = i11;
                            iOriginalToRotatedY = i13;
                            visualHeight = i15;
                        }
                        drawer.setRealTile(i8, i9);
                        visualHeight--;
                    }
                } else {
                    if (draft.drawWaterGround) {
                        buildTool.drawBuildingWaterGround(i8, i9, building, drawer);
                    }
                    buildTool.drawBuildingWaterGroundBorders(i8, i9, building, drawer);
                    buildTool.drawBuildingTerrainGroundBorders(i8, i9, building, drawer);
                }
                engine.setColor(Colors.interpolateLight(buildTool.marker.getBuildingIntensity(i8, i9), Colors.RED, buildTool.marker.getColor(i8, i9, buildTool.tempColor)));
                drawBuilding(i, i2, drawer);
                drawBuildingMarker(i, i2, drawer);
                engine.setColor(Colors.WHITE);
            } else {
                int iOriginalToRotatedX2 = buildTool.city.originalToRotatedX(i8, i9);
                int iOriginalToRotatedY2 = buildTool.city.originalToRotatedY(i8, i9);
                if (draft.drawGround) {
                    if (!draft.supportsSlope) {
                        if (draft.drawWaterBorders && !draft.needsWater && draft.needsLand) {
                            buildTool.drawBuildingWaterGroundBorders(i8, i9, building, drawer);
                        }
                        buildTool.drawBuildingTerrainGroundBorders(i8, i9, building, drawer);
                    }
                    int visualHeight2 = building.getVisualHeight(drawer.rotation) - 1;
                    while (visualHeight2 >= 0) {
                        int i16 = 0;
                        while (i16 < building.getVisualWidth(drawer.rotation)) {
                            int i17 = iOriginalToRotatedX2;
                            int i18 = i16 + i17;
                            int i19 = visualHeight2;
                            int i20 = i19 + iOriginalToRotatedY2;
                            int iRotatedToOriginalX2 = buildTool.city.rotatedToOriginalX(i18, i20);
                            int iRotatedToOriginalY2 = buildTool.city.rotatedToOriginalY(i18, i20);
                            drawer.setRealTile(iRotatedToOriginalX2, iRotatedToOriginalY2);
                            engine.setColor(buildTool.colorBuf);
                            buildTool.drawGround(iRotatedToOriginalX2, iRotatedToOriginalY2, drawer);
                            i16++;
                            iOriginalToRotatedX2 = i17;
                            visualHeight2 = i19;
                            iOriginalToRotatedY2 = iOriginalToRotatedY2;
                        }
                        visualHeight2--;
                    }
                    i5 = iOriginalToRotatedX2;
                    i6 = iOriginalToRotatedY2;
                    drawer.setRealTile(i8, i9);
                    engine.setColor(Colors.WHITE);
                } else {
                    i5 = iOriginalToRotatedX2;
                    i6 = iOriginalToRotatedY2;
                    buildTool.drawBuildingWaterGroundBorders(i8, i9, building, drawer);
                    buildTool.drawBuildingTerrainGroundBorders(i8, i9, building, drawer);
                }
                BuildToolMarker buildToolMarker2 = buildTool.marker;
                if (buildToolMarker2 == null || !buildToolMarker2.ignoreBuilding(i8, i9)) {
                    int visualHeight3 = building.getVisualHeight(drawer.rotation) - 1;
                    while (visualHeight3 >= 0) {
                        int i21 = 0;
                        while (i21 < building.getVisualWidth(drawer.rotation)) {
                            engine.setColor((building.isEmpty() || building.isDestroyed()) ? Colors.DARK_GRAY : Colors.GRAY);
                            int i22 = i21 + i5;
                            int i23 = visualHeight3 + i6;
                            int iRotatedToOriginalX3 = buildTool.city.rotatedToOriginalX(i22, i23);
                            int i24 = visualHeight3;
                            int iRotatedToOriginalY3 = buildTool.city.rotatedToOriginalY(i22, i23);
                            drawer.setRealTile(iRotatedToOriginalX3, iRotatedToOriginalY3);
                            buildTool.drawZone(iRotatedToOriginalX3, iRotatedToOriginalY3, drawer);
                            engine.setColor(Colors.WHITE);
                            drawer.useShading = false;
                            if (buildTool.marker != null) {
                                buildTool.drawMarkerOverlay(iRotatedToOriginalX3, iRotatedToOriginalY3, drawer);
                            }
                            buildTool.drawOnTop(iRotatedToOriginalX3, iRotatedToOriginalY3, drawer);
                            drawer.useShading = z;
                            i21++;
                            visualHeight3 = i24;
                        }
                        visualHeight3--;
                    }
                    drawer.setRealTile(i8, i9);
                } else {
                    int visualHeight4 = building.getVisualHeight(drawer.rotation) - 1;
                    while (visualHeight4 >= 0) {
                        int i25 = 0;
                        while (i25 < building.getVisualWidth(drawer.rotation)) {
                            int i26 = i25 + i5;
                            int i27 = visualHeight4 + i6;
                            int iRotatedToOriginalX4 = buildTool.city.rotatedToOriginalX(i26, i27);
                            int i28 = visualHeight4;
                            int iRotatedToOriginalY4 = buildTool.city.rotatedToOriginalY(i26, i27);
                            drawer.setRealTile(iRotatedToOriginalX4, iRotatedToOriginalY4);
                            engine.setColor((building.isEmpty() || building.isDestroyed()) ? Colors.DARK_GRAY : Colors.GRAY);
                            buildTool.drawZone(iRotatedToOriginalX4, iRotatedToOriginalY4, drawer);
                            engine.setColor(Colors.WHITE);
                            drawer.useShading = false;
                            if (buildTool.drawUndergroundRoad && topRoad != null) {
                                for (int i29 = -2; i29 <= -1; i29++) {
                                    if (buildTool.tiles.getRoad(iRotatedToOriginalX4, iRotatedToOriginalY4, i29) != null) {
                                        buildTool.drawRoad(iRotatedToOriginalX4, iRotatedToOriginalY4, drawer, i29);
                                    }
                                }
                            }
                            buildTool.drawMarkerOverlay(iRotatedToOriginalX4, iRotatedToOriginalY4, drawer);
                            buildTool.drawOnTop(iRotatedToOriginalX4, iRotatedToOriginalY4, drawer);
                            drawer.useShading = z;
                            i25++;
                            visualHeight4 = i28;
                        }
                        visualHeight4--;
                    }
                    drawer.setRealTile(i8, i9);
                }
                engine.setColor(Colors.WHITE);
                if (buildTool.drawBuildingOpaque(building)) {
                    drawBuilding(i, i2, drawer);
                    drawBuildingMarker(i, i2, drawer);
                } else if (buildTool.lod.drawTransparentBuildMode()) {
                    float fMin = Math.min(Math.max(2.0f - (drawer.getYFactor(0) * 3.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
                    float f = fMin * fMin;
                    engine.setTransparency(Math.round(((f * f * 0.6f) + 0.2f) * 255.0f));
                    drawBuilding(i, i2, drawer);
                    drawBuildingMarker(i, i2, drawer);
                    engine.setTransparency(255);
                } else {
                    drawBuildingMarker(i, i2, drawer);
                }
            }
            buildTool.drawBuildingFenceFG(i8, i9, building, drawer);
            i3 = 0;
        }
        Wire wire = buildTool.tiles.getWire(i8, i9, i3);
        if (wire != null) {
            buildTool.drawWire(i8, i9, wire, drawer);
        }
        if (tree != null) {
            buildTool.drawTree(i8, i9, tree, drawer);
        }
        if (road4 != null) {
            engine.setTransparency(150);
            buildTool.drawRoad(i8, i9, drawer, 1);
            i4 = 255;
            engine.setTransparency(255);
        } else {
            i4 = 255;
        }
        if (buildTool.tiles.getRail(i8, i9) != null) {
            engine.setTransparency(150);
            drawRail(i, i2, drawer);
            engine.setTransparency(i4);
        }
        if (road5 != null) {
            engine.setTransparency(150);
            buildTool.drawRoad(i8, i9, drawer, 2);
            engine.setTransparency(i4);
        }
        Wire wire2 = buildTool.tiles.getWire(i8, i9, 1);
        if (wire2 != null) {
            buildTool.drawWire(i8, i9, wire2, drawer);
        }
        if (topRoad != null) {
            for (int i30 = 3; i30 <= topRoad.level; i30++) {
                if (buildTool.tiles.getRoad(i8, i9, i30) != null) {
                    engine.setTransparency(150);
                    buildTool.drawRoad(i8, i9, drawer, i30);
                    engine.setTransparency(255);
                }
            }
        }
        if (buildTool.tiles.hasFence(i8, i9)) {
            buildTool.drawFenceFG(drawer, i8, i9, ground);
        }
    }

    public boolean drawBuildingOpaque(Building building) {
        return building.isLocked();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawTree(int i, int i2, Tree tree, Drawer drawer) {
        BuildToolMarker buildToolMarker;
        if (!tree.isBurning() && ((buildToolMarker = this.marker) == null || !buildToolMarker.markTree(i, i2))) {
            drawer.engine.setTransparency(getTreeTransparency());
            drawer.setClipRect(0, (-16) - ((int) (drawer.terrainHeight * 12.0f)), 32, 32);
        }
        super.drawTree(i, i2, tree, drawer);
        drawer.resetClipping();
        drawer.engine.setTransparency(255);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawGround(int i, int i2, Drawer drawer) {
        super.drawGround(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        Road road = this.tiles.getRoad(i, i2, i3);
        road.draw(drawer, ground.isWater());
        this.traffic.drawRoad(i, i2, road, drawer);
        road.drawForeground(drawer);
        return true;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring
    public void getMiniatureColor(Color color, Tiles tiles, int i, int i2, int i3, boolean z) {
        this.coloring.getMiniatureColor(color, tiles, i, i2, i3, z);
    }

    public Color getMarkerBackgroundColor() {
        return Settings.darkBuildTool ? Colors.BLACK : Colors.LIGHT_GRAY;
    }

    public void drawMarkerOverlay(int i, int i2, Drawer drawer) {
        if (this.marker.useOverlay(i, i2)) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            boolean z = drawer.useShading;
            drawer.useShading = false;
            float fOverlayTempAlpha = this.marker.overlayTempAlpha(i, i2);
            float tempIntensity = this.marker.getTempIntensity(i, i2);
            Engine engine = drawer.engine;
            engine.setColor(Colors.interpolateLight(fOverlayTempAlpha, getMarkerBackgroundColor(), Colors.interpolateLight(tempIntensity, Colors.RED, this.marker.getColor(i, i2, this.tempColor))));
            engine.setTransparency(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_WHITE);
            engine.setTransparency(255);
            drawer.useShading = z;
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        updateMovement();
    }

    public void updateMovement() {
        if (this.movement > 0) {
            int iMillis = (int) (TimeUtils.millis() - this.movement);
            if (iMillis > 100) {
                this.movement = 0L;
                iMillis = 100;
            }
            IsoConverter isoConverter = this.city.getIsoConverter();
            isoConverter.setAbsShift(isoConverter.getAbsShiftX(), (float) (((double) isoConverter.getAbsShiftY()) + (((double) (isoConverter.getAbsScaleY() * 0.5f)) * Math.cos((iMillis / 100) * 3.1415927f))));
        }
    }
}
