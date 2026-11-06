package info.flowersoft.theotown.components.statistics;

import com.ironsource.mediationsdk.logger.IronSourceError;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class InhabitantsAllItem extends AbstractPopulationItem {
    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "inhabitants all";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.people.getPeople();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.MARINE_BLUE;
    }
}
