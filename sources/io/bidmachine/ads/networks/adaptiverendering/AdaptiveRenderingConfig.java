package io.bidmachine.ads.networks.adaptiverendering;

import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class AdaptiveRenderingConfig extends NetworkConfig {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public AdaptiveRenderingConfig() {
        super("adaptive_rendering", null);
    }

    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new AdaptiveRenderingAdapter();
    }
}
