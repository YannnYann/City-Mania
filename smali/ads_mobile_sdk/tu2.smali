###### Class ads_mobile_sdk.tu2 (ads_mobile_sdk.tu2)
.class public final Lads_mobile_sdk/tu2;
.super Lads_mobile_sdk/rr3;
.source "SourceFile"


# instance fields
.field public final g:Lads_mobile_sdk/su2;

.field public final h:Lads_mobile_sdk/tx;

.field public final i:Lads_mobile_sdk/ur3;

.field public j:Lads_mobile_sdk/tu2;

.field public final k:Lads_mobile_sdk/uj2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;Lads_mobile_sdk/su2;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;ILads_mobile_sdk/rr3;ILjava/lang/Boolean;Z)V
    .registers 33

    .line 41
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/tx;->a()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    move-object/from16 v4, p9

    move/from16 v7, p12

    .line 42
    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/rr3;-><init>(Lads_mobile_sdk/s11;Lads_mobile_sdk/ks3;Ljava/util/UUID;Lads_mobile_sdk/rr3;JZ)V

    move-object/from16 v1, p5

    .line 43
    iput-object v1, v0, Lads_mobile_sdk/tu2;->g:Lads_mobile_sdk/su2;

    move-object/from16 v1, p6

    .line 44
    iput-object v1, v0, Lads_mobile_sdk/tu2;->h:Lads_mobile_sdk/tx;

    move-object/from16 v1, p7

    .line 45
    iput-object v1, v0, Lads_mobile_sdk/tu2;->i:Lads_mobile_sdk/ur3;

    .line 64
    new-instance v1, Lads_mobile_sdk/uj2;

    if-eqz p9, :cond_2c

    .line 70
    invoke-virtual/range {p9 .. p9}, Lads_mobile_sdk/rr3;->c()I

    move-result v2

    :goto_2a
    move v7, v2

    goto :goto_2e

    :cond_2c
    const/4 v2, -0x1

    goto :goto_2a

    .line 72
    :goto_2e
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v9

    .line 73
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v2

    sget-wide v4, Lads_mobile_sdk/xl;->a:J

    sub-long v11, v2, v4

    .line 75
    sget-wide v2, Lads_mobile_sdk/xl;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_46

    const-wide/16 v2, -0x1

    :goto_44
    move-wide v13, v2

    goto :goto_4e

    .line 78
    :cond_46
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->f()J

    move-result-wide v2

    sget-wide v4, Lads_mobile_sdk/xl;->b:J

    sub-long/2addr v2, v4

    goto :goto_44

    .line 82
    :goto_4e
    invoke-static {}, Lads_mobile_sdk/oa2;->a()Lads_mobile_sdk/pa2;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_62

    check-cast v2, Lads_mobile_sdk/ca2;

    invoke-virtual {v2}, Lads_mobile_sdk/ca2;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_64

    :cond_62
    move-object/from16 v17, v3

    .line 83
    :goto_64
    invoke-static {}, Lads_mobile_sdk/oa2;->a()Lads_mobile_sdk/pa2;

    move-result-object v2

    if-eqz v2, :cond_74

    check-cast v2, Lads_mobile_sdk/ca2;

    invoke-virtual {v2}, Lads_mobile_sdk/ca2;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_74
    move-object/from16 v18, v3

    const v19, 0x1ffff800

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move/from16 v8, p8

    move/from16 v2, p10

    move-object/from16 v16, p11

    move/from16 v15, p12

    .line 84
    invoke-direct/range {v1 .. v19}, Lads_mobile_sdk/uj2;-><init>(ILads_mobile_sdk/ks3;Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;IIJJJZLjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    iput-object v1, v0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    return-void
.end method

.method public synthetic constructor <init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;Lads_mobile_sdk/su2;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;ILads_mobile_sdk/rr3;ZI)V
    .registers 28

    move/from16 v0, p11

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v12, v2

    goto :goto_b

    :cond_9
    move-object/from16 v12, p9

    :goto_b
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    :goto_10
    move v13, v0

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 86
    :goto_14
    invoke-static {}, Lads_mobile_sdk/oa2;->a()Lads_mobile_sdk/pa2;

    move-result-object v0

    if-eqz v0, :cond_24

    check-cast v0, Lads_mobile_sdk/ca2;

    invoke-virtual {v0}, Lads_mobile_sdk/ca2;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_24
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v15, p10

    move-object v14, v2

    .line 87
    invoke-direct/range {v3 .. v15}, Lads_mobile_sdk/tu2;-><init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;Lads_mobile_sdk/su2;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;ILads_mobile_sdk/rr3;ILjava/lang/Boolean;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;
    .registers 16

    .line 84
    const-string v0, "cuiName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lads_mobile_sdk/tu2;

    .line 188
    iget-object v3, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 189
    iget-object v4, v3, Lads_mobile_sdk/uj2;->e:Ljava/util/UUID;

    move-object v5, v4

    .line 190
    iget-object v4, p0, Lads_mobile_sdk/rr3;->a:Lads_mobile_sdk/ks3;

    move-object v6, v5

    .line 191
    iget-object v5, p0, Lads_mobile_sdk/tu2;->g:Lads_mobile_sdk/su2;

    move-object v7, v6

    .line 192
    iget-object v6, p0, Lads_mobile_sdk/tu2;->h:Lads_mobile_sdk/tx;

    move-object v8, v7

    .line 193
    iget-object v7, p0, Lads_mobile_sdk/tu2;->i:Lads_mobile_sdk/ur3;

    .line 194
    iget v3, v3, Lads_mobile_sdk/uj2;->g:I

    add-int/lit8 v3, v3, 0x1

    const/16 v11, 0x600

    move-object v1, v8

    move v8, v3

    move-object v3, v1

    move-object v9, p0

    move-object v1, p1

    move-object v2, p2

    move v10, p3

    .line 195
    invoke-direct/range {v0 .. v11}, Lads_mobile_sdk/tu2;-><init>(Lads_mobile_sdk/s11;Ljava/util/List;Ljava/util/UUID;Lads_mobile_sdk/ks3;Lads_mobile_sdk/su2;Lads_mobile_sdk/tx;Lads_mobile_sdk/ur3;ILads_mobile_sdk/rr3;ZI)V

    .line 196
    iget-object v1, v0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    iget-object v2, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 197
    iget-object v2, v2, Lads_mobile_sdk/uj2;->x:Lads_mobile_sdk/w11;

    iput-object v2, v1, Lads_mobile_sdk/uj2;->x:Lads_mobile_sdk/w11;

    .line 198
    iget-object v1, p0, Lads_mobile_sdk/tu2;->g:Lads_mobile_sdk/su2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    const-string v2, "trace"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    :cond_3e
    iget-object v2, v1, Lads_mobile_sdk/su2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lads_mobile_sdk/tu2;

    .line 377
    iget-object v3, v2, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 378
    iget v3, v3, Lads_mobile_sdk/uj2;->a:I

    add-int/lit8 v3, v3, 0x1

    .line 379
    invoke-virtual {v0, v3, v2}, Lads_mobile_sdk/tu2;->a(ILads_mobile_sdk/tu2;)V

    .line 380
    iget-object v3, v1, Lads_mobile_sdk/su2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v2, v0}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    return-object v0
