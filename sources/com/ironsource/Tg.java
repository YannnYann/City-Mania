package com.ironsource;

import com.ironsource.AbstractC3773p3;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Tg<Smash extends AbstractC3773p3<?>> {
    private final V a;

    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((AbstractC3773p3) t).i().l()), Integer.valueOf(((AbstractC3773p3) t2).i().l()));
        }
    }

    public Tg(V managerData) {
        Intrinsics.checkNotNullParameter(managerData, "managerData");
        this.a = managerData;
    }

    public final boolean a(AbstractC3773p3<?> smash, List<? extends Smash> waterfall) {
        Object next;
        Intrinsics.checkNotNullParameter(smash, "smash");
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Iterator<T> it = b(waterfall).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!((AbstractC3773p3) next).x()) {
                break;
            }
        }
        return Intrinsics.areEqual(next, smash);
    }

    public final List<Smash> b(List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        return CollectionsKt___CollectionsKt.sortedWith(waterfall, new a());
    }

    public final Smash c(List<? extends Smash> waterfall) {
        Object next;
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        Iterator<T> it = b(waterfall).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((AbstractC3773p3) next).B()) {
                break;
            }
        }
        return (Smash) next;
    }

    public final Ug<Smash> d(List<? extends Smash> waterfall) {
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        IronLog.INTERNAL.verbose(this.a.b().name() + " waterfall size: " + waterfall.size());
        Zg<Smash> zgA = Zg.g.a(this.a.c() ? Qg.b : Qg.a, this.a.i(), this.a.m(), waterfall);
        Iterator<? extends Smash> it = waterfall.iterator();
        while (it.hasNext()) {
            zgA.d(it.next());
            if (zgA.e()) {
                return new Ug<>(zgA);
            }
        }
        return new Ug<>(zgA);
    }

    public final boolean a(List<? extends Smash> waterfall) {
        int i;
        Intrinsics.checkNotNullParameter(waterfall, "waterfall");
        if ((waterfall instanceof Collection) && waterfall.isEmpty()) {
            i = 0;
        } else {
            Iterator<T> it = waterfall.iterator();
            i = 0;
            while (it.hasNext()) {
                if (((AbstractC3773p3) it.next()).y() && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        return i >= this.a.i();
    }
}
