package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.yd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class C3950yd implements InterfaceC3968zd, F {
    private final String a;
    private final List<String> b;
    private final int c;
    private final Fd d;
    private final T0 e;
    private boolean f;
    private Function1<? super Boolean, Unit> g;
    private List<C3722m6> h;
    private int i;
    private int j;
    private Integer k;
    private boolean l;

    public C3950yd(String adUnitId, List<String> instanceNames, int i, Fd fetcher, T0 adUnitTools) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(instanceNames, "instanceNames");
        Intrinsics.checkNotNullParameter(fetcher, "fetcher");
        Intrinsics.checkNotNullParameter(adUnitTools, "adUnitTools");
        this.a = adUnitId;
        this.b = instanceNames;
        this.c = i;
        this.d = fetcher;
        this.e = adUnitTools;
        this.f = true;
        this.h = CollectionsKt__CollectionsKt.emptyList();
    }

    private final void d() {
        if (this.i >= this.h.size()) {
            return;
        }
        this.j++;
        C3722m6 c3722m6 = this.h.get(this.i);
        this.i++;
        c3722m6.a(this);
    }

    @Override // com.ironsource.InterfaceC3968zd
    public boolean a() {
        return this.f;
    }

    @Override // com.ironsource.InterfaceC3968zd
    public String b() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3968zd
    public C3722m6 c() {
        Integer num = this.k;
        if (num == null) {
            return null;
        }
        int iIntValue = num.intValue();
        if (this.l) {
            return null;
        }
        this.l = true;
        return this.h.get(iIntValue);
    }

    private final void b(boolean z) {
        if (this.j > 0) {
            return;
        }
        if (!z) {
            this.e.f().e().a();
        }
        Function1<? super Boolean, Unit> function1 = this.g;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z));
        }
        this.g = null;
    }

    @Override // com.ironsource.InterfaceC3968zd
    public void a(Function1<? super Boolean, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.e.f().e().b();
        this.f = false;
        this.g = callback;
        List<C3722m6> listA = this.d.a(this.b);
        if (listA.isEmpty()) {
            b(false);
            return;
        }
        this.h = listA;
        int iMin = Math.min(this.c, listA.size());
        for (int i = 0; i < iMin; i++) {
            d();
        }
    }

    @Override // com.ironsource.F
    public void b(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        int iA = a(instance);
        if (iA == -1) {
            instance.c();
            IronLog.INTERNAL.warning("stale load success callback for adUnitId: " + b());
            return;
        }
        this.j--;
        if (this.l) {
            instance.c();
        } else {
            a(iA);
        }
        b(true);
    }

    @Override // com.ironsource.InterfaceC3968zd
    public void a(boolean z) {
        if (!this.l) {
            IronLog.INTERNAL.warning("reset before getting instance for adUnitId: " + b());
            return;
        }
        this.l = false;
        this.i = 0;
        this.j = 0;
        this.g = null;
        this.f = z;
        if (z) {
            this.h = CollectionsKt__CollectionsKt.emptyList();
            this.k = null;
        }
    }

    private final void a(int i) {
        Integer num = this.k;
        if (num == null) {
            this.e.f().e().c();
            this.k = Integer.valueOf(i);
        } else {
            int iMin = Math.min(i, num.intValue());
            this.h.get(Math.max(i, num.intValue())).c();
            this.k = Integer.valueOf(iMin);
        }
    }

    @Override // com.ironsource.F
    public void a(IronSourceError error, A instance) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (a(instance) == -1) {
            IronLog.INTERNAL.warning("stale load failure callback for adUnitId: " + b());
            return;
        }
        this.j--;
        if (this.k != null) {
            b(true);
        } else if (this.i < this.h.size()) {
            d();
        } else {
            b(false);
        }
    }

    private final int a(A a) {
        Iterator<C3722m6> it = this.h.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next() == a) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
