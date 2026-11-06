package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.components.BuildCommandResult;
import info.flowersoft.theotown.components.decoration.DecorationBuilder;
import info.flowersoft.theotown.draft.ZoneDraft;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BuildCommand {
    public final City city;
    public final DecorationBuilder decorationBuilder;
    public List<Runnable> finalActions = new ArrayList();
    public final HappinessCalculator happinessCalculator;
    public int level;
    public final CityModifier modifier;
    public float pressure;
    public final Tiles tiles;
    public ZoneDraft zone;

    public abstract BuildCommandResult run();

    public BuildCommand(City city, HappinessCalculator happinessCalculator, CityModifier cityModifier, DecorationBuilder decorationBuilder) {
        this.city = city;
        this.tiles = city.getTiles();
        this.happinessCalculator = happinessCalculator;
        this.modifier = cityModifier;
        this.decorationBuilder = decorationBuilder;
    }

    public final void setTarget(ZoneDraft zoneDraft, int i, float f) {
        this.zone = zoneDraft;
        this.level = i;
        this.pressure = f;
    }

    public final List<Runnable> getFinalActions() {
        return this.finalActions;
    }

    public boolean hasFinalActions() {
        return !this.finalActions.isEmpty();
    }
}
