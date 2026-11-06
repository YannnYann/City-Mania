package io.bidmachine.ads.networks.gam;

import io.bidmachine.AdsFormat;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class GAMTypeConfig {
    public final AdsFormat adsFormat;
    public final int cacheSize;
    public final List<GAMUnitData> gamUnitDataList;

    public GAMTypeConfig(AdsFormat adsFormat, List<GAMUnitData> gamUnitDataList, int cacheSize) {
        this.adsFormat = adsFormat;
        this.cacheSize = cacheSize;
        this.gamUnitDataList = gamUnitDataList;
    }

    public AdsFormat getAdsFormat() {
        return this.adsFormat;
    }

    public List<GAMUnitData> getGAMUnitDataList() {
        return this.gamUnitDataList;
    }

    public int getCacheSize() {
        return this.cacheSize;
    }
}
