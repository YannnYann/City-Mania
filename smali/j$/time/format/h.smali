###### Class j$.time.format.h (j$.time.format.h)
.class final Lj$/time/format/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/format/f;


# virtual methods
.method public final p(Lj$/time/format/s;Ljava/lang/StringBuilder;)Z
    .registers 21

    move-object/from16 v0, p2

    .line 3414
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lj$/time/format/s;->e(Lj$/time/temporal/s;)Ljava/lang/Long;

    move-result-object v1

    .line 3416
    invoke-virtual {v2}, Lj$/time/format/s;->d()Lj$/time/temporal/n;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v3, v4}, Lj$/time/temporal/n;->f(Lj$/time/temporal/s;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3417
    invoke-virtual {v2}, Lj$/time/format/s;->d()Lj$/time/temporal/n;

    move-result-object v2

    invoke-interface {v2, v4}, Lj$/time/temporal/n;->g(Lj$/time/temporal/s;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    const/4 v3, 0x0

    if-nez v1, :cond_28

    return v3

    .line 3422
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_35

    .line 3423
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_36

    :cond_35
    move-wide v1, v7

    :goto_36
    invoke-virtual {v4, v1, v2}, Lj$/time/temporal/a;->Z(J)I

    move-result v1

    const-wide v9, -0xe79747c00L

    cmp-long v2, v5, v9

    .line 3425
    const-string v9, ":00"

    const-wide/16 v10, 0x1

    const-wide v12, 0xe79747c00L

    const-wide v14, 0x497968bd80L

    if-ltz v2, :cond_84

    const-wide v16, 0x3afff44180L

    sub-long v5, v5, v16

    .line 3428
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v16

    add-long v10, v16, v10

    .line 3429
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v5

    sub-long/2addr v5, v12

    .line 3430
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v5, v6, v3, v2}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    cmp-long v5, v10, v7

    if-lez v5, :cond_75

    const/16 v5, 0x2b

    .line 3432
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3434
    :cond_75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3435
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->S()I

    move-result v2

    if-nez v2, :cond_81

    .line 3436
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    const/16 p1, 0x1

    goto :goto_cd

    :cond_84
    add-long/2addr v5, v12

    move-wide/from16 v16, v5

    const/16 p1, 0x1

    .line 3441
    div-long v4, v16, v14

    .line 3442
    rem-long v14, v16, v14

    sub-long v12, v14, v12

    .line 3443
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {v12, v13, v3, v2}, Lj$/time/LocalDateTime;->d0(JILj$/time/ZoneOffset;)Lj$/time/LocalDateTime;

    move-result-object v2

    .line 3444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 3445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3446
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->S()I

    move-result v12

    if-nez v12, :cond_a5

    .line 3447
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a5
    cmp-long v9, v4, v7

    if-gez v9, :cond_cd

    .line 3450
    invoke-virtual {v2}, Lj$/time/LocalDateTime;->T()I

    move-result v2

    const/16 v9, -0x2710

    if-ne v2, v9, :cond_bc

    add-int/lit8 v2, v6, 0x2

    sub-long/2addr v4, v10

    .line 3451
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v2, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cd

    :cond_bc
    cmp-long v2, v14, v7

    if-nez v2, :cond_c4

    .line 3453
    invoke-virtual {v0, v6, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_cd

    :cond_c4
    add-int/lit8 v6, v6, 0x1

    .line 3455
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_cd
    :goto_cd
    if-gtz v1, :cond_d0

    goto :goto_e2

    :cond_d0
    const/16 v2, 0x2e

    .line 3461
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x5f5e100

    :goto_d8
    if-gtz v1, :cond_e8

    .line 3463
    rem-int/lit8 v4, v3, 0x3

    if-nez v4, :cond_e8

    const/4 v4, -0x2

    if-ge v3, v4, :cond_e2

    goto :goto_e8

    :cond_e2
    :goto_e2
    const/16 v1, 0x5a

    .line 3472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return p1

    .line 3466
    :cond_e8
    :goto_e8
    div-int v4, v1, v2

    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    .line 3467
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/2addr v4, v2

    sub-int/2addr v1, v4

    .line 3469
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_d8
.end method

.method public final r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I
    .registers 20

    move/from16 v4, p3

    .line 3481
    new-instance v0, Lj$/time/format/p;

    invoke-direct {v0}, Lj$/time/format/p;-><init>()V

    sget-object v1, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

    .line 3482
    invoke-virtual {v0, v1}, Lj$/time/format/p;->a(Lj$/time/format/DateTimeFormatter;)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lj$/time/format/p;->e(C)V

    sget-object v1, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const/4 v2, 0x2

    .line 3483
    invoke-virtual {v0, v1, v2}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Lj$/time/format/p;->e(C)V

    sget-object v5, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 3484
    invoke-virtual {v0, v5, v2}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    invoke-virtual {v0, v3}, Lj$/time/format/p;->e(C)V

    sget-object v3, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 3485
    invoke-virtual {v0, v3, v2}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    sget-object v6, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 3486
    invoke-virtual {v0, v6}, Lj$/time/format/p;->b(Lj$/time/temporal/a;)V

    const/16 v2, 0x5a

    .line 3487
    invoke-virtual {v0, v2}, Lj$/time/format/p;->e(C)V

    .line 3488
    invoke-virtual {v0}, Lj$/time/format/p;->t()Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->g()Lj$/time/format/e;

    move-result-object v0

    .line 3489
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->c()Lj$/time/format/q;

    move-result-object v2

    move-object/from16 v7, p2

    .line 3490
    invoke-virtual {v0, v2, v7, v4}, Lj$/time/format/e;->r(Lj$/time/format/q;Ljava/lang/CharSequence;I)I

    move-result v0

    if-gez v0, :cond_48

    return v0

    .line 3496
    :cond_48
    sget-object v7, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v2, v7}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3497
    sget-object v9, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v2, v9}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v11

    .line 3498
    sget-object v9, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v2, v9}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v12

    .line 3499
    invoke-virtual {v2, v1}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 3500
    invoke-virtual {v2, v5}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v14

    .line 3501
    invoke-virtual {v2, v3}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v3

    .line 3502
    invoke-virtual {v2, v6}, Lj$/time/format/q;->i(Lj$/time/temporal/a;)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v3, :cond_86

    .line 3503
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    goto :goto_87

    :cond_86
    move v3, v5

    :goto_87
    if-eqz v2, :cond_8f

    .line 3504
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    move v9, v2

    goto :goto_90

    :cond_8f
    move v9, v5

    :goto_90
    const/16 v2, 0x18

    if-ne v1, v2, :cond_9f

    if-nez v14, :cond_9f

    if-nez v3, :cond_9f

    if-nez v9, :cond_9f

    const/4 v1, 0x1

    move v15, v3

    move v13, v5

    move v5, v1

    goto :goto_b3

    :cond_9f
    const/16 v2, 0x17

    if-ne v1, v2, :cond_b1

    const/16 v2, 0x3b

    if-ne v14, v2, :cond_b1

    const/16 v10, 0x3c

    if-ne v3, v10, :cond_b1

    .line 3510
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/q;->o()V

    move v13, v1

    move v15, v2

    goto :goto_b3

    :cond_b1
    move v13, v1

    move v15, v3

    :goto_b3
    long-to-int v1, v7

    .line 3513
    rem-int/lit16 v10, v1, 0x2710

    .line 3516
    :try_start_b6
    invoke-static/range {v10 .. v15}, Lj$/time/LocalDateTime;->b0(IIIIII)Lj$/time/LocalDateTime;

    move-result-object v1

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lj$/time/LocalDateTime;->f0(J)Lj$/time/LocalDateTime;

    move-result-object v1

    .line 3517
    sget-object v2, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-interface {v1, v2}, Lj$/time/chrono/e;->Y(Lj$/time/ZoneOffset;)J

    move-result-wide v1

    const-wide/16 v10, 0x2710

    .line 3518
    div-long/2addr v7, v10

    const-wide v10, 0x497968bd80L

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v7
    :try_end_d1
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_d1} :catch_e5

    add-long v2, v1, v7

    .line 3523
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    move v5, v0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v5

    int-to-long v2, v9

    move/from16 v4, p3

    move-object v1, v6

    .line 3524
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/q;->n(Lj$/time/temporal/s;JII)I

    move-result v0

    return v0

    :catch_e5
    not-int v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 3529
    const-string v0, "Instant()"

    return-object v0
.end method
