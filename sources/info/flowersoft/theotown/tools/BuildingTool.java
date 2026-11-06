package info.flowersoft.theotown.tools;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.IsoConverter;
import info.flowersoft.theotown.city.buildability.NotBuildableReason;
import info.flowersoft.theotown.city.modifier.RoadBuilder;
import info.flowersoft.theotown.city.modifier.ZoneBuilder;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.components.soundsource.BuildingSoundSource;
import info.flowersoft.theotown.components.soundsource.TileSoundSource;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.AnimationSpot;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.Composition;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.LegendEntry;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.ScreenRect;
import java.util.Iterator;
import java.util.List;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingTool extends BuildTool {
    public float absOffsetX;
    public float absOffsetY;
    public MethodCluster afterDrawing;
    public MethodCluster beforeDrawing;
    public boolean buildable;
    public CursorType cursorType;
    public BuildingDraft draft;
    public int frame;
    public long mouseMovedMS;
    public boolean notBuildableBecauseOfPrice;
    public NotBuildableReason notBuildableReason;
    public PostponedCharger postponedCharger;
    public long price;
    public int rotation;
    public int selectedX;
    public int selectedY;
    public ZoneBuilder zoneBuilder;

    public void afterBuilding(Building building) {
    }

    public void beforeBuilding() {
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean ensureValidPosition() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean moveImmediate() {
        return true;
    }

    public BuildingTool(BuildingDraft buildingDraft) {
        this(buildingDraft, -1);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        StringBuilder sb = new StringBuilder();
        sb.append("Building:");
        sb.append(this.draft);
        return sb.toString() != null ? this.draft.id : "";
    }

    public BuildingTool(final BuildingDraft buildingDraft, int i) {
        setDraft(buildingDraft);
        if (buildingDraft != null && !buildingDraft.randomFrame) {
            i = Math.max(i, 0);
        }
        this.frame = i;
        setMarker(new BuildToolMarker() { // from class: info.flowersoft.theotown.tools.BuildingTool.1
            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public int countVariants() {
                return 1;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getBuildingIntensity(int i2, int i3) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public int getIcon() {
                return 0;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getIntensity(int i2, int i3) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public List<LegendEntry> getLegend() {
                return null;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float getTempIntensity(int i2, int i3) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean ignoreBuilding(int i2, int i3) {
                return true;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean markTree(int i2, int i3) {
                return false;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float overlayAlpha(int i2, int i3) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public float overlayTempAlpha(int i2, int i3) {
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public void setVariant(int i2) {
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean useOverlay(int i2, int i3) {
                return false;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public Color getColor(int i2, int i3, Color color) {
                return Colors.WHITE;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean markBuilding(int i2, int i3) {
                Building building = BuildingTool.this.tiles.getBuilding(i2, i3);
                return (building == null || building.getDraft() != buildingDraft || building.getDraft().buildingType.isRCIOrDeco()) ? false : true;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public String getTag() {
                return "";
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildingTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_OK;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdBuildTool";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                BuildingTool.this.onBuild();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                if (BuildingTool.this.draft == null) {
                    return false;
                }
                BuildingTool buildingTool = BuildingTool.this;
                return (buildingTool.buildable || buildingTool.notBuildableBecauseOfPrice) && TimeUtils.millis() - BuildingTool.this.mouseMovedMS > 3000;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isHotkeyActive() {
                if (BuildingTool.this.draft == null) {
                    return false;
                }
                BuildingTool buildingTool = BuildingTool.this;
                return buildingTool.buildable || buildingTool.notBuildableBecauseOfPrice;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public KeyAction getHotkey() {
                return KeyAction.TOOL_BUILDING_BUILD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return BuildingTool.this.city.getTranslator().translate(533);
            }
        });
        if (hasFrames() || buildingDraft == null) {
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildingTool.3
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_NEXT;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdNext";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    BuildingTool.this.nextFrame();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return BuildingTool.this.hasFrames();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public KeyAction getHotkey() {
                    return KeyAction.TOOL_NEXT_VARIANT;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return BuildingTool.this.city.getTranslator().translate(1437);
                }
            });
            this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.BuildingTool.4
                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public int getIcon() {
                    return Resources.ICON_PREVIOUS;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getId() {
                    return "cmdPrev";
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public void onClick() {
                    BuildingTool.this.prevFrame();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public boolean isVisible() {
                    return BuildingTool.this.hasFrames();
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public KeyAction getHotkey() {
                    return KeyAction.TOOL_PREVIOUS_VARIANT;
                }

                @Override // info.flowersoft.theotown.city.toolaction.ToolAction
                public String getName() {
                    return BuildingTool.this.city.getTranslator().translate(2969);
                }
            });
        }
    }

    public void setDraft(BuildingDraft buildingDraft) {
        if (this.draft == buildingDraft) {
            return;
        }
        this.draft = buildingDraft;
        if (buildingDraft != null) {
            ScriptingEnvironment scriptingEnvironment = ScriptingEnvironment.getInstance();
            this.beforeDrawing = scriptingEnvironment.getMethodClusterOrNull("beforeToolDrawing", buildingDraft);
            this.afterDrawing = scriptingEnvironment.getMethodClusterOrNull("afterToolDrawing", buildingDraft);
        } else {
            this.beforeDrawing = null;
            this.afterDrawing = null;
        }
    }

    public BuildingDraft getDraft() {
        return this.draft;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public boolean drawBuildingOpaque(Building building) {
        return super.drawBuildingOpaque(building) || building.getDraft() == this.draft;
    }

    public void setPostponedCharger(PostponedCharger postponedCharger) {
        this.postponedCharger = postponedCharger;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.zoneBuilder = new ZoneBuilder(city);
    }

    public boolean hasFrames() {
        BuildingDraft buildingDraft = this.draft;
        return buildingDraft != null && buildingDraft.frames.length > 1 && buildingDraft.selectableFrames && this.frame >= 0;
    }

    public void nextFrame() {
        BuildingDraft buildingDraft = this.draft;
        if (buildingDraft != null) {
            this.frame = (this.frame + 1) % buildingDraft.frames.length;
        }
    }

    public void prevFrame() {
        BuildingDraft buildingDraft = this.draft;
        if (buildingDraft != null) {
            int i = this.frame - 1;
            int[] iArr = buildingDraft.frames;
            this.frame = (i + iArr.length) % iArr.length;
        }
    }

    public boolean isBuildable() {
        return this.buildable;
    }

    public final int getBuildingWidth() {
        return getBuildingWidth((this.rotation + Math.max(this.frame, 0)) % 4);
    }

    public final int getBuildingHeight() {
        return getBuildingHeight((this.rotation + Math.max(this.frame, 0)) % 4);
    }

    public final int getBuildingWidth(int i) {
        return this.draft.getWidth(i);
    }

    public final int getBuildingHeight(int i) {
        return this.draft.getHeight(i);
    }

    public final void beforeDrawBuilding(int i) {
        MethodCluster methodCluster = this.beforeDrawing;
        if (methodCluster == null || !methodCluster.isNotEmpty()) {
            return;
        }
        this.beforeDrawing.invoke(this.selectedX, this.selectedY, i, this.buildable, this.draft.luaRepr);
    }

    public final void afterDrawBuilding(int i) {
        MethodCluster methodCluster = this.afterDrawing;
        if (methodCluster == null || !methodCluster.isNotEmpty()) {
            return;
        }
        this.afterDrawing.invoke(this.selectedX, this.selectedY, i, this.buildable, this.draft.luaRepr);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void draw(int i, int i2, Drawer drawer) {
        boolean z;
        BuildingTool buildingTool;
        float f;
        float f2;
        float f3;
        boolean z2;
        int i3;
        float f4;
        int i4;
        float f5;
        float f6;
        float f7;
        int i5;
        Image image;
        int i6;
        int i7;
        boolean z3;
        float f8;
        float f9;
        int i8;
        float f10;
        Image image2;
        int i9;
        int i10;
        float f11;
        int iOpposite;
        int i11;
        int length;
        int i12;
        Drawer drawer2 = drawer;
        this.rotation = drawer2.rotation;
        int iMax = Math.max(this.frame, 0);
        int i13 = iMax % 4;
        int i14 = ((-i13) + 4) % 4;
        int i15 = (this.rotation + iMax) % 4;
        boolean z4 = drawer2.useShading;
        super.draw(i, i2, drawer);
        if (this.draft != null) {
            int buildingWidth = getBuildingWidth(i15);
            int buildingHeight = getBuildingHeight(i15);
            drawer2.useShading = false;
            int i16 = this.selectedX;
            if (i >= i16 && i2 >= (i12 = this.selectedY) && i < i16 + buildingWidth && i2 < i12 + buildingHeight) {
                drawTileOverlayFrame(drawer2, i, i2, this.city.getTiles().getGround(i, i2), Resources.FRAME_TOOLMARK_GREEN_DOTTED);
            }
            int buildingWidth2 = getBuildingWidth(i14);
            if (Building.isPivot(i, i2, this.rotation, this.draft, i15, this.selectedX, this.selectedY, buildingWidth2 - 1, 0)) {
                drawer2.addShiftToTile(1 - buildingWidth2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                drawer2.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-getMaxTerrainHeight(this.draft, this.selectedX, this.selectedY, i14)) * 12.0f);
                float f12 = drawer2.x;
                float f13 = drawer2.y;
                float shiftX = drawer2.getShiftX();
                float shiftY = drawer2.getShiftY();
                beforeDrawBuilding(iMax);
                drawer2.x = f12;
                drawer2.y = f13;
                drawer2.setShift(shiftX, shiftY);
                BuildingDraft buildingDraft = this.draft;
                Composition composition = buildingDraft.composition;
                if (composition == null) {
                    buildingTool = this;
                    f = shiftY;
                    buildingTool.drawBuilding(buildingDraft, i, i2, drawer2, iMax);
                    drawer2 = drawer2;
                    f4 = f12;
                    f2 = f13;
                    f3 = shiftX;
                    z2 = z4;
                    i3 = iMax;
                } else {
                    int i17 = iMax;
                    drawer2 = drawer2;
                    float f14 = shiftX;
                    Composition composition2 = composition;
                    buildingTool = this;
                    f = shiftY;
                    Image image3 = Resources.IMAGE_WORLD;
                    int[] iArrListXY = composition2.listXY(i14);
                    int iOriginalToRotatedX = (buildingTool.city.originalToRotatedX(i, i2) + 1) - buildingWidth2;
                    int iOriginalToRotatedY = buildingTool.city.originalToRotatedY(i, i2);
                    int i18 = 0;
                    while (i18 < iArrListXY.length) {
                        boolean z5 = z4;
                        int i19 = iArrListXY[i18];
                        int i20 = iArrListXY[i18 + 1];
                        int i21 = iOriginalToRotatedX;
                        int visualX = composition2.toVisualX(i19, i20, i14);
                        int i22 = i13;
                        int visualY = composition2.toVisualY(i19, i20, i14);
                        boolean z6 = z5;
                        int[] iArr = iArrListXY;
                        int i23 = i21 + visualX;
                        int i24 = i17;
                        int i25 = iOriginalToRotatedY + visualY;
                        int iRotatedToOriginalX = buildingTool.city.rotatedToOriginalX(i23, i25);
                        int i26 = i18;
                        int iRotatedToOriginalY = buildingTool.city.rotatedToOriginalY(i23, i25);
                        if (buildingTool.city.isValid(iRotatedToOriginalX, iRotatedToOriginalY)) {
                            drawer2.addShiftToTile(visualX, visualY);
                            Composition.CompositeBuilding building = composition2.getBuilding(i19, i20);
                            if (building != null) {
                                Composition composition3 = composition2;
                                BuildingDraft buildingDraft2 = building.draft;
                                boolean z7 = buildingDraft2.rotationAware;
                                int i27 = z7 ? building.frame : 0;
                                if (z7) {
                                    i11 = i27;
                                    length = (i22 + building.frame) % buildingDraft2.frames.length;
                                } else {
                                    i11 = i27;
                                    length = building.frame;
                                }
                                int i28 = length;
                                float f15 = f;
                                if (Building.isPivot(i19, i20, i14, buildingDraft2, i11, building.x, building.y, 0, 0)) {
                                    f = f15;
                                    composition2 = composition3;
                                    i6 = i24;
                                    buildingTool = this;
                                    Drawer drawer3 = drawer2;
                                    buildingTool.drawBuilding(building.draft, iRotatedToOriginalX, iRotatedToOriginalY, drawer3, i28);
                                    drawer2 = drawer3;
                                } else {
                                    f = f15;
                                    composition2 = composition3;
                                    i6 = i24;
                                    buildingTool = this;
                                }
                                i4 = i26;
                                z6 = z6;
                                f5 = f12;
                                f6 = f13;
                                f7 = f14;
                                i5 = i14;
                                image = image3;
                            } else {
                                boolean z8 = z6;
                                i6 = i24;
                                if (composition2.hasRoad(i19, i20)) {
                                    int minRoadLevel = composition2.getMinRoadLevel(i19, i20);
                                    int maxRoadLevel = composition2.getMaxRoadLevel(i19, i20);
                                    while (minRoadLevel <= maxRoadLevel) {
                                        float f16 = f12;
                                        Composition.CompositeRoad road = composition2.getRoad(i19, i20, minRoadLevel);
                                        if (road != null) {
                                            int i29 = maxRoadLevel;
                                            buildingTool.setBuildingPreviewColor(drawer2.engine);
                                            int roadAlignment = composition2.getRoadAlignment(i19, i20, minRoadLevel);
                                            float f17 = f14;
                                            int roadDirectionIndex = composition2.getRoadDirectionIndex(i19, i20, minRoadLevel);
                                            int iRotateCW = Direction.rotateCW(roadAlignment, i14);
                                            drawer2.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-minRoadLevel) * 12);
                                            int roadUpDir = composition2.getRoadUpDir(i19, i20, minRoadLevel);
                                            if (roadUpDir == 0) {
                                                buildingTool = this;
                                                f8 = f13;
                                                f10 = f16;
                                                f9 = f17;
                                                i7 = i29;
                                                i9 = i26;
                                                z3 = z8;
                                                i10 = minRoadLevel;
                                                int i30 = i14;
                                                f11 = 0.0f;
                                                image2 = image3;
                                                buildingTool.drawFlatCompositionRoad(drawer2, i30, image2, i19, i20, i10, road, iRotateCW, roadDirectionIndex);
                                                i8 = i30;
                                            } else {
                                                buildingTool = this;
                                                f8 = f13;
                                                f10 = f16;
                                                f9 = f17;
                                                i7 = i29;
                                                i9 = i26;
                                                z3 = z8;
                                                i10 = minRoadLevel;
                                                int i31 = i14;
                                                f11 = 0.0f;
                                                image2 = image3;
                                                if (roadUpDir > 0) {
                                                    iOpposite = road.dir;
                                                } else {
                                                    iOpposite = roadUpDir < 0 ? Direction.opposite(road.dir) : 0;
                                                }
                                                int iRotateCW2 = Direction.rotateCW(iOpposite, i31);
                                                int i32 = road.draft.bridgeFrames[Direction.toIndex(iRotateCW2)];
                                                if (i10 == 0) {
                                                    RoadDraft roadDraft = road.draft;
                                                    i8 = i31;
                                                    if (roadDraft.framesPerBridge >= 16) {
                                                        int i33 = roadDraft.bridgeFrames[Direction.toIndex(iRotateCW2) + 12];
                                                        f11 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                                                        drawer2.draw(image2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i33);
                                                    } else {
                                                        f11 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                                                    }
                                                } else {
                                                    i8 = i31;
                                                }
                                                drawer2.draw(image2, f11, f11, i32);
                                            }
                                            drawer2.engine.setColor(Colors.WHITE);
                                            drawer2.addShift(f11, i10 * 12);
                                        } else {
                                            i7 = maxRoadLevel;
                                            z3 = z8;
                                            f8 = f13;
                                            f9 = f14;
                                            i8 = i14;
                                            f10 = f16;
                                            image2 = image3;
                                            i9 = i26;
                                            i10 = minRoadLevel;
                                        }
                                        minRoadLevel = i10 + 1;
                                        z8 = z3;
                                        image3 = image2;
                                        i26 = i9;
                                        maxRoadLevel = i7;
                                        i14 = i8;
                                        f12 = f10;
                                        f13 = f8;
                                        f14 = f9;
                                    }
                                }
                                i4 = i26;
                                z6 = z8;
                                f5 = f12;
                                f6 = f13;
                                f7 = f14;
                                i5 = i14;
                                image = image3;
                                Composition.CompositeTree tree = composition2.getTree(i19, i20);
                                if (tree != null) {
                                    buildingTool.setBuildingPreviewColor(drawer2.engine);
                                    TreeDraft treeDraft = tree.draft;
                                    drawer2.draw(image, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, treeDraft.frames[tree.frame * treeDraft.framesPerTree]);
                                    drawer2.engine.setColor(Colors.WHITE);
                                }
                                drawer2.addShiftToTile(-visualX, -visualY);
                            }
                            drawer2.addShiftToTile(-visualX, -visualY);
                        } else {
                            i4 = i26;
                            f5 = f12;
                            f6 = f13;
                            f7 = f14;
                            i5 = i14;
                            image = image3;
                            i6 = i24;
                        }
                        i18 = i4 + 2;
                        image3 = image;
                        i17 = i6;
                        i14 = i5;
                        iOriginalToRotatedX = i21;
                        i13 = i22;
                        iArrListXY = iArr;
                        f12 = f5;
                        f13 = f6;
                        f14 = f7;
                        z4 = z6;
                    }
                    f2 = f13;
                    f3 = f14;
                    z2 = z4;
                    i3 = i17;
                    f4 = f12;
                }
                drawer2.x = f4;
                float f18 = f2;
                drawer2.y = f18;
                float f19 = f3;
                drawer2.setShift(f19, f);
                buildingTool.afterDrawBuilding(i3);
                drawer2.x = f4;
                drawer2.y = f18;
                drawer2.setShift(f19, f);
                drawer2.resetShift();
                z = z2;
            } else {
                drawer2 = drawer2;
                z = z4;
            }
        } else {
            z = z4;
        }
        drawer2.useShading = z;
    }

    public final void drawTextOverlay(Drawer drawer) {
        if (this.draft == null) {
            return;
        }
        this.rotation = drawer.rotation;
        int i = ((-(Math.max(this.frame, 0) % 4)) + 4) % 4;
        getBuildingWidth(i);
        int buildingHeight = getBuildingHeight(i);
        drawer.setRealTile(Building.getPivotX(this.selectedX, getBuildingWidth(), this.rotation, 0, 0), Building.getPivotY(this.selectedY, getBuildingHeight(), this.rotation, 0, 0));
        Engine engine = drawer.engine;
        BuildingDraft buildingDraft = this.draft;
        float drawingX = drawer.getDrawingX(((buildingDraft.width + buildingDraft.height) * 32) / 4.0f);
        float drawingY = drawer.getDrawingY((((-buildingHeight) * 16) / 2.0f) - 16.0f);
        engine.reset();
        engine.setScale(1.0f, 1.0f);
        if (isBuildable() || this.notBuildableBecauseOfPrice) {
            long price = getPrice(this.selectedX, this.selectedY);
            long j = this.draft.diamondPrice.get();
            if (this.postponedCharger == null) {
                j = 0;
            }
            if (j > 0) {
                price = j;
            }
            if (j > 0 || !this.city.getGameMode().hasInfinityMoney()) {
                if (this.notBuildableBecauseOfPrice) {
                    engine.setColor(Colors.RED);
                } else if (j > 0) {
                    engine.setColor(Colors.WHITE);
                } else {
                    engine.setColor(Colors.WHITE);
                }
                String strLocalizeDiamonds = j > 0 ? Localizer.localizeDiamonds(j) : Localizer.localizeMoney(price);
                Font font = Resources.skin.fontDefault;
                Drawing.getInstance().drawOutlinedText(strLocalizeDiamonds, drawingX, drawingY, font, Colors.BLACK, engine, 0.5f, 1.0f);
                engine.setColor(Colors.WHITE);
                int i2 = j > 0 ? Resources.ICON_DIAMOND : Resources.ICON_MONEY;
                float scaleX = engine.getScaleX();
                float scaleY = engine.getScaleY();
                engine.setScale(scaleX * 0.5f, 0.5f * scaleY);
                engine.drawImage(Resources.IMAGE_WORLD, drawingX - ((font.getWidth(strLocalizeDiamonds) / 2.0f) * scaleX), drawingY, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, i2);
                engine = engine;
                engine.setScale(scaleX, scaleY);
            }
        } else if (this.notBuildableReason != null) {
            Font font2 = Resources.skin.fontDefault;
            engine.setColor(Colors.RED);
            Drawing.getInstance().drawOutlinedText(this.notBuildableReason.localize(this.city.getTranslator()), drawingX, drawingY, font2, Colors.BLACK, engine, 0.5f, 1.0f);
        }
        engine.reset();
    }

    public final void drawFlatCompositionRoad(Drawer drawer, int i, Image image, int i2, int i3, int i4, Composition.CompositeRoad compositeRoad, int i5, int i6) {
        int[] iArr;
        int i7 = ((i6 + 4) - i) % 4;
        int i8 = i5 + (i7 * 16);
        int[] iArr2 = compositeRoad.draft.frames;
        drawer.draw(image, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, iArr2[i8 % iArr2.length]);
        RoadDraft roadDraft = compositeRoad.draft;
        if (roadDraft.oneWay && (iArr = roadDraft.oneWayFrames) != null) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, iArr[i7]);
        }
        Composition.CompositeRoadDecoration roadDecoration = this.draft.composition.getRoadDecoration(i2, i3, i4);
        if (roadDecoration != null) {
            RoadDecorationDraft roadDecorationDraft = roadDecoration.draft;
            drawAnimationSpots(drawer, roadDecorationDraft.animationSpots, roadDecorationDraft.animationSpotIndices, roadDecorationDraft.animationFGSpots, roadDecorationDraft.animationFGSpotIndices, i8, 0, false);
        }
        Composition.CompositeBusStop busStop = this.draft.composition.getBusStop(i2, i3, i4);
        if (busStop != null) {
            if (!Direction.isIn(2, i5)) {
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, busStop.draft.frames[1]);
            }
            if (!Direction.isIn(4, i5)) {
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, busStop.draft.frames[2]);
            }
            if (!Direction.isIn(1, i5)) {
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, busStop.draft.frames[0]);
            }
            if (Direction.isIn(8, i5)) {
                return;
            }
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, busStop.draft.frames[3]);
        }
    }

    public final float getMaxTerrainHeight(BuildingDraft buildingDraft, int i, int i2, int i3) {
        if (buildingDraft.supportsSlope) {
            return this.city.isValid(i, i2) ? this.city.getTiles().getTerrainAvgHeight(i, i2) : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return this.modifier.getMaxTerrainLevel(i, i2, buildingDraft.getWidth(i3), buildingDraft.getHeight(i3));
    }

    public final void setBuildingPreviewColor(Engine engine) {
        PostponedCharger postponedCharger;
        Color color = Colors.LIGHT_GREEN;
        Color color2 = Colors.YELLOW;
        Color color3 = Colors.RED;
        if (!this.buildable) {
            color = color3;
        }
        engine.setColor(color);
        if (this.notBuildableBecauseOfPrice || !((postponedCharger = this.postponedCharger) == null || postponedCharger.canBeBuilt())) {
            engine.setColor(color2);
        }
    }

    public final void drawBuilding(BuildingDraft buildingDraft, int i, int i2, Drawer drawer, int i3) {
        Engine engine = drawer.engine;
        engine.setType(12);
        engine.setColor(Colors.BLACK);
        drawBuilding(drawer, buildingDraft, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i3);
        drawBuilding(drawer, buildingDraft, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -2.0f, i3);
        drawBuilding(drawer, buildingDraft, -1.0f, -1.0f, i3);
        drawBuilding(drawer, buildingDraft, 1.0f, -1.0f, i3);
        setBuildingPreviewColor(engine);
        drawBuilding(drawer, buildingDraft, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -1.0f, i3);
        engine.setColor(Colors.WHITE);
        if (Settings.buildingToolOld) {
            return;
        }
        engine.setTransparency(200);
        int width = buildingDraft.getWidth(i3);
        int height = buildingDraft.getHeight(i3);
        drawer.draw(Resources.IMAGE_WORLD, (((width + height) - 2) * 32) / 4, ((width - height) * 16) / 4, Resources.FRAME_TOOLMARK);
        engine.setTransparency(255);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        super.drawOnTop(i, i2, drawer);
        BuildingDraft buildingDraft = this.draft;
        if (buildingDraft == null || !buildingDraft.buildZone || buildingDraft.zone.radius <= 0 || !Settings.useZoneRadius) {
            return;
        }
        int buildingWidth = getBuildingWidth();
        int buildingWidth2 = getBuildingWidth();
        int i3 = this.selectedX;
        int iMax = Math.max(i3 - i, ((i - i3) - buildingWidth) + 1);
        int i4 = this.selectedY;
        if (Math.max(iMax, Math.max(i4 - i2, ((i2 - i4) - buildingWidth2) + 1)) == this.draft.zone.radius) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            Engine engine = drawer.engine;
            engine.setColor((i + i2) % 2 == 0 ? Colors.WHITE : Colors.LIGHT_GRAY);
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
            engine.setColor(Colors.WHITE);
        }
    }

    public void drawBuilding(Drawer drawer, BuildingDraft buildingDraft, float f, float f2, int i) {
        Drawer drawer2;
        int length;
        float f3 = f / 2.0f;
        float f4 = f2 / 2.0f;
        int iMax = Math.max(0, i);
        int i2 = (!buildingDraft.rotationAware || (length = buildingDraft.frames.length / 4) <= 0) ? iMax : ((iMax / length) + drawer.rotation) % 4;
        drawer.addShift(f3, f4);
        drawer.draw(Resources.IMAGE_WORLD, f3, f4, buildingDraft.frames[iMax]);
        if (buildingDraft.animationSpots != null) {
            drawer2 = drawer;
            Drawing.getInstance().drawAnimations(drawer2, buildingDraft.animationSpots, buildingDraft.animationSpotIndices, i2, iMax, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, false);
        } else {
            drawer2 = drawer;
        }
        if (buildingDraft.animationFGSpots != null) {
            Drawing.getInstance().drawAnimations(drawer2, buildingDraft.animationFGSpots, buildingDraft.animationFGSpotIndices, i2, iMax, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0, false);
        }
        drawer2.addShift(-f3, -f4);
    }

    public void drawAnimationSpots(Drawer drawer, List<AnimationSpot> list, int[][] iArr, List<AnimationSpot> list2, int[][] iArr2, int i, int i2, boolean z) {
        Image image = Resources.IMAGE_WORLD;
        int i3 = 0;
        int i4 = 0;
        if (list != null) {
            if (iArr == null) {
                for (int i5 = 0; i5 < list.size(); i5++) {
                    Image image2 = image;
                    drawAnimationSpot(drawer, image2, list.get(i5), 0, i2, z);
                    image = image2;
                }
            } else {
                for (int i6 : iArr[i % iArr.length]) {
                    Image image3 = image;
                    drawAnimationSpot(drawer, image3, list.get(i6), 0, i2, z);
                    image = image3;
                }
            }
        }
        if (list2 != null) {
            if (iArr2 == null) {
                while (i3 < list2.size()) {
                    int i7 = i4;
                    drawAnimationSpot(drawer, image, list2.get(i3), i7, i2, z);
                    i4 = i7;
                    i3++;
                }
                return;
            }
            int[] iArr3 = iArr2[i % iArr2.length];
            while (i3 < iArr3.length) {
                int i8 = i4;
                drawAnimationSpot(drawer, image, list2.get(iArr3[i3]), i8, i2, z);
                i4 = i8;
                i3++;
            }
        }
    }

    public final void drawAnimationSpot(Drawer drawer, Image image, AnimationSpot animationSpot, int i, int i2, boolean z) {
        if (animationSpot.flags == 0) {
            int iRound = Math.round(animationSpot.draft.speed * i);
            AnimationDraft animationDraft = animationSpot.draft;
            int[] iArr = animationDraft.frames;
            int length = iRound % iArr.length;
            if (animationDraft.rotationAware && z) {
                length = (iArr.length / 4) * (this.frame % 4);
            }
            drawer.draw(image, animationSpot.x, animationSpot.y, iArr[length]);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        if (!this.buildable || this.draft == null || this.marker == null) {
            return;
        }
        ((DefaultInfluence) this.city.getComponent(2)).setTempInfluence(this.draft.influenceInduceVector, this.selectedX, this.selectedY, getBuildingWidth(), getBuildingHeight());
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        ((DefaultInfluence) this.city.getComponent(2)).clearTempInfluence();
        drawTextOverlay(drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (isWithinBuilding(i, i2, i3, i4) && (this.buildable || this.notBuildableBecauseOfPrice)) {
            onBuild();
        } else if (this.city.isValid(i, i2)) {
            ScreenRect view = this.city.getView();
            this.absOffsetX = i3 - (view.getWidth() / 2.0f);
            this.absOffsetY = i4 - (view.getHeight() / 2.0f);
        }
    }

    public final boolean isWithinBuilding(int i, int i2, int i3, int i4) {
        IsoConverter isoConverter = this.city.getIsoConverter();
        int maxTerrainHeight = (int) (i4 + (getMaxTerrainHeight(this.draft, this.selectedX, this.selectedY, ((-this.frame) + 4) % 4) * 12.0f * isoConverter.getAbsScaleY()));
        int buildingWidth = getBuildingWidth();
        int buildingHeight = getBuildingHeight();
        int i5 = 0;
        while (i5 <= this.draft.buildHeight / 2) {
            int i6 = i - this.selectedX;
            int i7 = i2 - this.selectedY;
            if (i6 >= 0 && i6 < buildingWidth && i7 >= 0 && i7 < buildingHeight) {
                return true;
            }
            int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2) + 1;
            int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2) - 1;
            int iRotatedToOriginalX = this.city.rotatedToOriginalX(iOriginalToRotatedX, iOriginalToRotatedY);
            i5++;
            i2 = this.city.rotatedToOriginalY(iOriginalToRotatedX, iOriginalToRotatedY);
            i = iRotatedToOriginalX;
        }
        int iOriginalToRotatedX2 = this.city.originalToRotatedX(this.selectedX, this.selectedY);
        int iOriginalToRotatedY2 = this.city.originalToRotatedY(this.selectedX, this.selectedY);
        int iIsoToAbsX = isoConverter.isoToAbsX(iOriginalToRotatedX2, iOriginalToRotatedY2);
        int iIsoToAbsY = isoConverter.isoToAbsY(iOriginalToRotatedX2, iOriginalToRotatedY2);
        return i3 >= iIsoToAbsX + (-32) && ((float) i3) <= (((float) iIsoToAbsX) + ((isoConverter.getAbsScaleX() * 32.0f) * ((float) buildingWidth))) + ((float) 32) && maxTerrainHeight <= iIsoToAbsY + 16 && ((float) maxTerrainHeight) >= (((float) iIsoToAbsY) - (((float) (this.draft.buildHeight * 8)) * isoConverter.getAbsScaleY())) - ((float) 16);
    }

    public final void ensureWaterMask(JSONArray jSONArray) {
        int i;
        int i2;
        int i3;
        int buildingWidth = getBuildingWidth();
        int buildingHeight = getBuildingHeight();
        if (jSONArray == null || jSONArray.length() < (i = buildingWidth * buildingHeight)) {
            return;
        }
        boolean[] zArr = new boolean[i];
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = (this.frame + this.rotation) % 4;
            if (i5 > 0) {
                int i6 = i4 % buildingWidth;
                int i7 = i4 / buildingWidth;
                if (i5 == 1) {
                    i6 = (buildingWidth - i7) - 1;
                    i3 = i6;
                } else if (i5 == 2) {
                    i6 = (buildingWidth - i6) - 1;
                    i3 = (buildingHeight - i7) - 1;
                } else if (i5 != 3) {
                    i3 = i7;
                } else {
                    i3 = (buildingHeight - i6) - 1;
                    i6 = i7;
                }
                i2 = i6 + (i3 * buildingWidth);
            } else {
                i2 = i4;
            }
            zArr[i4] = jSONArray.optBoolean(i2);
        }
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = i8 % buildingWidth;
            int i10 = i8 / buildingWidth;
            boolean zIsGroundWater = this.city.getTiles().isGroundWater(this.selectedX + i9, this.selectedY + i10);
            boolean z = zArr[i8];
            if (zIsGroundWater != z && this.modifier.isTerrainBuildable(z, this.selectedX + i9, this.selectedY + i10)) {
                this.modifier.buildTerrain(zArr[i8], this.selectedX + i9, this.selectedY + i10, null);
            }
        }
    }

    public void onBuild() {
        PostponedCharger postponedCharger = this.postponedCharger;
        if (postponedCharger != null) {
            postponedCharger.charge(new Getter<Building>() { // from class: info.flowersoft.theotown.tools.BuildingTool.5
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // io.blueflower.stapel2d.util.Getter
                public Building get() {
                    return BuildingTool.this.finallyBuild(true, false);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tools.BuildingTool.6
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        } else {
            finallyBuild(false, true);
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        super.undo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        super.redo(z);
        recalculate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [boolean, int] */
    public final Building finallyBuild(boolean z, boolean z2) {
        long j;
        ?? r4;
        List<Building> list;
        int i;
        Building building;
        String strOptString;
        JSONArray jSONArrayOptJSONArray;
        if (!this.buildable && !this.notBuildableBecauseOfPrice) {
            return null;
        }
        if (this.notBuildableBecauseOfPrice && !z) {
            long j2 = this.price;
            if (j2 > 0) {
                this.moneyNeededListener.beg(j2 - Math.max(Math.round(getBudget().getEstate()), 0L), new Runnable() { // from class: info.flowersoft.theotown.tools.BuildingTool.7
                    @Override // java.lang.Runnable
                    public void run() {
                        BuildingTool.this.update();
                        BuildingTool.this.finallyBuild(true, true);
                    }
                }, this.draft.id, false);
                return null;
            }
        }
        ZoneDraft zoneDraft = this.draft.zone;
        int buildingWidth = getBuildingWidth();
        int buildingHeight = getBuildingHeight();
        if (this.draft.buildZone && zoneDraft.placeable) {
            this.zoneBuilder.setZone(zoneDraft);
            ZoneBuilder zoneBuilder = this.zoneBuilder;
            int i2 = this.selectedX;
            int i3 = this.selectedY;
            zoneBuilder.setArea(i2, i3, (i2 + buildingWidth) - 1, (i3 + buildingHeight) - 1);
            if (this.zoneBuilder.isBuildable()) {
                this.zoneBuilder.build();
            }
        }
        JSONObject jSONObject = this.draft.meta;
        if (jSONObject != null && jSONObject.has("water mask")) {
            ensureWaterMask(this.draft.meta.optJSONArray("water mask"));
        }
        beforeBuilding();
        getBudget().spend(this.price, (this.selectedX + (buildingWidth / 2.0f)) - 0.5f, (this.selectedY + (buildingHeight / 2.0f)) - 0.5f, "build " + this.draft.id);
        int i4 = this.frame;
        int frame = (((i4 % 4) + this.rotation) % 4) + ((i4 / 4) * 4);
        BuildingDraft buildingDraft = this.draft;
        List<Building> listBuild = this.modifier.build(buildingDraft, this.selectedX, this.selectedY, buildingDraft.rotationAware ? frame : i4, (LuaValue) null);
        Building building2 = (listBuild == null || listBuild.isEmpty()) ? null : listBuild.get(0);
        BuildingDraft buildingDraft2 = this.draft;
        if (buildingDraft2.composition == null && building2 != null) {
            frame = buildingDraft2.rotationAware ? building2.getFrame() % 4 : 0;
            building2.getFrame();
        }
        JSONObject metaTag = this.draft.getMetaTag("build rail");
        if (metaTag == null || (strOptString = metaTag.optString(C3670j8.x)) == null) {
            j = 0;
        } else {
            IntList intList = new IntList();
            intList.add(0);
            if (!metaTag.has("offsets") || (jSONArrayOptJSONArray = metaTag.optJSONArray("offsets")) == null) {
                j = 0;
            } else {
                intList.clear();
                j = 0;
                for (int i5 = 0; i5 < jSONArrayOptJSONArray.length(); i5++) {
                    intList.add(jSONArrayOptJSONArray.optInt(i5));
                }
            }
            Draft draft = Drafts.ALL.get(strOptString);
            if (draft instanceof RailDraft) {
                RailDraft railDraft = (RailDraft) draft;
                for (int i6 = 0; i6 < intList.size(); i6++) {
                    buildRail(railDraft, frame, intList.get(i6));
                }
            } else if (draft instanceof RoadDraft) {
                int iOptInt = metaTag.optInt("level");
                boolean zOptBoolean = metaTag.optBoolean("all", false);
                int iOptInt2 = metaTag.optInt("dir", 1);
                RoadDraft roadDraft = (RoadDraft) draft;
                int i7 = 0;
                while (i7 < intList.size()) {
                    boolean z3 = zOptBoolean;
                    int i8 = iOptInt;
                    int i9 = iOptInt2;
                    RoadDraft roadDraft2 = roadDraft;
                    buildRoad(roadDraft2, frame, i8, z3, i9, intList.get(i7));
                    i7++;
                    roadDraft = roadDraft2;
                    iOptInt2 = i9;
                    iOptInt = i8;
                    zOptBoolean = z3;
                    intList = intList;
                }
            }
        }
        if (building2 != null) {
            building2.setSpentMoney((int) MathUtils.clamp(this.price, -2147483648L, 2147483646L));
        }
        if (listBuild != null && this.city.getGameMode().buildImmediately()) {
            Iterator<Building> it = listBuild.iterator();
            while (it.hasNext()) {
                this.modifier.finishBuilding(it.next(), null);
            }
        }
        if (building2 != null && this.draft.composition == null) {
            this.soundManager.playOnce(Resources.SOUND_BUILD, SoundType.GAME, new BuildingSoundSource(this.city, building2));
            r4 = 1;
            list = listBuild;
            i = 0;
            building = building2;
        } else {
            r4 = 1;
            list = listBuild;
            i = 0;
            building = building2;
            this.soundManager.playOnce(Resources.SOUND_BUILD, SoundType.GAME, new TileSoundSource(this.city, this.selectedX, this.selectedY, buildingWidth, buildingHeight));
        }
        if (Settings.autoUntouchable && list != null) {
            for (Building building3 : list) {
                if (building3.getDraft().buildingType.isRCIOrDeco()) {
                    building3.setUntouchable(r4);
                }
            }
        }
        if (list != null) {
            Iterator<Building> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().markAsNewlyBuilt();
            }
        }
        issueMovement();
        BuildingDraft buildingDraft3 = this.draft;
        if (buildingDraft3.water > j || buildingDraft3.waterWaste < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            PipeDraft pipeDraft = Drafts.PIPES.get(i);
            for (int i10 = this.selectedX; i10 < this.selectedX + buildingWidth; i10++) {
                int i11 = this.selectedY;
                while (true) {
                    int i12 = this.selectedY;
                    if (i11 < i12 + buildingHeight) {
                        int i13 = this.selectedX;
                        if ((i10 == i13 || i11 == i12 || i10 == (i13 + buildingWidth) - r4 || i11 == (i12 + buildingHeight) - r4) && this.modifier.isBuildable(pipeDraft, i10, i11, i10, i11)) {
                            this.modifier.build(pipeDraft, i10, i11, i10, i11);
                        }
                        i11++;
                    }
                }
            }
        }
        TheoTown.analytics.logEvent("building", "build", this.draft.id);
        if (building != null) {
            afterBuilding(building);
        }
        recalculate();
        return building;
    }

    public final void recalculate() {
        ((DefaultPower) this.city.getComponent(5)).calculate();
        ((DefaultWater) this.city.getComponent(8)).calculate();
    }

    public final void buildRoad(RoadDraft roadDraft, int i, int i2, boolean z, int i3, int i4) {
        int i5;
        BuildingTool buildingTool = this;
        RoadBuilder roadBuilder = buildingTool.modifier.getRoadBuilder();
        int buildingWidth = buildingTool.getBuildingWidth();
        int buildingHeight = buildingTool.getBuildingHeight();
        int i6 = i;
        int i7 = i3;
        while (i7 != 0) {
            if ((i7 & 1) != 0) {
                int iAxis = Direction.axis(Direction.fromIndex(i6 % 4)) & 3;
                int iDifferenceX = Direction.differenceX(iAxis);
                int iDifferenceY = Direction.differenceY(iAxis);
                int i8 = 0;
                while (i8 < buildingWidth) {
                    int i9 = buildingTool.selectedX;
                    int i10 = buildingTool.selectedY;
                    if (iAxis == 1) {
                        i10 = z ? i10 + i8 : i10 + (buildingHeight / 2) + i4;
                    } else {
                        i9 = z ? i9 + i8 : i9 + (buildingWidth / 2) + i4;
                    }
                    int i11 = ((buildingWidth - 1) * iDifferenceX) + i9;
                    int i12 = ((buildingHeight - 1) * iDifferenceY) + i10;
                    roadBuilder.setLine(i9, i10, i11, i12);
                    roadBuilder.setLevels(i2);
                    roadBuilder.setDraft(roadDraft, null);
                    roadBuilder.build();
                    int i13 = i9 - iDifferenceX;
                    i5 = buildingWidth;
                    int i14 = i10 - iDifferenceY;
                    roadBuilder.setLine(i13, i14, i11, i12);
                    roadBuilder.setLevels(i2);
                    roadBuilder.setDraft(roadDraft, null);
                    if (roadBuilder.isBuildable()) {
                        i9 = i13;
                        i10 = i14;
                    }
                    int i15 = i11 + iDifferenceX;
                    int i16 = i12 + iDifferenceY;
                    roadBuilder.setLine(i9, i10, i15, i16);
                    roadBuilder.setLevels(i2);
                    roadBuilder.setDraft(roadDraft, null);
                    if (roadBuilder.isBuildable()) {
                        i12 = i16;
                        i11 = i15;
                    }
                    roadBuilder.setLine(i9, i10, i11, i12);
                    roadBuilder.setLevels(i2);
                    roadBuilder.setDraft(roadDraft, null);
                    roadBuilder.build();
                    if (!z) {
                        break;
                    }
                    i8++;
                    buildingTool = this;
                    buildingWidth = i5;
                }
                i5 = buildingWidth;
            } else {
                i5 = buildingWidth;
            }
            i6++;
            i7 /= 2;
            buildingTool = this;
            buildingWidth = i5;
        }
    }

    public final void buildRail(RailDraft railDraft, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int iAxis = Direction.axis(Direction.fromIndex(i % 4)) & 3;
        int iDifferenceX = Direction.differenceX(iAxis);
        int iDifferenceY = Direction.differenceY(iAxis);
        int buildingWidth = getBuildingWidth();
        int buildingHeight = getBuildingHeight();
        if (iAxis == 1) {
            i3 = this.selectedX;
            i4 = this.selectedY + (buildingHeight / 2) + i2;
        } else {
            i3 = this.selectedX + (buildingWidth / 2) + i2;
            i4 = this.selectedY;
        }
        int i7 = i3;
        int i8 = i4;
        int i9 = i7 + ((buildingWidth - 1) * iDifferenceX);
        int i10 = i8 + ((buildingHeight - 1) * iDifferenceY);
        this.modifier.build(railDraft, i7, i8, i9, i10, null);
        int i11 = i7 - iDifferenceX;
        int i12 = i8 - iDifferenceY;
        if (!this.modifier.isBuildable(railDraft, i11, i12, i9, i10)) {
            i11 = i7;
            i12 = i8;
        }
        int i13 = i9 + iDifferenceX;
        int i14 = i10 + iDifferenceY;
        if (this.modifier.isBuildable(railDraft, i11, i12, i13, i14)) {
            i5 = i13;
            i6 = i14;
        } else {
            i5 = i9;
            i6 = i10;
        }
        this.modifier.build(railDraft, i11, i12, i5, i6, null);
    }

    public final void inferPosition() {
        ScreenRect view = this.city.getIsoConverter().getView();
        City.ScreenToTileData screenToTileDataResolveScreenToTile = this.city.resolveScreenToTile(((int) (view.getWidth() / 2.0f)) + ((int) this.absOffsetX), ((int) (view.getHeight() / 2.0f)) + ((int) this.absOffsetY));
        if (screenToTileDataResolveScreenToTile == null || this.draft == null) {
            if (screenToTileDataResolveScreenToTile != null) {
                int i = screenToTileDataResolveScreenToTile.originalX;
                this.selectedX = i;
                this.selectedY = screenToTileDataResolveScreenToTile.originalY;
                this.selectedX = Math.min(Math.max(i, 0), this.city.getWidth() - 1);
                this.selectedY = Math.min(Math.max(this.selectedY, 0), this.city.getHeight() - 1);
                return;
            }
            return;
        }
        int buildingWidth = getBuildingWidth() - 1;
        int buildingHeight = getBuildingHeight() - 1;
        int i2 = screenToTileDataResolveScreenToTile.originalX - (buildingWidth / 2);
        this.selectedX = i2;
        this.selectedY = screenToTileDataResolveScreenToTile.originalY - (buildingHeight / 2);
        this.selectedX = Math.min(Math.max(i2, 0), this.city.getWidth() - buildingWidth);
        this.selectedY = Math.min(Math.max(this.selectedY, 0), this.city.getHeight() - buildingHeight);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        if (this.draft != null) {
            inferPosition();
            if (!isBuildable(this.selectedX, this.selectedY)) {
                int[] iArr = {1, 0, -1, 0, 1, 1, -1, -1};
                int[] iArr2 = {0, 1, 0, -1, 1, -1, -1, 1};
                int i = 0;
                while (true) {
                    if (i >= 8) {
                        break;
                    }
                    if (isBuildable(this.selectedX + iArr[i], this.selectedY + iArr2[i])) {
                        this.selectedX += iArr[i];
                        this.selectedY += iArr2[i];
                        break;
                    }
                    i++;
                }
            }
            this.price = getPrice(this.selectedX, this.selectedY);
            boolean zIsBuildable = isBuildable(this.selectedX, this.selectedY);
            this.buildable = zIsBuildable;
            boolean z = zIsBuildable && !getBudget().canSpend(this.price);
            this.notBuildableBecauseOfPrice = z;
            if (this.buildable && z) {
                this.notBuildableReason = NotBuildableReason.NoMoney;
                this.buildable = false;
            }
            this.cursorType = isBuildable() ? CursorType.Build : this.notBuildableBecauseOfPrice ? CursorType.NoMoney : CursorType.NotAllowed;
            return;
        }
        this.cursorType = null;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public CursorType getCursorType() {
        return this.cursorType;
    }

    public long getPrice(int i, int i2) {
        long price = this.modifier.getPrice(this.draft, 1);
        BuildingDraft buildingDraft = this.draft;
        ZoneDraft zoneDraft = buildingDraft.zone;
        if (!zoneDraft.placeable || !buildingDraft.buildZone) {
            return price;
        }
        int buildingWidth = getBuildingWidth();
        int buildingHeight = getBuildingHeight();
        this.zoneBuilder.setZone(zoneDraft);
        this.zoneBuilder.setArea(i, i2, (buildingWidth + i) - 1, (buildingHeight + i2) - 1);
        return this.zoneBuilder.isBuildable() ? price + this.zoneBuilder.getPrice() : price;
    }

    public boolean isBuildable(int i, int i2) {
        BuildingDraft buildingDraft = this.draft;
        ZoneDraft zoneDraft = buildingDraft.zone;
        int i3 = this.frame;
        int i4 = buildingDraft.rotationAware ? (((i3 % 4) + this.rotation) % 4) + ((i3 / 4) * 4) : i3;
        this.notBuildableReason = null;
        if (zoneDraft.placeable && buildingDraft.buildZone) {
            int buildingWidth = getBuildingWidth();
            int buildingHeight = getBuildingHeight();
            this.zoneBuilder.setZone(zoneDraft);
            this.zoneBuilder.setArea(i, i2, (buildingWidth + i) - 1, (buildingHeight + i2) - 1);
            if (!this.zoneBuilder.isBuildable()) {
                this.notBuildableReason = NotBuildableReason.Zone;
                return false;
            }
        }
        NotBuildableReason notBuildableReasonIsBuildable = this.modifier.isBuildable(this.draft, i, i2, false, true, i4);
        this.notBuildableReason = notBuildableReasonIsBuildable;
        return notBuildableReasonIsBuildable == null;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        if (Settings.buildingToolOld) {
            return false;
        }
        IsoConverter isoConverter = this.city.getIsoConverter();
        int i3 = (int) f;
        int i4 = (int) f2;
        int iAbsToIsoX = isoConverter.absToIsoX(i3, i4);
        int iAbsToIsoY = isoConverter.absToIsoY(i3, i4);
        return isWithinBuilding(this.city.rotatedToOriginalX(iAbsToIsoX, iAbsToIsoY), this.city.rotatedToOriginalY(iAbsToIsoX, iAbsToIsoY), i3, i4);
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        this.absOffsetX += f3;
        this.absOffsetY += f4;
        return true;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        ScreenRect view = this.city.getIsoConverter().getView();
        this.absOffsetX = f3 - (view.getWidth() / 2.0f);
        this.absOffsetY = f4 - (view.getHeight() / 2.0f);
        this.mouseMovedMS = TimeUtils.millis();
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean reversedMovement() {
        return Settings.reversedBuildTool;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return this.draft.getIcon();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        String title = new DraftLocalizer(this.city).getTitle(this.draft);
        if (!hasFrames()) {
            return title;
        }
        return title + StringFormatter.format(" %1$,d/%2$,d", Integer.valueOf(this.frame + 1), Integer.valueOf(this.draft.frames.length));
    }
}
