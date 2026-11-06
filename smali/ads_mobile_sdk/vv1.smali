###### Class ads_mobile_sdk.vv1 (ads_mobile_sdk.vv1)
.class public final Lads_mobile_sdk/vv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 276
    iget-object v0, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->b()V

    return-void
.end method

.method public final onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/hm0;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 272
    iget-object v0, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->c()V

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    .line 264
    iget-object v0, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->d()V

    return-void
.end method

.method public final reportAdImpression()V
    .registers 2

    .line 268
    iget-object v0, p0, Lads_mobile_sdk/vv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->e()V

    return-void
.end method
