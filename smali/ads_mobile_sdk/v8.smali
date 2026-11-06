###### Class ads_mobile_sdk.v8 (ads_mobile_sdk.v8)
.class public final Lads_mobile_sdk/v8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/cl2;

.field public final b:Lads_mobile_sdk/l43;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cl2;Lads_mobile_sdk/l43;)V
    .registers 4

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestConfigurationWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    .line 28
    iput-object p2, p0, Lads_mobile_sdk/v8;->b:Lads_mobile_sdk/l43;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 136
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    check-cast p0, [B

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([B)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 137
    :cond_f
    instance-of v0, p0, [S

    if-eqz v0, :cond_1e

    check-cast p0, [S

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([S)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1e
    instance-of v0, p0, [I

    if-eqz v0, :cond_2d

    check-cast p0, [I

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 139
    :cond_2d
    instance-of v0, p0, [J

    if-eqz v0, :cond_3c

    check-cast p0, [J

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([J)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 140
    :cond_3c
    instance-of v0, p0, [F

    if-eqz v0, :cond_4b

    check-cast p0, [F

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([F)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 141
    :cond_4b
    instance-of v0, p0, [D

    if-eqz v0, :cond_5a

    check-cast p0, [D

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([D)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 142
    :cond_5a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6e

    check-cast p0, [Z

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Z)Ljava/util/List;

    move-result-object p0

    .line 404
    new-instance v0, Lads_mobile_sdk/p8;

    invoke-direct {v0}, Lads_mobile_sdk/p8;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 405
    :cond_6e
    instance-of v0, p0, [C

    if-eqz v0, :cond_7d

    check-cast p0, [C

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->sorted([C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 406
    :cond_7d
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a3

    check-cast p0, [Ljava/lang/Object;

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 668
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8b
    if-ge v2, v1, :cond_99

    aget-object v3, p0, v2

    .line 669
    invoke-static {v3}, Lads_mobile_sdk/v8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 932
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 934
    :cond_99
    new-instance p0, Lads_mobile_sdk/q8;

    invoke-direct {p0}, Lads_mobile_sdk/q8;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 935
    :cond_a3
    instance-of v0, p0, Ljava/util/List;

    const/16 v1, 0xa

    if-eqz v0, :cond_d4

    check-cast p0, Ljava/lang/Iterable;

    .line 1200
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1202
    invoke-static {v1}, Lads_mobile_sdk/v8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    .line 1471
    :cond_ca
    new-instance p0, Lads_mobile_sdk/r8;

    invoke-direct {p0}, Lads_mobile_sdk/r8;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1472
    :cond_d4
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_103

    check-cast p0, Ljava/lang/Iterable;

    .line 1741
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1742
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1743
    invoke-static {v1}, Lads_mobile_sdk/v8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2014
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 2016
    :cond_f9
    new-instance p0, Lads_mobile_sdk/s8;

    invoke-direct {p0}, Lads_mobile_sdk/s8;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2017
    :cond_103
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_156

    .line 2018
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 2290
    new-instance v0, Lads_mobile_sdk/t8;

    invoke-direct {v0}, Lads_mobile_sdk/t8;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 2291
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 2292
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2293
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_155

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2294
    check-cast v0, Ljava/util/Map$Entry;

    .line 2295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/v8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 2571
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12d

    :cond_155
    return-object v1

    .line 2572
    :cond_156
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_160

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :cond_160
    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 6

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    .line 3
    const-string v1, "adSize"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;->getAdSizes()Ljava/util/List;

    move-result-object v0

    .line 6
    const-string v1, "adSizes"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 7
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v0

    .line 9
    const-string v1, "videoOptions"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 10
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;->getManualImpressionRequested()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 12
    const-string v0, "manualImpressionRequested"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    invoke-static {p0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_58

    .line 13
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    return-void
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 8

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "adUnitId"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 17
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCategoryExclusions()Ljava/util/Set;

    move-result-object v0

    .line 19
    const-string v1, "categoryExclusions"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 20
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "contentUrl"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 23
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getCustomTargeting()Ljava/util/Map;

    move-result-object v0

    .line 25
    const-string v1, "customTargeting"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 26
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getGoogleExtrasBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "googleExtrasBundle"

    invoke-static {v1, v0, p1, p2}, Lads_mobile_sdk/v8;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 29
    const-string v1, "keywords"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 30
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getNeighboringContentUrls()Ljava/util/Set;

    move-result-object v0

    .line 32
    const-string v1, "neighboringContentUrls"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 33
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_87
    const-string v0, "adSourceExtrasBundles"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    .line 35
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdSourceExtrasBundles()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adSourceExtrasBundles."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p1, p2}, Lads_mobile_sdk/v8;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    goto :goto_9b

    .line 40
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "publisherProvidedId"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 42
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_dd
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "requestAgent"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    .line 45
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_f2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getPlacementId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 47
    const-string v1, "placementId"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    .line 48
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_10b
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 50
    const-string v0, "skipUninitializedAdapters"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_124

    invoke-static {p0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_124

    .line 51
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_124
    return-void
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 6

    .line 53
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    move-result-object v0

    .line 54
    const-string v1, "iconAdPlacement"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 55
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v0

    .line 57
    const-string v1, "adChoicesPlacement"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 58
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getCorrelator()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "correlator"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 61
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->isImageLoadingDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 63
    const-string v1, "isImageLoadingDisabled"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 64
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdPersistenceEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    const-string v1, "adPersistenceEnabled"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 67
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getExcludedAppIds()Ljava/util/Set;

    move-result-object p0

    .line 69
    const-string v0, "excludedAppIds"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_86

    invoke-static {p0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_86

    .line 70
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    return-void
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 6

    .line 72
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getNativeAdTypes()Ljava/util/List;

    move-result-object v0

    .line 73
    const-string v1, "nativeAdTypes"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 74
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomFormatIds()Ljava/util/List;

    move-result-object v0

    .line 76
    const-string v1, "customFormatIds"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 77
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->isImageLoadingDisabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    const-string v1, "isImageLoadingDisabled"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 80
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getMediaAspectRatio()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;

    move-result-object v0

    .line 82
    const-string v1, "mediaAspectRatio"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 83
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_58
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v0

    .line 85
    const-string v1, "adChoicesPlacement"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 86
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getVideoOptions()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;

    move-result-object v0

    .line 88
    const-string v1, "videoOptions"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 89
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomClickGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v0

    .line 91
    const-string v1, "customClickGestureDirection"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 92
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_97
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomClickGestureAllowTaps()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    const-string v1, "customClickGestureAllowTaps"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 95
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getCustomMuteThisAdRequested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    const-string v1, "customMuteThisAdRequested"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 98
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_c9
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    .line 100
    const-string v1, "adSize"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    .line 101
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_de
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdSizes()Ljava/util/List;

    move-result-object v0

    .line 103
    const-string v1, "adSizes"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 104
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_f3
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getManualImpressionRequested()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    const-string v1, "manualImpressionRequested"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10c

    .line 107
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;->getAdPersistenceEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 109
    const-string v0, "adPersistenceEnabled"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_125

    invoke-static {p0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_125

    .line 110
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_125
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 9

    .line 3656
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3657
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3658
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3659
    instance-of v3, v2, Landroid/os/Bundle;

    const-string v4, "."

    if-eqz v3, :cond_3c

    .line 3660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v1, v2, p2, p3}, Lads_mobile_sdk/v8;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    goto :goto_8

    .line 3661
    :cond_3c
    invoke-static {v2}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_58
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 4

    .line 3664
    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    invoke-static {p1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    .line 3665
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    goto/16 :goto_8c

    .line 383
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_8c

    .line 384
    :cond_12
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1d

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    .line 385
    :cond_1d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_28

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    .line 386
    :cond_28
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_33

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    return p0

    .line 387
    :cond_33
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3d

    check-cast p0, [Ljava/lang/Object;

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 388
    :cond_3d
    instance-of v0, p0, [I

    if-eqz v0, :cond_47

    check-cast p0, [I

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 389
    :cond_47
    instance-of v0, p0, [J

    if-eqz v0, :cond_51

    check-cast p0, [J

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 390
    :cond_51
    instance-of v0, p0, [B

    if-eqz v0, :cond_5b

    check-cast p0, [B

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 391
    :cond_5b
    instance-of v0, p0, [S

    if-eqz v0, :cond_65

    check-cast p0, [S

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 392
    :cond_65
    instance-of v0, p0, [F

    if-eqz v0, :cond_6f

    check-cast p0, [F

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 393
    :cond_6f
    instance-of v0, p0, [D

    if-eqz v0, :cond_79

    check-cast p0, [D

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 394
    :cond_79
    instance-of v0, p0, [Z

    if-eqz v0, :cond_83

    check-cast p0, [Z

    array-length p0, p0

    if-nez p0, :cond_8e

    goto :goto_8c

    .line 395
    :cond_83
    instance-of v0, p0, [C

    if-eqz v0, :cond_8e

    check-cast p0, [C

    array-length p0, p0

    if-nez p0, :cond_8e

    :goto_8c
    const/4 p0, 0x1

    return p0

    :cond_8e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/String;
    .registers 8

    .line 2573
    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2605
    sget-object v0, Lads_mobile_sdk/s11;->P1:Lads_mobile_sdk/s11;

    .line 2852
    sget-object v1, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 2853
    :try_start_12
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2854
    invoke-virtual {p0, p1}, Lads_mobile_sdk/v8;->b(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/util/Set;

    move-result-object v2

    .line 2856
    invoke-virtual {p0, v1, v2}, Lads_mobile_sdk/v8;->a(Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    .line 2857
    invoke-static {p1, v1, v2}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    .line 2860
    instance-of v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    if-eqz v3, :cond_2f

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    invoke-static {p1, v1, v2}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    goto/16 :goto_b1

    :catchall_2c
    move-exception p1

    goto/16 :goto_104

    .line 2861
    :cond_2f
    instance-of v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    if-eqz v3, :cond_3a

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    invoke-static {p1, v1, v2}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    goto/16 :goto_b1

    .line 2862
    :cond_3a
    instance-of v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    if-eqz v3, :cond_44

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    invoke-static {p1, v1, v2}, Lads_mobile_sdk/v8;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    goto :goto_b1

    .line 2863
    :cond_44
    instance-of v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    if-eqz v3, :cond_79

    .line 2864
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    .line 2865
    const-string v3, "adSize"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v4

    .line 2866
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    invoke-static {v4}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 2867
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    :cond_5f
    const-string v3, "maxScreenHoldDurationSeconds"

    .line 2869
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;->getMaxScreenHoldDurationSeconds()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2870
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    invoke-static {p1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 2871
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 2872
    :cond_79
    instance-of v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz v3, :cond_b1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    .line 2873
    const-string v3, "crossProcessRequested"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2874
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    invoke-static {v4}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 2875
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    :cond_98
    const-string v3, "adPersistenceEnabled"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;->getAdPersistenceEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 2877
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    invoke-static {p1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 2878
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2879
    :cond_b1
    :goto_b1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3116
    new-instance v1, Lads_mobile_sdk/u8;

    invoke-direct {v1}, Lads_mobile_sdk/u8;-><init>()V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 3117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3119
    check-cast v2, Ljava/util/Map$Entry;

    .line 3120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lads_mobile_sdk/v8;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3360
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_c7

    :cond_eb
    const/4 p1, 0x0

    .line 3364
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 3365
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    .line 3366
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_ff
    .catchall {:try_start_12 .. :try_end_ff} :catchall_2c

    const/4 v1, 0x0

    .line 3612
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 3629
    :goto_104
    :try_start_104
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3633
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_13c

    .line 3635
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_119

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_119

    .line 3641
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    goto :goto_119

    :catchall_117
    move-exception p1

    goto :goto_13d

    .line 3647
    :cond_119
    :goto_119
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_134

    .line 3648
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12c

    .line 3649
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_126

    throw p1

    .line 3650
    :cond_126
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3651
    :cond_12c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 3652
    :cond_134
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 3653
    :cond_13c
    throw p1
    :try_end_13d
    .catchall {:try_start_104 .. :try_end_13d} :catchall_117

    .line 3654
    :goto_13d
    :try_start_13d
    throw p1
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_13e

    :catchall_13e
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/util/LinkedHashMap;Ljava/util/Set;)V
    .registers 7

    .line 112
    iget-object v0, p0, Lads_mobile_sdk/v8;->b:Lads_mobile_sdk/l43;

    invoke-virtual {v0}, Lads_mobile_sdk/l43;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForChildDirectedTreatment()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object v1

    const-string v2, "tagForChildDirectedTreatment"

    invoke-static {v2, v1, p1, p2}, Lads_mobile_sdk/v8;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/LinkedHashMap;Ljava/util/Set;)V

    .line 114
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTagForUnderAgeOfConsent()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object v1

    .line 115
    const-string v2, "tagForUnderAgeOfConsent"

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {v1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 116
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_24
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getMaxAdContentRating()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object v1

    .line 118
    const-string v2, "maxAdContentRating"

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {v1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    .line 119
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_39
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v1

    .line 121
    const-string v2, "testDeviceIds"

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    invoke-static {v1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 122
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_4e
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getPublisherPrivacyPersonalizationState()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;

    move-result-object v1

    .line 125
    const-string v2, "publisherPrivacyPersonalizationState"

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-static {v1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 126
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_63
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->getAgeRestrictedTreatmentInternal()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;

    move-result-object v1

    .line 129
    const-string v2, "ageRestrictedTreatmentInternal"

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    invoke-static {v1}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 130
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_78
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 133
    const-string v1, "isCoarseLocationCollectionEnabled"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_91

    invoke-static {v0}, Lads_mobile_sdk/v8;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_91

    .line 134
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    return-void
.end method

.method public final b(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/util/Set;
    .registers 9

    .line 74
    invoke-static {}, Lkotlin/collections/SetsKt__SetsJVMKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    const-string v2, "googleExtrasBundle"

    const-string v3, "adSourceExtrasBundles"

    const-string v4, "categoryExclusions"

    const-string v5, "contentUrl"

    const-string v6, "customTargeting"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 85
    const-string v3, "gads:pc:ad_request:cache_key_param_denylist"

    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "defaultValue"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v6, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v1, v3, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 133
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    if-eqz v1, :cond_52

    iget-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 135
    const-string v2, "gads:pc:native_ad_request:cache_key_param_denylist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1, v2, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 181
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_cf

    .line 182
    :cond_52
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    if-eqz v1, :cond_73

    iget-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    const-string v1, "correlator"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 185
    const-string v2, "gads:pc:icon_ad_request:cache_key_param_denylist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1, v2, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 231
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_cf

    .line 232
    :cond_73
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    if-eqz v1, :cond_92

    iget-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 234
    const-string v2, "gads:pc:banner_ad_request:cache_key_param_denylist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v2, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 280
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_cf

    .line 281
    :cond_92
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    if-eqz v1, :cond_b1

    .line 282
    iget-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 285
    const-string v2, "gads:pc:swipeable_interstitial_ad_request:cache_key_param_denylist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1, v2, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 331
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_cf

    .line 332
    :cond_b1
    instance-of p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lads_mobile_sdk/v8;->a:Lads_mobile_sdk/cl2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 334
    const-string v2, "gads:pc:app_open_ad_request:cache_key_param_denylist"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1, v2, v1, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 380
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 381
    :cond_cf
    :goto_cf
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsJVMKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
