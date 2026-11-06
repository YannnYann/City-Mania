###### Class ads_mobile_sdk.wv3 (ads_mobile_sdk.wv3)
.class public final Lads_mobile_sdk/wv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/p12;


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/uv3;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Ljava/lang/Object;

.field public final n:Landroid/os/Bundle;

.field public final o:Z

.field public final p:Z

.field public final q:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .registers 7

    .line 1
    const-string v0, "unifiedNativeAdMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/wv3;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eqz p1, :cond_3b

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 130
    check-cast v3, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 131
    new-instance v4, Lads_mobile_sdk/vv3;

    invoke-direct {v4, v3}, Lads_mobile_sdk/vv3;-><init>(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 242
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3b
    move-object v2, v0

    .line 243
    :cond_3c
    iput-object v2, p0, Lads_mobile_sdk/wv3;->c:Ljava/util/ArrayList;

    .line 259
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getBody()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->d:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 263
    new-instance v0, Lads_mobile_sdk/uv3;

    invoke-direct {v0, p1}, Lads_mobile_sdk/uv3;-><init>(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 264
    :cond_53
    iput-object v0, p0, Lads_mobile_sdk/wv3;->e:Lads_mobile_sdk/uv3;

    .line 278
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->f:Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->g:Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStarRating()Ljava/lang/Double;

    .line 284
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStore()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->h:Ljava/lang/String;

    .line 286
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->i:Ljava/lang/String;

    .line 288
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    .line 290
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getHasVideoContent()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/wv3;->j:Z

    .line 293
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAttributionInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 294
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;->getText()Ljava/lang/CharSequence;

    .line 297
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 356
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 357
    check-cast v1, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .line 358
    new-instance v2, Lads_mobile_sdk/tv3;

    invoke-direct {v2, v1}, Lads_mobile_sdk/tv3;-><init>(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 416
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 417
    :cond_ba
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->k:Landroid/view/View;

    .line 419
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getMediaView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->l:Landroid/view/View;

    .line 421
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getMediatedAd()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->m:Ljava/lang/Object;

    .line 423
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/wv3;->n:Landroid/os/Bundle;

    .line 426
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/wv3;->o:Z

    .line 428
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/wv3;->p:Z

    .line 430
    iget-object p1, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getMediaContentAspectRatio()F

    move-result p1

    iput p1, p0, Lads_mobile_sdk/wv3;->q:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    .line 90
    iget-object v0, p0, Lads_mobile_sdk/wv3;->l:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 91
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    .line 199
    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableAssetViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonclickableAssetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    .line 97
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lads_mobile_sdk/wv3;->o:Z

    return v0
.end method

.method public final c()Landroid/view/View;
    .registers 2

    .line 88
    iget-object v0, p0, Lads_mobile_sdk/wv3;->k:Landroid/view/View;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lads_mobile_sdk/wv3;->p:Z

    return v0
.end method

.method public final destroy()V
    .registers 2

    .line 124
    iget-object v0, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->destroy()V

    return-void
.end method

.method public final e()F
    .registers 2

    .line 101
    iget v0, p0, Lads_mobile_sdk/wv3;->q:F

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/wv3;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lads_mobile_sdk/wv3;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lads_mobile_sdk/wv3;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lads_mobile_sdk/wv3;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 94
    iget-object v0, p0, Lads_mobile_sdk/wv3;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHasVideoContent()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lads_mobile_sdk/wv3;->j:Z

    return v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lads_mobile_sdk/wv3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lads_mobile_sdk/s91;
    .registers 2

    .line 35
    iget-object v0, p0, Lads_mobile_sdk/wv3;->e:Lads_mobile_sdk/uv3;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lads_mobile_sdk/wv3;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lads_mobile_sdk/wv3;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final recordImpression()V
    .registers 2

    .line 104
    iget-object v0, p0, Lads_mobile_sdk/wv3;->a:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->recordImpression()V

    return-void
.end method
