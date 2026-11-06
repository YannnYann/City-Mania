package info.flowersoft.theotown.components.management;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.decoration.DecorationBuilder;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.HappinessContext;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.ZoneDraft;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.MinimumSelector;
import io.blueflower.stapel2d.util.ProbabilitySelector;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingBuildCommand extends BuildCommand {
    public long absoluteDay;
    public final ProbabilitySelector<BuildSelection> buildSelectionSelector;
    public final List<BuildingDraft> drafts;
    public final IntList frames;
    public final Set<Building> oldBuildings;
    public final IntList positionsXY;

    public BuildingBuildCommand(City city, HappinessCalculator happinessCalculator, CityModifier cityModifier, DecorationBuilder decorationBuilder) {
        super(city, happinessCalculator, cityModifier, decorationBuilder);
        this.drafts = new ArrayList();
        this.positionsXY = new IntList();
        this.frames = new IntList();
        this.oldBuildings = new HashSet();
        this.buildSelectionSelector = new ProbabilitySelector<>(Resources.RND, 100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04b4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0233  */
    @Override // info.flowersoft.theotown.components.management.BuildCommand
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public info.flowersoft.theotown.components.BuildCommandResult run() {
        /*
            Method dump skipped, instruction units count: 1205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.management.BuildingBuildCommand.run():info.flowersoft.theotown.components.BuildCommandResult");
    }

    /* JADX INFO: renamed from: $r8$lambda$5QpTq-PHG2S7K7d18mRiDd2KP8E, reason: not valid java name */
    public static /* synthetic */ void m2125$r8$lambda$5QpTqPHG2S7K7d18mRiDd2KP8E(BuildingBuildCommand buildingBuildCommand, BuildingDraft buildingDraft, int i, int i2, int i3) {
        if (buildingBuildCommand.modifier.isBuildable(buildingDraft, i, i2, false, false, i3) == null) {
            List<Building> listBuild = buildingBuildCommand.modifier.build(buildingDraft, i, i2, i3, (LuaValue) null);
            if (listBuild != null) {
                Iterator<Building> it = listBuild.iterator();
                while (it.hasNext()) {
                    buildingBuildCommand.decorationBuilder.onBuildBuilding(it.next());
                }
            }
            ((DefaultManagement) buildingBuildCommand.city.getComponent(3)).getPeopleInfoGrid().add(i, i2, buildingDraft.habitants + buildingDraft.workers);
        }
    }

    public final float evalF(MinimumSelector<Attribute> minimumSelector, HappinessContext happinessContext, int i, int i2) {
        minimumSelector.clear();
        happinessContext.density = i2 / (i * i);
        happinessContext.people = i2;
        this.happinessCalculator.calculateHappinessImmediate(happinessContext, minimumSelector, false);
        return 0.49f - minimumSelector.getMinimumValue();
    }

    public double getMinDaysUntilReplaced(Building building) {
        if (building.inConstruction() || building.isLocked() || building.isUntouchable()) {
            return Double.MAX_VALUE;
        }
        if (building.isEmpty() || building.getBuildingType() == BuildingType.DECORATION) {
            return -1.7976931348623157E308d;
        }
        return ((Math.log((building.getDraft().buildTime * 0.01f) + 1.0f) * 1000.0d) + 45.0d) - building.getDaysBuilt(this.absoluteDay);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x015a A[PHI: r8
      0x015a: PHI (r8v11 float) = (r8v10 float), (r8v15 float) binds: [B:59:0x013c, B:61:0x0147] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final info.flowersoft.theotown.draft.BuildingDraft selectDraft(info.flowersoft.theotown.resources.BuildingPeopleCounter.ConcreteCounter r21, info.flowersoft.theotown.draft.ZoneDraft r22, int r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.management.BuildingBuildCommand.selectDraft(info.flowersoft.theotown.resources.BuildingPeopleCounter$ConcreteCounter, info.flowersoft.theotown.draft.ZoneDraft, int, int, int, int, int):info.flowersoft.theotown.draft.BuildingDraft");
    }

    public static class BuildSelection {
        public int displacedPeople;
        public int maxPeople;
        public int minPeople;
        public int size;
        public int x;
        public int y;
        public ZoneDraft z;

        public BuildSelection() {
        }
    }
}
