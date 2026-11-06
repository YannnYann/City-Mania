###### Class ads_mobile_sdk.wo (ads_mobile_sdk.wo)
.class public Lads_mobile_sdk/wo;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;


# instance fields
.field public final b:Lads_mobile_sdk/ck1;

.field public final c:Lads_mobile_sdk/o53;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;Lads_mobile_sdk/o53;)V
    .registers 4

    .line 1
    const-string v0, "internalBannerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFrame"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/wo;->b:Lads_mobile_sdk/ck1;

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-void
.end method


# virtual methods
.method public b()Lads_mobile_sdk/ck1;
    .registers 2

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/wo;->b:Lads_mobile_sdk/ck1;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ck1;->m()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-object v0
.end method

.method public final getView(Landroid/app/Activity;)Landroid/view/View;
    .registers 4

    .line 3
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 48
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 49
    iget-object v0, v0, Lads_mobile_sdk/vf0;->E:Lads_mobile_sdk/dw2;

    .line 50
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/f0;

    .line 51
    sget-object v1, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 52
    iget-object p1, p0, Lads_mobile_sdk/wo;->c:Lads_mobile_sdk/o53;

    return-object p1
.end method

.method public setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V
    .registers 3

    .line 36
    invoke-virtual {p0}, Lads_mobile_sdk/wo;->b()Lads_mobile_sdk/ck1;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V

    return-void
.end method
