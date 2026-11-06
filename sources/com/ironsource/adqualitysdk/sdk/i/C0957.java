package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0957 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3627;

    public C0957(C0865 c0865) {
        this.f3627 = c0865;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        try {
            C0865 c0865 = this.f3627;
            c0865.f3335 = Class.forName(c0865.f3330.f3358);
            AbstractC0272.m1210(new C1024(this));
        } catch (ClassNotFoundException e) {
            AbstractC0182.m1147(StringFog.decrypt("3Ht4+u+YWMLcfETy95VA3u8=\n", "nRgMk5nxLLs=\n"), StringFog.decrypt("aWRs+LV65yNfYnv5rjTsalh5PvKxP+U+XzZx8ec=\n", "LBYel8dai0o=\n") + this.f3627.f3330.f3358 + StringFog.decrypt("S2A=\n", "cUAem+Qp9c0=\n") + e.getLocalizedMessage());
        }
    }
}
