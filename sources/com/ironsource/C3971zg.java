package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.zg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3971zg implements InterfaceC3542c6 {
    private final C3658id a;
    private final String b;

    public C3971zg(C3658id folderRootUrl, String version) {
        Intrinsics.checkNotNullParameter(folderRootUrl, "folderRootUrl");
        Intrinsics.checkNotNullParameter(version, "version");
        this.a = folderRootUrl;
        this.b = version;
    }

    public final String a() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3542c6
    public String value() {
        return this.a.a() + "/versions/" + this.b + "/mobileController.html";
    }
}
