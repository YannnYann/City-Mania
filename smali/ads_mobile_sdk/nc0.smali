###### Class ads_mobile_sdk.nc0 (ads_mobile_sdk.nc0)
.class public final Lads_mobile_sdk/nc0;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;


# static fields
.field public static final synthetic g:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

.field public final c:Lads_mobile_sdk/tn3;

.field public final d:Lads_mobile_sdk/tn3;

.field public final e:Ljava/lang/String;

.field public final f:Lads_mobile_sdk/su1;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const-class v0, Lads_mobile_sdk/nc0;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    .line 2
    const-string v2, "onCustomClickListener"

    const-string v4, "getOnCustomClickListener()Lcom/google/android/libraries/ads/mobile/sdk/nativead/OnCustomClickListener;"

    invoke-static {v0, v2, v4, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/nc0;->g:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .registers 5

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 13
    iput-object p1, p0, Lads_mobile_sdk/nc0;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 17
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 19
    new-instance v1, Lads_mobile_sdk/lc0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/lc0;-><init>(Lads_mobile_sdk/nc0;)V

    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->c:Lads_mobile_sdk/tn3;

    .line 26
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 28
    new-instance v1, Lads_mobile_sdk/mc0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mc0;-><init>(Lads_mobile_sdk/nc0;)V

    .line 29
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->d:Lads_mobile_sdk/tn3;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->c:Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/nc0;->e:Ljava/lang/String;

    .line 55
    new-instance v0, Lads_mobile_sdk/su1;

    invoke-direct {v0, p1}, Lads_mobile_sdk/su1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    iput-object v0, p0, Lads_mobile_sdk/nc0;->f:Lads_mobile_sdk/su1;

    return-void
.end method
