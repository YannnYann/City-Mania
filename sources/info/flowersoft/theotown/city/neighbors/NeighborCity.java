package info.flowersoft.theotown.city.neighbors;

import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import io.blueflower.stapel2d.drawing.Image;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NeighborCity {
    public final boolean created;
    public final boolean direct;
    public String id;
    public final long ownerId;
    public final String ownerName;
    public final TradingRelation tradingRelation;

    public abstract boolean contains(int i, int i2);

    public abstract long getAvailableBodyDisposal();

    public abstract long getAvailablePower();

    public abstract long getAvailableWasteDisposal();

    public abstract long getAvailableWater();

    public abstract int getInhabitants();

    public abstract int getInhabitants(int i);

    public abstract String getName();

    public abstract Image getPreviewImage();

    public abstract BuildingSurvey getSurvey();

    public abstract boolean hasInfinityMoney();

    public abstract boolean hasPowerConnection();

    public abstract boolean hasRoadConnection();

    public abstract boolean hasWaterConnection();

    public NeighborCity(TradingRelation tradingRelation, boolean z, String str, long j, String str2, boolean z2) {
        this.tradingRelation = tradingRelation;
        this.created = z;
        this.id = str;
        this.ownerId = j;
        this.ownerName = str2;
        this.direct = z2;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public long getOwnerId() {
        return this.ownerId;
    }

    public String getOwnerName() {
        return this.ownerName;
    }

    public TradingRelation getTradingRelation() {
        return this.tradingRelation;
    }

    public boolean isDirect() {
        return this.direct;
    }

    public boolean isCreated() {
        return this.created;
    }

    public boolean canTrade() {
        return this.direct && this.created;
    }
}
