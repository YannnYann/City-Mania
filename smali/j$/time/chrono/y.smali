###### Class j$.time.chrono.y (j$.time.chrono.y)
.class public final Lj$/time/chrono/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/m;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/y;

.field private static final e:[Lj$/time/chrono/y;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient a:I

.field private final transient b:Lj$/time/h;

.field private final transient c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 139
    new-instance v0, Lj$/time/chrono/y;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v1

    const-string v3, "Meiji"

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v3}, Lj$/time/chrono/y;-><init>(ILj$/time/h;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 145
    new-instance v1, Lj$/time/chrono/y;

    const/16 v3, 0x1e

    const/16 v4, 0x778

    const/4 v5, 0x7

    invoke-static {v4, v5, v3}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Taisho"

    invoke-direct {v1, v4, v3, v5}, Lj$/time/chrono/y;-><init>(ILj$/time/h;Ljava/lang/String;)V

    .line 151
    new-instance v3, Lj$/time/chrono/y;

    const/16 v5, 0x19

    const/16 v6, 0x786

    const/16 v7, 0xc

    invoke-static {v6, v7, v5}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v5

    const-string v6, "Showa"

    invoke-direct {v3, v2, v5, v6}, Lj$/time/chrono/y;-><init>(ILj$/time/h;Ljava/lang/String;)V

    .line 157
    new-instance v5, Lj$/time/chrono/y;

    const/16 v6, 0x7c5

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v6

    const/4 v7, 0x2

    const-string v8, "Heisei"

    invoke-direct {v5, v7, v6, v8}, Lj$/time/chrono/y;-><init>(ILj$/time/h;Ljava/lang/String;)V

    .line 165
    new-instance v6, Lj$/time/chrono/y;

    const/16 v8, 0x7e3

    const/4 v9, 0x5

    invoke-static {v8, v9, v2}, Lj$/time/h;->f0(III)Lj$/time/h;

    move-result-object v8

    const/4 v10, 0x3

    const-string v11, "Reiwa"

    invoke-direct {v6, v10, v8, v11}, Lj$/time/chrono/y;-><init>(ILj$/time/h;Ljava/lang/String;)V

    .line 183
    new-array v8, v9, [Lj$/time/chrono/y;

    sput-object v8, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 184
    aput-object v0, v8, v4

    .line 185
    aput-object v1, v8, v2

    .line 186
    aput-object v3, v8, v7

    .line 187
    aput-object v5, v8, v10

    const/4 v0, 0x4

    .line 188
    aput-object v6, v8, v0

    return-void
.end method

.method private constructor <init>(ILj$/time/h;Ljava/lang/String;)V
    .registers 4

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput p1, p0, Lj$/time/chrono/y;->a:I

    .line 257
    iput-object p2, p0, Lj$/time/chrono/y;->b:Lj$/time/h;

    .line 258
    iput-object p3, p0, Lj$/time/chrono/y;->c:Ljava/lang/String;

    return-void
.end method

.method public static A()[Lj$/time/chrono/y;
    .registers 2

    .line 335
    sget-object v0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/y;

    return-object v0
.end method

.method static q(Lj$/time/h;)Lj$/time/chrono/y;
    .registers 5

    .line 368
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/h;

    invoke-virtual {p0, v0}, Lj$/time/h;->b0(Lj$/time/h;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 371
    sget-object v0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_1d

    .line 372
    aget-object v2, v0, v1

    .line 373
    iget-object v3, v2, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {p0, v3}, Lj$/time/h;->V(Lj$/time/chrono/b;)I

    move-result v3

    if-ltz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    .line 369
    :cond_1f
    new-instance p0, Lj$/time/c;

    .line 88
    const-string v0, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 369
    throw p0
.end method

.method static r()Lj$/time/chrono/y;
    .registers 2

    .line 199
    sget-object v0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 488
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(I)Lj$/time/chrono/y;
    .registers 4

    add-int/lit8 v0, p0, 0x1

    if-ltz v0, :cond_c

    .line 297
    sget-object v1, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 300
    aget-object p0, v1, v0

    return-object p0

    .line 298
    :cond_c
    new-instance v0, Lj$/time/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid era: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 504
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method static x()J
    .registers 8

    .line 226
    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->C()Lj$/time/temporal/x;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/x;->f()J

    move-result-wide v0

    .line 227
    sget-object v2, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_47

    aget-object v5, v2, v4

    .line 228
    iget-object v6, v5, Lj$/time/chrono/y;->b:Lj$/time/h;

    .line 890
    invoke-virtual {v6}, Lj$/time/h;->c0()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v6, 0x16e

    goto :goto_1f

    :cond_1d
    const/16 v6, 0x16d

    .line 228
    :goto_1f
    iget-object v7, v5, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v7}, Lj$/time/h;->W()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 229
    invoke-virtual {v5}, Lj$/time/chrono/y;->t()Lj$/time/chrono/y;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 230
    invoke-virtual {v5}, Lj$/time/chrono/y;->t()Lj$/time/chrono/y;

    move-result-object v5

    iget-object v5, v5, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v5}, Lj$/time/h;->W()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_47
    return-wide v0
.end method

.method static y()J
    .registers 7

    .line 208
    invoke-static {}, Lj$/time/chrono/y;->r()Lj$/time/chrono/y;

    move-result-object v0

    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    const v1, 0x3b9aca00

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    .line 209
    sget-object v2, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    aget-object v0, v2, v0

    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    .line 210
    :goto_1b
    array-length v5, v2

    if-ge v4, v5, :cond_35

    .line 211
    aget-object v5, v2, v4

    .line 212
    iget-object v6, v5, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v6}, Lj$/time/h;->a0()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/2addr v6, v3

    .line 213
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 214
    iget-object v0, v5, Lj$/time/chrono/y;->b:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a0()I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_35
    int-to-long v0, v1

    return-wide v0
.end method


# virtual methods
.method final C(Ljava/io/DataOutput;)V
    .registers 3

    .line 508
    iget v0, p0, Lj$/time/chrono/y;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public final l(Lj$/time/temporal/s;)Lj$/time/temporal/x;
    .registers 3

    .line 453
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_b

    .line 454
    sget-object p1, Lj$/time/chrono/v;->d:Lj$/time/chrono/v;

    invoke-virtual {p1, v0}, Lj$/time/chrono/v;->U(Lj$/time/temporal/a;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1

    .line 456
    :cond_b
    invoke-super {p0, p1}, Lj$/time/chrono/m;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object p1

    return-object p1
.end method

.method public final p()I
    .registers 2

    .line 422
    iget v0, p0, Lj$/time/chrono/y;->a:I

    return v0
.end method

.method final s()Lj$/time/h;
    .registers 2

    .line 272
    iget-object v0, p0, Lj$/time/chrono/y;->b:Lj$/time/h;

    return-object v0
.end method

.method final t()Lj$/time/chrono/y;
    .registers 2

    .line 472
    invoke-static {}, Lj$/time/chrono/y;->r()Lj$/time/chrono/y;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget v0, p0, Lj$/time/chrono/y;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/time/chrono/y;->w(I)Lj$/time/chrono/y;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lj$/time/chrono/y;->c:Ljava/lang/String;

    return-object v0
.end method
