package io.bidmachine.rendering.internal.state;

import io.bidmachine.rendering.internal.state.a;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.util.Tag;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public class c implements io.bidmachine.rendering.internal.state.a {
    public final Tag a;
    public final AtomicBoolean b;
    public final AtomicBoolean c;
    public final AtomicBoolean d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final AtomicBoolean i;
    public final AtomicBoolean j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public final AtomicBoolean p;
    public final Set q;

    public static final class a implements a.b {
        public a() {
        }

        @Override // io.bidmachine.rendering.internal.state.a.b
        public void a(io.bidmachine.rendering.internal.state.a source, a.EnumC1205a event) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(event, "event");
            t.b(c.this.a, "Event: " + event, new Object[0]);
        }
    }

    public c(String parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.a = new Tag("AdStateImpl (" + parent + ')');
        this.b = new AtomicBoolean(false);
        this.c = new AtomicBoolean(false);
        this.d = new AtomicBoolean(false);
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = new AtomicBoolean(false);
        this.j = new AtomicBoolean(false);
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.q = new LinkedHashSet();
        a(new a());
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean b() {
        return this.e.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean c() {
        return this.b.get() && !l();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean d() {
        return this.d.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public void destroy() {
        this.f.set(true);
        this.b.set(false);
        this.c.set(false);
        this.d.set(false);
        this.e.set(false);
        this.g.set(false);
        this.h.set(false);
        this.i.set(false);
        this.j.set(false);
        this.k.set(false);
        this.l.set(false);
        this.m.set(false);
        this.n.set(false);
        this.o.set(false);
        this.p.set(false);
        a(a.EnumC1205a.Destroyed);
        synchronized (this.q) {
            this.q.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean e() {
        boolean zCompareAndSet = this.k.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Clicked);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean f() {
        boolean zCompareAndSet = this.j.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.FailedToShow);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean g() {
        boolean zCompareAndSet = this.h.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.ViewabilityShow);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean h() {
        boolean zCompareAndSet = this.e.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.CommitVisible);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean i() {
        return this.l.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean isCompleted() {
        return this.o.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean j() {
        return this.h.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean k() {
        return this.m.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean l() {
        return this.f.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean m() {
        boolean zCompareAndSet = this.i.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Shown);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public void n() {
        this.o.set(true);
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean o() {
        boolean zCompareAndSet = this.l.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Finished);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean p() {
        boolean zCompareAndSet = this.n.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Expired);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean q() {
        boolean zCompareAndSet = this.p.compareAndSet(true, false);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Collapsed);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean r() {
        boolean zCompareAndSet = this.p.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.Expanded);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public void s() {
        this.d.set(true);
        a(a.EnumC1205a.ShowInitiated);
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean t() {
        return this.i.get();
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public final void a(a.b observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (l()) {
            return;
        }
        synchronized (this.q) {
            this.q.add(observer);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public final void b(a.b observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        synchronized (this.q) {
            this.q.remove(observer);
        }
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean b(boolean z) {
        a.EnumC1205a enumC1205a;
        boolean zCompareAndSet = this.m.compareAndSet(!z, z);
        if (zCompareAndSet) {
            if (z) {
                enumC1205a = a.EnumC1205a.Appeared;
            } else {
                enumC1205a = a.EnumC1205a.Disappeared;
            }
            a(enumC1205a);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean a() {
        boolean zCompareAndSet = this.c.compareAndSet(false, true);
        if (zCompareAndSet) {
            a(a.EnumC1205a.LoadingStarted);
        }
        return zCompareAndSet;
    }

    @Override // io.bidmachine.rendering.internal.state.a
    public boolean a(boolean z) {
        a.EnumC1205a enumC1205a;
        boolean z2 = false;
        this.c.set(false);
        this.b.set(z);
        if (this.g.compareAndSet(false, true) && !l()) {
            z2 = true;
        }
        if (z2) {
            if (z) {
                enumC1205a = a.EnumC1205a.Loaded;
            } else {
                enumC1205a = a.EnumC1205a.FailedToLoad;
            }
            a(enumC1205a);
        }
        return z2;
    }

    public final void a(a.EnumC1205a enumC1205a) {
        synchronized (this.q) {
            try {
                Iterator it = this.q.iterator();
                while (it.hasNext()) {
                    ((a.b) it.next()).a(this, enumC1205a);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
