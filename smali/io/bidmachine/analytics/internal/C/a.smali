###### Class io.bidmachine.analytics.internal.C.a (io.bidmachine.analytics.internal.C.a)
.class public final Lio/bidmachine/analytics/internal/C/a;
.super Lio/bidmachine/analytics/internal/A/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/C/a$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/explorestack/protobuf/Struct;

.field private final h:Ljava/util/List;

.field private final i:Lio/bidmachine/analytics/internal/C/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/C/a$a;Lio/bidmachine/analytics/internal/I/f;)V
    .registers 14

    .line 3
    sget-object v1, Lio/bidmachine/analytics/internal/A/c;->c:Lio/bidmachine/analytics/internal/A/c;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p6

    .line 4
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/analytics/internal/A/a;-><init>(Lio/bidmachine/analytics/internal/A/c;Ljava/lang/String;Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/b/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p2, v0, Lio/bidmachine/analytics/internal/C/a;->f:Ljava/lang/String;

    .line 6
    iput-object p3, v0, Lio/bidmachine/analytics/internal/C/a;->g:Lcom/explorestack/protobuf/Struct;

    .line 7
    iput-object p4, v0, Lio/bidmachine/analytics/internal/C/a;->h:Ljava/util/List;

    .line 8
    iput-object p5, v0, Lio/bidmachine/analytics/internal/C/a;->i:Lio/bidmachine/analytics/internal/C/a$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/C/a$a;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_a

    .line 1
    sget-object p6, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {p6}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object p6

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/analytics/internal/C/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/C/a$a;Lio/bidmachine/analytics/internal/I/f;)V

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/g/e$a;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;
    .registers 5

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v0

    .line 4
    instance-of v1, p1, Lio/bidmachine/analytics/internal/g/e$a$a;

    if-eqz v1, :cond_2e

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v1

    .line 6
    check-cast p1, Lio/bidmachine/analytics/internal/g/e$a$a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/I/d;->c(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/d;->c(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->setPath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setGeneralRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    return-object v0

    .line 15
    :cond_2e
    instance-of v1, p1, Lio/bidmachine/analytics/internal/g/e$a$b;

    if-eqz v1, :cond_70

    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v1

    .line 17
    check-cast p1, Lio/bidmachine/analytics/internal/g/e$a$b;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/I/d;->c(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setTag(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/I/d;->c(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setPath(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$b;->c()Z

    move-result v2

    invoke-static {v2}, Lio/bidmachine/analytics/internal/I/d;->a(Z)Lcom/explorestack/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setShouldReport(Lcom/explorestack/protobuf/BoolValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e$a$b;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_69

    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/d;->c(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->setQuery(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;

    .line 22
    :cond_69
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;

    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;->setPurRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$PurRule;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    :cond_70
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lio/bidmachine/analytics/internal/A/a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/C/a;->c()Lio/bidmachine/analytics/internal/C/a;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .registers 11

    const/4 v0, 0x0

    .line 1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/analytics/internal/C/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/bidmachine/analytics/internal/C/a;->h:Ljava/util/List;

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 84
    check-cast v4, Lio/bidmachine/analytics/internal/g/e;

    .line 85
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Reader$Record;->newBuilder()Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/g/e;->e()Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v6

    invoke-direct {p0, v6}, Lio/bidmachine/analytics/internal/C/a;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setRule(Lio/bidmachine/protobuf/sdk/Reader$Rule$Builder;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v6
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_73

    if-nez v6, :cond_8b

    .line 89
    :try_start_40
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 90
    iget-object v7, p0, Lio/bidmachine/analytics/internal/C/a;->i:Lio/bidmachine/analytics/internal/C/a$a;

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/g/e;->e()Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v4

    invoke-interface {v7, v4}, Lio/bidmachine/analytics/internal/C/a$a;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lcom/explorestack/protobuf/BytesValue;

    move-result-object v4

    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setRawData(Lcom/explorestack/protobuf/BytesValue;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    move-result-object v4

    .line 91
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_55

    goto :goto_60

    :catchall_55
    move-exception v4

    :try_start_56
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 93
    :goto_60
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_8b

    .line 95
    instance-of v6, v4, Lio/bidmachine/analytics/internal/g/b;

    if-eqz v6, :cond_6c

    const/4 v6, 0x1

    goto :goto_6e

    .line 96
    :cond_6c
    instance-of v6, v4, Ljava/io/FileNotFoundException;

    :goto_6e
    if-eqz v6, :cond_76

    sget-object v6, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    goto :goto_7f

    :catchall_73
    move-exception v1

    goto/16 :goto_144

    .line 98
    :cond_76
    instance-of v6, v4, Ljava/lang/SecurityException;

    if-eqz v6, :cond_7d

    sget-object v6, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    goto :goto_7f

    .line 99
    :cond_7d
    sget-object v6, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    .line 101
    :goto_7f
    new-instance v7, Lio/bidmachine/analytics/internal/g/h;

    .line 102
    iget-object v8, p0, Lio/bidmachine/analytics/internal/C/a;->f:Ljava/lang/String;

    .line 104
    invoke-static {v4}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-direct {v7, v8, v6, v4}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    move-object v6, v7

    :cond_8b
    if-eqz v6, :cond_c4

    .line 114
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v4

    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/g/h;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v4

    .line 116
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Error$Data;->newBuilder()Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v7

    .line 117
    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/g/h;->c()Lio/bidmachine/analytics/internal/g/h$a;

    move-result-object v8

    invoke-static {v8}, Lio/bidmachine/analytics/internal/A/b;->a(Lio/bidmachine/analytics/internal/g/h$a;)Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;

    move-result-object v8

    invoke-virtual {v8}, Lio/bidmachine/protobuf/sdk/ErrorReasonAnalytics;->getNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setCode(I)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v7

    .line 118
    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/g/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->setDescription(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Error$Data$Builder;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Lio/bidmachine/protobuf/sdk/Error$Data$Builder;->build()Lio/bidmachine/protobuf/sdk/Error$Data;

    move-result-object v6

    .line 120
    invoke-virtual {v4, v6}, Lio/bidmachine/protobuf/sdk/Error$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error$Data;)Lio/bidmachine/protobuf/sdk/Error$Builder;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lio/bidmachine/protobuf/sdk/Error$Builder;->build()Lio/bidmachine/protobuf/sdk/Error;

    move-result-object v4

    .line 126
    invoke-virtual {v5, v4}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->setError(Lio/bidmachine/protobuf/sdk/Error;)Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;

    .line 136
    :cond_c4
    invoke-virtual {v5}, Lio/bidmachine/protobuf/sdk/Reader$Record$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader$Record;

    move-result-object v4

    .line 184
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 186
    :cond_cd
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/protobuf/sdk/Reader$Record;

    .line 187
    invoke-virtual {v1, v3}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->addRecords(Lio/bidmachine/protobuf/sdk/Reader$Record;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    goto :goto_d1

    .line 189
    :cond_e1
    iget-object v2, p0, Lio/bidmachine/analytics/internal/C/a;->h:Ljava/util/List;

    .line 237
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_ef

    move-object v3, v0

    goto :goto_118

    .line 239
    :cond_ef
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_fa

    goto :goto_118

    .line 241
    :cond_fa
    move-object v4, v3

    check-cast v4, Lio/bidmachine/analytics/internal/g/e;

    .line 242
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/g/e;->f()J

    move-result-wide v4

    .line 296
    :cond_101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 297
    move-object v7, v6

    check-cast v7, Lio/bidmachine/analytics/internal/g/e;

    .line 298
    invoke-virtual {v7}, Lio/bidmachine/analytics/internal/g/e;->f()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-gez v9, :cond_112

    move-object v3, v6

    move-wide v4, v7

    .line 358
    :cond_112
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_101

    .line 359
    :goto_118
    check-cast v3, Lio/bidmachine/analytics/internal/g/e;

    if-eqz v3, :cond_129

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/g/e;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/bidmachine/analytics/internal/I/d;->a(J)Lcom/explorestack/protobuf/Timestamp;

    move-result-object v2

    if-eqz v2, :cond_129

    .line 360
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->setTimestamp(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/Reader$Builder;

    .line 362
    :cond_129
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Event;->newBuilder()Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Builder;->build()Lio/bidmachine/protobuf/sdk/Reader;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setReader(Lio/bidmachine/protobuf/sdk/Reader;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lio/bidmachine/analytics/internal/C/a;->g:Lcom/explorestack/protobuf/Struct;

    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/Event$Builder;->setExtrasPrivate(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/sdk/Event$Builder;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Event$Builder;->build()Lio/bidmachine/protobuf/sdk/Event;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/explorestack/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0
    :try_end_143
    .catchall {:try_start_56 .. :try_end_143} :catchall_73

    return-object v0

    .line 367
    :goto_144
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lio/bidmachine/analytics/internal/C/a;
    .registers 1

    .line 0
    return-object p0
.end method

###### Class io.bidmachine.analytics.internal.C.a.InterfaceC1110a (io.bidmachine.analytics.internal.C.a$a)
.class public interface abstract Lio/bidmachine/analytics/internal/C/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/C/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/analytics/internal/g/e$a;)Lcom/explorestack/protobuf/BytesValue;
.end method
