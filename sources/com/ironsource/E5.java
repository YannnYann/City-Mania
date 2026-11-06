package com.ironsource;

import com.ironsource.E0;
import com.ironsource.mediationsdk.IronSource;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class E5 implements D0 {
    private final IronSource.a a;
    private final E0 b;
    private final List<D0> c;
    private final C3582e9 d;
    private final Cb e;
    private final C3714lg f;
    private final C3520b2 g;
    private final N h;
    private final C3790pg i;
    private final C3470ad j;

    public E5(IronSource.a adFormat, E0.b level, List<? extends D0> eventsInterfaces, AbstractC3812r3 abstractC3812r3) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        Intrinsics.checkNotNullParameter(level, "level");
        Intrinsics.checkNotNullParameter(eventsInterfaces, "eventsInterfaces");
        this.a = adFormat;
        E0 e0 = new E0(adFormat, level, this, abstractC3812r3);
        this.b = e0;
        this.c = CollectionsKt___CollectionsKt.toMutableList((Collection) eventsInterfaces);
        C3582e9 init = e0.e;
        Intrinsics.checkNotNullExpressionValue(init, "init");
        this.d = init;
        Cb load = e0.f;
        Intrinsics.checkNotNullExpressionValue(load, "load");
        this.e = load;
        C3714lg token = e0.g;
        Intrinsics.checkNotNullExpressionValue(token, "token");
        this.f = token;
        C3520b2 auction = e0.h;
        Intrinsics.checkNotNullExpressionValue(auction, "auction");
        this.g = auction;
        N adInteraction = e0.i;
        Intrinsics.checkNotNullExpressionValue(adInteraction, "adInteraction");
        this.h = adInteraction;
        C3790pg troubleshoot = e0.j;
        Intrinsics.checkNotNullExpressionValue(troubleshoot, "troubleshoot");
        this.i = troubleshoot;
        C3470ad operational = e0.k;
        Intrinsics.checkNotNullExpressionValue(operational, "operational");
        this.j = operational;
    }

    public final N a() {
        return this.h;
    }

    public final C3520b2 b() {
        return this.g;
    }

    public final List<D0> c() {
        return this.c;
    }

    public final C3582e9 d() {
        return this.d;
    }

    public final Cb e() {
        return this.e;
    }

    public final C3470ad f() {
        return this.j;
    }

    public final C3714lg g() {
        return this.f;
    }

    public final C3790pg h() {
        return this.i;
    }

    @Override // com.ironsource.D0
    public Map<String, Object> a(B0 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        HashMap map = new HashMap();
        Iterator<D0> it = this.c.iterator();
        while (it.hasNext()) {
            Map<String, Object> mapA = it.next().a(event);
            Intrinsics.checkNotNullExpressionValue(mapA, "getEventsAdditionalDataMap(...)");
            map.putAll(mapA);
        }
        return map;
    }

    public /* synthetic */ E5(IronSource.a aVar, E0.b bVar, List list, AbstractC3812r3 abstractC3812r3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, bVar, (i & 4) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 8) != 0 ? null : abstractC3812r3);
    }

    public final void a(D0 eventInterface) {
        Intrinsics.checkNotNullParameter(eventInterface, "eventInterface");
        this.c.add(eventInterface);
    }

    public final void a(boolean z) {
        if (z) {
            this.e.a(true);
        } else {
            if (!z) {
                if (this.a == IronSource.a.BANNER) {
                    this.e.d();
                    return;
                } else {
                    this.e.a(false);
                    return;
                }
            }
            throw new NoWhenBranchMatchedException();
        }
    }
}
