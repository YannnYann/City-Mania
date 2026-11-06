package com.ironsource;

import android.content.Context;
import com.ironsource.Ff;
import com.ironsource.Sd;
import com.ironsource.environment.NetworkStateReceiver;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.o9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3761o9 {
    private final Ke a;
    private final Runnable b;
    private final Function1<C3806qe, Unit> c;
    private final Function1<C3841se, Unit> d;
    private final Ff e;
    private final C3779p9 f;
    private final Context g;
    private Ff.a h;
    private NetworkStateReceiver i;
    private boolean j;
    private boolean k;

    /* JADX WARN: Multi-variable type inference failed */
    public C3761o9(Context context, Ke tools, Runnable attempt, Function1<? super C3806qe, Unit> onSucceeded, Function1<? super C3841se, Unit> onExhausted, Ff taskScheduler, C3779p9 policy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(attempt, "attempt");
        Intrinsics.checkNotNullParameter(onSucceeded, "onSucceeded");
        Intrinsics.checkNotNullParameter(onExhausted, "onExhausted");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        Intrinsics.checkNotNullParameter(policy, "policy");
        this.a = tools;
        this.b = attempt;
        this.c = onSucceeded;
        this.d = onExhausted;
        this.e = taskScheduler;
        this.f = policy;
        this.g = context.getApplicationContext();
    }

    private final void c() {
        this.k = true;
        this.j = false;
        Ff.a aVar = this.h;
        if (aVar != null) {
            aVar.a();
        }
        this.h = null;
        f();
    }

    private final void f() {
        NetworkStateReceiver networkStateReceiver = this.i;
        if (networkStateReceiver != null) {
            Ke ke = this.a;
            Context appContext = this.g;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            ke.a(appContext, networkStateReceiver);
            this.i = null;
        }
    }

    private final void g() {
        this.j = true;
        this.f.a("noInternetConnection");
        Ke ke = this.a;
        Context appContext = this.g;
        Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
        NetworkStateReceiver networkStateReceiverA = ke.a(appContext, new Jc() { // from class: com.ironsource.o9$$ExternalSyntheticLambda0
            @Override // com.ironsource.Jc
            public final void a(boolean z) {
                this.f$0.a(z);
            }
        });
        this.i = networkStateReceiverA;
        if (networkStateReceiverA == null) {
            this.j = false;
            this.b.run();
        }
    }

    public final int a() {
        return this.f.c();
    }

    public final boolean b() {
        return this.f.d();
    }

    public final String d() {
        return this.f.b();
    }

    @InterfaceC3930xb
    public final void e() {
        Ke ke = this.a;
        Context appContext = this.g;
        Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
        if (ke.b(appContext)) {
            this.b.run();
        } else {
            g();
        }
    }

    @InterfaceC3930xb
    public final void a(C3806qe sdkConfig) {
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        if (this.k) {
            return;
        }
        c();
        this.c.invoke(sdkConfig);
    }

    @InterfaceC3930xb
    public final void a(C3841se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.k) {
            return;
        }
        if (!this.f.a(error)) {
            c();
            this.d.invoke(error);
            return;
        }
        Sd sdB = this.f.b(error);
        if (sdB instanceof Sd.b) {
            this.h = this.e.b(this.b, ((Sd.b) sdB).b());
        } else {
            if (Intrinsics.areEqual(sdB, Sd.a.a)) {
                c();
                this.d.invoke(error);
                return;
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    public /* synthetic */ C3761o9(Context context, Ke ke, Runnable runnable, Function1 function1, Function1 function12, Ff ff, C3779p9 c3779p9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, ke, runnable, function1, function12, ff, (i & 64) != 0 ? new C3779p9(0, 0, 0, 7, null) : c3779p9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final boolean z) {
        this.a.c(new Runnable() { // from class: com.ironsource.o9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3761o9.a(this.f$0, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3761o9 c3761o9, boolean z) {
        if (c3761o9.j && z) {
            c3761o9.j = false;
            c3761o9.f();
            c3761o9.f.e();
            c3761o9.a.e();
            c3761o9.b.run();
        }
    }
}
