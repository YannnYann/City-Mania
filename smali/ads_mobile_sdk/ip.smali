###### Class ads_mobile_sdk.ip (ads_mobile_sdk.ip)
.class public final Lads_mobile_sdk/ip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

.field public final c:Lads_mobile_sdk/l43;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/hm0;

.field public final g:Lads_mobile_sdk/cw2;

.field public final h:Lads_mobile_sdk/g33;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;Lads_mobile_sdk/g33;)V
    .registers 10

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdComponentProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshListener"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lads_mobile_sdk/ip;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 8
    iput-object p2, p0, Lads_mobile_sdk/ip;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    .line 9
    iput-object p3, p0, Lads_mobile_sdk/ip;->c:Lads_mobile_sdk/l43;

    .line 10
    iput-object p4, p0, Lads_mobile_sdk/ip;->d:Landroid/content/Context;

    .line 11
    iput-object p5, p0, Lads_mobile_sdk/ip;->e:Lads_mobile_sdk/f0;

    .line 12
    iput-object p6, p0, Lads_mobile_sdk/ip;->f:Lads_mobile_sdk/hm0;

    .line 13
    iput-object p7, p0, Lads_mobile_sdk/ip;->g:Lads_mobile_sdk/cw2;

    .line 14
    iput-object p8, p0, Lads_mobile_sdk/ip;->h:Lads_mobile_sdk/g33;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 5

    .line 209
    check-cast p3, Lads_mobile_sdk/rc2;

    .line 210
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lads_mobile_sdk/ip;->g:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lo3;

    .line 289
    iget-object p2, p3, Lads_mobile_sdk/rc2;->b:Landroid/view/View;

    if-eqz p2, :cond_1e

    goto :goto_24

    .line 290
    :cond_1e
    const-string p2, "view"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 291
    :goto_24
    check-cast p1, Lads_mobile_sdk/ej0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    iput-object p2, p1, Lads_mobile_sdk/ej0;->q:Landroid/view/View;

    .line 294
    iget-object p2, p0, Lads_mobile_sdk/ip;->h:Lads_mobile_sdk/g33;

    .line 295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    iput-object p2, p1, Lads_mobile_sdk/ej0;->p:Lads_mobile_sdk/g33;

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 13

    .line 2
    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/rc2;

    .line 3
    const-string p3, "transaction"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lads_mobile_sdk/ip;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 55
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    const-string p2, "No AdSize available for banner mediation. This may happen when a server-to-server ad response triggers mediation but no AdSize was provided in the signal request."

    const-string p3, "com.google.android.libraries.ads.mobile.sdk"

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p4, p1}, Lads_mobile_sdk/do3;->a(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 69
    :cond_2d
    iget-object p1, p0, Lads_mobile_sdk/ip;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_37

    :goto_35
    move-object v1, p1

    goto :goto_3a

    :cond_37
    iget-object p1, p0, Lads_mobile_sdk/ip;->d:Landroid/content/Context;

    goto :goto_35

    .line 71
    :goto_3a
    iget-object v3, p0, Lads_mobile_sdk/ip;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 72
    iget-object p1, p0, Lads_mobile_sdk/ip;->c:Lads_mobile_sdk/l43;

    invoke-virtual {p1}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v4

    .line 73
    iget-object v5, p2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 75
    iget-object v7, p0, Lads_mobile_sdk/ip;->f:Lads_mobile_sdk/hm0;

    move-object v6, p4

    .line 76
    invoke-virtual/range {v0 .. v7}, Lads_mobile_sdk/rc2;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Lcom/google/gson/JsonObject;Lads_mobile_sdk/bv1;Lads_mobile_sdk/hm0;)V

    return-void
.end method

.method public final a(Lads_mobile_sdk/x1;)V
    .registers 3

    .line 99
    check-cast p1, Lads_mobile_sdk/mo3;

    .line 100
    const-string v0, "adComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    check-cast p1, Lads_mobile_sdk/fj0;

    .line 184
    iget-object p1, p1, Lads_mobile_sdk/fj0;->Q:Lads_mobile_sdk/dw2;

    .line 185
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/od;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
