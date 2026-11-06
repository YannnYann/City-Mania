###### Class ads_mobile_sdk.u83 (ads_mobile_sdk.u83)
.class public final Lads_mobile_sdk/u83;
.super Lads_mobile_sdk/tc1;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jf;


# instance fields
.field public final b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field public c:Landroid/view/View;

.field public d:Lads_mobile_sdk/p12;

.field public e:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field public f:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field public g:Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .registers 3

    .line 1
    const-string v0, "rtbAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lads_mobile_sdk/tc1;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;)V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/u83;->b:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method
