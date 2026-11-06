###### Class com.vungle.ads.internal.h0 (com.vungle.ads.internal.h0)
.class public final Lcom/vungle/ads/internal/h0;
.super Lcom/vungle/ads/BaseAd;
.source "SourceFile"


# instance fields
.field public final t:Lcom/vungle/ads/VungleAdSize;

.field public final u:Lcom/vungle/ads/internal/i0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    .line 2
    iput-object p3, p0, Lcom/vungle/ads/internal/h0;->t:Lcom/vungle/ads/VungleAdSize;

    .line 13
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/internal/j0;

    .line 14
    new-instance p2, Lcom/vungle/ads/internal/g0;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/g0;-><init>(Lcom/vungle/ads/internal/h0;)V

    .line 15
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/j0;->a(Lcom/vungle/ads/internal/presenter/b;)Lcom/vungle/ads/internal/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/h0;->u:Lcom/vungle/ads/internal/i0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/ads/internal/i0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/h0;->u:Lcom/vungle/ads/internal/i0;

    return-object v0
.end method

.method public final constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/r;
    .registers 4

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/vungle/ads/internal/j0;

    iget-object v1, p0, Lcom/vungle/ads/internal/h0;->t:Lcom/vungle/ads/VungleAdSize;

    invoke-direct {v0, p1, v1}, Lcom/vungle/ads/internal/j0;-><init>(Landroid/content/Context;Lcom/vungle/ads/VungleAdSize;)V

    return-object v0
.end method

.method public final getAdViewSize()Lcom/vungle/ads/VungleAdSize;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/vungle/ads/internal/j0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/j0;->k()Lcom/vungle/ads/VungleAdSize;

    move-result-object v0

    return-object v0
.end method
