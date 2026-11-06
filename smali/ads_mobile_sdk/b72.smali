###### Class ads_mobile_sdk.b72 (ads_mobile_sdk.b72)
.class public final Lads_mobile_sdk/b72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

.field public final c:Lads_mobile_sdk/l43;

.field public final d:Landroid/content/Context;

.field public final e:Lads_mobile_sdk/f0;

.field public final f:Lads_mobile_sdk/hm0;

.field public final g:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V
    .registers 9

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdComponentProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/b72;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/b72;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/b72;->c:Lads_mobile_sdk/l43;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/b72;->d:Landroid/content/Context;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/b72;->e:Lads_mobile_sdk/f0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/b72;->f:Lads_mobile_sdk/hm0;

    .line 12
    iput-object p7, p0, Lads_mobile_sdk/b72;->g:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 6

    .line 77
    check-cast p3, Lads_mobile_sdk/rc2;

    .line 78
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lads_mobile_sdk/b72;->g:Lads_mobile_sdk/cw2;

    .line 140
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/pp3;

    .line 141
    iget-object p2, p3, Lads_mobile_sdk/rc2;->c:Lads_mobile_sdk/p12;

    const/4 v0, 0x0

    const-string v1, "nativeAdMapper"

    if-eqz p2, :cond_21

    goto :goto_25

    .line 142
    :cond_21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    .line 143
    :goto_25
    check-cast p1, Lads_mobile_sdk/ij0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iput-object p2, p1, Lads_mobile_sdk/ij0;->p:Lads_mobile_sdk/p12;

    .line 146
    iget-object p2, p3, Lads_mobile_sdk/rc2;->c:Lads_mobile_sdk/p12;

    if-eqz p2, :cond_35

    move-object v0, p2

    goto :goto_38

    :cond_35
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 147
    :goto_38
    iget-object p2, p0, Lads_mobile_sdk/b72;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    invoke-interface {p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object p2

    invoke-static {v0, p2}, Lads_mobile_sdk/r02;->a(Lads_mobile_sdk/p12;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lads_mobile_sdk/s02;

    move-result-object p2

    .line 148
    iput-object p2, p1, Lads_mobile_sdk/ij0;->q:Lads_mobile_sdk/s02;

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

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/b72;->e:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_21

    :goto_1f
    move-object v1, p1

    goto :goto_24

    :cond_21
    iget-object p1, p0, Lads_mobile_sdk/b72;->d:Landroid/content/Context;

    goto :goto_1f

    .line 50
    :goto_24
    iget-object v2, p0, Lads_mobile_sdk/b72;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 51
    iget-object v3, p0, Lads_mobile_sdk/b72;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;

    .line 52
    iget-object p1, p0, Lads_mobile_sdk/b72;->c:Lads_mobile_sdk/l43;

    invoke-virtual {p1}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v4

    .line 53
    iget-object v5, p2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 55
    iget-object v7, p0, Lads_mobile_sdk/b72;->f:Lads_mobile_sdk/hm0;

    move-object v6, p4

    .line 56
    invoke-virtual/range {v0 .. v7}, Lads_mobile_sdk/rc2;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Lcom/google/gson/JsonObject;Lads_mobile_sdk/bv1;Lads_mobile_sdk/hm0;)V

    return-void
.end method
