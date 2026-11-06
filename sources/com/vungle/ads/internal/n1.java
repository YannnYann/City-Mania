package com.vungle.ads.internal;

import com.vungle.ads.nativead.NativeVideoOptions;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class n1 extends Lambda implements Function0 {
    public static final n1 a = new n1();

    public n1() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new NativeVideoOptions();
    }
}
