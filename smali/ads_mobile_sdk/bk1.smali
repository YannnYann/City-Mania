###### Class ads_mobile_sdk.bk1 (ads_mobile_sdk.bk1)
.class public abstract Lads_mobile_sdk/bk1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lads_mobile_sdk/ak1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;
    .registers 4

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    iget-object p0, p0, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Lads_mobile_sdk/km1;

    .line 25
    invoke-virtual {v2}, Lads_mobile_sdk/km1;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 30
    :cond_2c
    new-instance p0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method
