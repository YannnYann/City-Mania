package com.ironsource;

import com.ironsource.InterfaceC3854t7;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.wf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3916wf implements InterfaceC3854t7, InterfaceC3854t7.a {
    private final InterfaceC3851t4 a;
    private final U8 b;
    private final Map<String, C3862tf> c;

    /* JADX INFO: renamed from: com.ironsource.wf$a */
    public static final class a {
        private int a;
        private long b;
        private Long c;

        public a(int i, long j, Long l) {
            this.a = i;
            this.b = j;
            this.c = l;
        }

        public final int a() {
            return this.a;
        }

        public final long b() {
            return this.b;
        }

        public final Long c() {
            return this.c;
        }

        public final int d() {
            return this.a;
        }

        public final long e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && Intrinsics.areEqual(this.c, aVar.c);
        }

        public final Long f() {
            return this.c;
        }

        public int hashCode() {
            int iHashCode = ((Integer.hashCode(this.a) * 31) + Long.hashCode(this.b)) * 31;
            Long l = this.c;
            return iHashCode + (l == null ? 0 : l.hashCode());
        }

        public String toString() {
            return "ShowCountCappingInfo(currentNumberOfShows=" + this.a + ", currentTime=" + this.b + ", currentTimeThreshold=" + this.c + ")";
        }

        public final a a(int i, long j, Long l) {
            return new a(i, j, l);
        }

        public static /* synthetic */ a a(a aVar, int i, long j, Long l, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = aVar.a;
            }
            if ((i2 & 2) != 0) {
                j = aVar.b;
            }
            if ((i2 & 4) != 0) {
                l = aVar.c;
            }
            return aVar.a(i, j, l);
        }

        public final void a(int i) {
            this.a = i;
        }

        public final void a(long j) {
            this.b = j;
        }

        public final void a(Long l) {
            this.c = l;
        }
    }

    public C3916wf(InterfaceC3851t4 currentTimeProvider, U8 serviceDataRepository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(serviceDataRepository, "serviceDataRepository");
        this.a = currentTimeProvider;
        this.b = serviceDataRepository;
        this.c = new LinkedHashMap();
    }

    private final a c(String str) {
        return new a(this.b.a(str), this.a.a(), this.b.b(str));
    }

    public final Map<String, C3862tf> a() {
        return this.c;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    @Override // com.ironsource.InterfaceC3854t7.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "identifier"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.util.Map<java.lang.String, com.ironsource.tf> r0 = r8.c
            java.lang.Object r0 = r0.get(r9)
            com.ironsource.tf r0 = (com.ironsource.C3862tf) r0
            if (r0 != 0) goto L10
            return
        L10:
            com.ironsource.wf$a r1 = r8.c(r9)
            int r2 = r1.d()
            r3 = 1
            if (r2 == 0) goto L30
            long r4 = r1.e()
            java.lang.Long r2 = r1.f()
            if (r2 == 0) goto L2a
            long r6 = r2.longValue()
            goto L2c
        L2a:
            r6 = 0
        L2c:
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L47
        L30:
            long r4 = r1.e()
            com.ironsource.M3 r0 = r0.b()
            r2 = 0
            long r6 = com.ironsource.M3.a(r0, r2, r3, r2)
            long r4 = r4 + r6
            com.ironsource.U8 r0 = r8.b
            r0.a(r4, r9)
            r0 = 0
            r1.a(r0)
        L47:
            int r0 = r1.d()
            int r0 = r0 + r3
            r1.a(r0)
            com.ironsource.U8 r0 = r8.b
            int r1 = r1.d()
            r0.a(r1, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.C3916wf.b(java.lang.String):void");
    }

    @Override // com.ironsource.InterfaceC3854t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        C3862tf c3862tf = this.c.get(identifier);
        return c3862tf == null ? new L3(false, null, 2, null) : a(c3862tf, identifier) ? new L3(true, N3.b) : new L3(false, null, 2, null);
    }

    private final boolean a(C3862tf c3862tf, String str) {
        a aVarC = c(str);
        Long lF = aVarC.f();
        if (lF != null) {
            long jLongValue = lF.longValue();
            if (aVarC.d() >= c3862tf.a() && this.a.a() < jLongValue) {
                return true;
            }
        }
        return false;
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3816r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objC = cappingConfig.c();
        if (Result.m2766isSuccessimpl(objC)) {
            C3862tf c3862tf = (C3862tf) objC;
            if (c3862tf != null) {
                this.c.put(identifier, c3862tf);
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objC);
        if (thM2763exceptionOrNullimpl != null) {
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        return Result.m2760constructorimpl(Unit.INSTANCE);
    }
}
