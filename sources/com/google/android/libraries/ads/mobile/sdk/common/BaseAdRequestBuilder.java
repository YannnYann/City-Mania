package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class BaseAdRequestBuilder<T extends BaseAdRequestBuilder<T>> extends BaseRequestBuilder<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseAdRequestBuilder(String adUnitId) {
        super(adUnitId);
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }
}
