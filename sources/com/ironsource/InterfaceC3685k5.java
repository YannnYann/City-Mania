package com.ironsource;

import com.ironsource.sdk.utils.IronSourceStorageUtils;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: com.ironsource.k5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3685k5<T> extends Vc {
    void b(D8 d8);

    String c();

    InterfaceC3542c6 d();

    Function1<Result<? extends T>, Unit> i();

    default boolean j() {
        return k().exists();
    }

    D8 k();

    C7 l();

    default void m() {
        l().a(this);
        if (k().exists()) {
            IronSourceStorageUtils.deleteFile(k());
        }
        try {
            l().a(k(), d().value(), 5, 5);
        } catch (Exception e) {
            C3813r4.d().a(e);
            Function1<Result<? extends T>, Unit> function1I = i();
            Result.Companion companion = Result.Companion;
            function1I.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(e))));
        }
    }
}
