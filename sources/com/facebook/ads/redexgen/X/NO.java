package com.facebook.ads.redexgen.X;

import java.io.File;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NO implements InterfaceC2300dG<File> {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2300dG
    public final C2299dF<File> A4N(File file, InterfaceC2318dY interfaceC2318dY) {
        if (file.exists()) {
            return new C2299dF<>(true, file);
        }
        return new C2299dF<>(false, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2300dG
    public final void A5m(File file, InterfaceC2318dY interfaceC2318dY) {
    }
}
