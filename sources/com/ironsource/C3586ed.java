package com.ironsource;

import com.ironsource.InterfaceC3854t7;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3586ed implements InterfaceC3854t7, InterfaceC3854t7.a {
    private final InterfaceC3851t4 a;
    private final N7 b;
    private final Map<String, C3568dd> c;

    public C3586ed(InterfaceC3851t4 currentTimeProvider, N7 repository) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.a = currentTimeProvider;
        this.b = repository;
        this.c = new LinkedHashMap();
    }

    public final Map<String, C3568dd> a() {
        return this.c;
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        if (this.c.get(identifier) == null) {
            return;
        }
        this.b.a(this.a.a(), identifier);
    }

    private final boolean a(C3568dd c3568dd, String str) {
        Long lA = this.b.a(str);
        return lA != null && this.a.a() - lA.longValue() < c3568dd.a();
    }

    @Override // com.ironsource.InterfaceC3854t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        C3568dd c3568dd = this.c.get(identifier);
        if (c3568dd == null) {
            return new L3(false, null, 2, null);
        }
        if (a(c3568dd, identifier)) {
            return new L3(true, N3.a);
        }
        return new L3(false, null, 2, null);
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3816r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objB = cappingConfig.b();
        if (Result.m2766isSuccessimpl(objB)) {
            C3568dd c3568dd = (C3568dd) objB;
            if (c3568dd != null) {
                this.c.put(identifier, c3568dd);
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objB);
        if (thM2763exceptionOrNullimpl != null) {
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        return Result.m2760constructorimpl(Unit.INSTANCE);
    }
}
