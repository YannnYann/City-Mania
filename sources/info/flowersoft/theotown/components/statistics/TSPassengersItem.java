package info.flowersoft.theotown.components.statistics;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.DefaultTSComponent;
import info.flowersoft.theotown.components.transportationsystem.TSSystem;
import info.flowersoft.theotown.components.transportationsystem.TSSystemDraft;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class TSPassengersItem implements StatisticsItem {
    public final Color color;
    public final TSSystemDraft draft;
    public TSSystem system;
    public final String tag;

    public TSPassengersItem(TSSystemDraft tSSystemDraft, Color color) {
        this.draft = tSSystemDraft;
        this.color = color;
        this.tag = "ts_" + tSSystemDraft.getId();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getTag() {
        return this.tag;
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public void bind(City city) {
        this.system = ((DefaultTSComponent) city.getComponent(22)).getSystemObjectById(this.draft.getId());
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public int evaluate() {
        return this.system.queryPassengers();
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public String getName(Translator translator, DraftLocalizer draftLocalizer) {
        return draftLocalizer.getTitle(this.draft.getOwnerDraft());
    }

    @Override // info.flowersoft.theotown.components.statistics.StatisticsItem
    public Color getColor() {
        return this.color;
    }
}
