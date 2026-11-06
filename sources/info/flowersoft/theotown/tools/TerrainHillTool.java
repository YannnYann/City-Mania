package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.modifier.TerrainBuilder;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.ToolDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class TerrainHillTool extends BuildTool {
    public final ToolDraft TOOL_INCREASE = (ToolDraft) Drafts.get("$tool_terrain_increase00", ToolDraft.class);
    public final ToolDraft TOOL_LOWER = (ToolDraft) Drafts.get("$tool_terrain_lower00", ToolDraft.class);
    public final ToolDraft TOOL_PLATFORM = (ToolDraft) Drafts.get("$tool_terrain_platform00", ToolDraft.class);
    public final ToolDraft draft;
    public boolean notBuildableBecauseOfPrice;
    public long price;
    public int tx;
    public int ty;

    public final boolean isInRadius(int i, int i2, int i3, int i4, int i5) {
        int i6 = i - i3;
        int i7 = i2 - i4;
        return (i6 * i6) + (i7 * i7) <= i5 * i5;
    }

    public TerrainHillTool(ToolDraft toolDraft) {
        this.draft = toolDraft;
        addRadiusActionButtons(1, 1, 10);
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "TerrainHill";
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        Drawer drawer2;
        int i3;
        int i4;
        Ground ground = this.tiles.getGround(i, i2);
        if ((i + i2) % 2 == 1) {
            drawer.engine.setColor(Colors.LIGHT_GRAY);
        }
        if (isValid(i, i2)) {
            int i5 = this.tx;
            if (i5 >= 0) {
                i3 = i;
                i4 = i2;
                if (isInRadius(i, i2, i5, this.ty, this.toolRadius - 1)) {
                    drawer2 = drawer;
                    drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_BLUE_DOTTED);
                }
            } else {
                i3 = i;
                i4 = i2;
            }
            drawer2 = drawer;
            drawTileOverlayFrame(drawer2, i3, i4, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
        } else {
            drawer2 = drawer;
            if (this.notBuildableBecauseOfPrice) {
                drawTileOverlayFrame(drawer2, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
            }
        }
        drawer2.engine.setColor(Colors.WHITE);
    }

    public final TerrainBuilder prepareBuilder(int i, int i2) {
        int i3;
        int i4;
        int i5 = this.toolRadius - 1;
        TerrainBuilder terrainBuilder = this.modifier.getTerrainBuilder();
        ToolDraft toolDraft = this.draft;
        if (toolDraft == this.TOOL_INCREASE) {
            int i6 = i2 - i5;
            while (i6 <= i2 + i5) {
                int i7 = i - i5;
                while (i7 <= i + i5) {
                    if (this.city.isValid(i7, i6)) {
                        i3 = i;
                        i4 = i2;
                        if (isInRadius(i7, i6, i3, i4, i5)) {
                            terrainBuilder.addTargetShifted(i7, i6, 1);
                        }
                    } else {
                        i3 = i;
                        i4 = i2;
                    }
                    i7++;
                    i = i3;
                    i2 = i4;
                }
                i6++;
                i2 = i2;
            }
        } else {
            TerrainHillTool terrainHillTool = this;
            if (toolDraft == terrainHillTool.TOOL_LOWER) {
                for (int i8 = i2 - i5; i8 <= i2 + i5; i8++) {
                    for (int i9 = i - i5; i9 <= i + i5; i9++) {
                        if (terrainHillTool.city.isValid(i9, i8) && terrainHillTool.isInRadius(i9, i8, i, i2, i5)) {
                            terrainBuilder.addTargetShifted(i9, i8, -1);
                        }
                    }
                }
            } else if (toolDraft == terrainHillTool.TOOL_PLATFORM) {
                for (int i10 = i2 - i5; i10 <= i2 + i5; i10++) {
                    int i11 = i - i5;
                    while (i11 <= i + i5) {
                        TerrainHillTool terrainHillTool2 = terrainHillTool;
                        if (terrainHillTool.city.isValid(i11, i10) && terrainHillTool2.isInRadius(i11, i10, i, i2, i5)) {
                            terrainBuilder.addTarget(i11, i10, Math.round(terrainHillTool2.tiles.getTerrainAvgHeight(i, i2)));
                        }
                        i11++;
                        terrainHillTool = terrainHillTool2;
                    }
                }
            }
        }
        terrainBuilder.calculate();
        return terrainBuilder;
    }

    private boolean isValid(int i, int i2) {
        this.notBuildableBecauseOfPrice = false;
        TerrainBuilder terrainBuilderPrepareBuilder = prepareBuilder(i, i2);
        boolean zIsBuildable = terrainBuilderPrepareBuilder.isBuildable();
        if (zIsBuildable) {
            this.price = terrainBuilderPrepareBuilder.getMovedEarth() * 100;
            this.notBuildableBecauseOfPrice = !getBudget().canSpend(this.price);
        }
        terrainBuilderPrepareBuilder.clear();
        return zIsBuildable && !this.notBuildableBecauseOfPrice;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(final int i, final int i2, float f, float f2, int i3, int i4) {
        super.onClick(i, i2, f, f2, i3, i4);
        if (isValid(i, i2)) {
            apply(i, i2);
        } else if (this.notBuildableBecauseOfPrice) {
            this.moneyNeededListener.beg(this.price, new Runnable() { // from class: info.flowersoft.theotown.tools.TerrainHillTool.1
                @Override // java.lang.Runnable
                public void run() {
                    TerrainHillTool.this.apply(i, i2);
                }
            }, "terrainHillPrice", false);
        }
    }

    public final void apply(int i, int i2) {
        TerrainBuilder terrainBuilderPrepareBuilder = prepareBuilder(i, i2);
        if (terrainBuilderPrepareBuilder.isBuildable()) {
            captureState(i, i2, i, i2, i, i2, this.toolRadius + 14);
            if (this.city.canAchieve()) {
                TheoTown.gamesService.unlockAchievement("terraform");
            }
            this.price = terrainBuilderPrepareBuilder.getMovedEarth() * 100;
            getBudget().spend(this.price, i, i2, "build terrain " + terrainBuilderPrepareBuilder.getMovedEarth());
            terrainBuilderPrepareBuilder.apply();
            endCaptureState();
            return;
        }
        terrainBuilderPrepareBuilder.clear();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        City.ScreenToTileData screenToTileDataResolveScreenToTile = this.city.resolveScreenToTile((int) f3, (int) f4);
        if (this.city.isValid(screenToTileDataResolveScreenToTile.originalX, screenToTileDataResolveScreenToTile.originalY)) {
            this.tx = screenToTileDataResolveScreenToTile.originalX;
            this.ty = screenToTileDataResolveScreenToTile.originalY;
        } else {
            this.tx = -1;
            this.ty = -1;
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft) + ", " + this.toolRadius;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return this.draft.frames[0];
    }
}
