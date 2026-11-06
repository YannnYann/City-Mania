package com.ironsource;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: loaded from: classes3.dex */
public final class P4 implements InterfaceC3834s7 {
    private final Boolean a;

    public P4(Boolean bool) {
        this.a = bool;
    }

    @Override // com.ironsource.InterfaceC3834s7
    public Object a() {
        Boolean bool = this.a;
        if (bool != null) {
            return Result.m2760constructorimpl(bool);
        }
        Result.Companion companion = Result.Companion;
        return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("enabled flag is not provided or invalid")));
    }
}
