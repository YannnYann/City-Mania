package info.flowersoft.theotown.components.statistics;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class EnergyNeedItem extends AbstractEnergyItem {
    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 2978;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "energy need";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.power.consumedPower();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.YELLOW;
    }
}