.end method

.method public final a()V
    .registers 16

    .line 467
    invoke-super {p0}, Lads_mobile_sdk/rr3;->a()V

    .line 468
    iget-object v0, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 469
    iget v1, v0, Lads_mobile_sdk/uj2;->a:I

    if-nez v1, :cond_d0

    .line 470
    iget-object v1, p0, Lads_mobile_sdk/tu2;->i:Lads_mobile_sdk/ur3;

    .line 471
    new-instance v2, Lads_mobile_sdk/os3;

    iget-object v0, v0, Lads_mobile_sdk/uj2;->e:Ljava/util/UUID;

    iget-object v3, p0, Lads_mobile_sdk/tu2;->g:Lads_mobile_sdk/su2;

    .line 472
    iget-object v3, v3, Lads_mobile_sdk/su2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 473
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/tu2;

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    new-array v3, v4, [Lads_mobile_sdk/uj2;

    goto :goto_3e

    .line 474
    :cond_1f
    iget-object v5, v3, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 475
    iget v5, v5, Lads_mobile_sdk/uj2;->a:I

    add-int/lit8 v5, v5, 0x1

    .line 476
    new-array v5, v5, [Lads_mobile_sdk/uj2;

    :goto_27
    if-eqz v3, :cond_32

    .line 477
    iget-object v6, v3, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 478
    iget v7, v6, Lads_mobile_sdk/uj2;->a:I

    .line 479
    aput-object v6, v5, v7

    .line 480
    iget-object v3, v3, Lads_mobile_sdk/tu2;->j:Lads_mobile_sdk/tu2;

    goto :goto_27

    .line 481
    :cond_32
    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 487
    new-array v5, v4, [Lads_mobile_sdk/uj2;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lads_mobile_sdk/uj2;

    .line 488
    :goto_3e
    invoke-direct {v2, v0, v3}, Lads_mobile_sdk/os3;-><init>(Ljava/util/UUID;[Lads_mobile_sdk/uj2;)V

    .line 489
    check-cast v1, Lads_mobile_sdk/as3;

    .line 490
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    const-string v0, "traceSnapshot"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    array-length v5, v3

    move v6, v4

    :goto_52
    if-ge v6, v5, :cond_79

    aget-object v7, v3, v6

    .line 494
    iget-object v8, v1, Lads_mobile_sdk/as3;->o:Ljava/util/Map;

    iget-object v9, v7, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {v9}, Lads_mobile_sdk/s11;->getNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_6f

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_71

    :cond_6f
    iget-boolean v8, v1, Lads_mobile_sdk/as3;->k:Z

    :goto_71
    if-eqz v8, :cond_76

    .line 1083
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 1084
    :cond_79
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8f

    .line 1085
    new-instance v3, Lads_mobile_sdk/os3;

    iget-object v2, v2, Lads_mobile_sdk/os3;->a:Ljava/util/UUID;

    .line 1673
    new-array v5, v4, [Lads_mobile_sdk/uj2;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/uj2;

    .line 1674
    invoke-direct {v3, v2, v0}, Lads_mobile_sdk/os3;-><init>(Ljava/util/UUID;[Lads_mobile_sdk/uj2;)V

    goto :goto_90

    :cond_8f
    const/4 v3, 0x0

    :goto_90
    if-eqz v3, :cond_d0

    .line 1675
    iget-object v0, v1, Lads_mobile_sdk/as3;->d:Lads_mobile_sdk/ms3;

    invoke-virtual {v0, v3}, Lads_mobile_sdk/b43;->a(Ljava/lang/Object;)V

    .line 1679
    iget-boolean v0, v1, Lads_mobile_sdk/as3;->n:Z

    if-eqz v0, :cond_d0

    .line 1680
    iget-object v0, v3, Lads_mobile_sdk/os3;->b:[Lads_mobile_sdk/uj2;

    array-length v2, v0

    :goto_9e
    if-ge v4, v2, :cond_d0

    aget-object v3, v0, v4

    .line 1681
    iget-object v5, v3, Lads_mobile_sdk/uj2;->o:Ljava/lang/Throwable;

    if-nez v5, :cond_a8

    iget-object v5, v3, Lads_mobile_sdk/uj2;->n:Ljava/lang/Throwable;

    :cond_a8
    move-object v7, v5

    if-eqz v7, :cond_cd

    .line 1683
    iget-object v5, v1, Lads_mobile_sdk/as3;->e:Lads_mobile_sdk/rq0;

    .line 1684
    new-instance v6, Lads_mobile_sdk/tq0;

    .line 1686
    iget-object v8, v3, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 1687
    iget-object v9, v3, Lads_mobile_sdk/uj2;->b:Lads_mobile_sdk/ks3;

    .line 1689
    iget-wide v11, v3, Lads_mobile_sdk/uj2;->h:J

    .line 1690
    iget-object v3, v3, Lads_mobile_sdk/uj2;->O:Ljava/lang/Integer;

    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_c1
    move v13, v3

    goto :goto_c5

    :cond_c3
    const/4 v3, -0x1

    goto :goto_c1

    :goto_c5
    const/4 v14, 0x0

    const/4 v10, 0x1

    .line 1691
    invoke-direct/range {v6 .. v14}, Lads_mobile_sdk/tq0;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lads_mobile_sdk/ks3;ZJIZ)V

    .line 1692
    invoke-virtual {v5, v6}, Lads_mobile_sdk/b43;->a(Ljava/lang/Object;)V

    :cond_cd
    add-int/lit8 v4, v4, 0x1

    goto :goto_9e

    :cond_d0
    return-void
.end method

.method public final a(ILads_mobile_sdk/tu2;)V
    .registers 4

    .line 1
    const-string v0, "nextTrace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lads_mobile_sdk/rr3;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 79
    iget-object p1, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 80
    iget-object p1, p1, Lads_mobile_sdk/uj2;->c:Lads_mobile_sdk/s11;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This trace "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has already finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/sr3;->a(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_31
    iget-object v0, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 82
    iput p1, v0, Lads_mobile_sdk/uj2;->a:I

    .line 83
    iput-object p2, p0, Lads_mobile_sdk/tu2;->j:Lads_mobile_sdk/tu2;

    return-void
.end method

.method public final e()Lads_mobile_sdk/uj2;
    .registers 2

    .line 47
    iget-object v0, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    return-object v0
.end method

.method public final h()V
    .registers 7

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/tu2;->k:Lads_mobile_sdk/uj2;

    .line 3
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, p0, Lads_mobile_sdk/tu2;->h:Lads_mobile_sdk/tx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    .line 6
    iget-wide v4, p0, Lads_mobile_sdk/rr3;->c:J

    .line 7
    invoke-static {v4, v5, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v1

    .line 8
    iput-wide v1, v0, Lads_mobile_sdk/uj2;->p:J

    return-void
.end method
