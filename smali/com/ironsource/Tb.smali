###### Class com.ironsource.Tb (com.ironsource.Tb)
.class public final Lcom/ironsource/Tb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetaDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetaDataManager.kt\ncom/unity3d/mediation/internal/MetaDataManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1869#2,2:65\n*S KotlinDebug\n*F\n+ 1 MetaDataManager.kt\ncom/unity3d/mediation/internal/MetaDataManager\n*L\n35#1:65,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/c;

.field private final b:Lcom/ironsource/ta;

.field private final c:Lcom/ironsource/ba;

.field private final d:Lcom/ironsource/W6;

.field private final e:Lcom/ironsource/r4;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/ironsource/Tb;-><init>(Lcom/ironsource/mediationsdk/c;Lcom/ironsource/ta;Lcom/ironsource/ba;Lcom/ironsource/W6;Lcom/ironsource/r4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/c;Lcom/ironsource/ta;Lcom/ironsource/ba;Lcom/ironsource/W6;Lcom/ironsource/r4;)V
    .registers 7

    const-string v0, "adapterRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherDataHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalDataWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleWaterMarkDataWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashReporter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/Tb;->a:Lcom/ironsource/mediationsdk/c;

    .line 4
    iput-object p2, p0, Lcom/ironsource/Tb;->b:Lcom/ironsource/ta;

    .line 6
    iput-object p3, p0, Lcom/ironsource/Tb;->c:Lcom/ironsource/ba;

    .line 8
    iput-object p4, p0, Lcom/ironsource/Tb;->d:Lcom/ironsource/W6;

    .line 10
    iput-object p5, p0, Lcom/ironsource/Tb;->e:Lcom/ironsource/r4;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/c;Lcom/ironsource/ta;Lcom/ironsource/ba;Lcom/ironsource/W6;Lcom/ironsource/r4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_8

    .line 11
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object p1

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_10

    .line 13
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object p2

    :cond_10
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_19

    .line 15
    new-instance p3, Lcom/ironsource/ba;

    invoke-direct {p3}, Lcom/ironsource/ba;-><init>()V

    :cond_19
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_22

    .line 17
    new-instance p4, Lcom/ironsource/W6;

    invoke-direct {p4, p3}, Lcom/ironsource/W6;-><init>(Lcom/ironsource/ba;)V

    :cond_22
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2a

    .line 18
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p5

    :cond_2a
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 19
    invoke-direct/range {p2 .. p7}, Lcom/ironsource/Tb;-><init>(Lcom/ironsource/mediationsdk/c;Lcom/ironsource/ta;Lcom/ironsource/ba;Lcom/ironsource/W6;Lcom/ironsource/r4;)V

    return-void
.end method

.method private final a()V
    .registers 5

    .line 7
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ironsource/Tb;->a:Lcom/ironsource/mediationsdk/c;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/c;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    iget-object v1, p0, Lcom/ironsource/Tb;->b:Lcom/ironsource/ta;

    invoke-virtual {v1}, Lcom/ironsource/ta;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 11
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_21

    :catch_3d
    move-exception v0

    goto :goto_4a

    .line 13
    :cond_3f
    iget-object v0, p0, Lcom/ironsource/Tb;->d:Lcom/ironsource/W6;

    invoke-virtual {v0, v1}, Lcom/ironsource/W6;->a(Lorg/json/JSONObject;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/Tb;->c:Lcom/ironsource/ba;

    invoke-virtual {v0, v1}, Lcom/ironsource/ba;->a(Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_3d

    return-void

    .line 16
    :goto_4a
    iget-object v1, p0, Lcom/ironsource/Tb;->e:Lcom/ironsource/r4;

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 17
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got the following error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .registers 4

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isMediationOnlyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    iget-object v0, p0, Lcom/ironsource/Tb;->b:Lcom/ironsource/ta;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/ta;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 6
    :cond_14
    iget-object v0, p0, Lcom/ironsource/Tb;->a:Lcom/ironsource/mediationsdk/c;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/c;->c(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final a(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    invoke-direct {p0, v0, p2}, Lcom/ironsource/Tb;->a(Ljava/lang/String;Z)V

    goto :goto_4

    .line 20
    :cond_14
    invoke-direct {p0}, Lcom/ironsource/Tb;->a()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    .line 1
    const-string v0, "do_not_sell"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Tb;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final b(Z)V
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/metadata/a;->g:Ljava/util/List;

    const-string v1, "META_DATA_COPPA_FLAGS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/ironsource/Tb;->a(Ljava/util/List;Z)V

    return-void
.end method
