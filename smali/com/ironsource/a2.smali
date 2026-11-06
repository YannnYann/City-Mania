###### Class com.ironsource.C3459a2 (com.ironsource.a2)
.class public final Lcom/ironsource/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/a2$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Auction.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/auction/Auction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,235:1\n1193#2,2:236\n1267#2,4:238\n*S KotlinDebug\n*F\n+ 1 Auction.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/auction/Auction\n*L\n100#1:236,2\n100#1:238,4\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/q2;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;)V
    .registers 13

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    .line 13
    invoke-direct {p0}, Lcom/ironsource/a2;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    .line 14
    new-instance p1, Lcom/ironsource/q2;

    invoke-direct {p1, p2}, Lcom/ironsource/q2;-><init>(Lcom/ironsource/x0;)V

    iput-object p1, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    .line 16
    invoke-virtual {p2}, Lcom/ironsource/x0;->e()Lcom/ironsource/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/A2;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/a2;->f:Z

    .line 19
    invoke-direct {p0}, Lcom/ironsource/a2;->b()Lcom/ironsource/a2$b;

    move-result-object v5

    .line 21
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/g0;->g()Lcom/ironsource/Tf;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_58

    .line 24
    invoke-virtual {p2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne v0, v1, :cond_56

    goto :goto_58

    :cond_56
    move v0, v3

    goto :goto_59

    :cond_58
    :goto_58
    move v0, v2

    .line 25
    :goto_59
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/u5;->z()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz v0, :cond_6d

    move v7, v2

    goto :goto_6e

    :cond_6d
    move v7, v3

    .line 27
    :goto_6e
    invoke-virtual {p2}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_76
    :goto_76
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    if-eqz p1, :cond_95

    .line 30
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    .line 31
    invoke-virtual {p1, v6, v0}, Lcom/ironsource/Tf;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 33
    :cond_95
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0, v6}, Lcom/ironsource/x0;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v3

    .line 34
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isBidder(Lcom/ironsource/mediationsdk/IronSource$a;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 36
    iget-boolean v0, p0, Lcom/ironsource/a2;->f:Z

    if-eqz v0, :cond_b8

    .line 37
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    goto :goto_bc

    .line 39
    :cond_b8
    invoke-direct {p0, v6}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    .line 41
    :goto_bc
    instance-of v1, v0, Lcom/ironsource/y3;

    if-eqz v1, :cond_e2

    .line 42
    iget-object v8, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    move-object v1, v0

    .line 43
    new-instance v0, Lcom/ironsource/w3;

    .line 44
    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    move-object v4, v1

    move v1, v2

    .line 45
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    .line 47
    check-cast v4, Lcom/ironsource/y3;

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/w3;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/y3;Lcom/ironsource/x3;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 49
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_76

    :cond_e2
    move-object v4, v0

    if-nez v4, :cond_fb

    .line 61
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareAuctionCandidates - could not load network adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    .line 64
    :cond_fb
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implementing BiddingDataInterface"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_115
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    goto/16 :goto_76

    :cond_124
    if-nez v7, :cond_76

    .line 70
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v0, v6}, Lcom/ironsource/q2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    goto/16 :goto_76

    .line 75
    :cond_12d
    iget-object p1, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {p1, p3}, Lcom/ironsource/q2;->a(Lcom/ironsource/A;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 76
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/a2;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/m6;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/a2;)Lcom/ironsource/T0;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    return-object p0
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
    .registers 5

    .line 333
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v1}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v2

    .line 336
    invoke-virtual {v0, p1, v1, v2}, Lcom/ironsource/mediationsdk/c;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/IronSource$a;Ljava/util/UUID;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p0

    return-object p0
.end method

.method private final a()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/H;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 142
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 143
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 145
    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 146
    new-instance v3, Lcom/ironsource/H;

    iget-object v4, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    iget-object v5, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-direct {v3, v4, v5, v1}, Lcom/ironsource/H;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 147
    invoke-virtual {v3}, Lcom/ironsource/H;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_48
    return-object v2
.end method

