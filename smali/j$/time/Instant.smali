###### Class j$.time.Instant (j$.time.Instant)
.class public final Lj$/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/m;",
        "Lj$/time/temporal/o;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Instant;

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 213
    new-instance v0, Lj$/time/Instant;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lj$/time/Instant;-><init>(JI)V

    sput-object v0, Lj$/time/Instant;->c:Lj$/time/Instant;

    const-wide v0, -0x701cefeb9bec00L

    .line 232
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->W(JJ)Lj$/time/Instant;

    const-wide v0, 0x701cd2fa9578ffL

    const-wide/32 v2, 0x3b9ac9ff

    .line 243
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->W(JJ)Lj$/time/Instant;

    return-void
.end method

.method private constructor <init>(JI)V
    .registers 4

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-wide p1, p0, Lj$/time/Instant;->a:J

    .line 426
    iput p3, p0, Lj$/time/Instant;->b:I

    return-void
.end method

.method public static S(J)Lj$/time/Instant;
    .registers 6

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 0
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 0
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 346
    invoke-static {v2, v3, p0}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static T(J)Lj$/time/Instant;
    .registers 3

    const/4 v0, 0x0

    .line 304
    invoke-static {p0, p1, v0}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static W(JJ)Lj$/time/Instant;
    .registers 8

    const-wide/32 v0, 0x3b9aca00

    .line 328
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p0

    .line 329
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 330
    invoke-static {p0, p1, p2}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method private Z(JJ)Lj$/time/Instant;
    .registers 9

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-object p0

    .line 925
    :cond_9
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 926
    div-long v2, p3, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p1

    .line 927
    rem-long/2addr p3, v0

    .line 928
    iget v0, p0, Lj$/time/Instant;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 929
    invoke-static {p1, p2, v0, v1}, Lj$/time/Instant;->W(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method private static r(JI)Lj$/time/Instant;
    .registers 7

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 408
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    return-object p0

    :cond_b
    const-wide v0, -0x701cefeb9bec00L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_23

    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, p0, v0

    if-gtz v0, :cond_23

    .line 413
    new-instance v0, Lj$/time/Instant;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Instant;-><init>(JI)V

    return-object v0

    .line 411
    :cond_23
    new-instance p0, Lj$/time/c;

    .line 88
    const-string p1, "Instant exceeds minimum or maximum instant"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 411
    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1357
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1347
    new-instance v0, Lj$/time/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final C()J
    .registers 3

    .line 619
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    return-wide v0
.end method

.method public final J()I
    .registers 2

    .line 632
    iget v0, p0, Lj$/time/Instant;->b:I

    return v0
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 1056
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 1057
    sget-object p1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    return-object p1

    .line 1060
    :cond_9
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    .line 1061
    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    .line 1062
    invoke-static {}, Lj$/time/temporal/t;->b()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_33

    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_2e

    goto :goto_33

    .line 1065
    :cond_2e
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a0(JLj$/time/temporal/v;)Lj$/time/Instant;
    .registers 11

    .line 851
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_7b

    .line 852
    sget-object v0, Lj$/time/f;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const-wide/32 v3, 0xf4240

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_82

    .line 862
    new-instance p1, Lj$/time/temporal/w;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 862
    throw p1

    :pswitch_2d
    const p3, 0x15180

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p1

    .line 879
    invoke-direct {p0, p1, p2, v5, v6}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_3a
    const p3, 0xa8c0

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p1

    .line 879
    invoke-direct {p0, p1, p2, v5, v6}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_47
    const/16 p3, 0xe10

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p1

    .line 879
    invoke-direct {p0, p1, p2, v5, v6}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :pswitch_53
    const/16 p3, 0x3c

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide p1

    .line 879
    invoke-direct {p0, p1, p2, v5, v6}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 879
    :pswitch_5f
    invoke-direct {p0, p1, p2, v5, v6}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 893
    :pswitch_64
    div-long v5, p1, v1

    rem-long/2addr p1, v1

    mul-long/2addr p1, v3

    invoke-direct {p0, v5, v6, p1, p2}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 854
    :pswitch_6d
    div-long v5, p1, v3

    rem-long/2addr p1, v3

    mul-long/2addr p1, v1

    invoke-direct {p0, v5, v6, p1, p2}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 907
    :pswitch_76
    invoke-direct {p0, v5, v6, p1, p2}, Lj$/time/Instant;->Z(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 864
    :cond_7b
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/v;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_76
        :pswitch_6d
        :pswitch_64
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3a
        :pswitch_2d
    .end packed-switch
.end method

.method public atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;
    .registers 2

    .line 1195
    invoke-static {p0, p1}, Lj$/time/OffsetDateTime;->C(Lj$/time/Instant;Lj$/time/x;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 9

    .line 705
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_59

    .line 706
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 707
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->a0(J)V

    .line 708
    sget-object v1, Lj$/time/f;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget v2, p0, Lj$/time/Instant;->b:I

    iget-wide v3, p0, Lj$/time/Instant;->a:J

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_43

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    cmp-long p3, p1, v3

    if-eqz p3, :cond_58

    .line 718
    invoke-static {p1, p2, v2}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    .line 720
    :cond_2b
    new-instance p1, Lj$/time/temporal/w;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 720
    throw p1

    :cond_37
    long-to-int p1, p1

    const p2, 0xf4240

    mul-int/2addr p1, p2

    if-eq p1, v2, :cond_58

    .line 711
    invoke-static {v3, v4, p1}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_43
    long-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    if-eq p1, v2, :cond_58

    .line 715
    invoke-static {v3, v4, p1}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_4d
    int-to-long v0, v2

    cmp-long p3, p1, v0

    if-eqz p3, :cond_58

    long-to-int p1, p1

    .line 717
    invoke-static {v3, v4, p1}, Lj$/time/Instant;->r(JI)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_58
    return-object p0

    .line 722
    :cond_59
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method final b0(Ljava/io/DataOutput;)V
    .registers 4

    .line 1361
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1362
    iget v0, p0, Lj$/time/Instant;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 1095
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/Instant;->b:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 207
    check-cast p1, Lj$/time/Instant;

    .line 1255
    iget-wide v0, p1, Lj$/time/Instant;->a:J

    iget-wide v2, p0, Lj$/time/Instant;->a:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 1259
    :cond_d
    iget v0, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->a0(JLj$/time/temporal/v;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    .line 979
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->a0(JLj$/time/temporal/v;)Lj$/time/Instant;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/Instant;->a0(JLj$/time/temporal/v;)Lj$/time/Instant;

    move-result-object p1

    return-object p1

    :cond_16
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/Instant;->a0(JLj$/time/temporal/v;)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1302
    :cond_4
    instance-of v1, p1, Lj$/time/Instant;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 1303
    check-cast p1, Lj$/time/Instant;

    .line 1304
    iget-wide v3, p1, Lj$/time/Instant;->a:J

    iget-wide v5, p0, Lj$/time/Instant;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1a

    iget v1, p0, Lj$/time/Instant;->b:I

    iget p1, p1, Lj$/time/Instant;->b:I

    if-ne v1, p1, :cond_1a

    return v0

    :cond_1a
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 458
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_15

    .line 459
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1f

    goto :goto_1d

    :cond_15
    if-eqz p1, :cond_1f

    .line 461
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 5

    .line 596
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_37

    .line 597
    sget-object v0, Lj$/time/f;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lj$/time/Instant;->b:I

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    .line 601
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    return-wide v0

    .line 603
    :cond_20
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 603
    throw v0

    :cond_2c
    const p1, 0xf4240

    .line 600
    div-int/2addr v2, p1

    :goto_30
    int-to-long v0, v2

    return-wide v0

    .line 599
    :cond_32
    div-int/lit16 v2, v2, 0x3e8

    goto :goto_30

    :cond_35
    int-to-long v0, v2

    return-wide v0

    .line 605
    :cond_37
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 6

    const/16 v0, 0x20

    .line 1317
    iget-wide v1, p0, Lj$/time/Instant;->a:J

    ushr-long v3, v1, v0

    xor-long v0, v1, v3

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Instant;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 5

    .line 559
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_39

    .line 560
    sget-object v0, Lj$/time/f;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lj$/time/Instant;->b:I

    if-eq v0, v1, :cond_38

    const/4 v1, 0x2

    if-eq v0, v1, :cond_36

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1e

    goto :goto_25

    .line 564
    :cond_1e
    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    iget-wide v1, p0, Lj$/time/Instant;->a:J

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->Z(J)I

    .line 566
    :goto_25
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 566
    throw v0

    :cond_31
    const p1, 0xf4240

    .line 563
    div-int/2addr v2, p1

    return v2

    .line 562
    :cond_36
    div-int/lit16 v2, v2, 0x3e8

    :cond_38
    return v2

    .line 527
    :cond_39
    invoke-super {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v0

    .line 568
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    return p1
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 656
    invoke-interface {p1, p0}, Lj$/time/chrono/b;->c(Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/Instant;

    return-object p1
.end method

.method public toEpochMilli()J
    .registers 9

    const-wide/16 v0, 0x0

    .line 1232
    iget-wide v2, p0, Lj$/time/Instant;->a:J

    cmp-long v0, v2, v0

    const v1, 0xf4240

    const/16 v4, 0x3e8

    iget v5, p0, Lj$/time/Instant;->b:I

    if-gez v0, :cond_21

    if-lez v5, :cond_21

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    int-to-long v6, v4

    .line 0
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1234
    div-int/2addr v5, v1

    sub-int/2addr v5, v4

    int-to-long v0, v5

    .line 1235
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_21
    int-to-long v6, v4

    .line 0
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    .line 1238
    div-int/2addr v5, v1

    int-to-long v0, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1330
    sget-object v0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, p0}, Lj$/time/format/DateTimeFormatter;->a(Lj$/time/temporal/n;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
