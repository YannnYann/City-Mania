###### Class com.ironsource.Ed (com.ironsource.Ed)
.class public final Lcom/ironsource/Ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Fd;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreloadWaterfallFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreloadWaterfallFetcher.kt\ncom/ironsource/services/preload/PreloadWaterfallFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1563#2:80\n1634#2,3:81\n1617#2,9:84\n1869#2:93\n1870#2:95\n1626#2:96\n1#3:94\n*S KotlinDebug\n*F\n+ 1 PreloadWaterfallFetcher.kt\ncom/ironsource/services/preload/PreloadWaterfallFetcher\n*L\n31#1:80\n31#1:81,3\n70#1:84,9\n70#1:93\n70#1:95\n70#1:96\n70#1:94\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/T0;

.field private final b:Lcom/ironsource/x0;

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/ironsource/T0;",
            "Lcom/ironsource/T0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$cBs_gmD1sOCDSW5L7q-D7zL7OqY(Lcom/ironsource/T0;)Lcom/ironsource/T0;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Ed;->a(Lcom/ironsource/T0;)Lcom/ironsource/T0;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/T0;",
            "Lcom/ironsource/x0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ironsource/T0;",
            "+",
            "Lcom/ironsource/T0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adUnitTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createProviderTools"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ed;->a:Lcom/ironsource/T0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Ed;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_9

    .line 5
    new-instance p3, Lcom/ironsource/Ed$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/ironsource/Ed$$ExternalSyntheticLambda0;-><init>()V

    .line 6
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Ed;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/T0;)Lcom/ironsource/T0;
    .registers 3

    const-string v0, "tools"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/T0;

    sget-object v1, Lcom/ironsource/E0$b;->b:Lcom/ironsource/E0$b;

    invoke-direct {v0, p0, v1}, Lcom/ironsource/T0;-><init>(Lcom/ironsource/T0;Lcom/ironsource/E0$b;)V

    return-object v0
.end method

.method private final a(Lcom/ironsource/v2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/m6;
    .registers 14

    .line 113
    new-instance v0, Lcom/ironsource/H;

    iget-object v1, p0, Lcom/ironsource/Ed;->a:Lcom/ironsource/T0;

    iget-object v2, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    invoke-direct {v0, v1, v2, p2}, Lcom/ironsource/H;-><init>(Lcom/ironsource/T0;Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 116
    new-instance v7, Lcom/ironsource/c1;

    .line 118
    iget-object v1, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    invoke-virtual {v1, p2}, Lcom/ironsource/x0;->b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->b()Lcom/ironsource/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    .line 120
    invoke-direct {v7, p2, v1, v2}, Lcom/ironsource/c1;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 127
    new-instance v3, Lcom/ironsource/B;

    .line 128
    iget-object v4, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    .line 132
    new-instance v8, Lcom/ironsource/y2;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/ironsource/y2;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/ironsource/Ed;->a:Lcom/ironsource/T0;

    invoke-virtual {v1}, Lcom/ironsource/p0;->g()I

    move-result v9

    const/4 v10, 0x1

    move-object v6, p1

    move-object v5, p2

    .line 134
    invoke-direct/range {v3 .. v10}, Lcom/ironsource/B;-><init>(Lcom/ironsource/x0;Lcom/ironsource/mediationsdk/model/NetworkSettings;Lcom/ironsource/v2;Lcom/ironsource/c1;Lcom/ironsource/y2;IZ)V

    .line 144
    iget-object p1, p0, Lcom/ironsource/Ed;->c:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Lcom/ironsource/Ed;->a:Lcom/ironsource/T0;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/T0;

    .line 145
    new-instance p2, Lcom/ironsource/m6;

    invoke-direct {p2, p1, v3, v0}, Lcom/ironsource/m6;-><init>(Lcom/ironsource/T0;Lcom/ironsource/B;Lcom/ironsource/H;)V

    return-object p2
.end method

.method private final a()Lcom/ironsource/v2;
    .registers 7

    .line 146
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

.method private final b(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v2, p0, Lcom/ironsource/Ed;->b:Lcom/ironsource/x0;

    invoke-virtual {v2}, Lcom/ironsource/x0;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 4
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 22
    :cond_35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    if-eqz v2, :cond_3e

    .line 55
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_56
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ironsource/m6;",
            ">;"
        }
    .end annotation

    const-string v0, "instances"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_10
    invoke-direct {p0, p1}, Lcom/ironsource/Ed;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/ironsource/Ed;->a()Lcom/ironsource/v2;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 61
    invoke-direct {p0, v0, v2}, Lcom/ironsource/Ed;->a(Lcom/ironsource/v2;Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/m6;

    move-result-object v2

    .line 112
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3b
    return-object v1
.end method

###### Class com.ironsource.Ed$$ExternalSyntheticLambda0 (com.ironsource.Ed$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Ed$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/ironsource/T0;

    invoke-static {p1}, Lcom/ironsource/Ed;->$r8$lambda$cBs_gmD1sOCDSW5L7q-D7zL7OqY(Lcom/ironsource/T0;)Lcom/ironsource/T0;

    move-result-object p1

    return-object p1
.end method
