###### Class j$.time.Duration (j$.time.Duration)
.class public final Lj$/time/Duration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/r;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/r;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 139
    new-instance v0, Lj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    sput-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    const-wide/32 v0, 0x3b9aca00

    .line 147
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(JI)V
    .registers 4

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-wide p1, p0, Lj$/time/Duration;->a:J

    .line 529
    iput p3, p0, Lj$/time/Duration;->b:I

    return-void
.end method

.method public static S(JJ)Lj$/time/Duration;
    .registers 8

    const-wide/32 v0, 0x3b9aca00

    .line 247
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide p0

    .line 248
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 249
    invoke-static {p0, p1, p2}, Lj$/time/Duration;->r(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static ofMillis(J)Lj$/time/Duration;
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 262
    div-long v2, p0, v0

    .line 263
    rem-long/2addr p0, v0

    long-to-int p0, p0

    if-gez p0, :cond_d

    add-int/lit16 p0, p0, 0x3e8

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    :cond_d
    const p1, 0xf4240

    mul-int/2addr p0, p1

    .line 268
    invoke-static {v2, v3, p0}, Lj$/time/Duration;->r(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static ofSeconds(J)Lj$/time/Duration;
    .registers 3

    const/4 v0, 0x0

    .line 224
    invoke-static {p0, p1, v0}, Lj$/time/Duration;->r(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method private static r(JI)Lj$/time/Duration;
    .registers 7

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 515
    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    return-object p0

    .line 517
    :cond_b
    new-instance v0, Lj$/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1543
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1533
    new-instance v0, Lj$/time/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final C()I
    .registers 2

    .line 643
    iget v0, p0, Lj$/time/Duration;->b:I

    return v0
.end method

.method public final J()J
    .registers 3

    .line 625
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    return-wide v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 133
    check-cast p1, Lj$/time/Duration;

    .line 1409
    iget-wide v0, p1, Lj$/time/Duration;->a:J

    iget-wide v2, p0, Lj$/time/Duration;->a:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 1413
    :cond_d
    iget v0, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1430
    :cond_4
    instance-of v1, p1, Lj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 1431
    check-cast p1, Lj$/time/Duration;

    .line 1432
    iget-wide v3, p1, Lj$/time/Duration;->a:J

    iget-wide v5, p0, Lj$/time/Duration;->a:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_1a

    iget v1, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    if-ne v1, p1, :cond_1a

    return v0

    :cond_1a
    return v2
.end method

.method public final hashCode()I
    .registers 6

    const/16 v0, 0x20

    .line 1445
    iget-wide v1, p0, Lj$/time/Duration;->a:J

    ushr-long v3, v1, v0

    xor-long v0, v1, v3

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Duration;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public final p(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 6

    .line 1101
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 1102
    sget-object v2, Lj$/time/temporal/b;->SECONDS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    .line 1104
    :cond_e
    iget v0, p0, Lj$/time/Duration;->b:I

    if-eqz v0, :cond_19

    int-to-long v0, v0

    .line 1105
    sget-object v2, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/m;->d(JLj$/time/temporal/v;)Lj$/time/temporal/m;

    move-result-object p1

    :cond_19
    return-object p1
.end method

.method public toMillis()J
    .registers 7

    .line 1218
    iget v0, p0, Lj$/time/Duration;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    .line 1219
    iget-wide v4, p0, Lj$/time/Duration;->a:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_12

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    const-wide/32 v2, 0x3b9aca00

    sub-long/2addr v0, v2

    :cond_12
    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 0
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    .line 1226
    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds()J
    .registers 3

    .line 1200
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 15

    .line 1473
    sget-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    if-ne p0, v0, :cond_7

    .line 1474
    const-string v0, "PT0S"

    return-object v0

    .line 1477
    :cond_7
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget v5, p0, Lj$/time/Duration;->b:I

    if-gez v4, :cond_17

    if-lez v5, :cond_17

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    goto :goto_18

    :cond_17
    move-wide v6, v0

    :goto_18
    const-wide/16 v8, 0xe10

    .line 1480
    div-long v10, v6, v8

    .line 1481
    rem-long v8, v6, v8

    const-wide/16 v12, 0x3c

    div-long/2addr v8, v12

    long-to-int v4, v8

    .line 1482
    rem-long/2addr v6, v12

    long-to-int v6, v6

    .line 1483
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x18

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1484
    const-string v8, "PT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v2

    if-eqz v8, :cond_3c

    .line 1486
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v8, 0x48

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3c
    if-eqz v4, :cond_46

    .line 1489
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x4d

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_46
    if-nez v6, :cond_56

    if-nez v5, :cond_56

    .line 1491
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v8, 0x2

    if-le v4, v8, :cond_56

    .line 1492
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_56
    cmp-long v4, v0, v2

    if-gez v4, :cond_68

    if-lez v5, :cond_68

    if-nez v6, :cond_64

    .line 1496
    const-string v4, "-0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 1498
    :cond_64
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6b

    .line 1501
    :cond_68
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6b
    if-lez v5, :cond_a3

    .line 1504
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_7e

    const-wide/32 v0, 0x77359400

    int-to-long v2, v5

    sub-long/2addr v0, v2

    .line 1506
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_86

    :cond_7e
    int-to-long v0, v5

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    .line 1508
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1510
    :goto_86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_9e

    .line 1511
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_86

    :cond_9e
    const/16 v0, 0x2e

    .line 1513
    invoke-virtual {v7, v4, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_a3
    const/16 v0, 0x53

    .line 1515
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    .line 1547
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 1548
    iget v0, p0, Lj$/time/Duration;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
