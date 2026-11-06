###### Class j$.time.o (j$.time.o)
.class public final Lj$/time/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 137
    new-instance v0, Lj$/time/format/p;

    invoke-direct {v0}, Lj$/time/format/p;-><init>()V

    const-string v1, "--"

    .line 138
    invoke-virtual {v0, v1}, Lj$/time/format/p;->f(Ljava/lang/String;)V

    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v2, 0x2

    .line 139
    invoke-virtual {v0, v1, v2}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    const/16 v1, 0x2d

    .line 140
    invoke-virtual {v0, v1}, Lj$/time/format/p;->e(C)V

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 141
    invoke-virtual {v0, v1, v2}, Lj$/time/format/p;->k(Lj$/time/temporal/s;I)V

    .line 142
    invoke-virtual {v0}, Lj$/time/format/p;->t()Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Lj$/time/o;->a:I

    .line 321
    iput p2, p0, Lj$/time/o;->b:I

    return-void
.end method

.method static r(Ljava/io/ObjectInput;)Lj$/time/o;
    .registers 5

    .line 787
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 788
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    .line 244
    invoke-static {v0}, Lj$/time/m;->S(I)Lj$/time/m;

    move-result-object v0

    .line 218
    const-string v1, "month"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->a0(J)V

    .line 220
    invoke-virtual {v0}, Lj$/time/m;->J()I

    move-result v1

    if-gt p0, v1, :cond_27

    .line 224
    new-instance v1, Lj$/time/o;

    invoke-virtual {v0}, Lj$/time/m;->p()I

    move-result v0

    invoke-direct {v1, v0, p0}, Lj$/time/o;-><init>(II)V

    return-object v1

    .line 221
    :cond_27
    new-instance v1, Lj$/time/c;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal value for DayOfMonth field, value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not valid for month "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 222
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 778
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 768
    new-instance v0, Lj$/time/s;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final C(Ljava/io/DataOutput;)V
    .registers 3

    .line 782
    iget v0, p0, Lj$/time/o;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 783
    iget v0, p0, Lj$/time/o;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 593
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 594
    sget-object p1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    return-object p1

    .line 596
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 7

    .line 628
    invoke-static {p1}, Lj$/time/chrono/l;->F(Lj$/time/temporal/n;)Lj$/time/chrono/l;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/s;->d:Lj$/time/chrono/s;

    invoke-interface {v0, v1}, Lj$/time/chrono/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 631
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/o;->a:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    .line 632
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/temporal/x;->d()J

    move-result-wide v1

    iget v3, p0, Lj$/time/o;->b:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1

    .line 629
    :cond_2b
    new-instance p1, Lj$/time/c;

    .line 88
    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 629
    throw p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 127
    check-cast p1, Lj$/time/o;

    .line 680
    iget v0, p1, Lj$/time/o;->a:I

    iget v1, p0, Lj$/time/o;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_f

    .line 682
    iget v0, p0, Lj$/time/o;->b:I

    iget p1, p1, Lj$/time/o;->b:I

    sub-int/2addr v0, p1

    return v0

    :cond_f
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 721
    :cond_4
    instance-of v1, p1, Lj$/time/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 722
    check-cast p1, Lj$/time/o;

    .line 723
    iget v1, p1, Lj$/time/o;->a:I

    iget v3, p0, Lj$/time/o;->a:I

    if-ne v3, v1, :cond_18

    iget v1, p0, Lj$/time/o;->b:I

    iget p1, p1, Lj$/time/o;->b:I

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 350
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_d

    .line 351
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_15

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_17

    goto :goto_15

    :cond_d
    if-eqz p1, :cond_17

    .line 353
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 445
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_28

    .line 446
    sget-object v0, Lj$/time/n;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 449
    iget p1, p0, Lj$/time/o;->a:I

    :goto_17
    int-to-long v0, p1

    return-wide v0

    .line 451
    :cond_19
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 451
    throw v0

    .line 448
    :cond_25
    iget p1, p0, Lj$/time/o;->b:I

    goto :goto_17

    .line 453
    :cond_28
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 3

    .line 735
    iget v0, p0, Lj$/time/o;->a:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lj$/time/o;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 5

    .line 417
    invoke-virtual {p0, p1}, Lj$/time/o;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/o;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 6

    .line 381
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_9

    .line 382
    invoke-interface {p1}, Lj$/time/temporal/s;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 383
    :cond_9
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_44

    .line 483
    iget p1, p0, Lj$/time/o;->a:I

    invoke-static {p1}, Lj$/time/m;->S(I)Lj$/time/m;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    sget-object v1, Lj$/time/l;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_30

    const/16 v0, 0x1f

    goto :goto_35

    :cond_30
    const/16 v0, 0x1e

    goto :goto_35

    :cond_33
    const/16 v0, 0x1c

    :goto_35
    int-to-long v0, v0

    .line 483
    invoke-static {p1}, Lj$/time/m;->S(I)Lj$/time/m;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lj$/time/m;->J()I

    move-result p1

    int-to-long v2, p1

    .line 147
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/x;->k(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 386
    :cond_44
    invoke-super {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    iget v2, p0, Lj$/time/o;->a:I

    if-ge v2, v1, :cond_13

    const-string v3, "0"

    goto :goto_15

    :cond_13
    const-string v3, ""

    :goto_15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 750
    iget v2, p0, Lj$/time/o;->b:I

    if-ge v2, v1, :cond_22

    const-string v1, "-0"

    goto :goto_24

    :cond_22
    const-string v1, "-"

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
