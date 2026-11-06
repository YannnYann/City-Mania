package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3684k4 implements InterfaceC3944y7 {
    private final String a;
    private final String b;
    private final boolean c;
    private final C3658id d;

    public C3684k4() {
        this(null, null, false, null, 15, null);
    }

    @Override // com.ironsource.InterfaceC3944y7
    public String a() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3944y7
    public boolean b() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3944y7
    public C3658id c() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3944y7
    public String d() {
        return this.b;
    }

    public C3684k4(String controllerUrl, String cacheFolder, boolean z, C3658id rootFolder) {
        Intrinsics.checkNotNullParameter(controllerUrl, "controllerUrl");
        Intrinsics.checkNotNullParameter(cacheFolder, "cacheFolder");
        Intrinsics.checkNotNullParameter(rootFolder, "rootFolder");
        this.a = controllerUrl;
        this.b = cacheFolder;
        this.c = z;
        this.d = rootFolder;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ C3684k4(String str, String str2, boolean z, C3658id c3658id, int i, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i & 1) != 0 ? "" : str;
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? new C3658id(str) : c3658id);
    }
}
