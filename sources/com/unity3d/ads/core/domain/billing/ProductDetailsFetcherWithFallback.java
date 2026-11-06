package com.unity3d.ads.core.domain.billing;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProductDetailsFetcherWithFallback.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ProductDetailsFetcherWithFallback implements ProductDetailsFetcher {
    private final ProductDetailsFetcher primaryFetcher;
    private final ProductDetailsFetcher secondaryFetcher;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProductDetailsFetcherWithFallback.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback", f = "ProductDetailsFetcherWithFallback.kt", l = {16, 20, 24}, m = "fetchProductDetails")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ProductDetailsFetcherWithFallback.this.fetchProductDetails(null, this);
        }
    }

    public ProductDetailsFetcherWithFallback(ProductDetailsFetcher primaryFetcher, ProductDetailsFetcher secondaryFetcher) {
        Intrinsics.checkNotNullParameter(primaryFetcher, "primaryFetcher");
        Intrinsics.checkNotNullParameter(secondaryFetcher, "secondaryFetcher");
        this.primaryFetcher = primaryFetcher;
        this.secondaryFetcher = secondaryFetcher;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.billing.ProductDetailsFetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object fetchProductDetails(java.lang.String r8, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.billing.ProductDetailsResult> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1 r0 = (com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1 r0 = new com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback$fetchProductDetails$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L47
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.L$0
            com.unity3d.ads.core.domain.billing.ProductDetailsResult r8 = (com.unity3d.ads.core.domain.billing.ProductDetailsResult) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L85
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L3f:
            java.lang.Object r8 = r0.L$0
            java.lang.String r8 = (java.lang.String) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L57
        L47:
            kotlin.ResultKt.throwOnFailure(r9)
            com.unity3d.ads.core.domain.billing.ProductDetailsFetcher r9 = r7.primaryFetcher
            r0.L$0 = r8
            r0.label = r5
            java.lang.Object r9 = r9.fetchProductDetails(r8, r0)
            if (r9 != r1) goto L57
            goto L81
        L57:
            com.unity3d.ads.core.domain.billing.ProductDetailsResult r9 = (com.unity3d.ads.core.domain.billing.ProductDetailsResult) r9
            boolean r2 = r9 instanceof com.unity3d.ads.core.domain.billing.ProductDetailsResult.Success
            if (r2 == 0) goto L5e
            return r9
        L5e:
            boolean r2 = r9 instanceof com.unity3d.ads.core.domain.billing.ProductDetailsResult.NotFound
            if (r2 == 0) goto L71
            com.unity3d.ads.core.domain.billing.ProductDetailsFetcher r9 = r7.secondaryFetcher
            r2 = 0
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r8 = r9.fetchProductDetails(r8, r0)
            if (r8 != r1) goto L70
            goto L81
        L70:
            return r8
        L71:
            boolean r2 = r9 instanceof com.unity3d.ads.core.domain.billing.ProductDetailsResult.Failure
            if (r2 == 0) goto L8d
            com.unity3d.ads.core.domain.billing.ProductDetailsFetcher r2 = r7.secondaryFetcher
            r0.L$0 = r9
            r0.label = r3
            java.lang.Object r8 = r2.fetchProductDetails(r8, r0)
            if (r8 != r1) goto L82
        L81:
            return r1
        L82:
            r6 = r9
            r9 = r8
            r8 = r6
        L85:
            com.unity3d.ads.core.domain.billing.ProductDetailsResult r9 = (com.unity3d.ads.core.domain.billing.ProductDetailsResult) r9
            boolean r0 = r9 instanceof com.unity3d.ads.core.domain.billing.ProductDetailsResult.Success
            if (r0 == 0) goto L8c
            return r9
        L8c:
            return r8
        L8d:
            kotlin.NoWhenBranchMatchedException r8 = new kotlin.NoWhenBranchMatchedException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.billing.ProductDetailsFetcherWithFallback.fetchProductDetails(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
