package com.ironsource;

import com.ironsource.InterfaceC3854t7;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class R4 implements InterfaceC3854t7, InterfaceC3854t7.a {
    private final ConcurrentHashMap<String, O4> a = new ConcurrentHashMap<>();

    @Override // com.ironsource.InterfaceC3854t7
    public L3 a(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        O4 o4 = this.a.get(identifier);
        return (o4 == null || o4.a()) ? new L3(false, null, 2, null) : new L3(true, N3.c);
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public void b(String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
    }

    @Override // com.ironsource.InterfaceC3854t7.a
    public Object a(String identifier, N3 cappingType, InterfaceC3816r7 cappingConfig) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(cappingType, "cappingType");
        Intrinsics.checkNotNullParameter(cappingConfig, "cappingConfig");
        Object objA = cappingConfig.a();
        if (Result.m2766isSuccessimpl(objA)) {
            O4 o4 = (O4) objA;
            if (o4 != null) {
                this.a.put(identifier, o4);
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        }
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objA);
        if (thM2763exceptionOrNullimpl != null) {
            return Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
        }
        return Result.m2760constructorimpl(Unit.INSTANCE);
    }
}
