package com.ironsource.environment.thread;

import com.ironsource.C3813r4;
import com.ironsource.If;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements Runnable {
    public static final C1036a a = new C1036a(null);

    /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a, reason: collision with other inner class name */
    public static final class C1036a {

        /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a$a, reason: collision with other inner class name */
        public static final class C1037a extends a {
            final /* synthetic */ Function0<Unit> b;

            public C1037a(Function0<Unit> function0) {
                this.b = function0;
            }

            @Override // com.ironsource.environment.thread.a
            public void a() {
                this.b.invoke();
            }
        }

        /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a$b */
        public /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
            public b(Object obj) {
                super(0, obj, Runnable.class, "run", "run()V", 0);
            }

            public final void a() {
                ((Runnable) this.receiver).run();
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        public /* synthetic */ C1036a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Function0<Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new C1037a(block);
        }

        private C1036a() {
        }

        public final a a(Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            a aVar = runnable instanceof a ? (a) runnable : null;
            return aVar == null ? a.a.a(new b(runnable)) : aVar;
        }
    }

    public abstract void a() throws Exception;

    public void a(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        If.a(t);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            C3813r4.d().a(th);
            try {
                a(th);
            } catch (Throwable th2) {
                C3813r4.d().a(th2);
            }
        }
    }
}
