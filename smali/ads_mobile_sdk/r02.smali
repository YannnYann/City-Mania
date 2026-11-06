###### Class ads_mobile_sdk.r02 (ads_mobile_sdk.r02)
.class public abstract Lads_mobile_sdk/r02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lads_mobile_sdk/p12;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lads_mobile_sdk/s02;
    .registers 12

    .line 1
    const-string v0, "nativeAdMapper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adChoicePlacement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/s02;

    invoke-direct {v0}, Lads_mobile_sdk/s02;-><init>()V

    .line 3
    sget-object v1, Lads_mobile_sdk/q02;->a:Lads_mobile_sdk/q02;

    iput-object v1, v0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    const/4 v1, 0x6

    .line 4
    iput v1, v0, Lads_mobile_sdk/s02;->a:I

    .line 6
    invoke-interface {p0}, Lads_mobile_sdk/p12;->f()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/s91;

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    if-eqz v1, :cond_48

    .line 7
    new-instance v3, Lads_mobile_sdk/km1;

    invoke-interface {v1}, Lads_mobile_sdk/s91;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1}, Lads_mobile_sdk/s91;->d()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_35

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_35
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lads_mobile_sdk/s91;->a()D

    move-result-wide v6

    invoke-interface {v1}, Lads_mobile_sdk/s91;->c()I

    move-result v8

    invoke-interface {v1}, Lads_mobile_sdk/s91;->b()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lads_mobile_sdk/km1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    goto :goto_49

    :cond_48
    move-object v3, v2

    .line 8
    :goto_49
    iput-object v3, v0, Lads_mobile_sdk/s02;->f:Lads_mobile_sdk/km1;

    .line 10
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getIcon()Lads_mobile_sdk/s91;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 11
    new-instance v3, Lads_mobile_sdk/km1;

    invoke-interface {v1}, Lads_mobile_sdk/s91;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1}, Lads_mobile_sdk/s91;->d()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_5f

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_5f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lads_mobile_sdk/s91;->a()D

    move-result-wide v6

    invoke-interface {v1}, Lads_mobile_sdk/s91;->c()I

    move-result v8

    invoke-interface {v1}, Lads_mobile_sdk/s91;->b()I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lads_mobile_sdk/km1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    goto :goto_73

    :cond_72
    move-object v3, v2

    .line 12
    :goto_73
    iput-object v3, v0, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    .line 13
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getHeadline()Ljava/lang/String;

    move-result-object v1

    const-string v3, "headline"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 14
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string v3, "body"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 15
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    const-string v3, "advertiser"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 16
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "call_to_action"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 17
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getStore()Ljava/lang/String;

    move-result-object v1

    const-string v3, "store"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 18
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getPrice()Ljava/lang/String;

    move-result-object v1

    const-string v3, "price"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Lkotlin/Pair;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c1
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c1

    .line 22
    iget-object v5, v0, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    .line 24
    :cond_e1
    invoke-interface {p0}, Lads_mobile_sdk/p12;->a()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/s02;->k:Landroid/view/View;

    .line 26
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getHasVideoContent()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 27
    new-instance v2, Lads_mobile_sdk/iq3;

    invoke-direct {v2}, Lads_mobile_sdk/iq3;-><init>()V

    .line 28
    :cond_f2
    iput-object v2, v0, Lads_mobile_sdk/s02;->m:Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;

    .line 34
    invoke-interface {p0}, Lads_mobile_sdk/p12;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lads_mobile_sdk/s02;->r:Landroid/os/Bundle;

    .line 35
    invoke-interface {p0}, Lads_mobile_sdk/p12;->e()F

    move-result v1

    iput v1, v0, Lads_mobile_sdk/s02;->s:F

    .line 36
    invoke-interface {p0}, Lads_mobile_sdk/p12;->c()Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lads_mobile_sdk/s02;->t:Landroid/view/View;

    .line 37
    iput-object p1, v0, Lads_mobile_sdk/s02;->u:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object v0
.end method
