package com.ironsource;

import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.p2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3772p2 implements InterfaceC3549cd {
    private final T0 a;
    private final com.ironsource.mediationsdk.e b;
    private boolean c;

    public C3772p2(T0 adTools, com.ironsource.mediationsdk.e auctionHandler) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(auctionHandler, "auctionHandler");
        this.a = adTools;
        this.b = auctionHandler;
    }

    @Override // com.ironsource.InterfaceC3549cd
    public void a(A instance, String str, C3857ta publisherDataHolder) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        this.b.a(instance.h(), instance.r(), instance.m(), str);
        a(publisherDataHolder, instance);
    }

    @Override // com.ironsource.InterfaceC3549cd
    public void a(List<? extends A> waterfallInstances, A winnerInstance) {
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        Intrinsics.checkNotNullParameter(winnerInstance, "winnerInstance");
        if (this.c) {
            return;
        }
        this.c = true;
        C3939y2 c3939y2H = winnerInstance.h();
        this.b.a(c3939y2H, winnerInstance.r(), winnerInstance.m());
        ArrayList<String> arrayList = new ArrayList<>();
        ConcurrentHashMap<String, C3939y2> concurrentHashMap = new ConcurrentHashMap<>();
        for (A a : waterfallInstances) {
            arrayList.add(a.p());
            concurrentHashMap.put(a.p(), a.h());
        }
        this.b.a(arrayList, concurrentHashMap, winnerInstance.r(), winnerInstance.m(), c3939y2H);
    }

    private final void a(C3857ta c3857ta, A a) {
        final C3545c9 c3545c9 = new C3545c9(a.e());
        for (final ImpressionDataListener impressionDataListener : new HashSet(c3857ta.a())) {
            this.a.b(new Runnable() { // from class: com.ironsource.p2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    C3772p2.a(this.f$0, impressionDataListener, c3545c9);
                }
            });
            this.a.f().h().a(c3545c9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3772p2 c3772p2, ImpressionDataListener impressionDataListener, C3545c9 c3545c9) {
        IronLog.CALLBACK.verbose(C3770p0.a(c3772p2.a, "onImpressionSuccess " + impressionDataListener.getClass().getSimpleName(), (String) null, 2, (Object) null));
        impressionDataListener.onImpressionSuccess(c3545c9);
    }
}
