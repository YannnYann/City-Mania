package io.bidmachine.ads.networks.nast;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;

/* JADX INFO: loaded from: classes4.dex */
public final class NastConfig extends NetworkConfig {
    public NastConfig() {
        super("nast", null);
    }

    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new NastAdapter();
    }
}
