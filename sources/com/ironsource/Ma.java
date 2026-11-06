package com.ironsource;

import android.graphics.Rect;
import com.ironsource.AbstractC3719m3;
import com.ironsource.Ff;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ma implements Sa {
    private final Ja a;
    private final S2 b;
    private final Long c;
    private Ff.a d;
    private final long e;

    public Ma(Ja strategy, S2 currentAdUnit, Long l) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = l;
        this.e = strategy.o().a();
        strategy.q();
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final Ma ma) {
        if (!Fg.a(ma.a.j(), new Rect())) {
            ma.a.a().a(new Runnable() { // from class: com.ironsource.Ma$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Ma.b(this.f$0);
                }
            });
            return;
        }
        final long jA = ma.a.o().a();
        long j = jA - ma.e;
        Long l = ma.c;
        final AbstractC3719m3.c cVar = new AbstractC3719m3.c(l != null ? jA - l.longValue() : 0L, new AbstractC3719m3.d.f(j));
        ma.a.a().a(new Runnable() { // from class: com.ironsource.Ma$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Ma.a(this.f$0, cVar, jA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Ma ma) {
        ma.e();
    }

    private final void e() {
        long jP = this.a.p();
        Ff ffN = this.a.n();
        Runnable runnable = new Runnable() { // from class: com.ironsource.Ma$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ma.a(this.f$0);
            }
        };
        Duration.Companion companion = Duration.Companion;
        this.d = ffN.a(runnable, DurationKt.toDuration(jP, DurationUnit.MILLISECONDS));
    }

    @Override // com.ironsource.Sa
    public void c() {
        Ff.a aVar = this.d;
        if (aVar != null) {
            aVar.a();
        }
        this.b.a(true);
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
        Ff.a aVar = this.d;
        if (aVar != null) {
            aVar.a();
        }
        Ja ja = this.a;
        ja.a((Sa) new Oa(ja, this.b));
    }

    @Override // com.ironsource.Sa
    public void f() {
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading a loaded ad");
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load success while paused not visible");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ma ma, AbstractC3719m3.c cVar, long j) {
        ma.a.a(ma.b, cVar, Long.valueOf(j));
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success while paused not visible");
    }
}
