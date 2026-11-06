package info.flowersoft.theotown.mechanics;

import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.resources.Features;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.util.SSP;

/* JADX INFO: loaded from: classes4.dex */
public class TimedEffectManager {
    public int doubleIncomeDays;
    public long doubledIncomeMS;
    public int fastForwardDays;
    public int freeTunnels;
    public long halfTunnelPriceMS;
    public long lastCityUpdateMS;
    public long lastFastForwardSet;
    public long lastSaveTimeMS;
    public long shortBuildTimeMS;

    public void loadData(SSP.Reader reader) {
        long time = InternetTime.getInstance().getTime();
        this.fastForwardDays = reader.getInt("fast forward days", 0);
        this.doubleIncomeDays = reader.getInt("double income days", 0);
        long j = reader.getLong("short build time start time", 0L);
        long j2 = reader.getLong("short build time duration", 0L);
        long j3 = reader.getLong("short build time remaining", 0L);
        if (j3 != 0) {
            this.shortBuildTimeMS = j3;
        } else {
            this.shortBuildTimeMS = (j + j2) - time;
        }
        long j4 = reader.getLong("half tunnel price start time", 0L);
        long j5 = reader.getLong("half tunnel price duration", 0L);
        long j6 = reader.getLong("half tunnel price remaining", 0L);
        if (j6 != 0) {
            this.halfTunnelPriceMS = j6;
        } else {
            this.halfTunnelPriceMS = (j4 + j5) - time;
        }
        long j7 = reader.getLong("doubled income start time", 0L);
        long j8 = reader.getLong("doubled income duration", 0L);
        long j9 = reader.getLong("doubled income remaining", 0L);
        if (j9 != 0) {
            this.doubledIncomeMS = j9;
        } else {
            this.doubledIncomeMS = (j7 + j8) - time;
        }
        this.freeTunnels = reader.getInt("free tunnels", 0);
    }

    public void updateInCity() {
        long time = InternetTime.getInstance().getTime();
        long jMin = Math.min(Math.max(time - this.lastCityUpdateMS, 0L), 1000L);
        this.lastCityUpdateMS = time;
        this.shortBuildTimeMS = Math.max(this.shortBuildTimeMS - jMin, -100000L);
        this.halfTunnelPriceMS = Math.max(this.halfTunnelPriceMS - jMin, -100000L);
        this.doubledIncomeMS = Math.max(this.doubledIncomeMS - jMin, -100000L);
        if (time - this.lastSaveTimeMS > 10000) {
            GameHandler.getInstance().saveData();
        }
    }

    public void saveData(SSP.Writer writer) {
        writer.putInt("fast forward days", this.fastForwardDays);
        writer.putInt("double income days", this.doubleIncomeDays);
        writer.putLong("short build time remaining", this.shortBuildTimeMS);
        writer.putLong("half tunnel price remaining", this.halfTunnelPriceMS);
        writer.putLong("doubled income remaining", this.doubledIncomeMS);
        writer.putInt("free tunnels", this.freeTunnels);
        this.lastSaveTimeMS = InternetTime.getInstance().getTime();
    }

    public int getFastForwardDays() {
        return this.fastForwardDays;
    }

    public void setFastForwardDays(int i) {
        this.fastForwardDays = Math.max(i, 0);
        GameHandler.getInstance().saveData();
        this.lastFastForwardSet = InternetTime.getInstance().getTime();
    }

    public boolean consumeDoubleIncomeDays() {
        int i = this.doubleIncomeDays - 1;
        this.doubleIncomeDays = i;
        if (i >= 0) {
            GameHandler.getInstance().saveData();
            return true;
        }
        this.doubleIncomeDays = 0;
        return false;
    }

    public int getDoubleIncomeDays() {
        return this.doubleIncomeDays;
    }

    public int getTunnelPriceFactor(int i) {
        return (getRemainingHalfTunnelPriceMS() > 0 || i >= 64) ? 2 : 1;
    }

    public long getRemainingHalfTunnelPriceMS() {
        return this.halfTunnelPriceMS;
    }

    public long getRemainingDoubledIncomeMS() {
        return this.doubledIncomeMS;
    }

    public synchronized void addDoubledIncomeMS(long j) {
        this.doubledIncomeMS = Math.max(this.doubledIncomeMS, 0L) + j;
        GameHandler.getInstance().saveData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean tunnelsAreFree() {
        return ((FeatureDraft) Features.getInstance().FEATURE_FREETUNNELS00.get()).isUnlocked();
    }

    public int getShortBuildTimeFactor() {
        return getRemainingShortBuildTimeMS() > 0 ? 8 : 1;
    }

    public long getRemainingShortBuildTimeMS() {
        return this.shortBuildTimeMS;
    }

    public synchronized void addShortBuildTime(long j) {
        this.shortBuildTimeMS = Math.max(this.shortBuildTimeMS, 0L) + j;
        GameHandler.getInstance().saveData();
    }

    public synchronized int getFreeTunnels() {
        return this.freeTunnels;
    }

    public synchronized void addFreeTunnels(int i) {
        this.freeTunnels = Math.max(this.freeTunnels + i, 0);
        GameHandler.getInstance().saveData();
    }

    public synchronized int consumeFreeTunnels(int i) {
        int iMin;
        iMin = Math.min(this.freeTunnels, i);
        this.freeTunnels -= iMin;
        GameHandler.getInstance().saveData();
        return iMin;
    }
}
