package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.QuestionListener;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.DefaultPower;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.PowerMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class WireTool extends TwoModesTool {
    public final WireDraft draft;
    public long price;
    public final List<ConnectionCandidate> connectionCandidates = new ArrayList();
    public boolean buildPermission = false;

    public WireTool(WireDraft wireDraft) {
        this.draft = wireDraft;
        setHasToBeLine(true);
        this.drawUnderground = wireDraft.level < 0;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Wire:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void undo(boolean z) {
        super.undo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.BuildTool
    public void redo(boolean z) {
        super.redo(z);
        recalculate();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        setMarker(new PowerMarker(city));
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(final int i, final int i2, final int i3, final int i4) {
        boolean z = this.buildPermission;
        this.buildPermission = false;
        if (isValid(i, i2, i3, i4) || this.notBuildableBecauseOfPrice) {
            if (!z && this.notBuildableBecauseOfPrice) {
                this.moneyNeededListener.beg((int) (this.price - Math.max(getBudget().getEstate(), 0.0d)), new Runnable() { // from class: info.flowersoft.theotown.tools.WireTool$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        WireTool.m2354$r8$lambda$T1Dak0OWhw475YFq3GWoj8ZCuI(this.f$0, i, i2, i3, i4);
                    }
                }, this.draft.id, false);
                return;
            }
            this.connectionCandidates.clear();
            captureState(i, i2, i3, i4);
            getBudget().spend(this.price, i3, i4, "build wire " + this.draft.id);
            this.modifier.build(this.draft, i, i2, i3, i4);
            if (this.draft.connectable && (i != i3 || i2 != i4)) {
                int iFromDifferential = Direction.fromDifferential(i3 - i, i4 - i2);
                addCandidate(i, i2, Direction.opposite(iFromDifferential), this.draft.level);
                addCandidate(i3, i4, iFromDifferential, this.draft.level);
            }
            recalculate();
            playSound(Resources.SOUND_BUILD, i3, i4);
            issueMovement();
            endCaptureState();
            if (this.connectionCandidates.isEmpty()) {
                return;
            }
            askForConnection(i, i2, i3, i4);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$T1Dak0OWhw475YFq3GWoj8ZC-uI, reason: not valid java name */
    public static /* synthetic */ void m2354$r8$lambda$T1Dak0OWhw475YFq3GWoj8ZCuI(WireTool wireTool, int i, int i2, int i3, int i4) {
        wireTool.buildPermission = true;
        wireTool.build(i, i2, i3, i4);
    }

    private void recalculate() {
        ((DefaultPower) this.city.getComponent(5)).calculate();
    }

    private void askForConnection(final int i, final int i2, final int i3, final int i4) {
        QuestionListener questionListener = this.questionListener;
        if (questionListener != null) {
            questionListener.ask(Resources.ICON_CITY, 959, 2201, new Runnable() { // from class: info.flowersoft.theotown.tools.WireTool.1
                @Override // java.lang.Runnable
                public void run() {
                    WireTool.this.captureState(i, i2, i3, i4);
                    for (ConnectionCandidate connectionCandidate : WireTool.this.connectionCandidates) {
                        WireTool.this.city.getWires().remove(connectionCandidate.wire);
                        connectionCandidate.wire.setConnection(connectionCandidate.dir);
                        WireTool.this.city.getWires().add(connectionCandidate.wire);
                    }
                    WireTool.this.endCaptureState();
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tools.WireTool.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }
    }

    private void addCandidate(int i, int i2, int i3, int i4) {
        Wire wire = this.tiles.getWire(i, i2, i4);
        if (wire == null || this.city.isValid(i + Direction.differenceX(i3), i2 + Direction.differenceY(i3)) || Direction.isIn(i3, wire.getConnectionDir())) {
            return;
        }
        ConnectionCandidate connectionCandidate = new ConnectionCandidate();
        connectionCandidate.wire = wire;
        connectionCandidate.dir = i3;
        this.connectionCandidates.add(connectionCandidate);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        int i5;
        drawHelperLines(i, i2, drawer);
        Ground ground = this.city.getTiles().getGround(i, i2);
        Wire wire = this.tiles.getWire(i, i2, -1);
        if (wire != null) {
            wire.draw(drawer);
        }
        int i6 = this.mode;
        if (i6 == 0) {
            if (((TwoModesTool) this).drawnTargetHover && (i3 = ((TwoModesTool) this).drawnTargetX) == i && (i4 = ((TwoModesTool) this).drawnTargetY) == i2) {
                drawer.engine.setColor(isValid(i3, i4) ? Colors.GREEN : Colors.RED);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
                drawer.engine.setColor(Colors.WHITE);
                return;
            }
            return;
        }
        if (i6 != 1) {
            return;
        }
        if (i == this.selectedX && i2 == this.selectedY) {
            if (this.drawnTarget && !this.drawnTargetValid) {
                drawer.engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        if (isTileInvolved(i, i2)) {
            if (isValid(this.selectedX, this.selectedY, i, i2) || this.notBuildableBecauseOfPrice) {
                int iMax = Math.max(Math.abs(this.selectedX - i), Math.abs(this.selectedY - i2));
                if (this.modifier.isWire(i, i2)) {
                    drawOverlay(drawer, i, i2, Resources.FRAME_TOOLMARK_GREEN, iMax);
                    return;
                }
                if (this.notBuildableBecauseOfPrice) {
                    i5 = Resources.FRAME_TOOLMARK_YELLOW_DOTTED;
                } else {
                    i5 = Resources.FRAME_TOOLMARK_GREEN_DOTTED;
                }
                drawOverlay(drawer, i, i2, i5, iMax);
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        if (!this.city.isValid(i, i2)) {
            return false;
        }
        this.price = this.modifier.getPrice(this.draft, i, i2, i, i2);
        return this.modifier.isBuildable(this.draft, i, i2, i, i2);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        this.notBuildableBecauseOfPrice = false;
        if (!this.city.isValid(i, i2) || !this.city.isValid(i3, i4) || !super.isValid(i, i2, i3, i4)) {
            return false;
        }
        this.price = this.modifier.getPrice(this.draft, i, i2, i3, i4);
        if (!this.modifier.isBuildable(this.draft, i, i2, i3, i4)) {
            return false;
        }
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_ENERGY;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }

    public static class ConnectionCandidate {
        public int dir;
        public Wire wire;

        public ConnectionCandidate() {
        }
    }
}
