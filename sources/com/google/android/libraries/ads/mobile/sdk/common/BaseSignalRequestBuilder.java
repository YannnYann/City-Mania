package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class BaseSignalRequestBuilder<T extends BaseSignalRequestBuilder<T>> extends BaseRequestBuilder<T> {
    public final String m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseSignalRequestBuilder(String signalType, String str) {
        super(str);
        Intrinsics.checkNotNullParameter(signalType, "signalType");
        this.m = signalType;
    }

    public final String m() {
        return this.m;
    }
}
