package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;

/* JADX INFO: loaded from: classes4.dex */
public class ResidentialLvl2Item extends AbstractPopulationItem {
    @Override // info.flowersoft.theotown.components.statistics.LocalizedStatisticsItem
    public int getNameId() {
        return 1906;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return "res2";
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.management.getBuildingSurvey().getResidentialSpace(1, 0);
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return Resources.COLOR_RES2;
    }
}
