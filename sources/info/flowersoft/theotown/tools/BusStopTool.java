package info.flowersoft.theotown.tools;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.InfluenceMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopTool extends BuildTool {
    public final BusStopDraft draft;
    public long price;

    public BusStopTool(BusStopDraft busStopDraft) {
        this.draft = busStopDraft;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "BusStop:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(final City city) {
        super.bind(city);
        setMarker(new InfluenceMarker(city, InfluenceType.PASSENGER_BUS) { // from class: info.flowersoft.theotown.tools.BusStopTool.1
            @Override // info.flowersoft.theotown.tools.marker.InfluenceMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean useOverlay(int i, int i2) {
                return super.useOverlay(i, i2) && !city.getTiles().hasVisibleRoad(i, i2);
            }
        });
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (isValid(i, i2)) {
            captureState(i, i2, i, i2);
            getBudget().spend(this.price, i, i2, "build bus stop " + this.draft.id);
            this.modifier.build(this.draft, i, i2);
            playSound(Resources.SOUND_BUILD, i, i2, 1, 1);
            issueMovement();
            endCaptureState();
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        Road road;
        super.drawRoad(i, i2, drawer, i3);
        if (isValid(i, i2) || (road = this.tiles.getRoad(i, i2, i3)) == null) {
            return false;
        }
        int i4 = road.dLevel;
        if (i4 == 0) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-road.absLevel) * 12, Resources.FRAME_TOOLMARK_RED_DOTTED);
            return true;
        }
        Ground.drawFrameOnCustomSlope(drawer, Resources.IMAGE_WORLD, road.absLevel, Direction.turnCCW(i4 | Direction.turnCCW(i4)), Resources.FRAME_TOOLMARK_RED_DOTTED);
        return true;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        if (this.drawnTargetHover && (i3 = this.drawnTargetX) == i && (i4 = this.drawnTargetY) == i2) {
            drawer.engine.setColor(isValid(i3, i4) ? Colors.GREEN : Colors.RED);
            drawTileOverlayFrame(drawer, i, i2, this.city.getTiles().getGround(i, i2), Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
            drawer.engine.setColor(Colors.WHITE);
        }
    }

    private boolean isValid(int i, int i2) {
        this.price = this.modifier.getPrice(this.draft, i, i2);
        return this.modifier.isBuildable(this.draft, i, i2) && getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_BUS_TRANSPORT;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }
}
