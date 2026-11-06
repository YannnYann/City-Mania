package io.bidmachine.ads.networks.vast;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;

/* JADX INFO: loaded from: classes4.dex */
public final class VastConfig extends NetworkConfig {
    public VastConfig() {
        super("vast", null);
    }

    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new VastAdapter();
    }
}
