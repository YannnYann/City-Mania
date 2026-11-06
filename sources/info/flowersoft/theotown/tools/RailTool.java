package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Rail;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.InfluenceMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RailTool extends TwoModesTool {
    public final List<ConnectionCandidate> connectionCandidates = new ArrayList();
    public final RailDraft draft;
    public long price;

    /* JADX INFO: renamed from: info.flowersoft.theotown.tools.RailTool$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
    }

    public RailTool(RailDraft railDraft) {
        this.draft = railDraft;
        setHasToBeLine(true);
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Rail:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        setMarker(new InfluenceMarker(city, InfluenceType.PASSENGER_TRAIN));
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        this.connectionCandidates.clear();
        captureState(i, i2, i3, i4);
        getBudget().spend(this.price, "build rail " + this.draft.id);
        this.modifier.build(this.draft, i, i2, i3, i4, null);
        if (i != i3 || i2 != i4) {
            int iFromDifferential = Direction.fromDifferential(i3 - i, i4 - i2);
            addCandidate(i, i2, Direction.opposite(iFromDifferential));
            addCandidate(i3, i4, iFromDifferential);
        }
        playSound(Resources.SOUND_BUILD, i3, i4);
        issueMovement();
        endCaptureState();
        this.connectionCandidates.isEmpty();
    }

    private void addCandidate(int i, int i2, int i3) {
        Rail rail = this.tiles.getRail(i, i2);
        if (rail == null || this.city.isValid(i + Direction.differenceX(i3), i2 + Direction.differenceY(i3)) || Direction.isIn(i3, rail.getConnectionDir())) {
            return;
        }
        ConnectionCandidate connectionCandidate = new ConnectionCandidate(null);
        connectionCandidate.rail = rail;
        connectionCandidate.dir = i3;
        this.connectionCandidates.add(connectionCandidate);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        this.price = this.modifier.getPrice(this.draft, i, i2, i, i2);
        return this.modifier.isBuildable(this.draft, i, i2, i, i2) && getBudget().canSpend(this.price);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.price = this.modifier.getPrice(this.draft, i, i2, i3, i4);
        if (this.modifier.isBuildable(this.draft, i, i2, i3, i4)) {
            return !(i == i3 && i2 == i4) && getBudget().canSpend(this.price);
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        drawHelperLines(i, i2, drawer);
        Ground ground = this.city.getTiles().getGround(i, i2);
        int i5 = this.mode;
        if (i5 == 0) {
            if (((TwoModesTool) this).drawnTargetHover && (i3 = ((TwoModesTool) this).drawnTargetX) == i && (i4 = ((TwoModesTool) this).drawnTargetY) == i2) {
                drawer.engine.setColor(isValid(i3, i4) ? Colors.GREEN : Colors.RED);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
                drawer.engine.setColor(Colors.WHITE);
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
                drawer.engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        if (isValid(i6, this.selectedY, i, i2) && isTileInvolved(i, i2)) {
            drawOverlay(drawer, i, i2, Resources.FRAME_TOOLMARK_GREEN_DOTTED, Math.max(Math.abs(this.selectedX - i), Math.abs(this.selectedY - i2)));
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_TRAFFIC;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }

    public static class ConnectionCandidate {
        public int dir;
        public Rail rail;

        public ConnectionCandidate() {
        }

        public /* synthetic */ ConnectionCandidate(AnonymousClass1 anonymousClass1) {
            this();
        }
    }
}
