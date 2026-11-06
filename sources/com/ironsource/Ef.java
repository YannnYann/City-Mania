package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.Ff;
import com.ironsource.environment.thread.IronSourceThreadManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
public final class Ef implements Ff {
    public static final a d = new a(null);
    private static Hf e = new Q5(IronSourceThreadManager.INSTANCE.getLevelPlayThread());
    private final Hf a;
    private final InterfaceC3607fg b;
    private final InterfaceC3607fg c;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Hf a() {
            return Ef.e;
        }

        private a() {
        }

        public final void a(Hf hf) {
            Intrinsics.checkNotNullParameter(hf, "<set-?>");
            Ef.e = hf;
        }
    }

    public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
        public b(Object obj) {
            super(0, obj, com.ironsource.environment.thread.a.class, "run", "run()V", 0);
        }

        public final void a() {
            ((com.ironsource.environment.thread.a) this.receiver).run();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public Ef() {
        this(null, null, null, 7, null);
    }

    @Override // com.ironsource.Ff
    public Ff.a b(Runnable task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        return a(task, j, this.b);
    }

    public Ef(Hf engine, InterfaceC3607fg levelPlayDispatcher, InterfaceC3607fg mainDispatcher) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(levelPlayDispatcher, "levelPlayDispatcher");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.a = engine;
        this.b = levelPlayDispatcher;
        this.c = mainDispatcher;
    }

    @Override // com.ironsource.Ff
    public Ff.a a(Runnable task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        return a(task, j, this.c);
    }

    private final Ff.a a(Runnable runnable, long j, final InterfaceC3607fg interfaceC3607fg) {
        final com.ironsource.environment.thread.a aVarA = com.ironsource.environment.thread.a.a.a(runnable);
        return new Ff.a(this.a.a(Duration.m2881getInWholeMillisecondsimpl(j), new Runnable() { // from class: com.ironsource.Ef$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ef.a(interfaceC3607fg, aVarA);
            }
        }));
    }

    public /* synthetic */ Ef(Hf hf, InterfaceC3607fg interfaceC3607fg, InterfaceC3607fg interfaceC3607fg2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? e : hf, (i & 2) != 0 ? C3625gg.a(IronSourceThreadManager.INSTANCE.getLevelPlayThread()) : interfaceC3607fg, (i & 4) != 0 ? C3625gg.a(new Handler(Looper.getMainLooper())) : interfaceC3607fg2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3607fg interfaceC3607fg, com.ironsource.environment.thread.a aVar) {
        interfaceC3607fg.a(new b(aVar));
    }
}
