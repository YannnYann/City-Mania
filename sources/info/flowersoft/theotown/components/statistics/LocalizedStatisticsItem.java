package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class LocalizedStatisticsItem implements StatisticsItem {
    public abstract int getNameId();

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getName(Translator translator, DraftLocalizer draftLocalizer) {
        return translator.translate(getNameId());
    }
}
