package com.ironsource;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class E3 implements InterfaceC3816r7 {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public E3(Boolean bool, Integer num, M3 m3) {
        this.a = bool;
        this.b = num;
        this.c = m3;
    }

    private final Object a(M3 m3) {
        return new F3(this.a, this.b, m3).a();
    }

    @Override // com.ironsource.InterfaceC3816r7
    public Object b() {
        Integer num;
        M3 m3 = M3.f;
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(a(m3));
        if (thM2763exceptionOrNullimpl != null) {
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        return Result.m2760constructorimpl((!Intrinsics.areEqual(this.a, Boolean.TRUE) || (num = this.b) == null) ? null : new C3568dd(m3.a(num), null, 2, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
    @Override // com.ironsource.InterfaceC3816r7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object c() {
        /*
            r3 = this;
            com.ironsource.M3 r0 = r3.c
            java.lang.Object r0 = r3.a(r0)
            java.lang.Throwable r0 = kotlin.Result.m2763exceptionOrNullimpl(r0)
            if (r0 == 0) goto L15
            java.lang.Object r0 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r0 = kotlin.Result.m2760constructorimpl(r0)
            return r0
        L15:
            java.lang.Boolean r0 = r3.a
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto L31
            java.lang.Integer r0 = r3.b
            if (r0 == 0) goto L31
            int r0 = r0.intValue()
            com.ironsource.M3 r1 = r3.c
            if (r1 == 0) goto L31
            com.ironsource.tf r2 = new com.ironsource.tf
            r2.<init>(r0, r1)
            goto L32
        L31:
            r2 = 0
        L32:
            java.lang.Object r0 = kotlin.Result.m2760constructorimpl(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.E3.c():java.lang.Object");
    }

    public final Boolean d() {
        return this.a;
    }

    public final Integer e() {
        return this.b;
    }

    public final M3 f() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3816r7
    public Object a() {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(new P4(this.a).a());
        if (thM2763exceptionOrNullimpl != null) {
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        Boolean bool = this.a;
        return Result.m2760constructorimpl(bool != null ? new O4(bool.booleanValue()) : null);
    }

    public /* synthetic */ E3(Boolean bool, Integer num, M3 m3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bool, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : m3);
    }
}
