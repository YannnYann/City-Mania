package io.bidmachine.ads.networks.mraid;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidConfig extends NetworkConfig {
    public MraidConfig() {
        super("mraid", null);
    }

    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new MraidAdapter();
    }
}
