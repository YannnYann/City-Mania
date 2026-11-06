package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.decoration.DecorationBuilder;

/* JADX INFO: loaded from: classes4.dex */
public class EmptyBuildCommand extends BuildCommand {
    @Override // info.flowersoft.theotown.components.management.BuildCommand
    public BuildCommandResult run() {
        return null;
    }

    public EmptyBuildCommand(City city, HappinessCalculator happinessCalculator, CityModifier cityModifier, DecorationBuilder decorationBuilder) {
        super(city, happinessCalculator, cityModifier, decorationBuilder);
    }
}
