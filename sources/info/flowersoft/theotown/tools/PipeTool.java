package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.components.QuestionListener;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Pipe;
import info.flowersoft.theotown.components.DefaultWater;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.WaterPipeMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PipeTool extends TwoModesTool {
    public final PipeDraft draft;
    public long price;
    public final List<ConnectionCandidate> connectionCandidates = new ArrayList();
    public boolean buildPermission = false;

    public PipeTool(PipeDraft pipeDraft) {
        this.draft = pipeDraft;
        setHasToBeLine(true);
        this.drawUnderground = true;
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        setMarker(new WaterPipeMarker(city));
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

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "Pipe:" + this.draft.id;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(final int i, final int i2, final int i3, final int i4) {
        boolean z = this.buildPermission;
        this.buildPermission = false;
        if (isValid(i, i2, i3, i4) || this.notBuildableBecauseOfPrice) {
            if (!z && this.notBuildableBecauseOfPrice) {
                this.moneyNeededListener.beg((int) (this.price - Math.max(getBudget().getEstate(), 0.0d)), new Runnable() { // from class: info.flowersoft.theotown.tools.PipeTool$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PipeTool.$r8$lambda$BxdM8coIGnitBZYo4u0DXbRV7YY(this.f$0, i, i2, i3, i4);
                    }
                }, this.draft.id, false);
                return;
            }
            this.connectionCandidates.clear();
            captureState(i, i2, i3, i4);
            getBudget().spend(this.price, i3, i4, "build pipe " + this.draft.id);
            this.modifier.build(this.draft, i, i2, i3, i4);
            if (i != i3 || i2 != i4) {
                int iFromDifferential = Direction.fromDifferential(i3 - i, i4 - i2);
                addCandidate(i, i2, Direction.opposite(iFromDifferential));
                addCandidate(i3, i4, iFromDifferential);
            }
            recalculate();
            playSound(Resources.SOUND_BUILD_WATER, i3, i4);
            issueMovement();
            endCaptureState();
            if (this.connectionCandidates.isEmpty()) {
                return;
            }
            askForConnection(i, i2, i3, i4);
        }
    }

    public static /* synthetic */ void $r8$lambda$BxdM8coIGnitBZYo4u0DXbRV7YY(PipeTool pipeTool, int i, int i2, int i3, int i4) {
        pipeTool.buildPermission = true;
        pipeTool.build(i, i2, i3, i4);
    }

    private void recalculate() {
        ((DefaultWater) this.city.getComponent(8)).calculate();
    }

    public final void askForConnection(final int i, final int i2, final int i3, final int i4) {
        QuestionListener questionListener = this.questionListener;
        if (questionListener != null) {
            questionListener.ask(Resources.ICON_CITY, 959, 2201, new Runnable() { // from class: info.flowersoft.theotown.tools.PipeTool.1
                @Override // java.lang.Runnable
                public void run() {
                    PipeTool.this.captureState(i, i2, i3, i4);
                    for (ConnectionCandidate connectionCandidate : PipeTool.this.connectionCandidates) {
                        PipeTool.this.city.getPipes().remove(connectionCandidate.pipe);
                        connectionCandidate.pipe.setConnection(connectionCandidate.dir);
                        PipeTool.this.city.getPipes().add(connectionCandidate.pipe);
                    }
                    PipeTool.this.endCaptureState();
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.tools.PipeTool.2
                @Override // java.lang.Runnable
                public void run() {
                }
            });
        }
    }

    public final void addCandidate(int i, int i2, int i3) {
        Pipe pipe = this.tiles.getPipe(i, i2);
        if (pipe == null || this.city.isValid(i + Direction.differenceX(i3), i2 + Direction.differenceY(i3)) || Direction.isIn(i3, pipe.getConnectionDir())) {
            return;
        }
        ConnectionCandidate connectionCandidate = new ConnectionCandidate();
        connectionCandidate.pipe = pipe;
        connectionCandidate.dir = i3;
        this.connectionCandidates.add(connectionCandidate);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        int i5;
        Ground ground = this.city.getTiles().getGround(i, i2);
        drawHelperLines(i, i2, drawer);
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
                if (this.modifier.isPipe(i, i2)) {
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

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawZone(int i, int i2, Drawer drawer) {
        Pipe pipe = this.tiles.getPipe(i, i2);
        if (pipe != null) {
            Engine engine = drawer.engine;
            engine.setTransparency(255);
            engine.setColor(Colors.WHITE);
            boolean z = drawer.useShading;
            drawer.useShading = false;
            pipe.draw(drawer);
            drawer.useShading = z;
            return;
        }
        super.drawZone(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public boolean drawRoad(int i, int i2, Drawer drawer, int i3) {
        Pipe pipe = this.tiles.getPipe(i, i2);
        if (pipe != null && i3 == 0) {
            drawer.engine.setTransparency(255);
            boolean z = drawer.useShading;
            drawer.useShading = false;
            pipe.draw(drawer);
            drawer.useShading = z;
            return true;
        }
        super.drawRoad(i, i2, drawer, i3);
        return true;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool, info.flowersoft.theotown.tools.DefaultTool
    public void drawGround(int i, int i2, Drawer drawer) {
        Pipe pipe = this.tiles.getPipe(i, i2);
        if (pipe != null) {
            drawWaterGroundBorders(i, i2, drawer, this.groundBorders.frames[0]);
            boolean z = drawer.useShading;
            drawer.useShading = false;
            pipe.draw(drawer);
            drawer.useShading = z;
            return;
        }
        super.drawGround(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawBuilding(int i, int i2, Drawer drawer) {
        Building building = this.tiles.getBuilding(i, i2);
        if (building == null) {
            return;
        }
        if (getMarker().markBuilding(i, i2)) {
            Engine engine = drawer.engine;
            int red = engine.getRed();
            int green = engine.getGreen();
            int blue = engine.getBlue();
            int iOriginalToRotatedX = this.city.originalToRotatedX(i, i2);
            int iOriginalToRotatedY = this.city.originalToRotatedY(i, i2);
            int visualWidth = building.getVisualWidth(drawer.rotation);
            int visualHeight = building.getVisualHeight(drawer.rotation) - 1;
            while (visualHeight >= 0) {
                int i3 = 0;
                while (i3 < visualWidth) {
                    int i4 = i3 + iOriginalToRotatedX;
                    int i5 = visualHeight + iOriginalToRotatedY;
                    int iRotatedToOriginalX = this.city.rotatedToOriginalX(i4, i5);
                    int i6 = visualHeight;
                    int iRotatedToOriginalY = this.city.rotatedToOriginalY(i4, i5);
                    drawer.setRealTile(iRotatedToOriginalX, iRotatedToOriginalY);
                    drawZone(iRotatedToOriginalX, iRotatedToOriginalY, drawer);
                    i3++;
                    visualHeight = i6;
                }
                visualHeight--;
            }
            engine.setColor(red, green, blue);
            drawer.setRealTile(i, i2);
        }
        super.drawBuilding(i, i2, drawer);
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

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawMarkerOverlay(int i, int i2, Drawer drawer) {
        if (this.tiles.getPipe(i, i2) == null) {
            super.drawMarkerOverlay(i, i2, drawer);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_WATER;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }

    public static class ConnectionCandidate {
        public int dir;
        public Pipe pipe;

        public ConnectionCandidate() {
        }
    }
}
