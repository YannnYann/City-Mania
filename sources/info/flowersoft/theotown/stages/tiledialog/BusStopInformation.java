package info.flowersoft.theotown.stages.tiledialog;

import com.ironsource.C3558d4;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.InfluenceType;
import info.flowersoft.theotown.city.objects.BusStop;
import info.flowersoft.theotown.city.objects.Road;
import info.flowersoft.theotown.draft.BusStopDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;

/* JADX INFO: loaded from: classes4.dex */
public class BusStopInformation extends TileInformationProvider {
    public BusStop busStop;
    public BusStopDraft draft;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return true;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
        Road topRoad = city.getTiles().getTopRoad(i, i2);
        BusStop busStop = topRoad != null ? topRoad.getBusStop() : null;
        this.busStop = busStop;
        this.draft = busStop != null ? busStop.getDraft() : null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.busStop != null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getIcon() {
        return InfluenceType.PASSENGER_BUS.getIconId();
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getTitle() {
        return this.translator.translate(648);
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        return (("" + new DraftLocalizer(this.city).getText(this.draft)) + "\n\n") + StringFormatter.format(this.translator.translate(C3558d4.i), Float.valueOf(this.busStop.getOverallUsage() * 100.0f), Integer.valueOf(this.busStop.getWaiting()), Integer.valueOf(this.busStop.getDraft().capacity));
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int[] getInfluenceVector() {
        return this.draft.influenceInduceVector;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public int getSound() {
        int i = this.draft.soundClick;
        return i != -1 ? i : Resources.SOUND_ROAD;
    }
}
