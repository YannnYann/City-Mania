###### Class j$.time.k (j$.time.k)
.class public final Lj$/time/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lj$/time/k;

.field public static final f:Lj$/time/k;

.field public static final g:Lj$/time/k;

.field private static final h:[Lj$/time/k;

.field private static final serialVersionUID:J = 0x5904a8b626e1a4f1L


# instance fields
.field private final a:B

.field private final b:B

.field private final c:B

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x18

    .line 149
    new-array v0, v0, [Lj$/time/k;

    sput-object v0, Lj$/time/k;->h:[Lj$/time/k;

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_8
    sget-object v2, Lj$/time/k;->h:[Lj$/time/k;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 152
    new-instance v3, Lj$/time/k;

    invoke-direct {v3, v1, v0, v0, v0}, Lj$/time/k;-><init>(IIII)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 154
    :cond_17
    aget-object v0, v2, v0

    sput-object v0, Lj$/time/k;->g:Lj$/time/k;

    const/16 v1, 0xc

    .line 155
    aget-object v1, v2, v1

    .line 156
    sput-object v0, Lj$/time/k;->e:Lj$/time/k;

    .line 157
    new-instance v0, Lj$/time/k;

    const/16 v1, 0x17

    const v2, 0x3b9ac9ff

    const/16 v3, 0x3b

    invoke-direct {v0, v1, v3, v3, v2}, Lj$/time/k;-><init>(IIII)V

    sput-object v0, Lj$/time/k;->f:Lj$/time/k;

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 5

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    .line 494
    iput-byte p1, p0, Lj$/time/k;->a:B

    int-to-byte p1, p2

    .line 495
    iput-byte p1, p0, Lj$/time/k;->b:B

    int-to-byte p1, p3

    .line 496
    iput-byte p1, p0, Lj$/time/k;->c:B

    .line 497
    iput p4, p0, Lj$/time/k;->d:I

    return-void
.end method

.method private static C(IIII)Lj$/time/k;
    .registers 5

    or-int v0, p1, p2

    or-int/2addr v0, p3

    if-nez v0, :cond_a

    .line 480
    sget-object p1, Lj$/time/k;->h:[Lj$/time/k;

    aget-object p0, p1, p0

    return-object p0

    .line 482
    :cond_a
    new-instance v0, Lj$/time/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lj$/time/k;-><init>(IIII)V

    return-object v0
.end method

.method public static J(Lj$/time/temporal/n;)Lj$/time/k;
    .registers 5

    .line 427
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/k;

    if-eqz v0, :cond_12

    return-object v0

    .line 430
    :cond_12
    new-instance v0, Lj$/time/c;

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to obtain LocalTime from TemporalAccessor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 431
    throw v0
.end method

.method private S(Lj$/time/temporal/s;)I
    .registers 7

    .line 684
    sget-object v0, Lj$/time/j;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-byte v1, p0, Lj$/time/k;->b:B

    iget v2, p0, Lj$/time/k;->d:I

    const/16 v3, 0xc

    iget-byte v4, p0, Lj$/time/k;->a:B

    packed-switch v0, :pswitch_data_64

    .line 701
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 701
    throw v0

    .line 699
    :pswitch_22
    div-int/2addr v4, v3

    return v4

    :pswitch_24
    if-nez v4, :cond_29

    const/16 p1, 0x18

    return p1

    :cond_29
    :pswitch_29
    return v4

    .line 696
    :pswitch_2a
    rem-int/2addr v4, v3

    rem-int/lit8 p1, v4, 0xc

    if-nez p1, :cond_30

    return v3

    :cond_30
    return v4

    .line 695
    :pswitch_31
    rem-int/2addr v4, v3

    return v4

    :pswitch_33
    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v1

    return v4

    :pswitch_37
    return v1

    .line 692
    :pswitch_38
    invoke-virtual {p0}, Lj$/time/k;->l0()I

    move-result p1

    return p1

    .line 691
    :pswitch_3d
    iget-byte p1, p0, Lj$/time/k;->c:B

    return p1

    .line 690
    :pswitch_40
    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1

    :pswitch_4a
    const p1, 0xf4240

    .line 689
    div-int/2addr v2, p1

    return v2

    .line 688
    :pswitch_4f
    new-instance p1, Lj$/time/temporal/w;

    .line 88
    const-string v0, "Invalid field \'MicroOfDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 688
    throw p1

    .line 687
    :pswitch_57
    div-int/lit16 v2, v2, 0x3e8

    return v2

    .line 686
    :pswitch_5a
    new-instance p1, Lj$/time/temporal/w;

    .line 88
    const-string v0, "Invalid field \'NanoOfDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 686
    throw p1

    :pswitch_62
    return v2

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_62
        :pswitch_5a
        :pswitch_57
        :pswitch_4f
        :pswitch_4a
        :pswitch_40
        :pswitch_3d
        :pswitch_38
        :pswitch_37
        :pswitch_33
        :pswitch_31
        :pswitch_2a
        :pswitch_29
        :pswitch_24
        :pswitch_22
    .end packed-switch
.end method

.method public static a0(I)Lj$/time/k;
    .registers 4

    .line 296
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 298
    sget-object v0, Lj$/time/k;->h:[Lj$/time/k;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static b0(IIII)Lj$/time/k;
    .registers 7

    .line 339
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 340
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 341
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 342
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 343
    invoke-static {p0, p1, p2, p3}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p0

    return-object p0
.end method

.method public static c0(J)Lj$/time/k;
    .registers 9

    .line 398
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, p0, p1}, Lj$/time/temporal/a;->a0(J)V

    const-wide v0, 0x34630b8a000L

    .line 399
    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide v0, 0xdf8475800L

    .line 401
    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0x3b9aca00

    .line 403
    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    long-to-int p0, p0

    .line 405
    invoke-static {v2, v3, v4, p0}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p0

    return-object p0
.end method

.method public static d0(J)Lj$/time/k;
    .registers 6

    .line 380
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {v0, p0, p1}, Lj$/time/temporal/a;->a0(J)V

    const-wide/16 v0, 0xe10

    .line 381
    div-long v0, p0, v0

    long-to-int v0, v0

    mul-int/lit16 v1, v0, 0xe10

    int-to-long v1, v1

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x3c

    .line 383
    div-long v1, p0, v1

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x3c

    int-to-long v2, v2

    sub-long/2addr p0, v2

    long-to-int p0, p0

    const/4 p1, 0x0

    .line 385
    invoke-static {v0, v1, p0, p1}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p0

    return-object p0
.end method

.method static j0(Ljava/io/ObjectInput;)Lj$/time/k;
    .registers 6

    .line 1714
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_b

    not-int v0, v0

    move p0, v1

    move v2, p0

    goto :goto_29

    .line 1721
    :cond_b
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    if-gez v2, :cond_16

    not-int p0, v2

    move v2, v1

    move v1, p0

    move p0, v2

    goto :goto_29

    .line 1725
    :cond_16
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    if-gez v3, :cond_21

    not-int p0, v3

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_29

    .line 1729
    :cond_21
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    move p0, v2

    move v2, v1

    move v1, p0

    move p0, v3

    .line 1733
    :goto_29
    invoke-static {v0, v1, p0, v2}, Lj$/time/k;->b0(IIII)Lj$/time/k;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1688
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1678
    new-instance v0, Lj$/time/s;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final T()I
    .registers 2

    .line 711
    iget-byte v0, p0, Lj$/time/k;->a:B

    return v0
.end method

.method public final W()I
    .registers 2

    .line 738
    iget v0, p0, Lj$/time/k;->d:I

    return v0
.end method

.method public final Z()I
    .registers 2

    .line 729
    iget-byte v0, p0, Lj$/time/k;->c:B

    return v0
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 1314
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_35

    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_35

    .line 1315
    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_35

    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_19

    goto :goto_35

    .line 1317
    :cond_19
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_20

    return-object p0

    .line 1319
    :cond_20
    invoke-static {}, Lj$/time/temporal/t;->b()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_27

    goto :goto_35

    .line 1321
    :cond_27
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_30

    .line 1322
    sget-object p1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    return-object p1

    .line 1326
    :cond_30
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_35
    :goto_35
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/k;->m0(JLj$/time/temporal/s;)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 1355
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 125
    check-cast p1, Lj$/time/k;

    invoke-virtual {p0, p1}, Lj$/time/k;->r(Lj$/time/k;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/k;->e0(JLj$/time/temporal/v;)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    .line 1228
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/k;->e0(JLj$/time/temporal/v;)Lj$/time/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/k;->e0(JLj$/time/temporal/v;)Lj$/time/k;

    move-result-object p1

    return-object p1

    :cond_16
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/k;->e0(JLj$/time/temporal/v;)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final e0(JLj$/time/temporal/v;)Lj$/time/k;
    .registers 6

    .line 1067
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_60

    .line 1068
    sget-object v0, Lj$/time/j;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_68

    .line 1077
    new-instance p1, Lj$/time/temporal/w;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1077
    throw p1

    :pswitch_26
    const-wide/16 v0, 0x2

    .line 1075
    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->f0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 1074
    :pswitch_31
    invoke-virtual {p0, p1, p2}, Lj$/time/k;->f0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 1073
    :pswitch_36
    invoke-virtual {p0, p1, p2}, Lj$/time/k;->g0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 1072
    :pswitch_3b
    invoke-virtual {p0, p1, p2}, Lj$/time/k;->i0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_40
    const-wide/32 v0, 0x5265c00

    .line 1071
    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->h0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_4d
    const-wide v0, 0x141dd76000L

    .line 1070
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->h0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 1069
    :pswitch_5b
    invoke-virtual {p0, p1, p2}, Lj$/time/k;->h0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 1079
    :cond_60
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/v;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/k;

    return-object p1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_4d
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1584
    :cond_4
    instance-of v1, p1, Lj$/time/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 1585
    check-cast p1, Lj$/time/k;

    .line 1586
    iget-byte v1, p1, Lj$/time/k;->a:B

    iget-byte v3, p0, Lj$/time/k;->a:B

    if-ne v3, v1, :cond_24

    iget-byte v1, p0, Lj$/time/k;->b:B

    iget-byte v3, p1, Lj$/time/k;->b:B

    if-ne v1, v3, :cond_24

    iget-byte v1, p0, Lj$/time/k;->c:B

    iget-byte v3, p1, Lj$/time/k;->c:B

    if-ne v1, v3, :cond_24

    iget v1, p0, Lj$/time/k;->d:I

    iget p1, p1, Lj$/time/k;->d:I

    if-ne v1, p1, :cond_24

    return v0

    :cond_24
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 540
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_b

    .line 541
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->b0()Z

    move-result p1

    return p1

    :cond_b
    if-eqz p1, :cond_15

    .line 543
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final f0(J)Lj$/time/k;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    const-wide/16 v0, 0x18

    .line 1098
    rem-long/2addr p1, v0

    long-to-int p1, p1

    iget-byte p2, p0, Lj$/time/k;->a:B

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x18

    rem-int/lit8 p1, p1, 0x18

    .line 1099
    iget-byte p2, p0, Lj$/time/k;->c:B

    iget v0, p0, Lj$/time/k;->d:I

    iget-byte v1, p0, Lj$/time/k;->b:B

    invoke-static {p1, v1, p2, v0}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 6

    .line 671
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1f

    .line 672
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_d

    .line 673
    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v0

    return-wide v0

    .line 675
    :cond_d
    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_19

    .line 676
    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0

    .line 678
    :cond_19
    invoke-direct {p0, p1}, Lj$/time/k;->S(Lj$/time/temporal/s;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 680
    :cond_1f
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g0(J)Lj$/time/k;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_19

    .line 1117
    :cond_7
    iget-byte v0, p0, Lj$/time/k;->a:B

    mul-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lj$/time/k;->b:B

    add-int/2addr v0, v1

    const-wide/16 v1, 0x5a0

    .line 1118
    rem-long/2addr p1, v1

    long-to-int p1, p1

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x5a0

    rem-int/lit16 p1, p1, 0x5a0

    if-ne v0, p1, :cond_1a

    :goto_19
    return-object p0

    .line 1122
    :cond_1a
    div-int/lit8 p2, p1, 0x3c

    .line 1123
    rem-int/lit8 p1, p1, 0x3c

    .line 1124
    iget-byte v0, p0, Lj$/time/k;->c:B

    iget v1, p0, Lj$/time/k;->d:I

    invoke-static {p2, p1, v0, v1}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final h0(J)Lj$/time/k;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_18

    .line 1169
    :cond_7
    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    .line 1170
    rem-long/2addr p1, v2

    add-long/2addr p1, v0

    add-long/2addr p1, v2

    rem-long/2addr p1, v2

    cmp-long v0, v0, p1

    if-nez v0, :cond_19

    :goto_18
    return-object p0

    :cond_19
    const-wide v0, 0x34630b8a000L

    .line 1174
    div-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xdf8475800L

    .line 1175
    div-long v1, p1, v1

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/32 v5, 0x3b9aca00

    .line 1176
    div-long v7, p1, v5

    rem-long/2addr v7, v3

    long-to-int v2, v7

    .line 1177
    rem-long/2addr p1, v5

    long-to-int p1, p1

    .line 1178
    invoke-static {v0, v1, v2, p1}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1599
    invoke-virtual {p0}, Lj$/time/k;->k0()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 3

    .line 640
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_9

    .line 641
    invoke-direct {p0, p1}, Lj$/time/k;->S(Lj$/time/temporal/s;)I

    move-result p1

    return p1

    .line 643
    :cond_9
    invoke-super {p0, p1}, Lj$/time/temporal/n;->i(Lj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final i0(J)Lj$/time/k;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_20

    .line 1142
    :cond_7
    iget-byte v0, p0, Lj$/time/k;->a:B

    mul-int/lit16 v0, v0, 0xe10

    iget-byte v1, p0, Lj$/time/k;->b:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    iget-byte v0, p0, Lj$/time/k;->c:B

    add-int/2addr v1, v0

    const-wide/32 v2, 0x15180

    .line 1144
    rem-long/2addr p1, v2

    long-to-int p1, p1

    add-int/2addr p1, v1

    const p2, 0x15180

    add-int/2addr p1, p2

    rem-int/2addr p1, p2

    if-ne v1, p1, :cond_21

    :goto_20
    return-object p0

    .line 1148
    :cond_21
    div-int/lit16 p2, p1, 0xe10

    .line 1149
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    .line 1150
    rem-int/lit8 p1, p1, 0x3c

    .line 1151
    iget v1, p0, Lj$/time/k;->d:I

    invoke-static {p2, v0, p1, v1}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 769
    invoke-interface {p1, p0}, Lj$/time/chrono/b;->c(Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/k;

    return-object p1
.end method

.method public final k0()J
    .registers 7

    .line 1486
    iget-byte v0, p0, Lj$/time/k;->a:B

    int-to-long v0, v0

    const-wide v2, 0x34630b8a000L

    mul-long/2addr v0, v2

    .line 1487
    iget-byte v2, p0, Lj$/time/k;->b:B

    int-to-long v2, v2

    const-wide v4, 0xdf8475800L

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 1488
    iget-byte v0, p0, Lj$/time/k;->c:B

    int-to-long v0, v0

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 1489
    iget v2, p0, Lj$/time/k;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final l0()I
    .registers 3

    .line 1473
    iget-byte v0, p0, Lj$/time/k;->a:B

    mul-int/lit16 v0, v0, 0xe10

    .line 1474
    iget-byte v1, p0, Lj$/time/k;->b:B

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    .line 1475
    iget-byte v0, p0, Lj$/time/k;->c:B

    add-int/2addr v1, v0

    return v1
.end method

.method public final m0(JLj$/time/temporal/s;)Lj$/time/k;
    .registers 13

    .line 856
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_d4

    .line 857
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 858
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->a0(J)V

    .line 859
    sget-object v1, Lj$/time/j;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-byte v1, p0, Lj$/time/k;->b:B

    iget-byte v2, p0, Lj$/time/k;->c:B

    iget v3, p0, Lj$/time/k;->d:I

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc

    iget-byte v8, p0, Lj$/time/k;->a:B

    packed-switch v0, :pswitch_data_dc

    .line 876
    new-instance p1, Lj$/time/temporal/w;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 876
    throw p1

    .line 874
    :pswitch_2d
    div-int/lit8 v8, v8, 0xc

    int-to-long v0, v8

    sub-long/2addr p1, v0

    mul-long/2addr p1, v6

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->f0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_37
    const-wide/16 v6, 0x18

    cmp-long p3, p1, v6

    if-nez p3, :cond_3e

    move-wide p1, v4

    :cond_3e
    long-to-int p1, p1

    if-ne v8, p1, :cond_42

    goto :goto_9a

    .line 895
    :cond_42
    sget-object p2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v4, p1

    invoke-virtual {p2, v4, v5}, Lj$/time/temporal/a;->a0(J)V

    .line 896
    invoke-static {p1, v1, v2, v3}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_4d
    long-to-int p1, p1

    if-ne v8, p1, :cond_51

    goto :goto_9a

    .line 895
    :cond_51
    sget-object p2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    int-to-long v4, p1

    invoke-virtual {p2, v4, v5}, Lj$/time/temporal/a;->a0(J)V

    .line 896
    invoke-static {p1, v1, v2, v3}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_5c
    cmp-long p3, p1, v6

    if-nez p3, :cond_61

    move-wide p1, v4

    .line 871
    :cond_61
    rem-int/lit8 v8, v8, 0xc

    int-to-long v0, v8

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->f0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 870
    :pswitch_6a
    rem-int/lit8 v8, v8, 0xc

    int-to-long v0, v8

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->f0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_73
    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v8, v1

    int-to-long v0, v8

    sub-long/2addr p1, v0

    .line 869
    invoke-virtual {p0, p1, p2}, Lj$/time/k;->g0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_7d
    long-to-int p1, p1

    if-ne v1, p1, :cond_81

    goto :goto_9a

    .line 912
    :cond_81
    sget-object p2, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lj$/time/temporal/a;->a0(J)V

    .line 913
    invoke-static {v8, p1, v2, v3}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 867
    :pswitch_8c
    invoke-virtual {p0}, Lj$/time/k;->l0()I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/k;->i0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_97
    long-to-int p1, p1

    if-ne v2, p1, :cond_9b

    :goto_9a
    return-object p0

    .line 929
    :cond_9b
    sget-object p2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    int-to-long v4, p1

    invoke-virtual {p2, v4, v5}, Lj$/time/temporal/a;->a0(J)V

    .line 930
    invoke-static {v8, v1, p1, v3}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_a6
    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 865
    invoke-static {p1, p2}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_af
    long-to-int p1, p1

    const p2, 0xf4240

    mul-int/2addr p1, p2

    .line 864
    invoke-virtual {p0, p1}, Lj$/time/k;->n0(I)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_b9
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 863
    invoke-static {p1, p2}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_c1
    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 862
    invoke-virtual {p0, p1}, Lj$/time/k;->n0(I)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 861
    :pswitch_c9
    invoke-static {p1, p2}, Lj$/time/k;->c0(J)Lj$/time/k;

    move-result-object p1

    return-object p1

    :pswitch_ce
    long-to-int p1, p1

    .line 860
    invoke-virtual {p0, p1}, Lj$/time/k;->n0(I)Lj$/time/k;

    move-result-object p1

    return-object p1

    .line 878
    :cond_d4
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/k;

    return-object p1

    nop

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_c9
        :pswitch_c1
        :pswitch_b9
        :pswitch_af
        :pswitch_a6
        :pswitch_97
        :pswitch_8c
        :pswitch_7d
        :pswitch_73
        :pswitch_6a
        :pswitch_5c
        :pswitch_4d
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method public final n0(I)Lj$/time/k;
    .registers 5

    .line 943
    iget v0, p0, Lj$/time/k;->d:I

    if-ne v0, p1, :cond_5

    return-object p0

    .line 946
    :cond_5
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->a0(J)V

    .line 947
    iget-byte v0, p0, Lj$/time/k;->c:B

    iget-byte v1, p0, Lj$/time/k;->a:B

    iget-byte v2, p0, Lj$/time/k;->b:B

    invoke-static {v1, v2, v0, p1}, Lj$/time/k;->C(IIII)Lj$/time/k;

    move-result-object p1

    return-object p1
.end method

.method final o0(Ljava/io/DataOutput;)V
    .registers 6

    .line 1692
    iget-byte v0, p0, Lj$/time/k;->c:B

    iget-byte v1, p0, Lj$/time/k;->a:B

    iget-byte v2, p0, Lj$/time/k;->b:B

    iget v3, p0, Lj$/time/k;->d:I

    if-nez v3, :cond_26

    if-nez v0, :cond_1b

    if-nez v2, :cond_13

    not-int v0, v1

    .line 1695
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 1697
    :cond_13
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    not-int v0, v2

    .line 1698
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 1701
    :cond_1b
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1702
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    not-int v0, v0

    .line 1703
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void

    .line 1706
    :cond_26
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1707
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1708
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1709
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public final r(Lj$/time/k;)I
    .registers 4

    .line 1529
    iget-byte v0, p1, Lj$/time/k;->a:B

    iget-byte v1, p0, Lj$/time/k;->a:B

    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_27

    .line 1531
    iget-byte v0, p0, Lj$/time/k;->b:B

    iget-byte v1, p1, Lj$/time/k;->b:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_27

    .line 1533
    iget-byte v0, p0, Lj$/time/k;->c:B

    iget-byte v1, p1, Lj$/time/k;->c:B

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_27

    .line 1535
    iget v0, p0, Lj$/time/k;->d:I

    iget p1, p1, Lj$/time/k;->d:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    :cond_27
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1627
    iget-byte v1, p0, Lj$/time/k;->a:B

    const/16 v2, 0xa

    if-ge v1, v2, :cond_10

    const-string v3, "0"

    goto :goto_12

    :cond_10
    const-string v3, ""

    :goto_12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1628
    const-string v1, ":"

    const-string v3, ":0"

    iget-byte v4, p0, Lj$/time/k;->b:B

    if-ge v4, v2, :cond_22

    move-object v5, v3

    goto :goto_23

    :cond_22
    move-object v5, v1

    :goto_23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1629
    iget-byte v4, p0, Lj$/time/k;->c:B

    iget v5, p0, Lj$/time/k;->d:I

    if-gtz v4, :cond_31

    if-lez v5, :cond_7a

    :cond_31
    if-ge v4, v2, :cond_34

    move-object v1, v3

    .line 1630
    :cond_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v5, :cond_7a

    const/16 v1, 0x2e

    .line 1632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v1, 0xf4240

    .line 1633
    rem-int v2, v5, v1

    const/4 v3, 0x1

    if-nez v2, :cond_58

    .line 1634
    div-int/2addr v5, v1

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 1635
    :cond_58
    rem-int/lit16 v2, v5, 0x3e8

    if-nez v2, :cond_6b

    .line 1636
    div-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    :cond_6b
    const v1, 0x3b9aca00

    add-int/2addr v5, v1

    .line 1638
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    :cond_7a
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
