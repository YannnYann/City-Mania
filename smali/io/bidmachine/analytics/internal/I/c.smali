###### Class io.bidmachine.analytics.internal.I.c (io.bidmachine.analytics.internal.I.c)
.class public final Lio/bidmachine/analytics/internal/I/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/I/c$a;
    }
.end annotation


# static fields
.field public static final e:Lio/bidmachine/analytics/internal/I/c$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/I/e;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/I/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/I/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/I/c;->e:Lio/bidmachine/analytics/internal/I/c$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/I/e;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/I/c;->a:Lio/bidmachine/analytics/internal/I/e;

    .line 3
    iput p2, p0, Lio/bidmachine/analytics/internal/I/c;->b:I

    .line 4
    iput p3, p0, Lio/bidmachine/analytics/internal/I/c;->c:I

    .line 5
    iput p4, p0, Lio/bidmachine/analytics/internal/I/c;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/I/e;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_9

    .line 6
    new-instance p1, Lio/bidmachine/analytics/internal/I/e;

    invoke-direct {p1}, Lio/bidmachine/analytics/internal/I/e;-><init>()V

    :cond_9
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_f

    const/16 p2, 0xa

    :cond_f
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_15

    const/16 p3, 0x3e8

    :cond_15
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1b

    const/16 p4, 0x20

    .line 7
    :cond_1b
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/analytics/internal/I/c;-><init>(Lio/bidmachine/analytics/internal/I/e;III)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/I/c;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/analytics/internal/I/c;->d:I

    return p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/I/c;Ljava/lang/Object;)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/I/c;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/Object;)Z
    .registers 6

    .line 701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 702
    const-string v0, "java.lang."

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "kotlin."

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return v1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/I/c;)Lio/bidmachine/analytics/internal/I/e;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/I/c;->a:Lio/bidmachine/analytics/internal/I/e;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_b

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_b
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v4, Lkotlin/collections/ArrayDeque;

    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 10
    new-instance v5, Lkotlin/Triple;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v5, v0, v7, v8}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_2e
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ce

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v5, v1, Lio/bidmachine/analytics/internal/I/c;->c:I

    if-ge v0, v5, :cond_1ce

    .line 14
    :try_start_3c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Triple;

    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_1b9

    move-object/from16 v9, p3

    .line 17
    :try_start_5a
    invoke-interface {v9, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_73

    .line 18
    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :catchall_6e
    move-exception v0

    move-object/from16 v11, p2

    goto/16 :goto_1be

    .line 21
    :cond_73
    :goto_73
    iget v10, v1, Lio/bidmachine/analytics/internal/I/c;->b:I

    if-lt v7, v10, :cond_7b

    :cond_77
    move-object/from16 v11, p2

    goto/16 :goto_1b2

    .line 26
    :cond_7b
    instance-of v10, v5, Ljava/util/Map;

    const/4 v11, 0x0

    if-eqz v10, :cond_c3

    .line 27
    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 28
    iget v5, v1, Lio/bidmachine/analytics/internal/I/c;->d:I

    invoke-static {v0, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 185
    invoke-direct {v1, v5}, Lio/bidmachine/analytics/internal/I/c;->a(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9c

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_9c

    .line 186
    new-instance v10, Lkotlin/Triple;

    add-int/lit8 v12, v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v5, v12, v11}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 191
    :cond_c3
    instance-of v10, v5, Ljava/lang/Iterable;

    if-eqz v10, :cond_106

    .line 192
    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 193
    iget v5, v1, Lio/bidmachine/analytics/internal/I/c;->d:I

    invoke-static {v0, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 195
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_df
    :goto_df
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 340
    invoke-direct {v1, v5}, Lio/bidmachine/analytics/internal/I/c;->a(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_df

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_df

    .line 341
    new-instance v10, Lkotlin/Triple;

    add-int/lit8 v12, v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v5, v12, v11}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 346
    :cond_106
    instance-of v10, v5, [Ljava/lang/Object;

    if-eqz v10, :cond_145

    .line 347
    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 348
    iget v5, v1, Lio/bidmachine/analytics/internal/I/c;->d:I

    invoke-static {v0, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 349
    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11e
    :goto_11e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 485
    invoke-direct {v1, v5}, Lio/bidmachine/analytics/internal/I/c;->a(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11e

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_11e

    .line 486
    new-instance v10, Lkotlin/Triple;

    add-int/lit8 v12, v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v5, v12, v11}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    .line 492
    :cond_145
    iget-object v10, v1, Lio/bidmachine/analytics/internal/I/c;->a:Lio/bidmachine/analytics/internal/I/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v12}, Lio/bidmachine/analytics/internal/I/e;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 620
    array-length v12, v10

    move v13, v6

    :goto_151
    if-ge v13, v12, :cond_77

    aget-object v14, v10, v13
    :try_end_155
    .catchall {:try_start_5a .. :try_end_155} :catchall_6e

    .line 621
    :try_start_155
    invoke-virtual {v14, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_159
    .catchall {:try_start_155 .. :try_end_159} :catchall_15a

    goto :goto_15b

    :catchall_15a
    move-object v15, v11

    :goto_15b
    if-eqz v15, :cond_1a7

    .line 623
    :try_start_15d
    invoke-direct {v1, v15}, Lio/bidmachine/analytics/internal/I/c;->a(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a7

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v15, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1a7

    if-nez v0, :cond_171

    move-object v6, v11

    :goto_16e
    move-object/from16 v11, p2

    goto :goto_194

    .line 626
    :cond_171
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17c

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_16e

    .line 627
    :cond_17c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_184
    .catchall {:try_start_15d .. :try_end_184} :catchall_6e

    move-object/from16 v11, p2

    :try_start_186
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 629
    :goto_194
    new-instance v14, Lkotlin/Triple;

    add-int/lit8 v17, v7, 0x1

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v14, v15, v0, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v14}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1ab

    :catchall_1a5
    move-exception v0

    goto :goto_1be

    :cond_1a7
    move-object/from16 v11, p2

    move-object/from16 v18, v0

    :goto_1ab
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v18

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_151

    .line 635
    :goto_1b2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 636
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b8
    .catchall {:try_start_186 .. :try_end_1b8} :catchall_1a5

    goto :goto_1c8

    :catchall_1b9
    move-exception v0

    move-object/from16 v11, p2

    move-object/from16 v9, p3

    :goto_1be
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    :goto_1c8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    const/4 v6, 0x0

    goto/16 :goto_2e

    :cond_1ce
    return-object v3
.end method

###### Class io.bidmachine.analytics.internal.I.c.a (io.bidmachine.analytics.internal.I.c$a)
.class public final Lio/bidmachine/analytics/internal/I/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/I/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/I/c$a;-><init>()V

    return-void
.end method
