###### Class ads_mobile_sdk.yv1 (ads_mobile_sdk.yv1)
.class public final Lads_mobile_sdk/yv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lads_mobile_sdk/bv1;

.field public final synthetic c:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;Lads_mobile_sdk/do3;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/yv1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lads_mobile_sdk/yv1;->b:Lads_mobile_sdk/bv1;

    iput-object p1, p0, Lads_mobile_sdk/yv1;->c:Lads_mobile_sdk/hm0;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lads_mobile_sdk/yv1;->b:Lads_mobile_sdk/bv1;

    check-cast v0, Lads_mobile_sdk/do3;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .registers 6

    .line 114
    const-string v0, "failure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lads_mobile_sdk/yv1;->b:Lads_mobile_sdk/bv1;

    new-instance v1, Lcom/google/android/gms/ads/AdError;

    const/4 v2, 0x0

    const-string v3, "undefined"

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lads_mobile_sdk/do3;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 85
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationBannerAd;

    .line 86
    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lads_mobile_sdk/yv1;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationBannerAd;->getView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lads_mobile_sdk/yv1;->b:Lads_mobile_sdk/bv1;

    check-cast p1, Lads_mobile_sdk/do3;

    invoke-virtual {p1}, Lads_mobile_sdk/do3;->f()V

    .line 174
    new-instance p1, Lads_mobile_sdk/xv1;

    iget-object v0, p0, Lads_mobile_sdk/yv1;->c:Lads_mobile_sdk/hm0;

    invoke-direct {p1, v0}, Lads_mobile_sdk/xv1;-><init>(Lads_mobile_sdk/hm0;)V

    return-object p1
.end method
