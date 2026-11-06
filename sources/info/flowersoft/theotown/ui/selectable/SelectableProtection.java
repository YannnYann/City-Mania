package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.tools.MarkTool;
import info.flowersoft.theotown.tools.marker.ProtectedMarker;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableProtection extends SelectableMarker {
    public final Tiles tiles;

    public SelectableProtection(City city) {
        super(city, new ProtectedMarker(city));
        this.tiles = city.getTiles();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableMarker, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        ((MarkTool) this.city.getComponent(13)).setAction(new Tool.ClickListener() { // from class: info.flowersoft.theotown.ui.selectable.SelectableProtection$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.city.components.Tool.ClickListener
            public final void onClick(Tool tool, int i, int i2, int i3, int i4) {
                SelectableProtection.m2403$r8$lambda$lDY_YvngmuckEYQeKb5j6fPGzQ(this.f$0, tool, i, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$lDY_Yvn-gmuckEYQeKb5j6fPGzQ, reason: not valid java name */
    public static /* synthetic */ void m2403$r8$lambda$lDY_YvngmuckEYQeKb5j6fPGzQ(SelectableProtection selectableProtection, Tool tool, int i, int i2, int i3, int i4) {
        Building building = selectableProtection.tiles.getBuilding(i, i2);
        if (building == null || !building.getBuildingType().isRCIOrDeco() || building.getBuildingType() == BuildingType.DECORATION) {
            return;
        }
        building.setUntouchable(!building.isUntouchable());
    }
}
