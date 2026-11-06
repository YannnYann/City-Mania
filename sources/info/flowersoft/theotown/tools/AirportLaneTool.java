package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.components.airport.DefaultAirport;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;

/* JADX INFO: loaded from: classes4.dex */
public class AirportLaneTool extends BuildTool {
    public DefaultAirport airport;

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "AirportLane";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.airport = (DefaultAirport) city.getComponent(19);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        Road road = this.tiles.getRoad(i, i2, 0);
        if (road == null || !this.airport.laneRoadDrafts.contains(road.draft)) {
            return;
        }
        Ground ground = this.city.getTiles().getGround(i, i2);
        Engine engine = drawer.engine;
        engine.setColor((i + i2) % 2 == 0 ? Colors.WHITE : Colors.LIGHT_GRAY);
        if (this.airport.isTileInLanes(i, i2)) {
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_BLUE_DOTTED);
        } else if (this.airport.isTileInVirtualLanes(i, i2)) {
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
        } else {
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_RED_DOTTED);
        }
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_AIRPORT;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(2817);
    }
}
