package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.RoadDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.selectable.SelectableDraft;
import info.flowersoft.theotown.ui.selectable.SelectableResolver;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class EyeDropperTool extends BuildTool {
    public final Setter<SelectableDraft> onSelect;

    public EyeDropperTool(Setter<SelectableDraft> setter) {
        this.onSelect = setter;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "EyeDropper";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        Building building = this.tiles.getBuilding(i, i2);
        Road topRoad = this.tiles.getTopRoad(i, i2);
        if (building != null && building.getDraft().pickable) {
            notifySelect(building.getDraft());
            this.city.applyComponent(new ToolResolver(this.city).resolve(building.getDraft(), building.getFrame()));
        } else if (topRoad != null) {
            RoadDraft roadDraft = topRoad.draft;
            if (roadDraft.pickable) {
                notifySelect(roadDraft);
                this.city.applyComponent(new ToolResolver(this.city).resolve(topRoad.draft));
            }
        }
    }

    public final void notifySelect(Draft draft) {
        SelectableDraft selectableDraftResolve;
        if (this.onSelect == null || (selectableDraftResolve = new SelectableResolver(this.city).resolve(draft, false, null)) == null) {
            return;
        }
        this.onSelect.set(selectableDraftResolve);
    }

    @Override // info.flowersoft.theotown.tools.BuildTool
    public void drawOnTop(int i, int i2, Drawer drawer) {
        if (this.drawnTargetHover && this.drawnTargetX == i && this.drawnTargetY == i2) {
            Ground ground = this.city.getTiles().getGround(i, i2);
            Building building = this.tiles.getBuilding(i, i2);
            Road topRoad = this.tiles.getTopRoad(i, i2);
            drawer.engine.setColor(((building == null || !building.getDraft().pickable) && (topRoad == null || !topRoad.draft.pickable)) ? Colors.RED : Colors.WHITE);
            drawTileOverlayFrame(drawer, i, i2, ground, Resources.FRAME_TOOLMARK_BLOB);
            drawer.engine.setColor(Colors.WHITE);
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_EYE_DROPPER;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return this.city.getTranslator().translate(2181);
    }
}
