###### Class j$.time.chrono.G (j$.time.chrono.G)
.class public final Lj$/time/chrono/G;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/G;

.field private static final serialVersionUID:J = 0x26862bec417f21daL


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 114
    new-instance v0, Lj$/time/chrono/G;

    invoke-direct {v0}, Lj$/time/chrono/G;-><init>()V

    sput-object v0, Lj$/time/chrono/G;->d:Lj$/time/chrono/G;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    const-string v3, "BB"

    const-string v4, "BE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "th"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "B.B."

    const-string v3, "B.E."

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "\u0e1e.\u0e28."

    const-string v3, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "Before Buddhist"

    const-string v1, "Budhhist Era"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "\u0e1e\u0e38\u0e17\u0e18\u0e28\u0e31\u0e01\u0e23\u0e32\u0e0a"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 398
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(II)Lj$/time/chrono/b;
    .registers 4

    .line 258
    new-instance v0, Lj$/time/chrono/I;

    add-int/lit16 p1, p1, -0x21f

    invoke-static {p1, p2}, Lj$/time/h;->i0(II)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .registers 2

    .line 345
    invoke-static {}, Lj$/time/chrono/J;->values()[Lj$/time/chrono/J;

    move-result-object v0

    invoke-static {v0}, Lj$/time/b;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final G(III)Lj$/time/chrono/b;
    .registers 5

    .line 228
    new-instance v0, Lj$/time/chrono/I;

    add-int/lit16 p1, p1, -0x21f

    invoke-static {p1, p2, p3}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final L()Lj$/time/chrono/b;
    .registers 3

    .line 275
    invoke-static {}, Lj$/time/b;->c()Lj$/time/b;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lj$/time/h;->e0(Lj$/time/b;)Lj$/time/h;

    move-result-object v0

    .line 293
    new-instance v1, Lj$/time/chrono/I;

    invoke-static {v0}, Lj$/time/h;->J(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object v0

    invoke-direct {v1, v0}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    return-object v1
.end method

.method public final N(I)Lj$/time/chrono/m;
    .registers 5

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 142
    sget-object p1, Lj$/time/chrono/J;->BE:Lj$/time/chrono/J;

    return-object p1

    .line 144
    :cond_8
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 144
    throw v0

    .line 140
    :cond_1c
    sget-object p1, Lj$/time/chrono/J;->BEFORE_BE:Lj$/time/chrono/J;

    return-object p1
.end method

.method public final P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;
    .registers 3

    .line 371
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->P(Ljava/util/Map;Lj$/time/format/x;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/I;

    return-object p1
.end method

.method public final R()Ljava/lang/String;
    .registers 2

    .line 195
    const-string v0, "buddhist"

    return-object v0
.end method

.method public final U(Lj$/time/temporal/a;)Lj$/time/temporal/x;
    .registers 8

    .line 351
    sget-object v0, Lj$/time/chrono/F;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    const-wide/16 v2, 0x21f

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    .line 365
    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 361
    :cond_18
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lj$/time/temporal/x;->e()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/temporal/x;->d()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 357
    :cond_2d
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Lj$/time/temporal/x;->e()J

    move-result-wide v0

    add-long/2addr v0, v2

    neg-long v0, v0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p1}, Lj$/time/temporal/x;->d()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 147
    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/x;->k(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 353
    :cond_46
    sget-object p1, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lj$/time/temporal/x;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x1974

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/temporal/x;->d()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Lj$/time/temporal/x;->j(JJ)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final q(J)Lj$/time/chrono/b;
    .registers 4

    .line 270
    new-instance v0, Lj$/time/chrono/I;

    invoke-static {p1, p2}, Lj$/time/h;->h0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, "ThaiBuddhist"

    return-object v0
.end method

.method public final t(Lj$/time/temporal/n;)Lj$/time/chrono/b;
    .registers 3

    .line 290
    instance-of v0, p1, Lj$/time/chrono/I;

    if-eqz v0, :cond_7

    .line 291
    check-cast p1, Lj$/time/chrono/I;

    return-object p1

    .line 293
    :cond_7
    new-instance v0, Lj$/time/chrono/I;

    invoke-static {p1}, Lj$/time/h;->J(Lj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/I;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final w(Lj$/time/chrono/m;I)I
    .registers 4

    .line 332
    instance-of v0, p1, Lj$/time/chrono/J;

    if-eqz v0, :cond_c

    .line 335
    sget-object v0, Lj$/time/chrono/J;->BE:Lj$/time/chrono/J;

    if-ne p1, v0, :cond_9

    return p2

    :cond_9
    rsub-int/lit8 p1, p2, 0x1

    return p1

    .line 333
    :cond_c
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be BuddhistEra"

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
