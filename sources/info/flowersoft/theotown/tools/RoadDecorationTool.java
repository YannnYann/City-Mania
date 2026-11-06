package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.draft.RoadDecorationDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class RoadDecorationTool extends TwoModesTool {
    public boolean addUnder;
    public final RoadDecorationDraft draft;
    public int price;

    public RoadDecorationTool(RoadDecorationDraft roadDecorationDraft) {
        this.draft = roadDecorationDraft;
        setHasToBeLine(true);
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RoadDecorationTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_REMOVE_UNDER;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdAddUnder";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                RoadDecorationTool.this.addUnder = !r0.addUnder;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isPressed() {
                return RoadDecorationTool.this.addUnder;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return RoadDecorationTool.this.city.getTranslator().translate(3557);
            }
        });
        addUndoButton();
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RoadDecoration";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
    }

    public final Road getRoad(int i, int i2) {
        Road bottomRoad;
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (topRoad == null || (bottomRoad = this.tiles.getBottomRoad(i, i2)) == null) {
            return null;
        }
        int iMin = Math.min(topRoad.level, this.draft.maxLevel);
        int iMax = Math.max(bottomRoad.level, this.draft.minLevel);
        if (this.addUnder) {
            while (iMax <= iMin) {
                Road road = this.tiles.getRoad(i, i2, iMax);
                if (road != null) {
                    return road;
                }
                iMax++;
            }
        } else {
            while (iMin >= iMax) {
                Road road2 = this.tiles.getRoad(i, i2, iMin);
                if (road2 != null) {
                    return road2;
                }
                iMin--;
            }
        }
        return null;
    }

    public final boolean canBuildOnRoad(RoadDecorationDraft roadDecorationDraft, Road road) {
        if (road == null) {
            return false;
        }
        if (road.countDecorations() <= 0 || road.getTopDecoration() != roadDecorationDraft) {
            return this.modifier.isRoadDecorationBuildable(roadDecorationDraft, road);
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public void build(int i, int i2, int i3, int i4) {
        RoadDecorationTool roadDecorationTool = this;
        captureState(i, i2, i3, i4);
        int i5 = 0;
        int i6 = 0;
        while (i6 <= Math.abs(i4 - i2)) {
            int i7 = i5;
            int i8 = 0;
            while (i8 <= Math.abs(i3 - i)) {
                int iMin = Math.min(i, i3) + i8;
                int iMin2 = Math.min(i2, i4) + i6;
                if ((Math.abs(iMin - i) + Math.abs(iMin2 - i2)) % roadDecorationTool.draft.lineStepping <= 0) {
                    Road road = roadDecorationTool.getRoad(iMin, iMin2);
                    if (roadDecorationTool.canBuildOnRoad(roadDecorationTool.draft, road)) {
                        roadDecorationTool.modifier.buildRoadDecoration(roadDecorationTool.draft, road, -1, null, Settings.multiRoadDecorationSupport);
                        roadDecorationTool.getBudget().spend(roadDecorationTool.draft.price, iMin, iMin2, "build " + roadDecorationTool.draft.id);
                        roadDecorationTool.playSound(Resources.SOUND_BUILD, iMin, iMin2, 1, 1);
                        i7++;
                    }
                }
                i8++;
                roadDecorationTool = this;
            }
            i6++;
            roadDecorationTool = this;
            i5 = i7;
        }
        if (i5 > 0) {
            issueMovement();
        }
        endCaptureState();
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        super.onClick(i, i2, f, f2, i3, i4);
        if (this.mode != 1 || this.draft.lineTool) {
            return;
        }
        onClick(i, i2, f, f2, i3, i4);
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2, int i3, int i4) {
        if (!super.isValid(i, i2, i3, i4)) {
            return false;
        }
        this.price = 0;
        int i5 = 0;
        for (int i6 = 0; i6 <= Math.abs(i4 - i2); i6++) {
            for (int i7 = 0; i7 <= Math.abs(i3 - i); i7++) {
                int iMin = Math.min(i, i3) + i7;
                int iMin2 = Math.min(i2, i4) + i6;
                if ((Math.abs(iMin - i) + Math.abs(iMin2 - i2)) % this.draft.lineStepping <= 0) {
                    if (canBuildOnRoad(this.draft, getRoad(iMin, iMin2))) {
                        this.price += this.draft.price;
                        i5++;
                    }
                }
            }
        }
        boolean zCanSpend = getBudget().canSpend(this.price);
        this.notBuildableBecauseOfPrice = !zCanSpend;
        return zCanSpend && i5 > 0;
    }

    @Override // info.flowersoft.theotown.tools.TwoModesTool
    public boolean isValid(int i, int i2) {
        this.notBuildableBecauseOfPrice = false;
        if (this.city.isValid(i, i2)) {
            if (canBuildOnRoad(this.draft, getRoad(i, i2))) {
                this.price = this.draft.price;
                boolean zCanSpend = getBudget().canSpend(this.price);
                this.notBuildableBecauseOfPrice = !zCanSpend;
                return zCanSpend;
            }
        }
        return false;
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        int i3;
        int i4;
        if (this.draft.lineTool) {
            drawHelperLines(i, i2, drawer);
        }
        Ground ground = this.tiles.getGround(i, i2);
        int i5 = this.mode;
        if (i5 == 0) {
            if (((TwoModesTool) this).drawnTargetHover && (i3 = ((TwoModesTool) this).drawnTargetX) == i && (i4 = ((TwoModesTool) this).drawnTargetY) == i2) {
                drawer.engine.setColor(isValid(i3, i4) ? Colors.GREEN : Colors.RED);
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_YELLOW_DOTTED);
            }
            drawer.engine.setColor(Colors.WHITE);
            if (isValid(i, i2)) {
                drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_GREEN_DOTTED);
                return;
            }
            return;
        }
        if (i5 != 1) {
            return;
        }
        int i6 = this.selectedX;
        if (i == i6 && i2 == this.selectedY) {
            if (this.drawnTarget && !this.drawnTargetValid) {
                drawer.engine.setColor(Colors.RED);
            }
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_CHECKER);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        if (isValid(i6, this.selectedY, i, i2) && isTileInvolved(i, i2)) {
            int iMax = Math.max(Math.abs(this.selectedX - i), Math.abs(this.selectedY - i2));
            if (iMax % this.draft.lineStepping > 0) {
                return;
            }
            drawOverlay(drawer, i, i2, Resources.FRAME_TOOLMARK_GREEN_DOTTED, iMax);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_DECORATION;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle(this.draft);
    }
}
