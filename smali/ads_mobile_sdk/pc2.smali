###### Class ads_mobile_sdk.pc2 (ads_mobile_sdk.pc2)
.class public final Lads_mobile_sdk/pc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationNativeListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lads_mobile_sdk/bv1;

.field public final synthetic c:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lads_mobile_sdk/qc2;)V
    .registers 4

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/pc2;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lads_mobile_sdk/pc2;->b:Lads_mobile_sdk/bv1;

    iput-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->d()V

    return-void
.end method

.method public final onAdClosed(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->b()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V
    .registers 6

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lads_mobile_sdk/pc2;->b:Lads_mobile_sdk/bv1;

    check-cast p1, Lads_mobile_sdk/do3;

    .line 278
    iget-object v0, p1, Lads_mobile_sdk/do3;->c:Lads_mobile_sdk/io3;

    .line 279
    invoke-virtual {v0, p2}, Lads_mobile_sdk/io3;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "errorMessage"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    new-instance v1, Lcom/google/android/gms/ads/AdError;

    const-string v2, "undefined"

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 533
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lads_mobile_sdk/pc2;->b:Lads_mobile_sdk/bv1;

    check-cast p1, Lads_mobile_sdk/do3;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdImpression(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->e()V

    return-void
.end method

.method public final onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    .line 294
    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    return-void
.end method

.method public final onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .registers 4

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "unifiedNativeAdMapper"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lads_mobile_sdk/pc2;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object p1, p0, Lads_mobile_sdk/pc2;->b:Lads_mobile_sdk/bv1;

    check-cast p1, Lads_mobile_sdk/do3;

    invoke-virtual {p1}, Lads_mobile_sdk/do3;->f()V

    return-void
.end method

.method public final onAdOpened(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->c()V

    return-void
.end method

.method public final onVideoEnd(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lads_mobile_sdk/pc2;->c:Lads_mobile_sdk/hm0;

    .line 306
    invoke-virtual {p1}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    return-void
.end method
