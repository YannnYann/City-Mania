package com.ironsource;

import com.ironsource.C3696kg;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ig, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3660ig {

    /* JADX INFO: renamed from: com.ironsource.ig$a */
    public interface a {
        void a();
    }

    /* JADX INFO: renamed from: com.ironsource.ig$b */
    public static final class b {
        private long a;
        private long b;

        public final long a() {
            return this.b;
        }

        public final long b() {
            return this.a;
        }

        public final void a(long j) {
            this.b = j;
        }

        public final void b(long j) {
            this.a = j;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.ig$c */
    public interface c {
        InterfaceC3660ig a(b bVar);
    }

    /* JADX INFO: renamed from: com.ironsource.ig$d */
    public static final class d implements c {
        @Override // com.ironsource.InterfaceC3660ig.c
        public InterfaceC3660ig a(b timerConfig) {
            Intrinsics.checkNotNullParameter(timerConfig, "timerConfig");
            return new e(new C3696kg(timerConfig.b()));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.ig$e */
    public static final class e implements InterfaceC3660ig {
        private final C3696kg a;

        /* JADX INFO: renamed from: com.ironsource.ig$e$a */
        public static final class a implements C3696kg.a {
            final /* synthetic */ a a;

            public a(a aVar) {
                this.a = aVar;
            }

            @Override // com.ironsource.C3696kg.a
            public void a() {
                this.a.a();
            }
        }

        public e(C3696kg timer) {
            Intrinsics.checkNotNullParameter(timer, "timer");
            this.a = timer;
        }

        @Override // com.ironsource.InterfaceC3660ig
        public void a(a callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.a.a((C3696kg.a) new a(callback));
        }

        @Override // com.ironsource.InterfaceC3660ig
        public void cancel() {
            this.a.e();
        }
    }

    void a(a aVar);

    void cancel();
}
