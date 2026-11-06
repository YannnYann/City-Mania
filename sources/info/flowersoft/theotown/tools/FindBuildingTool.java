package info.flowersoft.theotown.tools;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.BuildingMarker;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FindBuildingTool extends BuildTool {
    public Building currentBuilding;
    public final BuildingDraft draft;

    public FindBuildingTool(final City city, final BuildingDraft buildingDraft) {
        this.city = city;
        this.draft = buildingDraft;
        setMarker(new BuildingMarker(city) { // from class: info.flowersoft.theotown.tools.FindBuildingTool.1
            @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
            public float getInvolvedIntensity(Building building) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public String getTag() {
                return null;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildingMarker, info.flowersoft.theotown.tools.marker.BuildToolMarker
            public boolean markBuilding(int i, int i2) {
                return this.tiles.getBuilding(i, i2) == FindBuildingTool.this.currentBuilding;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
            public boolean buildingIsInvolved(Building building) {
                return building.getDraft() == buildingDraft;
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.FindBuildingTool.2
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_NEXT;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdNext";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                FindBuildingTool.this.selectNext();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return FindBuildingTool.this.getList().size() > 1;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return city.getTranslator().translate(3451);
            }
        });
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.FindBuildingTool.3
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_PREVIOUS;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdPrev";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                FindBuildingTool.this.selectPrev();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return FindBuildingTool.this.getList().size() > 1;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return city.getTranslator().translate(3229);
            }
        });
        setBuilding(getList().get(0));
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "FindBuilding";
    }

    private void setBuilding(Building building) {
        this.currentBuilding = building;
        if (building != null) {
            this.city.focus(building);
        }
    }

    public final void selectNext() {
        List<Building> list = getList();
        if (list.size() >= 2) {
            for (int i = 0; i < list.size(); i++) {
                Building building = list.get(i);
                if (building != null && building == this.currentBuilding) {
                    setBuilding(list.get((i + 1) % list.size()));
                    return;
                }
            }
        }
        setBuilding(list.get(0));
    }

    public final void selectPrev() {
        List<Building> list = getList();
        if (list.size() >= 2) {
            for (int i = 0; i < list.size(); i++) {
                Building building = list.get(i);
                if (building != null && building == this.currentBuilding) {
                    setBuilding(list.get(((i - 1) + list.size()) % list.size()));
                    return;
                }
            }
        }
        setBuilding(list.get(0));
    }

    public final List<Building> getList() {
        return this.city.getBuildings().getBuildingsOfDraft(this.draft);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return Resources.ICON_EYE;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return StringFormatter.format("%s (%d)", new DraftLocalizer(this.city).getTitle(this.draft), Integer.valueOf(getList().size()));
    }
}
