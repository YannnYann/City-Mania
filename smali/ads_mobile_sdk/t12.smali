###### Class ads_mobile_sdk.t12 (ads_mobile_sdk.t12)
.class public final Lads_mobile_sdk/t12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/p12;


# instance fields
.field public final a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/lang/String;

.field public final e:Lads_mobile_sdk/r12;

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
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    .registers 7

    .line 1
    const-string v0, "nativeAdMapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/t12;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eqz p1, :cond_3b

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 128
    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 129
    new-instance v4, Lads_mobile_sdk/s12;

    invoke-direct {v4, v3}, Lads_mobile_sdk/s12;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 239
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_3b
    move-object v2, v0

    .line 240
    :cond_3c
    iput-object v2, p0, Lads_mobile_sdk/t12;->c:Ljava/util/ArrayList;

    .line 256
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getBody()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->d:Ljava/lang/String;

    .line 259
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 260
    new-instance v0, Lads_mobile_sdk/r12;

    invoke-direct {v0, p1}, Lads_mobile_sdk/r12;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 261
    :cond_53
    iput-object v0, p0, Lads_mobile_sdk/t12;->e:Lads_mobile_sdk/r12;

    .line 275
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->f:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->g:Ljava/lang/String;

    .line 279
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getStarRating()Ljava/lang/Double;

    .line 281
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getStore()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->h:Ljava/lang/String;

    .line 283
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getPrice()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->i:Ljava/lang/String;

    .line 285
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    .line 287
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->hasVideoContent()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/t12;->j:Z

    .line 290
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getAttributionInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 291
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;->getText()Ljava/lang/CharSequence;

    .line 294
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;->getImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 353
    check-cast v1, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    .line 354
    new-instance v2, Lads_mobile_sdk/q12;

    invoke-direct {v2, v1}, Lads_mobile_sdk/q12;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 412
    :cond_ba
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->k:Landroid/view/View;

    .line 414
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getMediatedMediaView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->l:Landroid/view/View;

    .line 416
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getMediatedAd()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->m:Ljava/lang/Object;

    .line 418
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/t12;->n:Landroid/os/Bundle;

    .line 420
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/t12;->o:Z

    .line 422
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/t12;->p:Z

    .line 424
    iget-object p1, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getMediaContentAspectRatio()F

    move-result p1

    iput p1, p0, Lads_mobile_sdk/t12;->q:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 2

    .line 89
    iget-object v0, p0, Lads_mobile_sdk/t12;->l:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 90
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    .line 196
    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableAssetViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonclickableAssetViews"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    .line 96
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lads_mobile_sdk/t12;->o:Z

    return v0
.end method

.method public final c()Landroid/view/View;
    .registers 2

    .line 87
    iget-object v0, p0, Lads_mobile_sdk/t12;->k:Landroid/view/View;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lads_mobile_sdk/t12;->p:Z

    return v0
.end method

.method public final destroy()V
    .registers 2

    .line 122
    iget-object v0, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->destroy()V

    return-void
.end method

.method public final e()F
    .registers 2

    .line 99
    iget v0, p0, Lads_mobile_sdk/t12;->q:F

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/t12;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lads_mobile_sdk/t12;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lads_mobile_sdk/t12;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/t12;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .line 93
    iget-object v0, p0, Lads_mobile_sdk/t12;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHasVideoContent()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lads_mobile_sdk/t12;->j:Z

    return v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lads_mobile_sdk/t12;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lads_mobile_sdk/s91;
    .registers 2

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/t12;->e:Lads_mobile_sdk/r12;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lads_mobile_sdk/t12;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/t12;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final recordImpression()V
    .registers 2

    .line 102
    iget-object v0, p0, Lads_mobile_sdk/t12;->a:Lcom/google/android/gms/ads/mediation/NativeAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->recordImpression()V

    return-void
.end method
