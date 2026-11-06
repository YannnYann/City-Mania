###### Class j$.time.chrono.x (j$.time.chrono.x)
.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field static final d:Lj$/time/h;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private final transient a:Lj$/time/h;

.field private transient b:Lj$/time/chrono/y;

.field private transient c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v1, v1}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/h;

    return-void
.end method

.method constructor <init>(Lj$/time/chrono/y;ILj$/time/h;)V
    .registers 5

    .line 364
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 365
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/h;

    invoke-virtual {p3, v0}, Lj$/time/h;->b0(Lj$/time/h;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 368
    iput-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 369
    iput p2, p0, Lj$/time/chrono/x;->c:I

    .line 370
    iput-object p3, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    return-void

    .line 366
    :cond_12
    new-instance p1, Lj$/time/c;

    .line 88
    const-string p2, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    throw p1
.end method

.method constructor <init>(Lj$/time/h;)V
    .registers 4

    .line 343
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 344
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/h;

    invoke-virtual {p1, v0}, Lj$/time/h;->b0(Lj$/time/h;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 350
    invoke-static {p1}, Lj$/time/chrono/y;->q(Lj$/time/h;)Lj$/time/chrono/y;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 352
    invoke-virtual {p1}, Lj$/time/h;->a0()I

    move-result v1

    invoke-virtual {v0}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lj$/time/chrono/x;->c:I

    .line 353
    iput-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    return-void

    .line 345
    :cond_25
    new-instance p1, Lj$/time/c;

    .line 88
    const-string v0, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 345
    throw p1
.end method

.method private a0(Lj$/time/h;)Lj$/time/chrono/x;
    .registers 3

    .line 711
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {p1, v0}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 774
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 791
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final C(J)Lj$/time/chrono/b;
    .registers 4

    .line 677
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->k0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method final J(J)Lj$/time/chrono/b;
    .registers 4

    .line 667
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

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

    .line 610
    invoke-super {p0, p1}, Lj$/time/chrono/d;->M(Lj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method final S(J)Lj$/time/chrono/b;
    .registers 4

    .line 662
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final T()Lj$/time/chrono/y;
    .registers 2

    .line 396
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final W(JLj$/time/temporal/b;)Lj$/time/chrono/x;
    .registers 4

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final Z(JLj$/time/temporal/s;)Lj$/time/chrono/x;
    .registers 12

    .line 566
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_70

    .line 567
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 568
    invoke-virtual {p0, v0}, Lj$/time/chrono/x;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    return-object p0

    .line 571
    :cond_10
    sget-object v1, Lj$/time/chrono/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq v2, v6, :cond_26

    if-eq v2, v5, :cond_26

    if-eq v2, v4, :cond_26

    goto :goto_3c

    .line 384
    :cond_26
    sget-object v2, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 575
    invoke-virtual {v2, v0}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object v7

    invoke-virtual {v7, p1, p2, v0}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result v7

    .line 576
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_61

    if-eq v0, v5, :cond_4e

    if-eq v0, v4, :cond_45

    .line 588
    :goto_3c
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/h;->p0(JLj$/time/temporal/s;)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 580
    :cond_45
    invoke-virtual {v3, v7}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 582
    :cond_4e
    invoke-static {v7}, Lj$/time/chrono/y;->w(I)Lj$/time/chrono/y;

    move-result-object p1

    iget p2, p0, Lj$/time/chrono/x;->c:I

    .line 638
    invoke-virtual {v2, p1, p2}, Lj$/time/chrono/v;->w(Lj$/time/chrono/m;I)I

    move-result p1

    .line 639
    invoke-virtual {v3, p1}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 656
    :cond_61
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 638
    invoke-virtual {v2, p1, v7}, Lj$/time/chrono/v;->w(Lj$/time/chrono/m;I)I

    move-result p1

    .line 639
    invoke-virtual {v3, p1}, Lj$/time/h;->s0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/x;->a0(Lj$/time/h;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 590
    :cond_70
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->b(JLj$/time/temporal/s;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/chrono/b;
    .registers 4

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->Z(JLj$/time/temporal/s;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->Z(JLj$/time/temporal/s;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final b0(Lj$/time/temporal/q;)Lj$/time/chrono/x;
    .registers 2

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/chrono/b;
    .registers 4

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/v;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 749
    :cond_4
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_13

    .line 750
    check-cast p1, Lj$/time/chrono/x;

    .line 751
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    iget-object p1, p1, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 465
    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_26

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_26

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_26

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_11

    goto :goto_26

    .line 474
    :cond_11
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1c

    .line 475
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->T()Z

    move-result p1

    return p1

    :cond_1c
    if-eqz p1, :cond_26

    .line 477
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 6

    .line 512
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4a

    .line 518
    sget-object v0, Lj$/time/chrono/w;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lj$/time/chrono/x;->c:I

    iget-object v2, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    packed-switch v0, :pswitch_data_50

    .line 539
    invoke-virtual {v3, p1}, Lj$/time/h;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 527
    :pswitch_1d
    invoke-virtual {v2}, Lj$/time/chrono/y;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 523
    :pswitch_23
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 523
    throw v0

    :pswitch_2f
    int-to-long v0, v1

    return-wide v0

    :pswitch_31
    const/4 p1, 0x1

    if-ne v1, p1, :cond_44

    .line 535
    invoke-virtual {v3}, Lj$/time/h;->W()I

    move-result v0

    invoke-virtual {v2}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/h;->W()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 537
    :cond_44
    invoke-virtual {v3}, Lj$/time/h;->W()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 541
    :cond_4a
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_31
        :pswitch_2f
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public final h()Lj$/time/chrono/l;
    .registers 2

    .line 384
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    .line 384
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 763
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->hashCode()I

    move-result v0

    const v1, -0x29035c2f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 9

    .line 482
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_a5

    .line 483
    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->f(Lj$/time/temporal/s;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 484
    check-cast p1, Lj$/time/temporal/a;

    .line 485
    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    if-eq v0, v2, :cond_8f

    iget-object v5, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    const/4 v6, 0x2

    if-eq v0, v6, :cond_52

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 384
    sget-object v0, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    .line 503
    invoke-virtual {v0, p1}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 494
    :cond_2a
    invoke-virtual {v5}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->a0()I

    move-result p1

    .line 495
    invoke-virtual {v5}, Lj$/time/chrono/y;->t()Lj$/time/chrono/y;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 497
    invoke-virtual {v0}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    int-to-long v0, v0

    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    :cond_48
    const v0, 0x3b9ac9ff

    sub-int/2addr v0, p1

    int-to-long v0, v0

    .line 500
    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 420
    :cond_52
    invoke-virtual {v5}, Lj$/time/chrono/y;->t()Lj$/time/chrono/y;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 421
    invoke-virtual {p1}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    invoke-virtual {v1}, Lj$/time/h;->a0()I

    move-result v6

    if-ne v0, v6, :cond_70

    .line 422
    invoke-virtual {p1}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->W()I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_7b

    .line 890
    :cond_70
    invoke-virtual {v1}, Lj$/time/h;->c0()Z

    move-result p1

    if-eqz p1, :cond_79

    const/16 p1, 0x16e

    goto :goto_7b

    :cond_79
    const/16 p1, 0x16d

    .line 426
    :goto_7b
    iget v0, p0, Lj$/time/chrono/x;->c:I

    if-ne v0, v2, :cond_89

    .line 427
    invoke-virtual {v5}, Lj$/time/chrono/y;->s()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->W()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr p1, v0

    :cond_89
    int-to-long v0, p1

    .line 487
    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 409
    :cond_8f
    invoke-virtual {v1}, Lj$/time/h;->d0()I

    move-result p1

    int-to-long v0, p1

    .line 486
    invoke-static {v3, v4, v0, v1}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 505
    :cond_99
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 505
    throw v0

    .line 507
    :cond_a5
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lj$/time/temporal/o;)Lj$/time/chrono/b;
    .registers 2

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->m(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final u()Lj$/time/chrono/m;
    .registers 2

    .line 396
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final v()J
    .registers 3

    .line 728
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->v()J

    move-result-wide v0

    return-wide v0
.end method
