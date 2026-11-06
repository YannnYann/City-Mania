###### Class vm2.LuaInteger (vm2.LuaInteger)
.class public Lvm2/LuaInteger;
.super Lvm2/LuaNumber;
.source "LuaInteger.java"


# static fields
.field private static final INTEGER_CACHE_OFFSET:I = -0x400

.field private static final INTEGER_CACHE_SIZE:I = 0x800

.field private static final intValues:[Lvm2/LuaInteger;


# instance fields
.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x800

    .line 48
    new-array v1, v0, [Lvm2/LuaInteger;

    sput-object v1, Lvm2/LuaInteger;->intValues:[Lvm2/LuaInteger;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 51
    sget-object v2, Lvm2/LuaInteger;->intValues:[Lvm2/LuaInteger;

    new-instance v3, Lvm2/LuaInteger;

    add-int/lit16 v4, v1, -0x400

    invoke-direct {v3, v4}, Lvm2/LuaInteger;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 79
    invoke-direct {p0}, Lvm2/LuaNumber;-><init>()V

    .line 80
    iput p1, p0, Lvm2/LuaInteger;->v:I

    return-void
.end method

.method public static hashCode(I)I
    .registers 1

    .line 0
    return p0
.end method

.method public static valueOf(I)Lvm2/LuaInteger;
    .registers 3

    const/16 v0, -0x400

    if-lt p0, v0, :cond_e

    const/16 v1, 0x400

    if-ge p0, v1, :cond_e

    .line 55
    sget-object v1, Lvm2/LuaInteger;->intValues:[Lvm2/LuaInteger;

    sub-int/2addr p0, v0

    aget-object p0, v1, p0

    return-object p0

    :cond_e
    new-instance v0, Lvm2/LuaInteger;

    invoke-direct {v0, p0}, Lvm2/LuaInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lvm2/LuaNumber;
    .registers 5

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1a

    const/16 p0, -0x400

    if-lt v0, p0, :cond_14

    const/16 p1, 0x400

    if-ge v0, p1, :cond_14

    .line 67
    sget-object p1, Lvm2/LuaInteger;->intValues:[Lvm2/LuaInteger;

    sub-int/2addr v0, p0

    aget-object p0, p1, v0

    return-object p0

    .line 68
    :cond_14
    new-instance p0, Lvm2/LuaInteger;

    invoke-direct {p0, v0}, Lvm2/LuaInteger;-><init>(I)V

    return-object p0

    :cond_1a
    long-to-double p0, p0

    .line 69
    invoke-static {p0, p1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(D)Lvm2/LuaValue;
    .registers 5

    .line 153
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lvm2/LuaValue;
    .registers 6

    int-to-long v0, p1

    .line 154
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaInteger;->valueOf(J)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 152
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->add(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble()D
    .registers 3

    .line 213
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public checkint()I
    .registers 2

    .line 207
    iget v0, p0, Lvm2/LuaInteger;->v:I

    return v0
.end method

.method public checkinteger()Lvm2/LuaInteger;
    .registers 1

    .line 0
    return-object p0
.end method

.method public checkjstring()Ljava/lang/String;
    .registers 2

    .line 216
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .registers 3

    .line 210
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public checkstring()Lvm2/LuaString;
    .registers 2

    .line 219
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public div(D)Lvm2/LuaValue;
    .registers 5

    .line 169
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lvm2/LuaValue;
    .registers 6

    .line 170
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 168
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->divInto(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lvm2/LuaValue;
    .registers 5

    .line 171
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->ddiv(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 143
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(I)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_b
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public eq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 144
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 140
    instance-of v0, p1, Lvm2/LuaInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Lvm2/LuaInteger;

    iget p1, p1, Lvm2/LuaInteger;->v:I

    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v1
.end method

.method public gt(D)Lvm2/LuaValue;
    .registers 5

    .line 191
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gt(I)Lvm2/LuaValue;
    .registers 3

    .line 192
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-le v0, p1, :cond_7

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_7
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 190
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->lt_b(I)Z

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

    .line 195
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-lez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(I)Z
    .registers 3

    .line 194
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-le v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public gt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 193
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->lt_b(I)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->gt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public gteq(D)Lvm2/LuaValue;
    .registers 5

    .line 197
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gteq(I)Lvm2/LuaValue;
    .registers 3

    .line 198
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-lt v0, p1, :cond_7

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_7
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public gteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 196
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->lteq_b(I)Z

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

    .line 201
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(I)Z
    .registers 3

    .line 200
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-lt v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public gteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 199
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->lteq_b(I)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->gteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 129
    iget v0, p0, Lvm2/LuaInteger;->v:I

    return v0
.end method

.method public isint()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isinttype()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public islong()Z
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

.method public lt(D)Lvm2/LuaValue;
    .registers 5

    .line 179
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lt(I)Lvm2/LuaValue;
    .registers 3

    .line 180
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-ge v0, p1, :cond_7

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_7
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lt(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 178
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->gt_b(I)Z

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

    .line 183
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(I)Z
    .registers 3

    .line 182
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-ge v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public lt_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 181
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->gt_b(I)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->lt_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public lteq(D)Lvm2/LuaValue;
    .registers 5

    .line 185
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_a

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lteq(I)Lvm2/LuaValue;
    .registers 3

    .line 186
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-gt v0, p1, :cond_7

    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_7
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

.method public lteq(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 184
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_12

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->gteq_b(I)Z

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

    .line 189
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(I)Z
    .registers 3

    .line 188
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-gt v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public lteq_b(Lvm2/LuaValue;)Z
    .registers 3

    .line 187
    instance-of v0, p1, Lvm2/LuaNumber;

    if-eqz v0, :cond_b

    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->gteq_b(I)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Lvm2/LuaValue;->lteq_b(Lvm2/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public mod(D)Lvm2/LuaValue;
    .registers 5

    .line 173
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lvm2/LuaValue;
    .registers 6

    .line 174
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 172
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->modFrom(D)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 175
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lvm2/LuaDouble;->dmod(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lvm2/LuaValue;
    .registers 5

    .line 161
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lvm2/LuaValue;
    .registers 6

    int-to-long v0, p1

    .line 162
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaInteger;->valueOf(J)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 160
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->mul(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lvm2/LuaValue;
    .registers 3

    .line 137
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-long v0, v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lvm2/LuaInteger;->valueOf(J)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .registers 3

    .line 95
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-double p1, p1

    return-wide p1
.end method

.method public optint(I)I
    .registers 2

    .line 96
    iget p1, p0, Lvm2/LuaInteger;->v:I

    return p1
.end method

.method public optinteger(Lvm2/LuaInteger;)Lvm2/LuaInteger;
    .registers 2

    .line 0
    return-object p0
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 117
    iget p1, p0, Lvm2/LuaInteger;->v:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(J)J
    .registers 3

    .line 98
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public optstring(Lvm2/LuaString;)Lvm2/LuaString;
    .registers 2

    .line 109
    iget p1, p0, Lvm2/LuaInteger;->v:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lvm2/LuaValue;
    .registers 5

    .line 164
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lvm2/LuaValue;
    .registers 6

    .line 165
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 163
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->powWith(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lvm2/LuaValue;
    .registers 5

    .line 166
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lvm2/LuaValue;
    .registers 6

    int-to-double v0, p1

    .line 167
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lvm2/lib/MathLib;->dpow(DD)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public raweq(D)Z
    .registers 5

    .line 148
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double p1, v0, p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(I)Z
    .registers 3

    .line 149
    iget v0, p0, Lvm2/LuaInteger;->v:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public raweq(Lvm2/LuaValue;)Z
    .registers 3

    .line 147
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public strcmp(Lvm2/LuaString;)I
    .registers 2

    .line 204
    const-string p1, "attempt to compare number with string"

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->typerror(Ljava/lang/String;)Lvm2/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strvalue()Lvm2/LuaString;
    .registers 2

    .line 105
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public sub(D)Lvm2/LuaValue;
    .registers 5

    .line 156
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lvm2/LuaValue;
    .registers 3

    .line 157
    iget v0, p0, Lvm2/LuaInteger;->v:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 155
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->subFrom(I)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lvm2/LuaValue;
    .registers 5

    .line 158
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lvm2/LuaDouble;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(I)Lvm2/LuaValue;
    .registers 6

    int-to-long v0, p1

    .line 159
    iget p1, p0, Lvm2/LuaInteger;->v:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lvm2/LuaInteger;->valueOf(J)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public tobyte()B
    .registers 2

    .line 87
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .registers 2

    .line 88
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .registers 3

    .line 89
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public tofloat()F
    .registers 2

    .line 90
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-float v0, v0

    return v0
.end method

.method public toint()I
    .registers 2

    .line 91
    iget v0, p0, Lvm2/LuaInteger;->v:I

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .registers 2

    .line 101
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .registers 3

    .line 92
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toshort()S
    .registers 2

    .line 93
    iget v0, p0, Lvm2/LuaInteger;->v:I

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lvm2/LuaValue;
    .registers 2

    .line 113
    iget v0, p0, Lvm2/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaString;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method
