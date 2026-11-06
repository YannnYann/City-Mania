package com.ironsource;

import com.ironsource.G;
import com.ironsource.Yg;
import com.ironsource.Z4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Hg implements F, Rg {
    private final T0 a;
    private final AbstractC3919x0 b;
    private final Pg c;
    private final Dd d;
    private final E e;
    private final Yg f;
    private final Kg g;
    private G h;
    private Sg i;
    private final List<A> j;
    private A k;
    private boolean l;
    private boolean m;
    private int n;

    public Hg(T0 adTools, AbstractC3919x0 adUnitData, boolean z, Pg listener, Dd dd, E e) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adTools;
        this.b = adUnitData;
        this.c = listener;
        this.d = dd;
        this.e = e;
        this.f = Yg.a.a.a(z, this);
        this.g = Kg.d.a(adTools, adUnitData);
        this.j = new ArrayList();
    }

    private final List<A> e() {
        G.c cVarC;
        List<A> listD;
        G g = this.h;
        return (g == null || (cVarC = g.c()) == null || (listD = cVarC.d()) == null) ? CollectionsKt__CollectionsKt.emptyList() : listD;
    }

    private final boolean h() {
        return this.k != null;
    }

    private final void i() {
        G g = this.h;
        G.b bVarD = g != null ? g.d() : null;
        if (bVarD == null || bVarD.e()) {
            this.c.a(509, "Mediation No fill");
            return;
        }
        if (bVarD.f()) {
            Sg sg = this.i;
            if (sg != null) {
                sg.a();
                return;
            }
            return;
        }
        for (A a2 : bVarD.a()) {
            this.n++;
            if (a2.A()) {
                this.m = false;
                b(a2);
            } else {
                a2.a(this);
            }
        }
    }

    public final void c() {
        this.l = true;
        A a2 = this.k;
        if (a2 != null) {
            a2.b();
        }
    }

    public final A d() {
        G.c cVarC;
        G g = this.h;
        if (g == null || (cVarC = g.c()) == null) {
            return null;
        }
        return cVarC.c();
    }

    public final Pd f() {
        return this.f.b();
    }

    public final boolean g() {
        Iterator<A> it = this.j.iterator();
        while (it.hasNext()) {
            if (it.next().B()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.F
    public void b(A instance) {
        Dd dd;
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.n--;
        c(instance);
        if (this.n > 0 || !this.m || (dd = this.d) == null) {
            return;
        }
        dd.a(this.b.b().c(), false);
    }

    public final void d(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Sg sg = this.i;
        if (sg != null) {
            sg.a(instance, this.b.m(), this.b.p());
        }
    }

    private final void c(A a2) {
        if (!this.l && !h()) {
            E e = this.e;
            if (e != null) {
                a2.a(e);
            }
            Sg sg = this.i;
            if (sg != null) {
                sg.a(a2);
            }
            this.j.add(a2);
            if (this.j.size() == 1) {
                Sg sg2 = this.i;
                if (sg2 != null) {
                    sg2.b(a2);
                }
                this.c.b(a2);
                return;
            }
            G g = this.h;
            if (g == null || !g.a(a2)) {
                return;
            }
            this.c.a(a2);
            return;
        }
        if (a2.A()) {
            Dd dd = this.d;
            if (dd != null) {
                dd.a(this.b.b().c(), false);
                return;
            }
            return;
        }
        a2.c();
    }

    public final void a(D adInstanceFactory) {
        Intrinsics.checkNotNullParameter(adInstanceFactory, "adInstanceFactory");
        this.g.a(adInstanceFactory, new a());
    }

    public final void b() {
        this.f.a();
    }

    public final void a(J adInstancePresenter, boolean z) {
        Sg sg;
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        A aC = this.f.c();
        if (aC != null) {
            aC.b(z);
            this.f.a(aC);
            if (!z && (sg = this.i) != null) {
                sg.a(aC, e());
            }
            aC.a(adInstancePresenter);
        }
    }

    @Override // com.ironsource.F
    public void a(IronSourceError error, A instance) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.n--;
        if (this.l) {
            return;
        }
        i();
    }

    public /* synthetic */ Hg(T0 t0, AbstractC3919x0 abstractC3919x0, boolean z, Pg pg, Dd dd, E e, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(t0, abstractC3919x0, z, pg, (i & 16) != 0 ? null : dd, (i & 32) != 0 ? null : e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Mg mg) {
        G gA = G.c.a(this.b, mg);
        this.h = gA;
        this.i = Sg.c.a(this.a, this.b, this.g.a(), mg, gA);
        i();
    }

    @Override // com.ironsource.Rg
    public void a(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.k = instance;
        this.j.remove(instance);
    }

    @Override // com.ironsource.Rg
    public void a(Z4 reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        IronLog.INTERNAL.verbose(C3770p0.a(this.a, "destroyReadyToShowInstances reason=" + reason.a(), (String) null, 2, (Object) null));
        if (this.j.isEmpty()) {
            return;
        }
        String strC = this.b.b().c();
        for (A a2 : this.j) {
            if (a2.A()) {
                Dd dd = this.d;
                if (dd != null) {
                    dd.a(strC, false);
                }
            } else {
                a2.c();
            }
        }
        this.j.clear();
        Z4.a aVar = reason instanceof Z4.a ? (Z4.a) reason : null;
        this.a.f().h().a(reason.a(), aVar != null ? Long.valueOf(aVar.c()) : null);
    }

    @Override // com.ironsource.Rg
    public boolean a() {
        return !this.j.isEmpty();
    }

    @Override // com.ironsource.Rg
    public A a(int i) {
        List<A> listE = e();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listE) {
            if (((A) obj).x()) {
                arrayList.add(obj);
            }
        }
        return (A) CollectionsKt___CollectionsKt.getOrNull(arrayList, i);
    }

    public static final class a implements Lg {
        public a() {
        }

        @Override // com.ironsource.Lg
        public void a(Mg waterfallInstances) {
            boolean z;
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            if (Hg.this.l) {
                return;
            }
            Hg hg = Hg.this;
            List<A> listB = waterfallInstances.b();
            if ((listB instanceof Collection) && listB.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = listB.iterator();
                while (it.hasNext()) {
                    if (((A) it.next()).A()) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            hg.m = z;
            Hg.this.a(waterfallInstances);
        }

        @Override // com.ironsource.Lg
        public void a(int i, String errorReason) {
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            if (Hg.this.l) {
                return;
            }
            Hg.this.c.a(i, errorReason);
        }
    }
}
