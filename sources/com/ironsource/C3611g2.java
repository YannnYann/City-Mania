package com.ironsource;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3611g2 implements InterfaceC3629h2 {
    private final C3910w9 a;
    private final com.ironsource.mediationsdk.d b;
    private final C3754o2 c;

    public C3611g2(C3910w9 instanceInfo, com.ironsource.mediationsdk.d auctionDataUtils, C3754o2 c3754o2) {
        Intrinsics.checkNotNullParameter(instanceInfo, "instanceInfo");
        Intrinsics.checkNotNullParameter(auctionDataUtils, "auctionDataUtils");
        this.a = instanceInfo;
        this.b = auctionDataUtils;
        this.c = c3754o2;
    }

    @Override // com.ironsource.InterfaceC3629h2
    public void a(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3754o2 c3754o2 = this.c;
        if (c3754o2 == null || (listEmptyList = c3754o2.b()) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }

    @Override // com.ironsource.InterfaceC3629h2
    public void b(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3754o2 c3754o2 = this.c;
        if (c3754o2 == null || (listEmptyList = c3754o2.a()) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }

    @Override // com.ironsource.InterfaceC3629h2
    public void c(String methodName) {
        List<String> listEmptyList;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        C3754o2 c3754o2 = this.c;
        if (c3754o2 == null || (listEmptyList = c3754o2.c()) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        a(listEmptyList, methodName);
    }

    private final void a(List<String> list, String str) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.b.a(str, this.a.e(), com.ironsource.mediationsdk.d.b().a(it.next(), this.a.e(), this.a.f(), this.a.d(), "", "", "", ""));
        }
    }
}
