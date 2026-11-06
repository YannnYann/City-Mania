package com.ironsource;

import com.ironsource.C3671j9;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.Rb;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3689k9 {
    private final InterfaceC3851t4 a;
    private final Rb.a b;
    private Long c;
    private Long d;
    private Rb e;
    private C3671j9 f;

    /* JADX WARN: Multi-variable type inference failed */
    public C3689k9() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public final C3671j9 a() {
        return this.f;
    }

    public final C3671j9 b() {
        Long l = this.d;
        if (l != null) {
            long jLongValue = l.longValue();
            Long l2 = this.c;
            if (l2 != null) {
                long jLongValue2 = l2.longValue();
                if (this.e == null) {
                    return null;
                }
                long jA = this.a.a();
                Rb rb = this.b.get();
                C3671j9 c3671j9 = new C3671j9(jA - jLongValue, new C3671j9.a(Math.max(0L, rb.d() - r1.d()), Math.max(0L, rb.e() - r1.e()), Math.max(0L, rb.f() - r1.f())), jLongValue2 / ((long) 1024));
                this.f = c3671j9;
                return c3671j9;
            }
        }
        return null;
    }

    public C3689k9(InterfaceC3851t4 currentTimeProvider, Rb.a memoryInfoProvider) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(memoryInfoProvider, "memoryInfoProvider");
        this.a = currentTimeProvider;
        this.b = memoryInfoProvider;
    }

    public final void a(String serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        this.c = Long.valueOf(serverResponse.length());
        this.e = this.b.get();
        this.d = Long.valueOf(this.a.a());
    }

    public /* synthetic */ C3689k9(InterfaceC3851t4 interfaceC3851t4, Rb.a aVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new InterfaceC3851t4.a() : interfaceC3851t4, (i & 2) != 0 ? new Rb.a.C0032a() : aVar);
    }
}
