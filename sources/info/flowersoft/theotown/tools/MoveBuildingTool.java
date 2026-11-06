package info.flowersoft.theotown.tools;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.BuildingList;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.UpgradeDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.marker.BuildToolMarker;
import info.flowersoft.theotown.tools.marker.BuildingMarker;
import io.blueflower.stapel2d.drawing.Colors;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MoveBuildingTool extends BuildingTool {
    public BuildToolMarker myMarker;
    public Building srcBuilding;

    public MoveBuildingTool() {
        super(null);
        this.actions.add(1, new ToolAction() { // from class: info.flowersoft.theotown.tools.MoveBuildingTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_BACKWARD;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "resetMoveBuildingTool";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                MoveBuildingTool.this.enterSelectBuildingMode();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public boolean isVisible() {
                return MoveBuildingTool.this.getDraft() != null;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return MoveBuildingTool.this.city.getTranslator().translate(1063);
            }
        });
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        enterSelectBuildingMode();
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "MoveBuilding";
    }

    public final void enterSelectBuildingMode() {
        setDraft(null);
        this.srcBuilding = null;
        this.myMarker = getMarker();
        setMarker(new BuildingMarker(this.city) { // from class: info.flowersoft.theotown.tools.MoveBuildingTool.2
            @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
            public float getInvolvedIntensity(Building building) {
                return 1.0f;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildToolMarker
            public String getTag() {
                return null;
            }

            @Override // info.flowersoft.theotown.tools.marker.BuildingMarker
            public boolean buildingIsInvolved(Building building) {
                return MoveBuildingTool.this.isMoveable(building);
            }
        });
    }

    public final void enterMoveBuildingMode(Building building) {
        setDraft(building.getDraft());
        this.frame = building.getFrame();
        this.city.focus(building.getX() + ((building.getWidth() - 1) / 2.0f), building.getY() + ((building.getHeight() - 1) / 2.0f), this.city.getScale());
        this.absOffsetX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.absOffsetY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        setMarker(this.myMarker);
    }

    public final boolean isMoveable(Building building) {
        return (building.inConstruction() || !building.getDraft().moveable || building.isLockedAndNotRemoveable()) ? false : true;
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool
    public boolean isBuildable() {
        return super.isBuildable();
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        if (getDraft() != null) {
            if (this.selectedX == this.srcBuilding.getX() && this.selectedY == this.srcBuilding.getY()) {
                enterSelectBuildingMode();
                return;
            } else {
                super.onClick(i, i2, f, f2, i3, i4);
                return;
            }
        }
        if (this.city.isValid(i, i2)) {
            Building building = this.tiles.getBuilding(i, i2);
            this.srcBuilding = building;
            if (building != null && isMoveable(building)) {
                enterMoveBuildingMode(this.srcBuilding);
            } else {
                this.srcBuilding = null;
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool
    public void drawBuilding(int i, int i2, Drawer drawer) {
        Building building = this.tiles.getBuilding(i, i2);
        if (building != null && building == this.srcBuilding) {
            drawer.engine.setColor(Colors.BLUE);
            super.drawBuilding(i, i2, drawer);
            drawer.engine.setColor(Colors.WHITE);
            return;
        }
        super.drawBuilding(i, i2, drawer);
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool
    public long getPrice(int i, int i2) {
        return (super.getPrice(i, i2) + 4) / 5;
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool
    public void beforeBuilding() {
        this.modifier.remove(this.srcBuilding, null);
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool
    public void afterBuilding(Building building) {
        TheoTown.analytics.logEvent("building", "moved", getDraft().id);
        List<UpgradeDraft> upgrades = this.srcBuilding.getUpgrades();
        for (int i = 0; i < upgrades.size(); i++) {
            building.addFinishedUpgrade(upgrades.get(i));
        }
        building.setUntouchable(this.srcBuilding.isUntouchable());
        building.setSpentDiamondsOn(this.srcBuilding.isSpentDiamondsOn());
        building.setSpentMoney(this.srcBuilding.getSpentMoney());
        this.modifier.setBuildingPerformance(building, this.srcBuilding.getPerformance());
        building.setLuaStorage(this.srcBuilding.getLuaStorage());
        building._IDLE_ID = this.srcBuilding._IDLE_ID;
        building.markAsNewlyBuilt();
        enterSelectBuildingMode();
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool
    public boolean isBuildable(int i, int i2) {
        if (getDraft() == null || this.srcBuilding == null) {
            return false;
        }
        return isBuildableWithPotentialSelfIntersection(i, i2);
    }

    public final boolean isBuildableWithPotentialSelfIntersection(int i, int i2) {
        BuildingList buildings = this.city.getBuildings();
        buildings.setNotifyListeners(false);
        buildings.remove(this.srcBuilding);
        setBuildingTiles(null);
        boolean zIsBuildable = super.isBuildable(i, i2);
        setBuildingTiles(this.srcBuilding);
        buildings.add(this.srcBuilding);
        buildings.setNotifyListeners(true);
        return zIsBuildable;
    }

    public final void setBuildingTiles(Building building) {
        for (int i = 0; i < this.srcBuilding.getHeight(); i++) {
            for (int i2 = 0; i2 < this.srcBuilding.getWidth(); i2++) {
                int x = this.srcBuilding.getX() + i2;
                int y = this.srcBuilding.getY() + i;
                if (this.city.isValid(x, y)) {
                    this.tiles.setBuilding(x, y, building);
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.city.components.Tool
    public boolean reversedMovement() {
        return getDraft() != null && super.reversedMovement();
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.city.components.Tool
    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        return getDraft() != null && super.canBeginMove(f, f2, i, i2, f3, f4);
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public int getIcon() {
        return getDraft() != null ? super.getIcon() : Resources.ICON_MOVE_BUILDING;
    }

    @Override // info.flowersoft.theotown.tools.BuildingTool, info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return getDraft() != null ? super.getName() : this.city.getTranslator().translate(681);
    }
}
