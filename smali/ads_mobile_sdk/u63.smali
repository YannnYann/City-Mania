###### Class ads_mobile_sdk.u63 (ads_mobile_sdk.u63)
.class public final Lads_mobile_sdk/u63;
.super Lads_mobile_sdk/gs;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;


# static fields
.field public static final d:Lads_mobile_sdk/s63;

.field public static final synthetic e:[Lkotlin/reflect/KProperty;


# instance fields
.field public final c:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/u63;

    const-string v3, "adEventCallback"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 44
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/u63;->e:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/s63;

    .line 45
    invoke-direct {v0}, Lads_mobile_sdk/s63;-><init>()V

    .line 46
    sput-object v0, Lads_mobile_sdk/u63;->d:Lads_mobile_sdk/s63;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/un1;)V
    .registers 4

    .line 1
    const-string v0, "internalRewardedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lads_mobile_sdk/gs;-><init>(Lads_mobile_sdk/un1;)V

    .line 45
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 47
    new-instance v1, Lads_mobile_sdk/t63;

    invoke-direct {v1, p1}, Lads_mobile_sdk/t63;-><init>(Lads_mobile_sdk/un1;)V

    const/4 p1, 0x0

    .line 48
    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/u63;->c:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;)V
    .registers 5

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/u63;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/u63;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 45
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
