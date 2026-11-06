###### Class vm2.LuaDouble (vm2.LuaDouble)
.class public Lvm2/LuaDouble;
.super Lvm2/LuaNumber;
.source "LuaDouble.java"


# static fields
.field public static final JSTR_NAN:Ljava/lang/String; = "nan"

.field public static final JSTR_NEGINF:Ljava/lang/String; = "-inf"

.field public static final JSTR_POSINF:Ljava/lang/String; = "inf"

.field public static final NAN:Lvm2/LuaDouble;

.field public static final NEGINF:Lvm2/LuaDouble;

.field public static final POSINF:Lvm2/LuaDouble;


# instance fields
.field final v:D


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    new-instance v0, Lvm2/LuaDouble;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lvm2/LuaDouble;-><init>(D)V

    sput-object v0, Lvm2/LuaDouble;->NAN:Lvm2/LuaDouble;

    .line 60
    new-instance v0, Lvm2/LuaDouble;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lvm2/LuaDouble;-><init>(D)V

    sput-object v0, Lvm2/LuaDouble;->POSINF:Lvm2/LuaDouble;

    .line 63
    new-instance v0, Lvm2/LuaDouble;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lvm2/LuaDouble;-><init>(D)V

    sput-object v0, Lvm2/LuaDouble;->NEGINF:Lvm2/LuaDouble;

    return-void
.end method

.method private constructor <init>(D)V
    .registers 3

    .line 83
    invoke-direct {p0}, Lvm2/LuaNumber;-><init>()V

    .line 84
    iput-wide p1, p0, Lvm2/LuaDouble;->v:D

    return-void
.end method

.method public static ddiv(DD)Lvm2/LuaValue;
    .registers 7

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_c

    div-double/2addr p0, p2

    .line 159
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_c
    cmpl-double p0, p0, v0

    if-lez p0, :cond_13

    sget-object p0, Lvm2/LuaDouble;->POSINF:Lvm2/LuaDouble;

    return-object p0

    :cond_13
    if-nez p0, :cond_18

    sget-object p0, Lvm2/LuaDouble;->NAN:Lvm2/LuaDouble;

    return-object p0

    :cond_18
    sget-object p0, Lvm2/LuaDouble;->NEGINF:Lvm2/LuaDouble;

    return-object p0
.end method

.method public static ddiv_d(DD)D
    .registers 7

    .line 0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_8

    div-double/2addr p0, p2

    return-wide p0

    :cond_8
    cmpl-double p0, p0, v0

    if-lez p0, :cond_f

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_f
    if-nez p0, :cond_14

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_14
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0
.end method

.method public static dmod(DD)Lvm2/LuaValue;
    .registers 11

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_40

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p0, v2

    if-eqz v4, :cond_40

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_13

    goto :goto_40

    :cond_13
    cmpl-double v2, p2, v2

    if-nez v2, :cond_23

    cmpg-double p2, p0, v0

    if-gez p2, :cond_1e

    .line 182
    sget-object p0, Lvm2/LuaDouble;->POSINF:Lvm2/LuaDouble;

    return-object p0

    :cond_1e
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_23
    cmpl-double v2, p2, v4

    if-nez v2, :cond_33

    cmpl-double p2, p0, v0

    if-lez p2, :cond_2e

    .line 185
    sget-object p0, Lvm2/LuaDouble;->NEGINF:Lvm2/LuaDouble;

    return-object p0

    :cond_2e
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_33
    div-double v0, p0, p2

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0

    .line 180
    :cond_40
    :goto_40
    sget-object p0, Lvm2/LuaDouble;->NAN:Lvm2/LuaDouble;

    return-object p0
.end method

