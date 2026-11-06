package com.ironsource;

import com.ironsource.InterfaceC3464a7;
import com.ironsource.InterfaceC3561d7;
import com.ironsource.InterfaceC3660ig;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3666j4 {
    public static final c a = c.a;

    /* JADX INFO: renamed from: com.ironsource.j4$a */
    public static final class a implements InterfaceC3666j4 {
        private final Z6 b;
        private final InterfaceC3660ig c;
        private final AtomicBoolean d;

        /* JADX INFO: renamed from: com.ironsource.j4$a$a, reason: collision with other inner class name */
        public static final class C1040a implements InterfaceC3660ig.a {
            final /* synthetic */ d a;
            final /* synthetic */ a b;

            public C1040a(d dVar, a aVar) {
                this.a = dVar;
                this.b = aVar;
            }

            @Override // com.ironsource.InterfaceC3660ig.a
            public void a() {
                this.a.a(new InterfaceC3561d7.a(new InterfaceC3464a7.a(this.b.b.b())));
                this.b.d.set(false);
            }
        }

        public a(Z6 config, InterfaceC3660ig timer) {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.b = config;
            this.c = timer;
            this.d = new AtomicBoolean(false);
        }

        @Override // com.ironsource.InterfaceC3666j4
        public synchronized void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (this.d.compareAndSet(false, true)) {
                this.c.a(new C1040a(callback, this));
            }
        }

        @Override // com.ironsource.InterfaceC3666j4
        public synchronized void a() {
            this.c.cancel();
            this.d.set(false);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.j4$b */
    public static final class b implements InterfaceC3666j4 {
        public static final b b = new b();

        private b() {
        }

        @Override // com.ironsource.InterfaceC3666j4
        public void a() {
        }

        @Override // com.ironsource.InterfaceC3666j4
        public void a(d callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.j4$d */
    public interface d {
        void a(InterfaceC3561d7 interfaceC3561d7);
    }

    static InterfaceC3666j4 a(C3525b7 c3525b7) {
        return a.a(c3525b7);
    }

    void a();

    void a(d dVar);

    /* JADX INFO: renamed from: com.ironsource.j4$c */
    public static final class c {
        static final /* synthetic */ c a = new c();

        private c() {
        }

        public final InterfaceC3666j4 a(C3525b7 featureFlag) {
            Intrinsics.checkNotNullParameter(featureFlag, "featureFlag");
            if (!featureFlag.b()) {
                return b.b;
            }
            Y6 y6 = new Y6(featureFlag);
            InterfaceC3660ig.b bVar = new InterfaceC3660ig.b();
            bVar.b(y6.a());
            bVar.a(y6.a());
            return new a(y6, new InterfaceC3660ig.d().a(bVar));
        }

        public final InterfaceC3666j4 a() {
            return b.b;
        }
    }
}
