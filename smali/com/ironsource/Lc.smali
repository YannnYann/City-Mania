###### Class com.ironsource.Lc (com.ironsource.Lc)
.class public final Lcom/ironsource/Lc;
.super Lcom/ironsource/Kg;
.source "SourceFile"


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoAuctionWaterfallFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoAuctionWaterfallFetcher.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/fetch/NoAuctionWaterfallFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n774#2:79\n865#2,2:80\n1563#2:82\n1634#2,3:83\n774#2:86\n865#2,2:87\n1193#2,2:89\n1267#2,4:91\n*S KotlinDebug\n*F\n+ 1 NoAuctionWaterfallFetcher.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/fetch/NoAuctionWaterfallFetcher\n*L\n57#1:79\n57#1:80,2\n62#1:82\n62#1:83,3\n68#1:86\n68#1:87,2\n73#1:89,2\n73#1:91,4\n*E\n"
.end annotation


# instance fields
.field private final e:Lcom/ironsource/T0;

.field private final f:Lcom/ironsource/x0;


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V
    .registers 4

    const-string v0, "tools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Kg;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Lc;->e:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    return-void
.end method

.method private final a(Lcom/ironsource/Lg;Lcom/ironsource/v2;Lcom/ironsource/D;)V
    .registers 14

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Lc;->e:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/ironsource/Lc;->f()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-direct {p0}, Lcom/ironsource/Lc;->e()Ljava/util/Map;

    move-result-object v4

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    .line 10
    invoke-static/range {v2 .. v9}, Lcom/ironsource/Kg;->a(Lcom/ironsource/Kg;Ljava/util/List;Ljava/util/Map;Lcom/ironsource/v2;Lcom/ironsource/D;Lcom/ironsource/A;ILjava/lang/Object;)Lcom/ironsource/Mg;

    move-result-object p2

    .line 12
    invoke-interface {p1, p2}, Lcom/ironsource/Lg;->a(Lcom/ironsource/Mg;)V

    return-void
.end method

.method private final d()Lcom/ironsource/v2;
    .registers 7

    .line 1
    new-instance v0, Lcom/ironsource/v2;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    const-string v5, ""

    const-string v1, ""

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/v2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/y2;ILjava/lang/String;)V

    return-object v0
.end method

.method private final e()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->g()Lcom/ironsource/Tf;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    if-eqz v0, :cond_38

    .line 23
    iget-object v5, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v5}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ironsource/Tf;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 24
    :cond_38
    iget-object v5, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v5}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 40
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_4c
    const/16 v0, 0xa

    .line 42
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 43
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 44
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 46
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/H;

    iget-object v5, p0, Lcom/ironsource/Lc;->e:Lcom/ironsource/T0;

    iget-object v6, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-direct {v4, v5, v6, v2}, Lcom/ironsource/H;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_8e
    return-object v1
.end method

.method private final f()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/y2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->g()Lcom/ironsource/Tf;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    if-eqz v0, :cond_38

    .line 27
    iget-object v5, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v5}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/ironsource/Tf;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 28
    :cond_38
    iget-object v5, p0, Lcom/ironsource/Lc;->f:Lcom/ironsource/x0;

    invoke-virtual {v5}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 48
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 50
    :cond_4c
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 52
    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 53
    new-instance v3, Lcom/ironsource/y2;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/ironsource/y2;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_74
    return-object v0
.end method


# virtual methods
.method public a(Lcom/ironsource/D;Lcom/ironsource/Lg;)V
    .registers 8

    const-string v0, "adInstanceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterfallFetcherListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Lc;->e:Lcom/ironsource/T0;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "auction disabled"

    invoke-static {v1, v4, v2, v3, v2}, Lcom/ironsource/p0;->a(Lcom/ironsource/p0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/ironsource/Lc;->d()Lcom/ironsource/v2;

    move-result-object v0

    invoke-direct {p0, p2, v0, p1}, Lcom/ironsource/Lc;->a(Lcom/ironsource/Lg;Lcom/ironsource/v2;Lcom/ironsource/D;)V

    return-void
.end method

.method public final a(Lcom/ironsource/Lg;ILjava/lang/String;Ljava/lang/String;Lcom/ironsource/D;)V
    .registers 13

    const-string v0, "waterfallFetcherListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionFallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auctionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstanceFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/ironsource/v2;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    move v5, p2

    move-object v6, p3

    move-object v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/v2;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/y2;ILjava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, v1, p5}, Lcom/ironsource/Lc;->a(Lcom/ironsource/Lg;Lcom/ironsource/v2;Lcom/ironsource/D;)V

    return-void
.end method
