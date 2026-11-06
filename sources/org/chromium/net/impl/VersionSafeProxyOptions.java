package org.chromium.net.impl;

import java.util.Objects;
import org.chromium.net.ProxyOptions;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeProxyOptions {
    public final ProxyOptions mBackend;

    public static boolean apiContainsProxyOptionsClass() {
        return VersionSafeCallbacks$ApiVersion.getMaximumAvailableApiLevel() >= 38;
    }

    public VersionSafeProxyOptions(ProxyOptions backend) {
        if (!apiContainsProxyOptionsClass()) {
            throw new AssertionError(String.format("This should have not been created: the Cronet API being used has an ApiLevel of %s, but setProxyOptions was added in ApiLevel %s", Integer.valueOf(VersionSafeCallbacks$ApiVersion.getMaximumAvailableApiLevel()), 38));
        }
        Objects.requireNonNull(backend);
        this.mBackend = backend;
        if (backend.getProxyList().isEmpty()) {
            throw new AssertionError("The list of proxies should never be empty, this is checked in the API layer");
        }
    }
}