.method public static final synthetic a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 319
    :try_start_6
    const-string v2, "provider"

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :catch_f
    move-exception p2

    goto :goto_62

    :cond_11
    move-object v3, v1

    :goto_12
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v2, "providerAdapterVersion"

    if-eqz p2, :cond_1e

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v1

    :goto_1f
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v2, "providerSDKVersion"

    if-eqz p2, :cond_2b

    invoke-interface {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_2c

    :cond_2b
    move-object p2, v1

    :goto_2c
    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string p2, "spId"

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :cond_38
    move-object v2, v1

    :goto_39
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string p2, "programmatic"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string p2, "instanceType"

    if-eqz p1, :cond_5d

    .line 325
    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInstanceType(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5e

    :cond_5d
    move-object v2, v1

    :goto_5e
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_61} :catch_f

    return-object v0

    .line 327
    :goto_62
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 328
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    .line 330
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    if-eqz p1, :cond_75

    .line 331
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderDefaultInstance()Ljava/lang/String;

    move-result-object v1

    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProviderEventData "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {v2, v3, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v0, p1}, Lcom/ironsource/x0;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    .line 311
    iget-boolean v1, p0, Lcom/ironsource/a2;->f:Z

    if-eqz v1, :cond_17

    .line 312
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    goto :goto_1b

    :cond_15
    const/4 p1, 0x0

    goto :goto_1b

    .line 314
    :cond_17
    invoke-direct {p0, v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    .line 316
    :goto_1b
    invoke-direct {p0, v0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final a(JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/A3;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/a2$d;",
            ")V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/lg;->b(J)V

    .line 292
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/A3;

    .line 293
    invoke-virtual {v0}, Lcom/ironsource/A3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstanceName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ironsource/a2;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Lcom/ironsource/A3;->a()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 295
    iget-object v2, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v2, v0}, Lcom/ironsource/q2;->a(Lcom/ironsource/A3;)V

    .line 296
    iget-object v2, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/ironsource/lg;->a(Ljava/util/Map;J)V

    goto :goto_11

    .line 298
    :cond_47
    iget-object v2, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v2}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v2

    .line 299
    invoke-virtual {v0}, Lcom/ironsource/A3;->e()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/ironsource/A3;->b()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/ironsource/lg;->a(Ljava/util/Map;JLjava/lang/String;)V

    goto :goto_11

    .line 304
    :cond_5d
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_61
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 305
    invoke-direct {p0, p4}, Lcom/ironsource/a2;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 306
    iget-object v0, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p4, p1, p2}, Lcom/ironsource/lg;->b(Ljava/util/Map;J)V

    goto :goto_61

    .line 308
    :cond_7f
    invoke-interface {p5, p0}, Lcom/ironsource/a2$d;->a(Lcom/ironsource/a2;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .registers 6

    .line 5
    invoke-direct/range {p0 .. p5}, Lcom/ironsource/a2;->a(JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method private final b()Lcom/ironsource/a2$b;
    .registers 2

    .line 2
    new-instance v0, Lcom/ironsource/a2$b;

    invoke-direct {v0, p0}, Lcom/ironsource/a2$b;-><init>(Lcom/ironsource/a2;)V

    return-object v0
.end method

.method private final b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/H;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/ironsource/H;->b()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final synthetic b(Lcom/ironsource/a2;)Lcom/ironsource/x0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    return-object p0
.end method

.method private final b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;
    .registers 3

    .line 3
    new-instance v0, Lcom/ironsource/a2$c;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/a2$c;-><init>(Lcom/ironsource/a2;Lcom/ironsource/a2$d;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ironsource/a2$d;)V
    .registers 6

    const-string v0, "biddingDataListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/ironsource/z3;

    invoke-direct {v0}, Lcom/ironsource/z3;-><init>()V

    .line 286
    invoke-direct {p0, p1}, Lcom/ironsource/a2;->b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;

    move-result-object p1

    .line 287
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/a2;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/lg;->a(J)V

    .line 288
    iget-object v1, p0, Lcom/ironsource/a2;->a:Lcom/ironsource/T0;

    .line 289
    new-instance v2, Lcom/ironsource/a2$a;

    invoke-direct {v2, v0, p0, p1}, Lcom/ironsource/a2$a;-><init>(Lcom/ironsource/z3;Lcom/ironsource/a2;Lcom/ironsource/z3$b;)V

    .line 290
    invoke-virtual {v1, v2}, Lcom/ironsource/T0;->a(Lcom/ironsource/environment/thread/a;)V

    return-void
.end method

.method public final c()Ljava/util/Map;
    .registers 2
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
    iget-object v0, p0, Lcom/ironsource/a2;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final d()Lcom/ironsource/q2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/w3;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    return-object v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2;->d:Lcom/ironsource/q2;

    invoke-virtual {v0}, Lcom/ironsource/q2;->e()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/a2;->f:Z

    return v0
.end method

###### Class com.ironsource.C3459a2.a (com.ironsource.a2$a)
.class public final Lcom/ironsource/a2$a;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->a(Lcom/ironsource/a2$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/z3;

.field final synthetic c:Lcom/ironsource/a2;

.field final synthetic d:Lcom/ironsource/z3$b;


# direct methods
.method public constructor <init>(Lcom/ironsource/z3;Lcom/ironsource/a2;Lcom/ironsource/z3$b;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/a2$a;->b:Lcom/ironsource/z3;

    iput-object p2, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    iput-object p3, p0, Lcom/ironsource/a2$a;->d:Lcom/ironsource/z3$b;

    .line 1
    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$a;->b:Lcom/ironsource/z3;

    .line 2
    iget-object v1, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    invoke-virtual {v1}, Lcom/ironsource/a2;->e()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/ironsource/a2$a;->d:Lcom/ironsource/z3$b;

    .line 4
    iget-object v3, p0, Lcom/ironsource/a2$a;->c:Lcom/ironsource/a2;

    invoke-static {v3}, Lcom/ironsource/a2;->b(Lcom/ironsource/a2;)Lcom/ironsource/x0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/x0;->f()J

    move-result-wide v3

    .line 5
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/z3;->a(Ljava/util/List;Lcom/ironsource/z3$b;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

###### Class com.ironsource.C3459a2.b (com.ironsource.a2$b)
.class public final Lcom/ironsource/a2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->b()Lcom/ironsource/a2$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a2;


# direct methods
.method public constructor <init>(Lcom/ironsource/a2;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-virtual {v0}, Lcom/ironsource/a2;->h()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderName()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    invoke-static {v0, v2}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    goto :goto_24

    .line 4
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0, p1}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    :cond_24
    :goto_24
    if-eqz v1, :cond_3d

    .line 7
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0, p1, v1}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;)Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->b(Ljava/util/Map;)V

    :cond_3d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/ironsource/a2$b;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->h()Lcom/ironsource/pg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3459a2.c (com.ironsource.a2$c)
.class public final Lcom/ironsource/a2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/a2;->b(Lcom/ironsource/a2$d;)Lcom/ironsource/z3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/a2;

.field final synthetic b:Lcom/ironsource/a2$d;


# direct methods
.method public static synthetic $r8$lambda$JpeMmajYuyO925El8WqnJyiCs4o(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/ironsource/a2$c;->a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NvMB_jvxW29NgYFpuB2JyKBcf9s(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/a2$c;->a(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/a2;Lcom/ironsource/a2$d;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iput-object p2, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .registers 6

    .line 2
    invoke-static/range {p0 .. p5}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V
    .registers 4

    .line 3
    invoke-static {p0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/p0;->f()Lcom/ironsource/E5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/E5;->g()Lcom/ironsource/lg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/lg;->a(Ljava/lang/String;)V

    .line 4
    invoke-interface {p2, p0, p1}, Lcom/ironsource/a2$d;->a(Lcom/ironsource/a2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JLjava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/A3;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "biddingDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachedTimeout"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iget-object v7, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    new-instance v1, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;

    move-object v5, p1

    move-wide v3, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 6

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    invoke-static {v0}, Lcom/ironsource/a2;->a(Lcom/ironsource/a2;)Lcom/ironsource/T0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/a2$c;->a:Lcom/ironsource/a2;

    iget-object v2, p0, Lcom/ironsource/a2$c;->b:Lcom/ironsource/a2$d;

    new-instance v3, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1, v2}, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V

    invoke-virtual {v0, v3}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.a2$c$$ExternalSyntheticLambda0 (com.ironsource.a2$c$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/a2;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lcom/ironsource/a2$d;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/a2;

    iput-wide p2, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p5, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput-object p6, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$4:Lcom/ironsource/a2$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/a2;

    iget-wide v1, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v4, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iget-object v5, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda0;->f$4:Lcom/ironsource/a2$d;

    invoke-static/range {v0 .. v5}, Lcom/ironsource/a2$c;->$r8$lambda$JpeMmajYuyO925El8WqnJyiCs4o(Lcom/ironsource/a2;JLjava/util/List;Ljava/util/List;Lcom/ironsource/a2$d;)V

    return-void
.end method

###### Class com.ironsource.a2$c$$ExternalSyntheticLambda1 (com.ironsource.a2$c$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/a2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/ironsource/a2$d;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/a2;

    iput-object p2, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$2:Lcom/ironsource/a2$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/a2;

    iget-object v1, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/a2$c$$ExternalSyntheticLambda1;->f$2:Lcom/ironsource/a2$d;

    invoke-static {v0, v1, v2}, Lcom/ironsource/a2$c;->$r8$lambda$NvMB_jvxW29NgYFpuB2JyKBcf9s(Lcom/ironsource/a2;Ljava/lang/String;Lcom/ironsource/a2$d;)V

    return-void
.end method

###### Class com.ironsource.C3459a2.d (com.ironsource.a2$d)
.class public interface abstract Lcom/ironsource/a2$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/a2;)V
.end method

.method public abstract a(Lcom/ironsource/a2;Ljava/lang/String;)V
.end method
