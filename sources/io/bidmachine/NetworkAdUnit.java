package io.bidmachine;

import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class NetworkAdUnit {
    private final AdFormat adFormat;
    private final String id;
    private final Map<String, String> mediationConfig;
    private final NetworkAdapter networkAdapter;

    public NetworkAdUnit(NetworkAdapter networkAdapter, AdFormat adFormat, Map<String, String> map) {
        this.id = UUID.randomUUID().toString();
        this.networkAdapter = networkAdapter;
        this.adFormat = adFormat;
        this.mediationConfig = map;
    }

    public void clearAuction() throws Throwable {
        getNetworkAdapter().clearAuction(this);
    }

    @Deprecated(since = "3.5.0")
    public AdsFormat getAdFormat() {
        return AdsFormat.fromAdFormat(this.adFormat);
    }

    public AdFormat getFormat() {
        return this.adFormat;
    }

    public String getId() {
        return this.id;
    }

    public Map<String, String> getMediationConfig() {
        return this.mediationConfig;
    }

    public String getMediationParameter(String str) {
        return this.mediationConfig.get(str);
    }

    public NetworkAdapter getNetworkAdapter() {
        return this.networkAdapter;
    }

    public String getNetworkKey() {
        return this.networkAdapter.getKey();
    }

    public void onLossAuction() throws Throwable {
        getNetworkAdapter().onLossAuction(this);
    }

    public void onWinAuction() throws Throwable {
        getNetworkAdapter().onWinAuction(this);
    }

    @Deprecated(since = "3.5.0")
    public NetworkAdUnit(NetworkAdapter networkAdapter, AdsFormat adsFormat, Map<String, String> map) {
        this(networkAdapter, adsFormat.toAdFormat(), map);
    }
}
