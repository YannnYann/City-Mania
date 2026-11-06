package info.flowersoft.theotown.creation;

import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.GroundNeighborhood;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.objects.Tree;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public final class DummyTool extends Tool {
    public final GroundNeighborhood groundNeighborhood = new GroundNeighborhood(8);

    @Override // info.flowersoft.theotown.city.components.Tool
    public void cancelMouse() {
    }

    @Override // info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring
    public void getMiniatureColor(Color color, Tiles tiles, int i, int i2, int i3, boolean z) {
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
    }

    @Override // info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Dummy";
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void draw(int i, int i2, Drawer drawer) {
        Engine engine = drawer.engine;
        Color color = Colors.WHITE;
        engine.setColor(color);
        drawGround(i, i2, drawer);
        drawer.engine.setColor(color);
        Tree tree = this.city.getTiles().getTree(i, i2);
        if (tree != null) {
            tree.draw(drawer);
        }
    }

    public final void updateGroundNeighborhood(int i, int i2) {
        Ground ground = this.city.getTiles().getGround(i, i2);
        this.groundNeighborhood.reset(ground);
        if (ground.getDraft().blending && Settings.groundBlending) {
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
        Ground ground = this.tiles.getGround(i, i2);
        Building building = this.tiles.getBuilding(i, i2);
        Road road = this.tiles.getRoad(i, i2, 0);
        GroundDraft draft = null;
        BuildingDraft draft2 = building != null ? building.getDraft() : null;
        updateGroundNeighborhood(i, i2);
        if (building != null && !ground.isWater() && !draft2.supportsSlope && draft2.drawWaterBorders && (!ground.isBorder() || draft2.supportsTerrain)) {
            ground.drawFlat(drawer, building.getMaxTerrainLevel());
            return;
        }
        if (road != null && road.dLevel == 0 && drawer.upDirs == 0 && road.draft.drawWaterBorders) {
            ground.drawFlat(drawer, road.absLevel);
            return;
        }
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
            ground.draw(drawer, draft, null, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            return;
        }
        if (ground.hasHighPartialFlatPart()) {
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
            ground.draw(drawer, null, draft, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            return;
        }
        if (ground.isBorder()) {
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
            ground.draw(drawer, null, null, draft, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
            return;
        }
        ground.draw(drawer, null, null, null, this.groundNeighborhood, this.tiles.getGroundDraft2(i, i2), this.tiles.getGroundFrame2(i, i2));
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public void drawEdge(int i, int i2, Drawer drawer, int i3) {
        this.city.getTiles().getGround(i, i2).drawEdge(drawer, i3);
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return "DummyTool";
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_BUILD;
    }
}
