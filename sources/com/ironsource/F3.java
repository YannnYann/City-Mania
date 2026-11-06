package com.ironsource;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes3.dex */
public final class F3 implements InterfaceC3834s7 {
    private final Boolean a;
    private final Integer b;
    private final M3 c;

    public F3(Boolean bool, Integer num, M3 m3) {
        this.a = bool;
        this.b = num;
        this.c = m3;
    }

    @Override // com.ironsource.InterfaceC3834s7
    public Object a() {
        Boolean bool = this.a;
        if (bool == null) {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("enabled flag is not provided or invalid")));
        }
        if (!bool.booleanValue()) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(Boolean.FALSE);
        }
        Integer num = this.b;
        if (num == null || num.intValue() <= 0) {
            Result.Companion companion3 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("limit flag is not provided or invalid")));
        }
        if (this.c == null) {
            Result.Companion companion4 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("unit flag is not provided or invalid")));
        }
        Result.Companion companion5 = Result.Companion;
        return Result.m2760constructorimpl(Boolean.TRUE);
    }
}
