package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.MapArea;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AlertTool extends BuildTool {
    public final int type;

    public AlertTool(int i) {
        this.type = i;
    }

    @Override // info.flowersoft.theotown.city.components.Tool
    public CursorType getCursorType() {
        return CursorType.Crosshair;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z) {
        super.mouseMove(i, i2, f, f2, f3, f4, z);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        MapArea mapArea = new MapArea();
        int baseTerrainHeight = this.city.getTiles().getBaseTerrainHeight(i, i2);
        mapArea.addObject(this.tiles, i, i2, baseTerrainHeight);
        mapArea.addObject(this.tiles, i, i2, baseTerrainHeight + 1);
        ((DefaultTraffic) this.city.getComponent(7)).addOrRemovePlaceOfAction(this.type, mapArea);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        Road road = this.tiles.getRoad(i, i2, i3);
        if (road == null) {
            return false;
        }
        road.draw(drawer, this.city.getTiles().isGroundWater(i, i2));
        this.traffic.drawRoad(i, i2, road, drawer);
        road.drawForeground(drawer);
        return true;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        if (this.drawnTargetHover && this.drawnTargetX == i && this.drawnTargetY == i2) {
            drawer.engine.setColor(this.city.getTiles().hasVisibleRoad(i, i2) ? Colors.WHITE : Colors.RED);
            drawTileOverlayFrame(drawer, i, i2, this.city.getTiles().getGround(i, i2), Resources.FRAME_TOOLMARK_BLOB);
            drawer.engine.setColor(Colors.WHITE);
        }
    }
}