.method public static dmod_d(DD)D
    .registers 11

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_2f

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p0, v2

    if-eqz v4, :cond_2f

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_13

    goto :goto_2f

    :cond_13
    cmpl-double v6, p2, v2

    if-nez v6, :cond_1c

    cmpg-double p2, p0, v0

    if-gez p2, :cond_25

    return-wide v2

    :cond_1c
    cmpl-double v2, p2, v4

    if-nez v2, :cond_26

    cmpl-double p2, p0, v0

    if-lez p2, :cond_25

    return-wide v4

    :cond_25
    return-wide p0

    :cond_26
    div-double v0, p0, p2

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr p2, v0

    sub-double/2addr p0, p2

    return-wide p0

    :cond_2f
    :goto_2f
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static valueOf(D)Lvm2/LuaNumber;
    .registers 5

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_b

    .line 79
    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lvm2/LuaDouble;

    invoke-direct {v0, p0, p1}, Lvm2/LuaDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public add(D)Lvm2/LuaValue;
    .registers 5

    .line 128
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 127
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->add(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble()D
    .registers 3

    .line 288
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    return-wide v0
.end method

.method public checkint()I
    .registers 3

    .line 285
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public checkinteger()Lvm2/LuaInteger;
    .registers 3

    .line 109
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    invoke-static {v0}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .registers 2

    .line 291
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public checknumber()Lvm2/LuaNumber;
    .registers 1

    .line 0
    return-object p0
.end method

.method public checkstring()Lvm2/LuaString;
    .registers 2

    .line 294
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public div(D)Lvm2/LuaValue;
    .registers 5

    .line 142
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lvm2/LuaValue;
    .registers 6

    .line 143
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 141
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->divInto(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lvm2/LuaValue;
    .registers 5

    .line 144
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 118
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->raweq(D)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_b
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 4

    .line 119
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->raweq(D)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 115
    instance-of v0, p1, Lvm2/LuaDouble;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p1, Lvm2/LuaDouble;

    iget-wide v2, p1, Lvm2/LuaDouble;->v:D

    iget-wide v4, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    return v1
.end method

.method public gt(D)Lvm2/LuaValue;
    .registers 5

    .line 222
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v0, p1

    if-lez p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gt(I)Lvm2/LuaValue;
    .registers 6

    .line 223
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 221
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->lt_b(D)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->gt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gt_b(D)Z
    .registers 5

    .line 226
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v0, p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(I)Z
    .registers 6

    .line 225
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(Lvm2/LuaValue;)Z
    .registers 4

    .line 224
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->lt_b(D)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->gt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public gteq(D)Lvm2/LuaValue;
    .registers 5

    .line 228
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gteq(I)Lvm2/LuaValue;
    .registers 6

    .line 229
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 227
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->lteq_b(D)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->gteq(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public gteq_b(D)Z
    .registers 5

    .line 232
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(I)Z
    .registers 6

    .line 231
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(Lvm2/LuaValue;)Z
    .registers 4

    .line 230
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->lteq_b(D)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->gteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 5

    .line 88
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    add-int/2addr v2, v0

    return v2
.end method

.method public islong()Z
    .registers 5

    .line 93
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v2, v0

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isnumber()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .registers 3

    .line 298
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public lt(D)Lvm2/LuaValue;
    .registers 5

    .line 210
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lt(I)Lvm2/LuaValue;
    .registers 6

    .line 211
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 209
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->gt_b(D)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->lt(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lt_b(D)Z
    .registers 5

    .line 214
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(I)Z
    .registers 6

    .line 213
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(Lvm2/LuaValue;)Z
    .registers 4

    .line 212
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->gt_b(D)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public lteq(D)Lvm2/LuaValue;
    .registers 5

    .line 216
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_9

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_9
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lteq(I)Lvm2/LuaValue;
    .registers 6

    .line 217
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 215
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->gteq_b(D)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_12
    invoke-super {p0, p1}, Lvm2/LuaValue;->lteq(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public lteq_b(D)Z
    .registers 5

    .line 220
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(I)Z
    .registers 6

    .line 219
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(Lvm2/LuaValue;)Z
    .registers 4

    .line 218
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->gteq_b(D)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public mod(D)Lvm2/LuaValue;
    .registers 5

    .line 146
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lvm2/LuaValue;
    .registers 6

    .line 147
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 145
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->modFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 148
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lvm2/LuaValue;
    .registers 5

    .line 134
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lvm2/LuaValue;
    .registers 6

    int-to-double v0, p1

    .line 135
    iget-wide v2, p0, Lvm2/LuaDouble;->v:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 133
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->mul(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lvm2/LuaValue;
    .registers 3

    .line 112
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .registers 3

    .line 104
    iget-wide p1, p0, Lvm2/LuaDouble;->v:D

    return-wide p1
.end method

.method public optint(I)I
    .registers 4

    .line 105
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int p1, v0

    return p1
.end method

.method public optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 4

    .line 106
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int p1, v0

    invoke-static {p1}, Lvm2/LuaInteger;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 267
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(J)J
    .registers 3

    .line 107
    iget-wide p1, p0, Lvm2/LuaDouble;->v:D

    double-to-long p1, p1

    return-wide p1
.end method

.method public optnumber(Lvm2/LuaNumber;)Lvm2/LuaNumber;
    .registers 2

    .line 0
    return-object p0
.end method

.method public optstring(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 259
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lvm2/LuaValue;
    .registers 5

    .line 137
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1, p1, p2}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lvm2/LuaValue;
    .registers 6

    .line 138
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 136
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->powWith(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lvm2/LuaValue;
    .registers 5

    .line 139
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {p1, p2, v0, v1}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lvm2/LuaValue;
    .registers 6

    int-to-double v0, p1

    .line 140
    iget-wide v2, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public raweq(D)Z
    .registers 5

    .line 123
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    cmpl-double p1, v0, p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(I)Z
    .registers 6

    .line 124
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lvm2/LuaValue;)Z
    .registers 4

    .line 122
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->raweq(D)Z

    move-result p1

    return p1
.end method

.method public strcmp(Lvm2/LuaString;)I
    .registers 2

    .line 235
    const-string p1, "attempt to compare number with string"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strvalue()Lvm2/LuaString;
    .registers 2

    .line 255
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public sub(D)Lvm2/LuaValue;
    .registers 5

    .line 130
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lvm2/LuaValue;
    .registers 6

    .line 131
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    int-to-double v2, p1

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 129
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->subFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 132
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public tobyte()B
    .registers 3

    .line 96
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .registers 3

    .line 97
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .registers 3

    .line 98
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    return-wide v0
.end method

.method public tofloat()F
    .registers 3

    .line 99
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-float v0, v0

    return v0
.end method

.method public toint()I
    .registers 3

    .line 100
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 7

    .line 244
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v4, v4, v0

    if-nez v4, :cond_d

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 248
    const-string v0, "nan"

    return-object v0

    .line 249
    :cond_16
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 250
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_29

    const-string v0, "-inf"

    return-object v0

    :cond_29
    const-string v0, "inf"

    return-object v0

    .line 251
    :cond_2c
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public tonumber()Lvm2/LuaValue;
    .registers 1

    .line 0
    return-object p0
.end method

.method public toshort()S
    .registers 3

    .line 102
    iget-wide v0, p0, Lvm2/LuaDouble;->v:D

    double-to-long v0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lvm2/LuaValue;
    .registers 2

    .line 263
    invoke-virtual {p0}, Lvm2/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method
