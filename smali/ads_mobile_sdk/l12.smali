###### Class ads_mobile_sdk.l12 (ads_mobile_sdk.l12)
.class public final Lads_mobile_sdk/l12;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# static fields
.field public static final synthetic q:[Lkotlin/reflect/KProperty;


# instance fields
.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

.field public final c:Lads_mobile_sdk/tn3;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/Double;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

.field public final n:Landroid/os/Bundle;

.field public final o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

.field public final p:Lads_mobile_sdk/su1;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;"

    const/4 v1, 0x0

    const-class v2, Lads_mobile_sdk/l12;

    const-string v3, "adEventCallback"

    invoke-static {v2, v3, v0, v1}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x1

    .line 25
    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v1

    sput-object v2, Lads_mobile_sdk/l12;->q:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .registers 5

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    iput-object p1, p0, Lads_mobile_sdk/l12;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 26
    new-instance v0, Lads_mobile_sdk/tn3;

    .line 28
    new-instance v1, Lads_mobile_sdk/k12;

    invoke-direct {v1, p0}, Lads_mobile_sdk/k12;-><init>(Lads_mobile_sdk/l12;)V

    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/l12;->c:Lads_mobile_sdk/tn3;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "headline"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lads_mobile_sdk/km1;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v2

    :goto_35
    iput-object v0, p0, Lads_mobile_sdk/l12;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->f:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "call_to_action"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->g:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "advertiser"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->h:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "creative_summary"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->i:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->e:Ljava/lang/Double;

    iput-object v0, p0, Lads_mobile_sdk/l12;->j:Ljava/lang/Double;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "store"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->k:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v1, "price"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lads_mobile_sdk/l12;->l:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    if-eqz v0, :cond_ac

    invoke-virtual {v0}, Lads_mobile_sdk/km1;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v0

    goto :goto_ad

    :cond_ac
    move-object v0, v2

    :goto_ad
    iput-object v0, p0, Lads_mobile_sdk/l12;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    iput-object v0, p0, Lads_mobile_sdk/l12;->n:Landroid/os/Bundle;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->h:Lads_mobile_sdk/ak1;

    if-eqz v0, :cond_c3

    invoke-static {v0}, Lads_mobile_sdk/bk1;->a(Lads_mobile_sdk/ak1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    move-result-object v2

    :cond_c3
    iput-object v2, p0, Lads_mobile_sdk/l12;->o:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    .line 64
    new-instance v0, Lads_mobile_sdk/su1;

    invoke-direct {v0, p1}, Lads_mobile_sdk/su1;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    iput-object v0, p0, Lads_mobile_sdk/l12;->p:Lads_mobile_sdk/su1;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->v()V

    .line 70
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->m()V

    return-void
.end method


# virtual methods
.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/l12;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lads_mobile_sdk/l12;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lads_mobile_sdk/l12;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lads_mobile_sdk/l12;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
    .registers 2

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/l12;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/l12;->p:Lads_mobile_sdk/su1;

    return-object v0
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V
    .registers 5

    .line 25
    iget-object v0, p0, Lads_mobile_sdk/l12;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/l12;->q:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 26
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
