package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class G {
    public static final a c = new a(null);
    private final AbstractC3919x0 a;
    private final Mg b;

    public static final class a {

        /* JADX INFO: renamed from: com.ironsource.G$a$a, reason: collision with other inner class name */
        public /* synthetic */ class C0030a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[Qg.values().length];
                try {
                    iArr[Qg.b.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Qg.a.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final G a(AbstractC3919x0 adUnitData, Mg waterfallInstances) {
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            int i = C0030a.a[(adUnitData.d() ? Qg.b : Qg.a).ordinal()];
            if (i == 1) {
                return new C3868u3(adUnitData, waterfallInstances);
            }
            if (i == 2) {
                return adUnitData.r() ? new C3934xf(adUnitData, waterfallInstances) : new K4(adUnitData, waterfallInstances);
            }
            throw new NoWhenBranchMatchedException();
        }

        private a() {
        }
    }

    public static final class b {
        private final List<A> a = new ArrayList();
        private final List<A> b = new ArrayList();
        private final List<A> c = new ArrayList();
        private boolean d;

        public final List<A> a() {
            return this.a;
        }

        public final List<A> b() {
            return this.b;
        }

        public final List<A> c() {
            return this.c;
        }

        public final boolean d() {
            return this.d;
        }

        public final boolean e() {
            return g() == 0;
        }

        public final boolean f() {
            return this.a.isEmpty() && this.c.isEmpty();
        }

        public final int g() {
            return this.a.size() + this.b.size() + this.c.size();
        }

        public final void a(boolean z) {
            this.d = z;
        }
    }

    public static final class c {
        private final A a;
        private final List<A> b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(A a, List<? extends A> orderedInstances) {
            Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
            this.a = a;
            this.b = orderedInstances;
        }

        public final A a() {
            return this.a;
        }

        public final List<A> b() {
            return this.b;
        }

        public final A c() {
            return this.a;
        }

        public final List<A> d() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b);
        }

        public int hashCode() {
            A a = this.a;
            return ((a == null ? 0 : a.hashCode()) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "ShowSelection(instanceToShow=" + this.a + ", orderedInstances=" + this.b + ")";
        }

        public final c a(A a, List<? extends A> orderedInstances) {
            Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
            return new c(a, orderedInstances);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ c a(c cVar, A a, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                a = cVar.a;
            }
            if ((i & 2) != 0) {
                list = cVar.b;
            }
            return cVar.a(a, list);
        }
    }

    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((A) t).h().l()), Integer.valueOf(((A) t2).h().l()));
        }
    }

    public G(AbstractC3919x0 adUnitData, Mg waterfallInstances) {
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        this.a = adUnitData;
        this.b = waterfallInstances;
    }

    private final List<A> b() {
        return CollectionsKt___CollectionsKt.sortedWith(this.b.b(), new d());
    }

    public abstract void a(A a2, b bVar);

    public boolean a(A instance, Mg waterfallInstances) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        return false;
    }

    public final c c() {
        Object next;
        List<A> listB = b();
        Iterator<T> it = listB.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((A) next).x()) {
                break;
            }
        }
        return new c((A) next, listB);
    }

    public final b d() {
        IronLog.INTERNAL.verbose(this.a.b().a().name() + " waterfall size: " + this.b.b().size());
        b bVar = new b();
        boolean zN = Pb.w.d().h().n();
        Iterator<A> it = this.b.b().iterator();
        while (it.hasNext() && !a(it.next(), bVar, zN)) {
        }
        return bVar;
    }

    public final boolean a(A instance) {
        Object next;
        Intrinsics.checkNotNullParameter(instance, "instance");
        Iterator<T> it = b().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!((A) next).w()) {
                break;
            }
        }
        return Intrinsics.areEqual(next, instance);
    }

    public final boolean a() {
        int i;
        List<A> listB = this.b.b();
        if ((listB instanceof Collection) && listB.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = listB.iterator();
            i = 0;
            while (it.hasNext()) {
                if (((A) it.next()).x() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i >= this.a.l();
    }

    public boolean a(b loadSelection) {
        Intrinsics.checkNotNullParameter(loadSelection, "loadSelection");
        return loadSelection.g() >= this.a.l();
    }

    private final boolean a(A a2, b bVar, boolean z) {
        if (a2.w()) {
            IronLog.INTERNAL.verbose(a2.d().name() + " - Instance " + a2.q() + " is failed to load");
        } else if (a2.x() && !a2.A()) {
            IronLog.INTERNAL.verbose(a2.d().name() + " - Instance " + a2.q() + " is already loaded");
            bVar.b().add(a2);
        } else if (a2.y()) {
            IronLog.INTERNAL.verbose(a2.d().name() + " - Instance " + a2.q() + " still loading");
            bVar.c().add(a2);
        } else if (a(a2, this.b) && !z) {
            IronLog.INTERNAL.verbose(a2.d().name() + " - Instance " + a2.q() + " is not better than already loaded instances");
        } else {
            a(a2, bVar);
        }
        return a(bVar);
    }
}
