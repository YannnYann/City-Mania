###### Class j$.time.q (j$.time.q)
.class public final Lj$/time/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final a:Lj$/time/k;

.field private final b:Lj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 128
    sget-object v0, Lj$/time/k;->e:Lj$/time/k;

    sget-object v1, Lj$/time/ZoneOffset;->g:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    invoke-static {v0, v1}, Lj$/time/q;->r(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;

    .line 136
    sget-object v0, Lj$/time/k;->f:Lj$/time/k;

    sget-object v1, Lj$/time/ZoneOffset;->f:Lj$/time/ZoneOffset;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    invoke-static {v0, v1}, Lj$/time/q;->r(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;

    return-void
.end method

.method private constructor <init>(Lj$/time/k;Lj$/time/ZoneOffset;)V
    .registers 4

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lj$/time/q;->a:Lj$/time/k;

    .line 339
    const-string p1, "offset"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    return-void
.end method

.method static J(Ljava/io/ObjectInput;)Lj$/time/q;
    .registers 3

    .line 1433
    invoke-static {p0}, Lj$/time/k;->j0(Ljava/io/ObjectInput;)Lj$/time/k;

    move-result-object v0

    .line 1434
    invoke-static {p0}, Lj$/time/ZoneOffset;->g0(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;

    move-result-object p0

    .line 213
    new-instance v1, Lj$/time/q;

    invoke-direct {v1, v0, p0}, Lj$/time/q;-><init>(Lj$/time/k;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method private S(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;
    .registers 4

    .line 349
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    .line 352
    :cond_d
    new-instance v0, Lj$/time/q;

    invoke-direct {v0, p1, p2}, Lj$/time/q;-><init>(Lj$/time/k;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static r(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;
    .registers 3

    .line 213
    new-instance v0, Lj$/time/q;

    invoke-direct {v0, p0, p1}, Lj$/time/q;-><init>(Lj$/time/k;Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1424
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1414
    new-instance v0, Lj$/time/s;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final C(JLj$/time/temporal/v;)Lj$/time/q;
    .registers 5

    .line 879
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_11

    .line 880
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/k;->e0(JLj$/time/temporal/v;)Lj$/time/k;

    move-result-object p1

    iget-object p2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lj$/time/q;->S(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    return-object p1

    .line 882
    :cond_11
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/v;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/q;

    return-object p1
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 6

    .line 1079
    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_42

    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_42

    .line 1081
    :cond_d
    invoke-static {}, Lj$/time/temporal/t;->g()Lj$/time/temporal/u;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    invoke-static {}, Lj$/time/temporal/t;->a()Lj$/time/temporal/u;

    move-result-object v3

    if-ne p1, v3, :cond_1f

    move v1, v2

    :cond_1f
    or-int/2addr v0, v1

    if-nez v0, :cond_40

    invoke-static {}, Lj$/time/temporal/t;->b()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_29

    goto :goto_40

    .line 1083
    :cond_29
    invoke-static {}, Lj$/time/temporal/t;->c()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_32

    .line 1084
    iget-object p1, p0, Lj$/time/q;->a:Lj$/time/k;

    return-object p1

    .line 1085
    :cond_32
    invoke-static {}, Lj$/time/temporal/t;->e()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_3b

    .line 1086
    sget-object p1, Lj$/time/temporal/b;->NANOS:Lj$/time/temporal/b;

    return-object p1

    .line 1090
    :cond_3b
    invoke-interface {p1, p0}, Lj$/time/temporal/u;->j(Lj$/time/temporal/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    :goto_40
    const/4 p1, 0x0

    return-object p1

    .line 1080
    :cond_42
    :goto_42
    iget-object p1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    return-object p1
.end method

.method public final b(JLj$/time/temporal/s;)Lj$/time/temporal/m;
    .registers 6

    .line 728
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_24

    .line 729
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->a:Lj$/time/k;

    if-ne p3, v0, :cond_19

    .line 730
    check-cast p3, Lj$/time/temporal/a;

    .line 731
    invoke-virtual {p3, p1, p2}, Lj$/time/temporal/a;->Z(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lj$/time/q;->S(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    return-object p1

    .line 733
    :cond_19
    invoke-virtual {v1, p1, p2, p3}, Lj$/time/k;->m0(JLj$/time/temporal/s;)Lj$/time/k;

    move-result-object p1

    iget-object p2, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-direct {p0, p1, p2}, Lj$/time/q;->S(Lj$/time/k;Lj$/time/ZoneOffset;)Lj$/time/q;

    move-result-object p1

    return-object p1

    .line 735
    :cond_24
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/s;->p(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/q;

    return-object p1
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 1121
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->a:Lj$/time/k;

    .line 1122
    invoke-virtual {v1}, Lj$/time/k;->k0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    .line 1123
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->b0()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 12

    .line 118
    check-cast p1, Lj$/time/q;

    .line 1286
    iget-object v0, p1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, v0}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Lj$/time/q;->a:Lj$/time/k;

    iget-object v3, p0, Lj$/time/q;->a:Lj$/time/k;

    if-eqz v0, :cond_15

    .line 1287
    invoke-virtual {v3, v2}, Lj$/time/k;->r(Lj$/time/k;)I

    move-result p1

    return p1

    .line 1230
    :cond_15
    invoke-virtual {v3}, Lj$/time/k;->k0()J

    move-result-wide v4

    .line 1231
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->b0()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v0, v6

    sub-long/2addr v4, v0

    .line 1230
    invoke-virtual {v2}, Lj$/time/k;->k0()J

    move-result-wide v0

    .line 1231
    iget-object p1, p1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->b0()I

    move-result p1

    int-to-long v8, p1

    mul-long/2addr v8, v6

    sub-long/2addr v0, v8

    .line 1289
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_3a

    .line 1291
    invoke-virtual {v3, v2}, Lj$/time/k;->r(Lj$/time/k;)I

    move-result p1

    :cond_3a
    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 4

    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->C(JLj$/time/temporal/v;)Lj$/time/q;

    move-result-object p1

    return-object p1
.end method

.method public final e(JLj$/time/temporal/v;)Lj$/time/temporal/m;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide p1, 0x7fffffffffffffffL

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->C(JLj$/time/temporal/v;)Lj$/time/q;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/q;->C(JLj$/time/temporal/v;)Lj$/time/q;

    move-result-object p1

    return-object p1

    :cond_16
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/q;->C(JLj$/time/temporal/v;)Lj$/time/q;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1361
    :cond_4
    instance-of v1, p1, Lj$/time/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 1362
    check-cast p1, Lj$/time/q;

    .line 1363
    iget-object v1, p1, Lj$/time/q;->a:Lj$/time/k;

    iget-object v3, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v3, v1}, Lj$/time/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    iget-object p1, p1, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 396
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_12

    .line 397
    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->b0()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1c

    goto :goto_1a

    :cond_12
    if-eqz p1, :cond_1c

    .line 399
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 530
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_17

    .line 531
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_10

    .line 532
    iget-object p1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->b0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 534
    :cond_10
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->g(Lj$/time/temporal/s;)J

    move-result-wide v0

    return-wide v0

    .line 536
    :cond_17
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 3

    .line 1375
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j(Lj$/time/h;)Lj$/time/temporal/m;
    .registers 2

    .line 688
    invoke-interface {p1, p0}, Lj$/time/chrono/b;->c(Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/q;

    return-object p1
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 464
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_16

    .line 465
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_f

    .line 466
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 468
    :cond_f
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-interface {v0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 470
    :cond_16
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->J(Lj$/time/temporal/n;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1397
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v0}, Lj$/time/k;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3

    .line 1428
    iget-object v0, p0, Lj$/time/q;->a:Lj$/time/k;

    invoke-virtual {v0, p1}, Lj$/time/k;->o0(Ljava/io/DataOutput;)V

    .line 1429
    iget-object v0, p0, Lj$/time/q;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->h0(Ljava/io/DataOutput;)V

    return-void
.end method
