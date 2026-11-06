###### Class ads_mobile_sdk.ro1 (ads_mobile_sdk.ro1)
.class public final Lads_mobile_sdk/ro1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rf;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final b:Lads_mobile_sdk/l43;

.field public final c:Landroid/content/Context;

.field public final d:Lads_mobile_sdk/f0;

.field public final e:Lads_mobile_sdk/hm0;

.field public final f:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/l43;Landroid/content/Context;Lads_mobile_sdk/f0;Lads_mobile_sdk/hm0;Lads_mobile_sdk/dw2;)V
    .registers 8

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegatingThirdPartyEventEmitter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interstitialAdComponentProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lads_mobile_sdk/ro1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 7
    iput-object p2, p0, Lads_mobile_sdk/ro1;->b:Lads_mobile_sdk/l43;

    .line 8
    iput-object p3, p0, Lads_mobile_sdk/ro1;->c:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lads_mobile_sdk/ro1;->d:Lads_mobile_sdk/f0;

    .line 10
    iput-object p5, p0, Lads_mobile_sdk/ro1;->e:Lads_mobile_sdk/hm0;

    .line 11
    iput-object p6, p0, Lads_mobile_sdk/ro1;->f:Lads_mobile_sdk/cw2;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/rc2;Landroid/content/Context;)V
    .registers 3

    .line 135
    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p0, p0, Lads_mobile_sdk/rc2;->d:Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz p0, :cond_f

    goto :goto_15

    .line 137
    :cond_f
    const-string p0, "interstitialAd"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 138
    :goto_15
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/rc2;)Lads_mobile_sdk/op3;
    .registers 5

    .line 74
    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "config"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adapter"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lads_mobile_sdk/ro1;->f:Lads_mobile_sdk/cw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/op3;

    new-instance p2, Lads_mobile_sdk/ro1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lads_mobile_sdk/ro1$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/rc2;)V

    check-cast p1, Lads_mobile_sdk/gj0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iput-object p2, p1, Lads_mobile_sdk/gj0;->p:Lads_mobile_sdk/np3;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Ljava/lang/Object;)Lads_mobile_sdk/w1;
    .registers 4

    .line 73
    check-cast p3, Lads_mobile_sdk/rc2;

    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/ro1;->a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/rc2;)Lads_mobile_sdk/op3;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lads_mobile_sdk/jf;Lads_mobile_sdk/do3;)V
    .registers 12

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

    .line 47
    iget-object p1, p0, Lads_mobile_sdk/ro1;->d:Lads_mobile_sdk/f0;

    invoke-virtual {p1}, Lads_mobile_sdk/f0;->g()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_21

    :goto_1f
    move-object v1, p1

    goto :goto_24

    :cond_21
    iget-object p1, p0, Lads_mobile_sdk/ro1;->c:Landroid/content/Context;

    goto :goto_1f

    .line 48
    :goto_24
    iget-object v2, p0, Lads_mobile_sdk/ro1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/ro1;->b:Lads_mobile_sdk/l43;

    invoke-virtual {p1}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v3

    .line 50
    iget-object v4, p2, Lads_mobile_sdk/i2;->c:Lcom/google/gson/JsonObject;

    .line 52
    iget-object v6, p0, Lads_mobile_sdk/ro1;->e:Lads_mobile_sdk/hm0;

    move-object v5, p4

    .line 53
    invoke-virtual/range {v0 .. v6}, Lads_mobile_sdk/rc2;->a(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;Lcom/google/gson/JsonObject;Lads_mobile_sdk/bv1;Lads_mobile_sdk/hm0;)V

    return-void
.end method

###### Class ads_mobile_sdk.ro1$$ExternalSyntheticLambda0 (ads_mobile_sdk.ro1$$ExternalSyntheticLambda0)
.class public final synthetic Lads_mobile_sdk/ro1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lads_mobile_sdk/np3;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/rc2;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/rc2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/ro1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/rc2;

    return-void
.end method


# virtual methods
.method public final showAd(Landroid/content/Context;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/ro1$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/rc2;

    invoke-static {v0, p1}, Lads_mobile_sdk/ro1;->a(Lads_mobile_sdk/rc2;Landroid/content/Context;)V

    return-void
.end method
