package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class CommercialLvl2Item extends AbstractPopulationItem {
    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 668;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "com2";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.management.getBuildingSurvey().getShoppingPlaces(1, 0);
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Resources.COLOR_COM2;
    }
}
