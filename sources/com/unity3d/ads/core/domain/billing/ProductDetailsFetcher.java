package com.unity3d.ads.core.domain.billing;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ProductDetailsFetcher.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface ProductDetailsFetcher {
    Object fetchProductDetails(String str, Continuation<? super ProductDetailsResult> continuation);
}
