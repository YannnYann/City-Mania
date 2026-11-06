package info.flowersoft.theotown.components.statistics;

import com.ironsource.mediationsdk.logger.IronSourceError;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingType;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class BuildingsItem extends LocalizedStatisticsItem {
    public City city;

    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return IronSourceError.ERROR_NT_LOAD_NO_FILL;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "buildings";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.city = city;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.city.getBuildings().size() - this.city.getBuildings().getBuildingsOfType(BuildingType.TERRAIN).size();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.DARK_BLUE;
    }
}
