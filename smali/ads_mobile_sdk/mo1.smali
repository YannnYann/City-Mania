###### Class ads_mobile_sdk.mo1 (ads_mobile_sdk.mo1)
.class public final Lads_mobile_sdk/mo1;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAd;


# static fields
.field public static final d:Lads_mobile_sdk/ko1;

.field public static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lads_mobile_sdk/pk1;

.field public final c:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/mo1;

    const-string v3, "adEventCallback"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/mo1;->e:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/ko1;

    .line 20
    invoke-direct {v0}, Lads_mobile_sdk/ko1;-><init>()V

    .line 21
    sput-object v0, Lads_mobile_sdk/mo1;->d:Lads_mobile_sdk/ko1;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/pk1;)V
    .registers 4

    .line 1
    const-string v0, "internalInterstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/mo1;->b:Lads_mobile_sdk/pk1;

    .line 22
    new-instance p1, Lads_mobile_sdk/tn3;

    .line 24
    new-instance v0, Lads_mobile_sdk/lo1;

    invoke-direct {v0, p0}, Lads_mobile_sdk/lo1;-><init>(Lads_mobile_sdk/mo1;)V

    const/4 v1, 0x0

    .line 25
    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/mo1;->c:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;)V
    .registers 5

    .line 19
    iget-object v0, p0, Lads_mobile_sdk/mo1;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/mo1;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 20
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .registers 3

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lads_mobile_sdk/mo1;->b:Lads_mobile_sdk/pk1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/as;->a(Landroid/content/Context;)V

    return-void
.end method
