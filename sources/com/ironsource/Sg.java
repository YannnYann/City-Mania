package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Sg {
    public static final a c = new a(null);
    private final C3770p0 a;
    private final InterfaceC3549cd b;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Sg a(T0 adTools, AbstractC3919x0 adUnitData, InterfaceC3549cd outcomeReporter, Mg waterfallInstances, G adInstanceLoadStrategy) {
            Intrinsics.checkNotNullParameter(adTools, "adTools");
            Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
            Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
            Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
            Intrinsics.checkNotNullParameter(adInstanceLoadStrategy, "adInstanceLoadStrategy");
            return adUnitData.r() ? new C3952yf(adTools, outcomeReporter, waterfallInstances, adInstanceLoadStrategy) : new N4(adTools, outcomeReporter, waterfallInstances);
        }

        private a() {
        }
    }

    public Sg(C3770p0 adTools, InterfaceC3549cd outcomeReporter) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        this.a = adTools;
        this.b = outcomeReporter;
    }

    private final void b(A a2, List<? extends A> list) {
        for (A a3 : list) {
            if (a3 == a2) {
                a2.a(true);
                return;
            }
            a3.a(false);
            IronLog.INTERNAL.verbose(C3770p0.a(this.a, a3.q() + " - not ready to show", (String) null, 2, (Object) null));
        }
    }

    public abstract void a();

    public abstract void a(A a2);

    public final void a(A instanceToShow, List<? extends A> orderedInstances) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
        Intrinsics.checkNotNullParameter(orderedInstances, "orderedInstances");
        b(instanceToShow, orderedInstances);
        c(instanceToShow);
    }

    public abstract void b(A a2);

    public abstract void c(A a2);

    public final void a(A instance, String str, C3857ta publisherDataHolder) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(publisherDataHolder, "publisherDataHolder");
        this.b.a(instance, str, publisherDataHolder);
    }
}
