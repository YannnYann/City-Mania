package io.bidmachine.ads.networks.gam_dynamic;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NetworkParamsImpl implements NetworkParams {
    public final String networkKey;
    public final String networkName;

    public NetworkParamsImpl(String networkKey, String networkName) {
        this.networkKey = networkKey;
        this.networkName = networkName;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.NetworkParams
    public String getNetworkKey() {
        return this.networkKey;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.NetworkParams
    public String getNetworkName() {
        return this.networkName;
    }
}
