###### Class ads_mobile_sdk.xv1 (ads_mobile_sdk.xv1)
.class public final Lads_mobile_sdk/xv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/hm0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hm0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 2

    .line 107
    iget-object v0, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->b()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 2

    .line 91
    iget-object v0, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    .line 92
    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->a()Lads_mobile_sdk/no3;

    return-void
.end method

.method public final onAdOpened()V
    .registers 2

    .line 103
    iget-object v0, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->c()V

    return-void
.end method

.method public final reportAdClicked()V
    .registers 2

    .line 95
    iget-object v0, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->d()V

    return-void
.end method

.method public final reportAdImpression()V
    .registers 2

    .line 99
    iget-object v0, p0, Lads_mobile_sdk/xv1;->a:Lads_mobile_sdk/hm0;

    invoke-virtual {v0}, Lads_mobile_sdk/hm0;->e()V

    return-void
.end method
