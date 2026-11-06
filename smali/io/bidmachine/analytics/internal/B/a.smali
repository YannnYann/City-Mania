###### Class io.bidmachine.analytics.internal.B.a (io.bidmachine.analytics.internal.B.a)
.class public final Lio/bidmachine/analytics/internal/B/a;
.super Lio/bidmachine/analytics/internal/A/a;
.source "SourceFile"


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/explorestack/protobuf/Struct;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/I/f;)V
    .registers 13

    .line 3
    sget-object v1, Lio/bidmachine/analytics/internal/A/c;->c:Lio/bidmachine/analytics/internal/A/c;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/analytics/internal/A/a;-><init>(Lio/bidmachine/analytics/internal/A/c;Ljava/lang/String;Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/b/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p2, v0, Lio/bidmachine/analytics/internal/B/a;->f:Ljava/lang/String;

    .line 6
    iput-object p3, v0, Lio/bidmachine/analytics/internal/B/a;->g:Lcom/explorestack/protobuf/Struct;

    .line 7
    iput-object p4, v0, Lio/bidmachine/analytics/internal/B/a;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_a

    .line 1
    sget-object p5, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {p5}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object p5

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/internal/B/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/I/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lio/bidmachine/analytics/internal/A/a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/B/a;->c()Lio/bidmachine/analytics/internal/B/a;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .registers 9

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor;->newBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/analytics/internal/B/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/B/a;->h:Ljava/util/List;

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Lio/bidmachine/analytics/internal/g/d;

    .line 35
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Monitor$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    move-result-object v4

    .line 36
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/d;->a()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lio/bidmachine/analytics/internal/I/d;->a(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setFields(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    move-result-object v4

    .line 37
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/d;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/bidmachine/analytics/internal/I/d;->a(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    move-result-object v4

    .line 38
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/d;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 40
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v5

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v5

    .line 42
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error$Data;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v6

    .line 43
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/h;->c()Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v7

    invoke-static {v7}, Lio/bidmachine/analytics/internal/A/b;->a(Lio/bidmachine/analytics/internal/g/h$a;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setCode(I)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v6

    .line 44
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->build()Lio/bidmachine/protobuf/sdk/Error$Data;

    move-result-object v3

    .line 46
    invoke-virtual {v5, v3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v3

    .line 52
    invoke-virtual {v4, v3}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;

    goto :goto_85

    :catchall_83
    move-exception v0

    goto :goto_bc

    .line 62
    :cond_85
    :goto_85
    invoke-virtual {v4}, Lio/bidmachine/protobuf/sdk/Monitor$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor$Record;

    move-result-object v3

    .line 78
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 80
    :cond_8d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_91
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/protobuf/sdk/Monitor$Record;

    .line 81
    invoke-virtual {v0, v2}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->addRecords(Lio/bidmachine/protobuf/sdk/Monitor$Record;)Lio/bidmachine/protobuf/sdk/Monitor$Builder;

    goto :goto_91

    .line 83
    :cond_a1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->newBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Monitor$Builder;->build()Lio/bidmachine/protobuf/sdk/Monitor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setMonitor(Lio/bidmachine/protobuf/sdk/Monitor;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lio/bidmachine/analytics/internal/B/a;->g:Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Event$Builder;->build()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0
    :try_end_bb
    .catchall {:try_start_0 .. :try_end_bb} :catchall_83

    return-object v0

    .line 88
    :goto_bc
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lio/bidmachine/analytics/internal/B/a;
    .registers 1

    .line 0
    return-object p0
.end method
