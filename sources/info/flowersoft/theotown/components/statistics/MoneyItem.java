package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.util.Functions;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class MoneyItem extends AbstractBudgetItem {
    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 2522;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "money";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return Functions.castToIntClamped(Math.round(this.budget.getEstate()));
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Colors.MARINE_BLUE;
    }
}
