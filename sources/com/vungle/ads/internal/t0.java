package com.vungle.ads.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes4.dex */
public final class t0 extends Lambda implements Function0 {
    public static final t0 a = new t0();

    public t0() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return JsonKt.Json$default(null, s0.a, 1, null);
    }
}
