package info.flowersoft.theotown.tools;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.components.LODController;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.miniatureview.DefaultMiniatureViewColoring;
import info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.GroundNeighborhood;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultIdleGame;
import info.flowersoft.theotown.components.DefaultInfluence;
import info.flowersoft.theotown.components.DefaultSigns;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.FenceDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.SoundType;
import info.flowersoft.theotown.scripting.MethodCluster;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.IntList;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultTool extends Tool {
    public final IntList buildIndicators;
    public Color colorBuf = Colors.WHITE.copy();
    public MiniatureViewColoring coloring;
    public boolean drawUnderground;
    public boolean drawnTargetHover;
    public int drawnTargetX;
    public int drawnTargetY;
    public final AnimationDraft groundBorders;
    public final GroundNeighborhood groundNeighborhood;
    public final AnimationDraft groundSnowOverlay;
    public DefaultInfluence influence;
    public LODController lod;
    public CityModifier modifier;
    public final AnimationDraft roadSnowOverlay;
    public DefaultSoundManager soundManager;
    public DefaultTraffic traffic;
    public boolean useZoneSetting;

    public void drawTerrainBorders(int i, int i2, Drawer drawer) {
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
    }

    @Override // info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
    }

    public DefaultTool() {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$groundborder", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        this.groundBorders = animationDraft;
        AnimationDraft animationDraft2 = (AnimationDraft) Drafts.get("$anim_road_snow_overlay00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft2);
        this.roadSnowOverlay = animationDraft2;
        AnimationDraft animationDraft3 = (AnimationDraft) Drafts.get("$anim_ground_snow_overlay00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft3);
        this.groundSnowOverlay = animationDraft3;
        this.useZoneSetting = true;
        this.buildIndicators = new IntList();
        this.groundNeighborhood = new GroundNeighborhood(8);
        this.coloring = new DefaultMiniatureViewColoring();
    }

    public void playSound(int i, final int i2, final int i3, final int i4, final int i5) {
        this.soundManager.playOnce(i, SoundType.GAME, new AbstractTileSoundSource(this.city) { // from class: info.flowersoft.theotown.tools.DefaultTool.1
            @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
            public boolean isValid() {
                return true;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileX() {
                return i2;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public float getTileY() {
                return i3;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileWidth() {
                return i4;
            }

            @Override // info.flowersoft.theotown.components.soundsource.AbstractTileSoundSource
            public int getTileHeight() {
                return i5;
            }
        });
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.modifier = new CityModifier(city, true);
        this.traffic = (DefaultTraffic) city.getComponent(7);
        this.influence = (DefaultInfluence) city.getComponent(2);
        this.soundManager = (DefaultSoundManager) city.getComponent(15);
        this.lod = city.getLod();
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        this.drawnTargetHover = !z;
        this.drawnTargetX = i;
        this.drawnTargetY = i2;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void cancelMouse() {
        this.drawnTargetHover = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f9  */
    @Override // info.flowersoft.theotown.city.components.Tool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(int r23, int r24, info.flowersoft.theotown.city.Drawer r25) {
        /*
            Method dump skipped, instruction units count: 730
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tools.DefaultTool.draw(int, int, info.flowersoft.theotown.city.Drawer):void");
    }

    public void drawBuildingFenceBG(int i, int i2, Building building, Drawer drawer) {
        int i3;
        int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
        building.getDraft();
        if (this.drawUnderground) {
            drawer.engine.setTransparency(100);
        }
        int visualWidth = building.getVisualWidth(drawer.rotation);
        int visualHeight = building.getVisualHeight(drawer.rotation);
        int i4 = (visualWidth + visualHeight) - 1;
        int i5 = 0;
        while (i5 < i4) {
            int i6 = i5 + 1;
            if (i6 >= visualWidth) {
                i5 = visualWidth - 1;
                i3 = (visualHeight - 1) - (i6 - visualWidth);
            } else {
                i3 = 0;
            }
            drawer.addShiftToTile(i5, i3);
            int i7 = i5 + iOriginalToRotatedX;
            int i8 = i3 + iOriginalToRotatedY;
            int iRotatedToOriginalX = this.city.rotatedToOriginalX(i7, i8);
            int iRotatedToOriginalY = this.city.rotatedToOriginalY(i7, i8);
            if (this.tiles.hasFence(iRotatedToOriginalX, iRotatedToOriginalY)) {
                drawFenceBG(drawer, iRotatedToOriginalX, iRotatedToOriginalY, this.city.getTiles().getGround(iRotatedToOriginalX, iRotatedToOriginalY));
            }
            drawer.resetShift();
            i5 = i6;
        }
        drawer.engine.setTransparency(255);
    }

    public void drawBuildingFenceFG(int i, int i2, Building building, Drawer drawer) {
        int i3;
        int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
        building.getDraft();
        if (this.drawUnderground) {
            drawer.engine.setTransparency(100);
        }
        int visualWidth = building.getVisualWidth(drawer.rotation);
        int visualHeight = building.getVisualHeight(drawer.rotation);
        int i4 = (visualWidth + visualHeight) - 1;
        int i5 = 0;
        while (i5 < i4) {
            int i6 = i5 + 1;
            if (i6 >= visualWidth) {
                i5 = visualWidth - 1;
                i3 = (visualHeight - 1) - (i6 - visualWidth);
            } else {
                i3 = 0;
            }
            drawer.addShiftToTile(i5, i3);
            int i7 = i5 + iOriginalToRotatedX;
            int i8 = i3 + iOriginalToRotatedY;
            int iRotatedToOriginalX = this.city.rotatedToOriginalX(i7, i8);
            int iRotatedToOriginalY = this.city.rotatedToOriginalY(i7, i8);
            if (this.tiles.hasFence(iRotatedToOriginalX, iRotatedToOriginalY)) {
                drawFenceFG(drawer, iRotatedToOriginalX, iRotatedToOriginalY, this.city.getTiles().getGround(iRotatedToOriginalX, iRotatedToOriginalY));
            }
            drawer.resetShift();
            i5 = i6;
        }
        drawer.engine.setTransparency(255);
    }

    public void drawFenceBG(Drawer drawer, int i, int i2, Ground ground) {
        boolean zIsFlat = ground.isFlat();
        FenceDraft fence = this.tiles.getFence(i, i2, (drawer.rotation + 1) % 4);
        FenceDraft fence2 = this.tiles.getFence(i, i2, (drawer.rotation + 2) % 4);
        byte terrainHeight = ground.getTerrainHeight(drawer.rotation + 3);
        byte terrainHeight2 = ground.getTerrainHeight(drawer.rotation + 2);
        byte terrainHeight3 = ground.getTerrainHeight(drawer.rotation + 1);
        int i3 = 0;
        if (fence != null) {
            int i4 = (zIsFlat || fence.frames.length < 6) ? 0 : terrainHeight3 - terrainHeight2;
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight2, (int) terrainHeight3) * (-12));
            if (i4 > 0) {
                drawFencePart(drawer, fence, 15, -9, 2);
            } else if (i4 < 0) {
                drawFencePart(drawer, fence, 16, -8, 4);
            } else {
                drawFencePart(drawer, fence, 16, -8, 0);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight2, (int) terrainHeight3) * 12);
        }
        if (fence2 != null) {
            if (!zIsFlat && fence2.frames.length >= 6) {
                i3 = terrainHeight2 - terrainHeight;
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight, (int) terrainHeight2) * (-12));
            if (i3 > 0) {
                drawFencePart(drawer, fence2, -2, -8, 3);
            } else if (i3 < 0) {
                drawFencePart(drawer, fence2, 0, -9, 5);
            } else {
                drawFencePart(drawer, fence2, 0, -8, 1);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight, (int) terrainHeight2) * 12);
        }
    }

    public void drawFenceFG(Drawer drawer, int i, int i2, Ground ground) {
        boolean zIsFlat = ground.isFlat();
        FenceDraft fence = this.tiles.getFence(i, i2, drawer.rotation % 4);
        FenceDraft fence2 = this.tiles.getFence(i, i2, (drawer.rotation + 3) % 4);
        byte terrainHeight = ground.getTerrainHeight(drawer.rotation + 3);
        byte terrainHeight2 = ground.getTerrainHeight(drawer.rotation);
        byte terrainHeight3 = ground.getTerrainHeight(drawer.rotation + 1);
        int i3 = 0;
        if (fence != null) {
            int i4 = (zIsFlat || fence.frames.length < 6) ? 0 : terrainHeight3 - terrainHeight2;
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight2, (int) terrainHeight3) * (-12));
            if (i4 > 0) {
                drawFencePart(drawer, fence, 14, 0, 3);
            } else if (i4 < 0) {
                drawFencePart(drawer, fence, 16, -1, 5);
            } else {
                drawFencePart(drawer, fence, 16, 0, 1);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight2, (int) terrainHeight3) * 12);
        }
        if (fence2 != null) {
            if (!zIsFlat && fence2.frames.length >= 6) {
                i3 = terrainHeight2 - terrainHeight;
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight, (int) terrainHeight2) * (-12));
            if (i3 > 0) {
                drawFencePart(drawer, fence2, -1, -1, 2);
            } else if (i3 < 0) {
                drawFencePart(drawer, fence2, 0, 0, 4);
            } else {
                drawFencePart(drawer, fence2, 0, 0, 0);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Math.min((int) terrainHeight, (int) terrainHeight2) * 12);
        }
    }

    public final void drawFencePart(Drawer drawer, FenceDraft fenceDraft, int i, int i2, int i3) {
        drawer.engine.setType(26);
        float f = i;
        float f2 = i2;
        drawer.draw(Resources.IMAGE_WORLD, f, f2, fenceDraft.frames[i3]);
        boolean zLightsOn = lightsOn(drawer, 1234);
        if (fenceDraft.animationSpots != null) {
            drawer.addShift(f, f2);
            Drawing.getInstance().drawAnimations(drawer, fenceDraft.animationSpots, fenceDraft.animationSpotIndices, i3, i3, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
            drawer.addShift(-i, -i2);
        }
    }

    public final boolean lightsOn(Drawer drawer, int i) {
        return 1.0f - Math.abs(1.0f - ((((drawer.daytime + 0.05f) + (((float) ((Math.abs(((long) Math.floor(drawer.daytimeDay + 0.5d)) * 2987) % 10) - 5)) / 200.0f)) % 1.0f) * 2.0f)) < 0.4f;
    }

    public void drawBuildingWaterGround(int i, int i2, Building building, Drawer drawer) {
        int visualWidth = building.getVisualWidth(drawer.rotation);
        int visualHeight = building.getVisualHeight(drawer.rotation);
        int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
        drawer.engine.setType(12);
        for (int i3 = visualHeight - 1; i3 >= 0; i3--) {
            for (int i4 = 0; i4 < visualWidth; i4++) {
                int i5 = i4 + iOriginalToRotatedX;
                int i6 = i3 + iOriginalToRotatedY;
                int iRotatedToOriginalX = this.city.rotatedToOriginalX(i5, i6);
                int iRotatedToOriginalY = this.city.rotatedToOriginalY(i5, i6);
                drawer.setRealTile(iRotatedToOriginalX, iRotatedToOriginalY);
                if (drawer.isTileVisible()) {
                    this.city.getTiles().getGround(iRotatedToOriginalX, iRotatedToOriginalY).drawWater(drawer, building.getDraft().drawWaterGroundDraft);
                }
            }
        }
        drawer.setRealTile(i, i2);
    }

    public void drawRoadWaterGround(int i, int i2, RoadDraft roadDraft, Drawer drawer) {
        this.city.getTiles().getGround(i, i2).drawWater(drawer, roadDraft.drawWaterGroundDraft);
    }

    public void drawBuildingWaterGroundBorders(int i, int i2, Building building, Drawer drawer) {
        int i3;
        BuildingDraft draft = building.getDraft();
        if (draft.drawWaterBorders) {
            int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
            int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
            int visualWidth = building.getVisualWidth(drawer.rotation);
            int visualHeight = building.getVisualHeight(drawer.rotation);
            int i4 = (visualWidth + visualHeight) - 1;
            int[] iArr = draft.waterBorderFrames;
            int i5 = iArr != null ? iArr[0] : this.groundBorders.frames[0];
            drawer.engine.setType(12);
            int i6 = 0;
            while (i6 < i4) {
                int i7 = i6 + 1;
                if (i7 >= visualWidth) {
                    i6 = visualWidth - 1;
                    i3 = (visualHeight - 1) - (i7 - visualWidth);
                } else {
                    i3 = 0;
                }
                drawer.addShiftToTile(i6, i3);
                int i8 = i6 + iOriginalToRotatedX;
                int i9 = i3 + iOriginalToRotatedY;
                drawWaterGroundBorders(this.city.rotatedToOriginalX(i8, i9), this.city.rotatedToOriginalY(i8, i9), drawer, i5);
                drawer.resetShift();
                i6 = i7;
            }
        }
    }

    public void drawBuildingTerrainGroundBorders(int i, int i2, Building building, Drawer drawer) {
        int i3;
        int maxTerrainLevel = building.getMaxTerrainLevel();
        if (building.getMinTerrainLevel() >= maxTerrainLevel) {
            return;
        }
        char c = '\f';
        drawer.engine.setType(12);
        int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
        int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
        BuildingDraft draft = building.getDraft();
        if (this.drawUnderground) {
            drawer.engine.setTransparency(100);
        }
        int[] iArr = draft.groundFrames;
        int i4 = iArr != null ? iArr[0] : this.groundBorders.frames[1];
        int visualWidth = building.getVisualWidth(drawer.rotation);
        int visualHeight = building.getVisualHeight(drawer.rotation);
        int i5 = (visualWidth + visualHeight) - 1;
        int i6 = 0;
        while (i6 < i5) {
            int i7 = i6 + 1;
            if (i7 >= visualWidth) {
                i6 = visualWidth - 1;
                i3 = (visualHeight - 1) - (i7 - visualWidth);
            } else {
                i3 = 0;
            }
            char c2 = c;
            drawer.addShiftToTile(i6, i3);
            int i8 = i6 + iOriginalToRotatedX;
            int i9 = i3 + iOriginalToRotatedY;
            int baseTerrainHeight = this.city.getTiles().getGround(this.city.rotatedToOriginalX(i8, i9), this.city.rotatedToOriginalY(i8, i9)).getBaseTerrainHeight();
            if (baseTerrainHeight < maxTerrainLevel) {
                while (baseTerrainHeight < maxTerrainLevel) {
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-baseTerrainHeight) * 12, i4);
                    baseTerrainHeight++;
                }
            }
            drawer.resetShift();
            i6 = i7;
            c = c2;
        }
        drawer.engine.setTransparency(255);
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void drawEdge(int i, int i2, Drawer drawer, int i3) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        calculatePollutionColor(i, i2);
        Engine engine = drawer.engine;
        engine.setColor(this.colorBuf);
        ground.drawEdge(drawer, i3);
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Default";
    }

    public void getMiniatureColor(Color color, Tiles tiles, int i, int i2, int i3, boolean z) {
        this.coloring.getMiniatureColor(color, tiles, i, i2, i3, z);
    }

    public void drawWaterGroundBorders(int i, int i2, Drawer drawer, int i3) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        if (ground.isBorder() || ground.isWater()) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, i3);
        }
    }

    public void updateGroundNeighborhood(int i, int i2, LODController lODController) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        this.groundNeighborhood.reset(ground);
        if (ground.getDraft().blending && Settings.groundBlending) {
            if (lODController.getScale() < -1 && Settings.adaptiveGroundBlending && ((i + i2) & 1) == 0) {
                return;
            }
            for (int i3 = 1; i3 <= 8; i3 <<= 1) {
                int iDifferenceX = Direction.differenceX(i3) + i;
                int iDifferenceY = Direction.differenceY(i3) + i2;
                if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                    this.groundNeighborhood.addGround(this.city.getTiles().getGround(iDifferenceX, iDifferenceY), 1.0f);
                }
                int iDifferenceY2 = iDifferenceX + Direction.differenceY(i3);
                int iDifferenceX2 = iDifferenceY - Direction.differenceX(i3);
                if (this.city.isValid(iDifferenceY2, iDifferenceX2)) {
                    this.groundNeighborhood.addGround(this.city.getTiles().getGround(iDifferenceY2, iDifferenceX2), 0.5f);
                }
            }
        }
    }

    public void drawGround(int i, int i2, Drawer drawer) {
        Drawer drawer2;
        Ground ground = this.tiles.getGround(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        Road road = this.tiles.getRoad(i, i2, 0);
        GroundDraft draft = null;
        BuildingDraft draft2 = building != null ? building.getDraft() : null;
        updateGroundNeighborhood(i, i2, drawer.lod);
        if (building != null && !ground.isWater() && !draft2.supportsSlope && !this.drawUnderground && draft2.drawWaterBorders && (!ground.isBorder() || draft2.supportsTerrain)) {
            ground.drawFlat(drawer, building.getMaxTerrainLevel());
        } else if (road != null && road.dLevel == 0 && drawer.upDirs == 0 && road.draft.drawWaterBorders) {
            ground.drawFlat(drawer, road.absLevel);
        } else {
            int i3 = 1;
            if (ground.hasLowPartialFlatPart()) {
                int baseTerrainHeight = ground.getBaseTerrainHeight();
                while (i3 <= 8) {
                    int iDifferenceX = Direction.differenceX(i3) + i;
                    int iDifferenceY = Direction.differenceY(i3) + i2;
                    if (this.city.isValid(iDifferenceX, iDifferenceY)) {
                        Ground ground2 = this.city.getTiles().getGround(iDifferenceX, iDifferenceY);
                        if (!ground2.isWater() && ground2.isFlat() && ground2.getBaseTerrainHeight() == baseTerrainHeight && (draft = ground2.getDraft()) == ground.getDraft()) {
                            break;
                        }
                    }
                    i3 <<= 1;
                }
                drawer2 = drawer;
                ground.draw(drawer2, draft, null, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            } else if (ground.hasHighPartialFlatPart()) {
                int baseTerrainHeight2 = ground.getBaseTerrainHeight();
                for (int i4 = 1; i4 <= 8; i4 <<= 1) {
                    int iDifferenceX2 = Direction.differenceX(i4) + i;
                    int iDifferenceY2 = Direction.differenceY(i4) + i2;
                    if (this.city.isValid(iDifferenceX2, iDifferenceY2)) {
                        Ground ground3 = this.city.getTiles().getGround(iDifferenceX2, iDifferenceY2);
                        if (!ground3.isWater() && ground3.isFlat() && ground3.getBaseTerrainHeight() == baseTerrainHeight2 + 1 && (draft = ground3.getDraft()) == ground.getDraft()) {
                            break;
                        }
                    }
                }
                drawer2 = drawer;
                ground.draw(drawer2, null, draft, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            } else if (ground.isBorder()) {
                while (true) {
                    if (i3 > 8) {
                        break;
                    }
                    int iDifferenceX3 = Direction.differenceX(i3) + i;
                    int iDifferenceY3 = Direction.differenceY(i3) + i2;
                    if (this.city.isValid(iDifferenceX3, iDifferenceY3)) {
                        Ground ground4 = this.city.getTiles().getGround(iDifferenceX3, iDifferenceY3);
                        if (ground4.isWater()) {
                            draft = ground4.getDraft();
                            break;
                        }
                    }
                    i3 <<= 1;
                }
                drawer2 = drawer;
                ground.draw(drawer2, null, null, draft, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            } else {
                drawer2 = drawer;
                ground.draw(drawer2, null, null, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            }
            drawTerrainBorders(i, i2, drawer2);
            if (!drawer2.winter && ground.getDraft().snowOverlay && Settings.groundSnowOverlay) {
                drawGroundSnow(drawer2, i, i2, ground);
                return;
            }
            return;
        }
        drawer2 = drawer;
        drawTerrainBorders(i, i2, drawer2);
        if (!drawer2.winter) {
        }
    }

    public void drawZone(int i, int i2, Drawer drawer) {
        DefaultTool defaultTool;
        int i3;
        int i4;
        Drawer drawer2;
        int zoneMask;
        ZoneDraft zone = this.tiles.getZone(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && zone == null) {
            zone = building.getZone();
        }
        if (zone != null) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            int i5 = zone.frames[0];
            if (i5 == 0 || (this.useZoneSetting && !Settings.drawZones)) {
                defaultTool = this;
                i3 = i;
                i4 = i2;
                drawer2 = drawer;
            } else {
                defaultTool = this;
                i3 = i;
                i4 = i2;
                drawer2 = drawer;
                defaultTool.drawTileOverlayFrame(drawer2, i3, i4, ground, i5);
            }
            if (zone.borderFrames == null || building != null || defaultTool.tiles.hasVisibleRoad(i3, i4) || (zoneMask = defaultTool.modifier.getZoneMask(i3, i4, zone)) == 15) {
                return;
            }
            drawer2.engine.setTransparency(255);
            drawer2.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer2.terrainHeight) * 12.0f, zone.borderFrames[Direction.rotateCW(zoneMask, drawer2.rotation)]);
        }
    }

    public void drawTileOverlayFrame(Drawer drawer, int i, int i2, Ground ground, int i3) {
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && !building.getDraft().supportsSlope && !this.drawUnderground) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, building.getMaxTerrainLevel() * (-12), i3);
        } else {
            ground.drawFrameOnSlope(drawer, Resources.IMAGE_WORLD, i3);
        }
    }

    public void drawTree(int i, int i2, Tree tree, Drawer drawer) {
        tree.draw(drawer);
    }

    public final void drawGroundSnow(Drawer drawer, int i, int i2, Ground ground) {
        drawTileOverlayFrame(drawer, i, i2, ground, this.groundSnowOverlay.frames[0]);
    }

    public final void drawRoadSnow(Drawer drawer, Road road) {
        int snow = road.getSnow();
        if (snow > 0) {
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-(drawer.baseTerrainHeight + road.level)) * 12);
            int i = this.roadSnowOverlay.frames[Direction.rotateCW(road.getAlign(), drawer.rotation)];
            int transparency = drawer.engine.getTransparency();
            drawer.engine.setTransparency((snow * transparency) / 255);
            int i2 = road.dLevel;
            if (i2 == 0) {
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i);
            } else {
                Ground.drawFrameOnCustomSlope(drawer, Resources.IMAGE_WORLD, 0, Direction.turnCCW(i2 | Direction.turnCCW(i2)), i);
            }
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -r1);
            drawer.engine.setTransparency(transparency);
        }
    }

    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        ZoneDraft zone;
        int[] iArr;
        Road absoluteRoad;
        Ground ground = this.city.getTiles().getGround(i, i2);
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null) {
            return false;
        }
        road.draw(drawer, ground.isWater());
        if (drawer.winter && Settings.roadSnowOverlay) {
            drawRoadSnow(drawer, road);
        }
        if (this.lod.drawCars()) {
            this.traffic.drawRoad(i, i2, road, drawer);
            if (drawer.upDirs == 0) {
                int iTurnCCW = 2;
                for (int i4 = 0; i4 < 2; i4++) {
                    int iRotateCCW = Direction.rotateCCW(iTurnCCW, drawer.rotation);
                    if (Direction.isIn(iRotateCCW, road.getAlign())) {
                        int iDifferenceX = Direction.differenceX(iRotateCCW) + i;
                        int iDifferenceY = Direction.differenceY(iRotateCCW) + i2;
                        if (this.city.isValid(iDifferenceX, iDifferenceY) && (absoluteRoad = this.city.getTiles().getAbsoluteRoad(iDifferenceX, iDifferenceY, road.absLevel)) != null) {
                            drawer.setRealTile(iDifferenceX, iDifferenceY);
                            absoluteRoad.drawForegroundTrafficLights(drawer);
                        }
                    }
                    iTurnCCW = Direction.turnCCW(iTurnCCW);
                }
                drawer.setRealTile(i, i2);
            }
        }
        MethodCluster methodCluster = road.draft.drawMethods;
        if (methodCluster != null) {
            methodCluster.invoke(i, i2, i3);
        }
        if (road.draft.drawInFront) {
            road.draw(drawer, drawer.ground.isWater());
        }
        road.drawForeground(drawer);
        if (i3 != 0 || (zone = this.tiles.getZone(i, i2)) == null || (iArr = zone.roadBorderFrames) == null || this.modifier.getZoneMask(i, i2, zone) == 0) {
            return true;
        }
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.terrainHeight) * 12.0f, iArr[Direction.rotateCW(road.getAlign() % 16, drawer.rotation) + (((CarTrafficHandler) this.traffic.getTrafficHandler(CarTrafficHandler.class)).countCars(i, i2, road.level) > 0 ? 16 : 0)]);
        return true;
    }

    public final void addIndicator(int i, int i2, int i3, int i4, int i5, int i6) {
        this.buildIndicators.add(i3);
        this.buildIndicators.add(i4);
        this.buildIndicators.add(i5);
        this.buildIndicators.add(i6);
        this.buildIndicators.add(i);
        this.buildIndicators.add(i2);
    }

    public int getIndicatorPtr(int i, int i2) {
        for (int size = this.buildIndicators.size() - 6; size >= 0; size -= 6) {
            int i3 = this.buildIndicators.get(size);
            int i4 = this.buildIndicators.get(size + 1);
            int i5 = this.buildIndicators.get(size + 2);
            int i6 = this.buildIndicators.get(size + 3);
            if (i3 <= i && i <= i3 + i5 && i4 <= i2 && i2 <= i4 + i6) {
                return size;
            }
        }
        return -1;
    }

    public int getIndicatorTileX(int i) {
        return this.buildIndicators.get(i + 4);
    }

    public int getIndicatorTileY(int i) {
        return this.buildIndicators.get(i + 5);
    }

    public void drawBuilding(int i, int i2, Drawer drawer) {
        Building building = this.tiles.getBuilding(i, i2);
        if (building == null) {
            return;
        }
        building.draw(drawer);
        if ((building.inConstruction() || building.hasPendingUpgrades()) && Settings.ringBuildIndicator && !this.city.isReadonly()) {
            drawConstructionProgress(drawer, building);
        } else if (building._IDLE_ID != 0) {
            ((DefaultIdleGame) this.city.getComponent(20)).drawBuilding(i, i2, drawer);
        }
        BuildingDraft draft = building.getDraft();
        if (draft.drawMethods != null) {
            Engine engine = drawer.engine;
            float scaleX = engine.getScaleX();
            float scaleY = engine.getScaleY();
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, building.getMaxTerrainLevel() * (-12));
            draft.drawMethods.invoke(i, i2, 0);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, building.getMaxTerrainLevel() * 12);
            engine.setScale(scaleX, scaleY);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
        }
    }

    public final void drawConstructionProgress(Drawer drawer, Building building) {
        long j;
        double daysBuilt;
        BuildingDraft draft = building.getDraft();
        if (draft.buildingType.isRCIOrDeco()) {
            return;
        }
        boolean z = drawer.useShading;
        drawer.useShading = false;
        boolean z2 = building.hasPendingUpgrades() && !building.inConstruction();
        int visualWidth = building.getVisualWidth(drawer.rotation);
        int visualHeight = building.getVisualHeight(drawer.rotation);
        if (z2) {
            j = building.getPendingUpgrade().buildTime;
            daysBuilt = j - building.getPendingUpgradeDaysLeft(drawer.day);
        } else {
            j = draft.buildTime / drawer.shortBuildTimeFactor;
            daysBuilt = building.getDaysBuilt(drawer.day) + ((double) draft.buildTime);
        }
        float fMax = Math.max(Math.min((float) (daysBuilt / Math.max(j, 1L)), 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Engine engine = drawer.engine;
        float scaleX = engine.getScaleX();
        drawer.addShift((visualWidth + visualHeight) * 8, -Math.max(Math.min((visualHeight * 8) - 8, Math.max(draft.buildHeight - 1, 1) * 4), 8));
        int transparency = engine.getTransparency();
        drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-building.getMaxTerrainLevel()) * 12);
        engine.setColor(Colors.BLACK);
        int i = (transparency * 80) / 255;
        engine.setTransparency(i);
        Drawing.getInstance().drawCircle(drawer.getDrawingX(), drawer.getDrawingY(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, scaleX * 10.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 6.2831855f, 1.0f, 1.0f, engine);
        engine.setTransparency((transparency * AdSize.WIDE_SKYSCRAPER_WIDTH) / 255);
        Drawing.getInstance().drawCircle(drawer.getDrawingX(), drawer.getDrawingY(), scaleX * 11.0f, scaleX * 15.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 6.2831855f, 1.0f, 1.0f, engine);
        Color color = Colors.WHITE;
        engine.setColor(color);
        engine.setTransparency(i);
        float f = scaleX * 12.0f;
        float f2 = scaleX * 14.0f;
        Drawing.getInstance().drawCircle(drawer.getDrawingX(), drawer.getDrawingY(), f, f2, 1.7278761f, 7.6969023f, 1.0f, 1.0f, engine);
        engine.setTransparency(transparency);
        engine.setColor(255 - ((int) (255.0f * fMax)), 255, 0);
        Drawing.getInstance().drawCircle(drawer.getDrawingX(), drawer.getDrawingY(), f, f2, 1.7278761f, ((fMax * 1.9f) + 0.55f) * 3.1415927f, 1.0f, 1.0f, engine);
        engine.setColor(color);
        drawer.draw(Resources.IMAGE_WORLD, -13.0f, (-13.0f) - ((float) Math.sin(((drawer.time % 1000) * 3.1415927f) / 1000.0f)), z2 ? Resources.ICON_UPGRADE : Resources.ICON_BUILD);
        addIndicator(building.getX(), building.getY(), (int) drawer.getDrawingX(-15.0f), (int) drawer.getDrawingY(-15.0f), (int) (drawer.scaleX * 30.0f), (int) (drawer.scaleY * 30.0f));
        drawer.resetShift();
        engine.setTransparency(transparency);
        drawer.useShading = z;
    }

    public void drawWire(int i, int i2, Wire wire, Drawer drawer) {
        wire.draw(drawer);
    }

    public void drawRail(int i, int i2, Drawer drawer) {
        Rail rail = this.tiles.getRail(i, i2);
        rail.draw(drawer);
        rail.drawForeground(drawer);
    }

    public void drawHelicopter(int i, int i2, Drawer drawer) {
        this.traffic.drawFlyingObject(i, i2, drawer);
    }

    public void calculatePollutionColor(int i, int i2) {
        if (Settings.renderPollution && this.city.getTiles().getGround(i, i2).getDraft().pollution) {
            int iRound = Math.round(this.influence.getInfluence(i, i2, InfluenceType.POLLUTION.ordinal()) * 100.0f);
            int iRound2 = (iRound * 32) + (Math.round(this.influence.getInfluence(i, i2, InfluenceType.RADIOACTIVITY.ordinal()) * 100.0f) * 8);
            this.colorBuf.setTo(255, 255 - (Math.min(iRound2, 3200) / 80), 255 - ((iRound * 48) / 80), iRound2 / 80);
            return;
        }
        this.colorBuf.setTo(255, 255, 255, 255);
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return "Default";
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_BUILD;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawBefore(Engine engine) {
        this.buildIndicators.clear();
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        DefaultSigns defaultSigns = (DefaultSigns) this.city.getComponent(18);
        if (this.lod.drawSigns()) {
            defaultSigns.drawSigns(drawer.engine, false);
        }
    }
}
