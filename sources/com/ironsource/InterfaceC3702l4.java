package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.l4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3702l4 {

    /* JADX INFO: renamed from: com.ironsource.l4$a */
    public static final class a implements InterfaceC3702l4 {
        private final boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // com.ironsource.InterfaceC3702l4
        public void a() {
            A8.a(C3712le.x, new C3891v8().a(G5.y, Boolean.valueOf(this.a)).a());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.l4$b */
    public static final class b implements InterfaceC3702l4 {
        private final boolean a;
        private final long b;
        private final InterfaceC3851t4 c;

        public b(boolean z, long j, InterfaceC3851t4 currentTimeProvider) {
            Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
            this.a = z;
            this.b = j;
            this.c = currentTimeProvider;
        }

        @Override // com.ironsource.InterfaceC3702l4
        public void a() {
            C3891v8 c3891v8A = new C3891v8().a(G5.y, Boolean.valueOf(this.a));
            if (this.b > 0) {
                c3891v8A.a(G5.B, Long.valueOf(this.c.a() - this.b));
            }
            A8.a(C3712le.w, c3891v8A.a());
        }

        public final InterfaceC3851t4 b() {
            return this.c;
        }
    }

    void a();
}
