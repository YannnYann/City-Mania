package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Zones;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.EmptyBuildingCause;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.decoration.DecorationBuilder;
import info.flowersoft.theotown.components.management.attribute.ConcreteAttributeContainer;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SafeListAccessor;
import io.blueflower.stapel2d.util.ProbabilitySelector;

/* JADX INFO: loaded from: classes4.dex */
public class LeaveBuildCommand extends BuildCommand {
    public LeaveBuildCommand(City city, HappinessCalculator happinessCalculator, CityModifier cityModifier, DecorationBuilder decorationBuilder) {
        super(city, happinessCalculator, cityModifier, decorationBuilder);
    }

    @Override // info.flowersoft.theotown.components.management.BuildCommand
    public BuildCommandResult run() {
        BuildingType buildingType;
        Building building;
        ConcreteAttributeContainer concreteAttributeContainer;
        ProbabilitySelector probabilitySelector = new ProbabilitySelector(Resources.RND);
        BuildCommandResult buildCommandResult = null;
        if (this.zone.base == Zones.getInstance().RESIDENTIAL0) {
            buildingType = BuildingType.RESIDENTIAL;
        } else if (this.zone.base == Zones.getInstance().COMMERCIAL0) {
            buildingType = BuildingType.COMMERCIAL;
        } else {
            buildingType = this.zone.base == Zones.getInstance().INDUSTRIAL0 ? BuildingType.INDUSTRIAL : null;
        }
        for (Building building2 : new SafeListAccessor(this.city.getBuildings().getBuildingsOfBaseType(buildingType))) {
            double daysBuilt = building2.getDaysBuilt(((DefaultDate) this.city.getComponent(1)).getAbsoluteDay());
            if (building2.getZone().isSuperiorTo(this.zone) && building2.getBuildingType() != BuildingType.DECORATION && building2.getLevel() == this.level && daysBuilt > 0.0d && !building2.isEmpty() && (concreteAttributeContainer = (ConcreteAttributeContainer) building2.getAttributeContainer()) != null) {
                probabilitySelector.insert(building2, ((1.0f - concreteAttributeContainer.getHappiness()) - ((float) Math.exp(daysBuilt * (-0.009999999776482582d)))) / ((building2.getOverallHabitants() * 0.1f) + 1.0f));
            }
        }
        probabilitySelector.insert(null, 0.1f);
        if (probabilitySelector.hasResult() && (building = (Building) probabilitySelector.getResult()) != null) {
            building.setEmpty(true, EmptyBuildingCause.getLowDemand());
            buildCommandResult = new BuildCommandResult(this.zone, this.level, true, this.pressure, true, 0, ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), building.getX(), building.getY(), building.getWidth(), building.getOverallPeople(), 0, 0, false, null);
        }
        return buildCommandResult == null ? new BuildCommandResult(this.zone, this.level, true, this.pressure, false, 0, ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay(), 0, 0, 0, 0, 0, 0, false, null) : buildCommandResult;
    }
}
