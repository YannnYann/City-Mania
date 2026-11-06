###### Class ads_mobile_sdk.qv1 (ads_mobile_sdk.qv1)
.class public final Lads_mobile_sdk/qv1;
.super Lads_mobile_sdk/tc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jf;


# instance fields
.field public b:Landroid/view/View;

.field public c:Lads_mobile_sdk/p12;

.field public d:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field public e:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field public f:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    .registers 3

    .line 1
    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lads_mobile_sdk/tc1;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;)V

    return-void
.end method
