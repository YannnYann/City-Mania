###### Class j$.time.chrono.v (j$.time.chrono.v)
.class public final Lj$/time/chrono/v;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/v;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lj$/time/chrono/v;

    invoke-direct {v0}, Lj$/time/chrono/v;-><init>()V

    sput-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 547
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(II)Lj$/time/chrono/b;
    .registers 4

    .line 269
    new-instance v0, Lj$/time/chrono/x;

    invoke-static {p1, p2}, Lj$/time/h;->i0(II)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .registers 2

    .line 387
    invoke-static {}, Lj$/time/chrono/y;->A()[Lj$/time/chrono/y;

    move-result-object v0

    invoke-static {v0}, Lj$/time/b;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final G(III)Lj$/time/chrono/b;
    .registers 5

    .line 224
    new-instance v0, Lj$/time/chrono/x;

    invoke-static {p1, p2, p3}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final L()Lj$/time/chrono/b;
    .registers 3

    .line 286
    invoke-static {}, Lj$/time/b;->c()Lj$/time/b;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lj$/time/h;->e0(Lj$/time/b;)Lj$/time/h;

    move-result-object v0

    .line 304
    new-instance v1, Lj$/time/chrono/x;

    invoke-static {v0}, Lj$/time/h;->J(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object v0

    invoke-direct {v1, v0}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v1
.end method

.method public final N(I)Lj$/time/chrono/m;
    .registers 2

    .line 382
    invoke-static {p1}, Lj$/time/chrono/y;->w(I)Lj$/time/chrono/y;

    move-result-object p1

    return-object p1
.end method

.method public final P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 3

    .line 438
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final R()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, "japanese"

    return-object v0
.end method

.method public final U(Lj$/time/temporal/a;)Lj$/time/temporal/x;
    .registers 6

    .line 400
    sget-object v0, Lj$/time/chrono/u;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_76

    .line 431
    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 429
    :pswitch_10
    sget-object p1, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    invoke-virtual {p1}, Lj$/time/chrono/y;->p()I

    move-result p1

    int-to-long v0, p1

    invoke-static {}, Lj$/time/chrono/y;->r()Lj$/time/chrono/y;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/y;->p()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_25
    sget-object p1, Lj$/time/chrono/x;->d:Lj$/time/h;

    invoke-virtual {p1}, Lj$/time/h;->a0()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 422
    :pswitch_34
    invoke-static {}, Lj$/time/chrono/y;->x()J

    move-result-wide v0

    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/x;->d()J

    move-result-wide v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/x;->k(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 413
    :pswitch_47
    invoke-static {}, Lj$/time/chrono/y;->r()Lj$/time/chrono/y;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->a0()I

    move-result p1

    .line 414
    invoke-static {}, Lj$/time/chrono/y;->y()J

    move-result-wide v0

    const v2, 0x3b9ac9ff

    sub-int/2addr v2, p1

    int-to-long v2, v2

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/x;->k(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_61
    new-instance v0, Lj$/time/temporal/w;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported field: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 405
    throw v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_47
        :pswitch_34
        :pswitch_25
        :pswitch_10
    .end packed-switch
.end method

.method final W(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 15

    const/4 v0, 0x0

    .line 444
    sget-object v1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 447
    invoke-virtual {p0, v1}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v2

    .line 382
    invoke-static {v2}, Lj$/time/chrono/y;->w(I)Lj$/time/chrono/y;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    move-object v2, v3

    .line 449
    :goto_1e
    sget-object v4, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_35

    .line 452
    invoke-virtual {p0, v4}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v6

    goto :goto_36

    :cond_35
    move v6, v0

    :goto_36
    const/4 v7, 0x1

    if-nez v2, :cond_53

    if-eqz v5, :cond_53

    .line 455
    sget-object v8, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    sget-object v8, Lj$/time/format/x;->STRICT:Lj$/time/format/x;

    if-eq p2, v8, :cond_53

    .line 456
    invoke-static {}, Lj$/time/chrono/y;->A()[Lj$/time/chrono/y;

    move-result-object v2

    invoke-static {}, Lj$/time/chrono/y;->A()[Lj$/time/chrono/y;

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v7

    aget-object v2, v2, v8

    :cond_53
    if-eqz v5, :cond_202

    if-eqz v2, :cond_202

    .line 460
    sget-object v5, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_16f

    .line 461
    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16f

    .line 479
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v1, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne p2, v1, :cond_af

    .line 475
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr p2, v7

    .line 483
    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 484
    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 224
    new-instance p1, Lj$/time/chrono/x;

    invoke-static {p2, v7, v7}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    .line 485
    sget-object p2, Lj$/time/temporal/b;->MONTHS:Lj$/time/temporal/b;

    invoke-virtual {p1, v0, v1, p2}, Lj$/time/chrono/x;->W(JLj$/time/temporal/b;)Lj$/time/chrono/x;

    move-result-object p1

    sget-object p2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-virtual {p1, v2, v3, p2}, Lj$/time/chrono/x;->W(JLj$/time/temporal/b;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 487
    :cond_af
    invoke-virtual {p0, v5}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v1

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v5}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v1

    .line 488
    invoke-virtual {p0, v8}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v3

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v8}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    .line 489
    sget-object v3, Lj$/time/format/x;->SMART:Lj$/time/format/x;

    if-ne p2, v3, :cond_141

    if-lt v6, v7, :cond_12d

    .line 475
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr p2, v7

    .line 224
    :try_start_e3
    new-instance v3, Lj$/time/chrono/x;

    invoke-static {p2, v1, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v3, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V
    :try_end_ec
    .catch Lj$/time/c; {:try_start_e3 .. :try_end_ec} :catch_ed

    goto :goto_ff

    .line 224
    :catch_ed
    new-instance p1, Lj$/time/chrono/x;

    invoke-static {p2, v1, v7}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    .line 189
    new-instance p2, Lj$/time/temporal/q;

    .line 0
    invoke-direct {p2, v0}, Lj$/time/temporal/q;-><init>(I)V

    .line 498
    invoke-virtual {p1, p2}, Lj$/time/chrono/x;->b0(Lj$/time/temporal/q;)Lj$/time/chrono/x;

    move-result-object v3

    .line 503
    :goto_ff
    invoke-virtual {v3}, Lj$/time/chrono/x;->T()Lj$/time/chrono/y;

    move-result-object p1

    if-eq p1, v2, :cond_12c

    sget-object p1, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    invoke-interface {v3, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    if-le p1, v7, :cond_12c

    if-gt v6, v7, :cond_110

    goto :goto_12c

    .line 504
    :cond_110
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid YearOfEra for Era: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 504
    throw p1

    :cond_12c
    :goto_12c
    return-object v3

    .line 491
    :cond_12d
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid YearOfEra: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 491
    throw p1

    .line 206
    :cond_141
    sget-object p2, Lj$/time/chrono/x;->d:Lj$/time/h;

    .line 233
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr p2, v7

    invoke-static {p2, v1, p1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    .line 234
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/h;->b0(Lj$/time/h;)Z

    move-result p2

    if-nez p2, :cond_167

    invoke-static {p1}, Lj$/time/chrono/y;->q(Lj$/time/h;)Lj$/time/chrono/y;

    move-result-object p2

    if-ne v2, p2, :cond_167

    .line 237
    new-instance p2, Lj$/time/chrono/x;

    invoke-direct {p2, v2, v6, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/chrono/y;ILj$/time/h;)V

    return-object p2

    .line 235
    :cond_167
    new-instance p1, Lj$/time/c;

    .line 88
    const-string p2, "year, month, and day not valid for Era"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 235
    throw p1

    .line 465
    :cond_16f
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_202

    .line 512
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v1, Lj$/time/format/x;->LENIENT:Lj$/time/format/x;

    if-ne p2, v1, :cond_1a9

    .line 475
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr p2, v7

    .line 516
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 269
    new-instance p1, Lj$/time/chrono/x;

    invoke-static {p2, v7}, Lj$/time/h;->i0(II)Lj$/time/h;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    .line 517
    sget-object p2, Lj$/time/temporal/b;->DAYS:Lj$/time/temporal/b;

    invoke-virtual {p1, v0, v1, p2}, Lj$/time/chrono/x;->W(JLj$/time/temporal/b;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 519
    :cond_1a9
    invoke-virtual {p0, v0}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4, v0}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    .line 251
    sget-object p2, Lj$/time/chrono/x;->d:Lj$/time/h;

    if-ne v6, v7, :cond_1d6

    .line 306
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->W()I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, v7

    .line 305
    invoke-static {p2, v0}, Lj$/time/h;->i0(II)Lj$/time/h;

    move-result-object p1

    goto :goto_1e4

    .line 308
    :cond_1d6
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr p2, v7

    invoke-static {p2, p1}, Lj$/time/h;->i0(II)Lj$/time/h;

    move-result-object p1

    .line 310
    :goto_1e4
    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/time/h;->b0(Lj$/time/h;)Z

    move-result p2

    if-nez p2, :cond_1fa

    invoke-static {p1}, Lj$/time/chrono/y;->q(Lj$/time/h;)Lj$/time/chrono/y;

    move-result-object p2

    if-ne v2, p2, :cond_1fa

    .line 313
    new-instance p2, Lj$/time/chrono/x;

    invoke-direct {p2, v2, v6, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/chrono/y;ILj$/time/h;)V

    return-object p2

    .line 311
    :cond_1fa
    new-instance p1, Lj$/time/c;

    .line 88
    const-string p2, "Invalid parameters"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 311
    throw p1

    :cond_202
    return-object v3
.end method

.method public final q(J)Lj$/time/chrono/b;
    .registers 4

    .line 281
    new-instance v0, Lj$/time/chrono/x;

    invoke-static {p1, p2}, Lj$/time/h;->h0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 158
    const-string v0, "Japanese"

    return-object v0
.end method

.method public final t(Lj$/time/temporal/n;)Lj$/time/chrono/b;
    .registers 3

    .line 301
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_7

    .line 302
    check-cast p1, Lj$/time/chrono/x;

    return-object p1

    .line 304
    :cond_7
    new-instance v0, Lj$/time/chrono/x;

    invoke-static {p1}, Lj$/time/h;->J(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final w(Lj$/time/chrono/m;I)I
    .registers 6

    .line 343
    instance-of v0, p1, Lj$/time/chrono/y;

    if-eqz v0, :cond_3c

    .line 347
    move-object v0, p1

    check-cast v0, Lj$/time/chrono/y;

    .line 350
    invoke-virtual {v0}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/h;->a0()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v2, :cond_15

    goto :goto_33

    :cond_15
    const p2, -0x3b9ac9ff

    if-lt v1, p2, :cond_34

    const p2, 0x3b9ac9ff

    if-gt v1, p2, :cond_34

    .line 361
    invoke-virtual {v0}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/h;->a0()I

    move-result p2

    if-lt v1, p2, :cond_34

    .line 362
    invoke-static {v1, v2, v2}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p2

    invoke-static {p2}, Lj$/time/chrono/y;->q(Lj$/time/h;)Lj$/time/chrono/y;

    move-result-object p2

    if-ne p1, p2, :cond_34

    :goto_33
    return v1

    .line 366
    :cond_34
    new-instance p1, Lj$/time/c;

    .line 88
    const-string p2, "Invalid yearOfEra value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    throw p1

    .line 344
    :cond_3c
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 747
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public final y(Lj$/time/Instant;Lj$/time/x;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    .line 534
    invoke-static {p0, p1, p2}, Lj$/time/chrono/k;->J(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/x;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method
