package io.bidmachine.ads.networks.gam.versions;

import io.bidmachine.utils.version.Version;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseVersionWrapper implements VersionWrapper {
    public final int minDeviceApiVersion;
    public final Version versionForWhichCompiled;

    public BaseVersionWrapper(int minDeviceApiVersion, Version versionForWhichCompiled) {
        this.minDeviceApiVersion = minDeviceApiVersion;
        this.versionForWhichCompiled = versionForWhichCompiled;
    }

    @Override // io.bidmachine.ads.networks.gam.versions.VersionWrapper
    public int getMinDeviceApiVersion() {
        return this.minDeviceApiVersion;
    }

    @Override // io.bidmachine.ads.networks.gam.versions.VersionWrapper
    public Version getVersionForWhichCompiled() {
        return this.versionForWhichCompiled;
    }
}
