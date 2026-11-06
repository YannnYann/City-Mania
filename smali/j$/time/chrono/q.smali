###### Class j$.time.chrono.q (j$.time.chrono.q)
.class public final Lj$/time/chrono/q;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient a:Lj$/time/chrono/o;

.field private final transient b:I

.field private final transient c:I

.field private final transient d:I


# direct methods
.method private constructor <init>(Lj$/time/chrono/o;III)V
    .registers 5

    .line 268
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 270
    invoke-virtual {p1, p2, p3, p4}, Lj$/time/chrono/o;->d0(III)J

    .line 272
    iput-object p1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    .line 273
    iput p2, p0, Lj$/time/chrono/q;->b:I

    .line 274
    iput p3, p0, Lj$/time/chrono/q;->c:I

    .line 275
    iput p4, p0, Lj$/time/chrono/q;->d:I

    return-void
.end method

.method private constructor <init>(Lj$/time/chrono/o;J)V
    .registers 4

    .line 283
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    long-to-int p2, p2

    .line 284
    invoke-virtual {p1, p2}, Lj$/time/chrono/o;->e0(I)[I

    move-result-object p2

    .line 286
    iput-object p1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    const/4 p1, 0x0

    .line 287
    aget p1, p2, p1

    iput p1, p0, Lj$/time/chrono/q;->b:I

    const/4 p1, 0x1

    .line 288
    aget p1, p2, p1

    iput p1, p0, Lj$/time/chrono/q;->c:I

    const/4 p1, 0x2

    .line 289
    aget p1, p2, p1

    iput p1, p0, Lj$/time/chrono/q;->d:I

    return-void
.end method

.method private T()I
    .registers 4

    .line 491
    iget v0, p0, Lj$/time/chrono/q;->c:I

    iget-object v1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    iget v2, p0, Lj$/time/chrono/q;->b:I

    invoke-virtual {v1, v2, v0}, Lj$/time/chrono/o;->c0(II)I

    move-result v0

    iget v1, p0, Lj$/time/chrono/q;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method static Z(Lj$/time/chrono/o;III)Lj$/time/chrono/q;
    .registers 5

    .line 156
    new-instance v0, Lj$/time/chrono/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/chrono/q;-><init>(Lj$/time/chrono/o;III)V

    return-object v0
.end method

.method static a0(Lj$/time/chrono/o;J)Lj$/time/chrono/q;
    .registers 4

    .line 166
    new-instance v0, Lj$/time/chrono/q;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/q;-><init>(Lj$/time/chrono/o;J)V

    return-object v0
.end method

.method private d0(III)Lj$/time/chrono/q;
    .registers 6

    .line 421
    iget-object v0, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/o;->f0(II)I

    move-result v1

    if-le p3, v1, :cond_9

    move p3, v1

    .line 156
    :cond_9
    new-instance v1, Lj$/time/chrono/q;

    invoke-direct {v1, v0, p1, p2, p3}, Lj$/time/chrono/q;-><init>(Lj$/time/chrono/o;III)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 661
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 679
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic C(J)Lj$/time/chrono/b;
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic J(J)Lj$/time/chrono/b;
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->c0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lj$/time/k;)Lj$/time/chrono/e;
    .registers 2

    .line 657
    invoke-static {p0, p1}, Lj$/time/chrono/g;->C(Lj$/time/chrono/b;Lj$/time/k;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final M(Lj$/time/temporal/r;)Lj$/time/chrono/b;
    .registers 2

    .line 465
    invoke-super {p0, p1}, Lj$/time/chrono/d;->M(Lj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method final S(J)Lj$/time/chrono/b;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-object p0

    .line 530
    :cond_7
    iget v0, p0, Lj$/time/chrono/q;->b:I

    long-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p1

    .line 531
    iget p2, p0, Lj$/time/chrono/q;->c:I

    iget v0, p0, Lj$/time/chrono/q;->d:I

    invoke-direct {p0, p1, p2, v0}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method public final W()I
    .registers 3

    .line 343
    iget-object v0, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    iget v1, p0, Lj$/time/chrono/q;->b:I

    invoke-virtual {v0, v1}, Lj$/time/chrono/o;->g0(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/chrono/b;
    .registers 4

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/q;->e0(JLj$/time/temporal/s;)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/q;->e0(JLj$/time/temporal/s;)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method final b0(J)Lj$/time/chrono/q;
    .registers 6

    .line 553
    new-instance v0, Lj$/time/chrono/q;

    invoke-virtual {p0}, Lj$/time/chrono/q;->v()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-direct {v0, p1, v1, v2}, Lj$/time/chrono/q;-><init>(Lj$/time/chrono/o;J)V

    return-object v0
.end method

.method final c0(J)Lj$/time/chrono/q;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-object p0

    .line 539
    :cond_7
    iget v0, p0, Lj$/time/chrono/q;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v4, p0, Lj$/time/chrono/q;->c:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    .line 541
    iget-object p1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lj$/time/chrono/o;->a0(J)I

    move-result p1

    .line 542
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    .line 543
    iget v0, p0, Lj$/time/chrono/q;->d:I

    invoke-direct {p0, p1, p2, v0}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 558
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 558
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 563
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 563
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final e0(JLj$/time/temporal/s;)Lj$/time/chrono/q;
    .registers 13

    .line 395
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_c0

    .line 396
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 398
    iget-object v1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-virtual {v1, v0}, Lj$/time/chrono/o;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/x;->b(JLj$/time/temporal/s;)V

    long-to-int v2, p1

    .line 400
    sget-object v3, Lj$/time/chrono/p;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x7

    iget v6, p0, Lj$/time/chrono/q;->d:I

    iget v7, p0, Lj$/time/chrono/q;->c:I

    iget v8, p0, Lj$/time/chrono/q;->b:I

    packed-switch v0, :pswitch_data_c8

    .line 415
    new-instance p1, Lj$/time/temporal/w;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 415
    throw p1

    :pswitch_31
    sub-int/2addr v3, v8

    .line 413
    invoke-direct {p0, v3, v7, v6}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 412
    :pswitch_37
    invoke-direct {p0, v2, v7, v6}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    :pswitch_3c
    if-lt v8, v3, :cond_3f

    goto :goto_41

    :cond_3f
    rsub-int/lit8 v2, v2, 0x1

    .line 411
    :goto_41
    invoke-direct {p0, v2, v7, v6}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    :pswitch_46
    int-to-long v0, v8

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    int-to-long v2, v7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 410
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->c0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 409
    :pswitch_55
    invoke-direct {p0, v8, v2, v6}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_5a
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/q;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    mul-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 406
    :pswitch_67
    new-instance p3, Lj$/time/chrono/q;

    invoke-direct {p3, v1, p1, p2}, Lj$/time/chrono/q;-><init>(Lj$/time/chrono/o;J)V

    return-object p3

    .line 403
    :pswitch_6d
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/q;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 402
    :pswitch_79
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/q;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 500
    :pswitch_85
    invoke-virtual {p0}, Lj$/time/chrono/q;->v()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    const/4 p3, 0x7

    int-to-long v4, p3

    .line 0
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    add-int/2addr p3, v3

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 401
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 407
    :pswitch_9b
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/chrono/q;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    mul-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 405
    :pswitch_a8
    invoke-virtual {p0}, Lj$/time/chrono/q;->W()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0}, Lj$/time/chrono/q;->T()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/q;->b0(J)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 404
    :pswitch_bb
    invoke-direct {p0, v8, v7, v2}, Lj$/time/chrono/q;->d0(III)Lj$/time/chrono/q;

    move-result-object p1

    return-object p1

    .line 417
    :cond_c0
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_a8
        :pswitch_9b
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_67
        :pswitch_5a
        :pswitch_55
        :pswitch_46
        :pswitch_3c
        :pswitch_37
        :pswitch_31
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 629
    :cond_4
    instance-of v1, p1, Lj$/time/chrono/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 630
    check-cast p1, Lj$/time/chrono/q;

    .line 631
    iget v1, p1, Lj$/time/chrono/q;->b:I

    iget v3, p0, Lj$/time/chrono/q;->b:I

    if-ne v3, v1, :cond_28

    iget v1, p0, Lj$/time/chrono/q;->c:I

    iget v3, p1, Lj$/time/chrono/q;->c:I

    if-ne v1, v3, :cond_28

    iget v1, p0, Lj$/time/chrono/q;->d:I

    iget v3, p1, Lj$/time/chrono/q;->d:I

    if-ne v1, v3, :cond_28

    .line 634
    iget-object v1, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    iget-object p1, p1, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-virtual {v1, p1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 8

    .line 368
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_75

    .line 369
    sget-object v0, Lj$/time/chrono/p;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lj$/time/chrono/q;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x7

    iget v4, p0, Lj$/time/chrono/q;->d:I

    iget v5, p0, Lj$/time/chrono/q;->b:I

    packed-switch v0, :pswitch_data_7a

    .line 384
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 384
    throw v0

    :pswitch_26
    if-le v5, v2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    int-to-long v0, v2

    return-wide v0

    :pswitch_2c
    int-to-long v0, v5

    return-wide v0

    :pswitch_2e
    int-to-long v0, v5

    return-wide v0

    :pswitch_30
    int-to-long v2, v5

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    int-to-long v0, v1

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    return-wide v2

    :pswitch_3a
    int-to-long v0, v1

    return-wide v0

    .line 377
    :pswitch_3c
    invoke-direct {p0}, Lj$/time/chrono/q;->T()I

    move-result p1

    sub-int/2addr p1, v2

    div-int/2addr p1, v3

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    .line 375
    :pswitch_45
    invoke-virtual {p0}, Lj$/time/chrono/q;->v()J

    move-result-wide v0

    return-wide v0

    .line 372
    :pswitch_4a
    invoke-direct {p0}, Lj$/time/chrono/q;->T()I

    move-result p1

    sub-int/2addr p1, v2

    rem-int/2addr p1, v3

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_53
    sub-int/2addr v4, v2

    .line 371
    rem-int/2addr v4, v3

    add-int/2addr v4, v2

    int-to-long v0, v4

    return-wide v0

    .line 500
    :pswitch_58
    invoke-virtual {p0}, Lj$/time/chrono/q;->v()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    add-long/2addr v0, v4

    int-to-long v3, v3

    .line 0
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/2addr p1, v2

    int-to-long v0, p1

    return-wide v0

    :pswitch_68
    sub-int/2addr v4, v2

    .line 376
    div-int/2addr v4, v3

    add-int/2addr v4, v2

    int-to-long v0, v4

    return-wide v0

    .line 374
    :pswitch_6d
    invoke-direct {p0}, Lj$/time/chrono/q;->T()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :pswitch_73
    int-to-long v0, v4

    return-wide v0

    .line 386
    :cond_75
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6d
        :pswitch_68
        :pswitch_58
        :pswitch_53
        :pswitch_4a
        :pswitch_45
        :pswitch_3c
        :pswitch_3a
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method public final h()Lj$/time/chrono/l;
    .registers 2

    .line 303
    iget-object v0, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 649
    iget-object v0, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lj$/time/chrono/q;->b:I

    and-int/lit16 v1, v0, -0x800

    const v2, 0x7d2cfbb3

    xor-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0xb

    iget v2, p0, Lj$/time/chrono/q;->c:I

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    iget v2, p0, Lj$/time/chrono/q;->d:I

    add-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 436
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 7

    .line 349
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_51

    .line 350
    invoke-interface {p0, p1}, Lj$/time/chrono/b;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 351
    check-cast p1, Lj$/time/temporal/a;

    .line 352
    sget-object v0, Lj$/time/chrono/p;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    const-wide/16 v3, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 359
    invoke-virtual {v2, p1}, Lj$/time/chrono/o;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    :cond_26
    const-wide/16 v0, 0x5

    .line 355
    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 354
    :cond_2d
    invoke-virtual {p0}, Lj$/time/chrono/q;->W()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 329
    :cond_37
    iget p1, p0, Lj$/time/chrono/q;->b:I

    iget v0, p0, Lj$/time/chrono/q;->c:I

    invoke-virtual {v2, p1, v0}, Lj$/time/chrono/o;->f0(II)I

    move-result p1

    int-to-long v0, p1

    .line 353
    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 361
    :cond_45
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 361
    throw v0

    .line 363
    :cond_51
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .registers 2

    .line 436
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/q;

    return-object p1
.end method

.method public final u()Lj$/time/chrono/m;
    .registers 2

    .line 316
    sget-object v0, Lj$/time/chrono/r;->AH:Lj$/time/chrono/r;

    return-object v0
.end method

.method public final v()J
    .registers 5

    .line 480
    iget v0, p0, Lj$/time/chrono/q;->c:I

    iget v1, p0, Lj$/time/chrono/q;->d:I

    iget-object v2, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    iget v3, p0, Lj$/time/chrono/q;->b:I

    invoke-virtual {v2, v3, v0, v1}, Lj$/time/chrono/o;->d0(III)J

    move-result-wide v0

    return-wide v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    .line 684
    iget-object v0, p0, Lj$/time/chrono/q;->a:Lj$/time/chrono/o;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 685
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 686
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 687
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
