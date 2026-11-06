package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public interface StatisticsItem {
    void bind(City city);

    int evaluate();

    Color getColor();

    String getName(Translator translator, DraftLocalizer draftLocalizer);

    String getTag();
}
