###### Class j$.time.ZoneOffset (j$.time.ZoneOffset)
.class public final Lj$/time/ZoneOffset;
.super Lj$/time/x;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/time/x;",
        "Lj$/time/temporal/n;",
        "Lj$/time/temporal/o;",
        "Ljava/lang/Comparable<",
        "Lj$/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final UTC:Lj$/time/ZoneOffset;

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final f:Lj$/time/ZoneOffset;

.field public static final g:Lj$/time/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final b:I

.field private final transient c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/ZoneOffset;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/ZoneOffset;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    const v0, -0xfd20

    .line 155
    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->f:Lj$/time/ZoneOffset;

    const v0, 0xfd20

    .line 159
    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Lj$/time/ZoneOffset;->g:Lj$/time/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 8

    .line 439
    invoke-direct {p0}, Lj$/time/x;-><init>()V

    .line 440
    iput p1, p0, Lj$/time/ZoneOffset;->b:I

    if-nez p1, :cond_a

    .line 446
    const-string p1, "Z"

    goto :goto_52

    .line 448
    :cond_a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    div-int/lit16 v2, v0, 0xe10

    .line 451
    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    if-gez p1, :cond_1e

    .line 452
    const-string p1, "-"

    goto :goto_20

    :cond_1e
    const-string p1, "+"

    :goto_20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    if-ge v2, p1, :cond_2a

    .line 453
    const-string v4, "0"

    goto :goto_2c

    :cond_2a
    const-string v4, ""

    :goto_2c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string v2, ":"

    const-string v4, ":0"

    if-ge v3, p1, :cond_3a

    move-object v5, v4

    goto :goto_3b

    :cond_3a
    move-object v5, v2

    :goto_3b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    rem-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_4e

    if-ge v0, p1, :cond_48

    move-object v2, v4

    .line 457
    :cond_48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 441
    :goto_52
    iput-object p1, p0, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    return-void
.end method

.method public static c0(Ljava/lang/String;)Lj$/time/ZoneOffset;
    .registers 8

    .line 203
    const-string v0, "offsetId"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lj$/time/ZoneOffset;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_10

    return-object v0

    .line 212
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_63

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7f

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5a

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq v0, v5, :cond_50

    const/4 v5, 0x7

    if-eq v0, v5, :cond_43

    const/16 v1, 0x9

    if-ne v0, v1, :cond_37

    .line 236
    invoke-static {p0, v2, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v0

    .line 237
    invoke-static {p0, v6, v2}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v1

    .line 238
    invoke-static {p0, v5, v2}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v2

    goto :goto_85

    .line 241
    :cond_37
    new-instance v0, Lj$/time/c;

    const-string v1, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 241
    throw v0

    .line 231
    :cond_43
    invoke-static {p0, v2, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v0

    .line 232
    invoke-static {p0, v1, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v1

    .line 233
    invoke-static {p0, v4, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v2

    goto :goto_85

    .line 226
    :cond_50
    invoke-static {p0, v2, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v0

    .line 227
    invoke-static {p0, v6, v2}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v1

    :goto_58
    move v2, v3

    goto :goto_85

    .line 221
    :cond_5a
    invoke-static {p0, v2, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v0

    .line 222
    invoke-static {p0, v1, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v1

    goto :goto_58

    .line 214
    :cond_63
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 216
    :cond_7f
    invoke-static {p0, v2, v3}, Lj$/time/ZoneOffset;->f0(Ljava/lang/String;IZ)I

    move-result v0

    move v1, v3

    move v2, v1

    .line 243
    :goto_85
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    if-eq v3, v4, :cond_9e

    if-ne v3, v5, :cond_92

    goto :goto_9e

    .line 245
    :cond_92
    new-instance v0, Lj$/time/c;

    const-string v1, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 245
    throw v0

    :cond_9e
    :goto_9e
    if-ne v3, v5, :cond_a8

    neg-int p0, v0

    neg-int v0, v1

    neg-int v1, v2

    .line 248
    invoke-static {p0, v0, v1}, Lj$/time/ZoneOffset;->d0(III)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 250
    :cond_a8
    invoke-static {v0, v1, v2}, Lj$/time/ZoneOffset;->d0(III)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static d0(III)Lj$/time/ZoneOffset;
    .registers 7

    const/16 v0, -0x12

    if-lt p0, v0, :cond_91

    const/16 v0, 0x12

    if-gt p0, v0, :cond_91

    if-lez p0, :cond_17

    if-ltz p1, :cond_f

    if-ltz p2, :cond_f

    goto :goto_37

    .line 369
    :cond_f
    new-instance p0, Lj$/time/c;

    .line 88
    const-string p1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 369
    throw p0

    :cond_17
    if-gez p0, :cond_26

    if-gtz p1, :cond_1e

    if-gtz p2, :cond_1e

    goto :goto_37

    .line 373
    :cond_1e
    new-instance p0, Lj$/time/c;

    .line 88
    const-string p1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 373
    throw p0

    :cond_26
    if-lez p1, :cond_2a

    if-ltz p2, :cond_2f

    :cond_2a
    if-gez p1, :cond_37

    if-gtz p2, :cond_2f

    goto :goto_37

    .line 376
    :cond_2f
    new-instance p0, Lj$/time/c;

    .line 88
    const-string p1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 376
    throw p0

    .line 378
    :cond_37
    :goto_37
    const-string v1, " is not in the range -59 to 59"

    const/16 v2, -0x3b

    if-lt p1, v2, :cond_7a

    const/16 v3, 0x3b

    if-gt p1, v3, :cond_7a

    if-lt p2, v2, :cond_63

    if-gt p2, v3, :cond_63

    .line 386
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v0, :cond_58

    or-int v0, p1, p2

    if-nez v0, :cond_50

    goto :goto_58

    .line 387
    :cond_50
    new-instance p0, Lj$/time/c;

    .line 88
    const-string p1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 387
    throw p0

    :cond_58
    :goto_58
    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p0

    add-int/2addr p1, p2

    .line 319
    invoke-static {p1}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    .line 383
    :cond_63
    new-instance p0, Lj$/time/c;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Zone offset seconds not in valid range: value "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 383
    throw p0

    .line 379
    :cond_7a
    new-instance p0, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Zone offset minutes not in valid range: value "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 379
    throw p0

    .line 364
    :cond_91
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Zone offset hours not in valid range: value "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not in the range -18 to 18"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 364
    throw p1
.end method

.method public static e0(I)Lj$/time/ZoneOffset;
    .registers 4

    const v0, -0xfd20

    if-lt p0, v0, :cond_39

    const v0, 0xfd20

    if-gt p0, v0, :cond_39

    .line 417
    rem-int/lit16 v0, p0, 0x384

    if-nez v0, :cond_33

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 419
    sget-object v1, Lj$/time/ZoneOffset;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/ZoneOffset;

    if-nez v2, :cond_32

    .line 421
    new-instance v2, Lj$/time/ZoneOffset;

    invoke-direct {v2, p0}, Lj$/time/ZoneOffset;-><init>(I)V

    .line 422
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/ZoneOffset;

    .line 492
    iget-object v0, p0, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    .line 424
    sget-object v1, Lj$/time/ZoneOffset;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_32
    return-object v2

    .line 428
    :cond_33
    new-instance v0, Lj$/time/ZoneOffset;

    invoke-direct {v0, p0}, Lj$/time/ZoneOffset;-><init>(I)V

    return-object v0

    .line 415
    :cond_39
    new-instance p0, Lj$/time/c;

    .line 88
    const-string v0, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 415
    throw p0
.end method

.method private static f0(Ljava/lang/String;IZ)I
    .registers 5

    if-eqz p2, :cond_21

    add-int/lit8 p2, p1, -0x1

    .line 263
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x3a

    if-ne p2, v0, :cond_d

    goto :goto_21

    .line 264
    :cond_d
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 264
    throw p1

    .line 266
    :cond_21
    :goto_21
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    add-int/lit8 p1, p1, 0x1

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-lt p2, v0, :cond_3d

    const/16 v1, 0x39

    if-gt p2, v1, :cond_3d

    if-lt p1, v0, :cond_3d

    if-gt p1, v1, :cond_3d

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1

    .line 269
    :cond_3d
    new-instance p1, Lj$/time/c;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 269
    throw p1
.end method

.method static g0(Ljava/io/ObjectInput;)Lj$/time/ZoneOffset;
    .registers 3

    .line 796
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_11

    .line 797
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0

    :cond_11
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lj$/time/ZoneOffset;->e0(I)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 777
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 767
    new-instance v0, Lj$/time/s;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final C()Lj$/time/zone/f;
    .registers 2

    .line 505
    invoke-static {p0}, Lj$/time/zone/f;->h(Lj$/time/ZoneOffset;)Lj$/time/zone/f;

    move-result-object v0

    return-object v0
.end method

.method final Z(Ljava/io/ObjectOutput;)V
    .registers 3

    const/16 v0, 0x8

    .line 782
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 783
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->h0(Ljava/io/DataOutput;)V

    return-void
.end method

.method public final a(Lj$/time/temporal/u;)Ljava/lang/Object;
    .registers 3

    .line 653
    invoke-static {}, Lj$/time/temporal/t;->d()Lj$/time/temporal/u;

    move-result-object v0

    if-eq p1, v0, :cond_12

    invoke-static {}, Lj$/time/temporal/t;->f()Lj$/time/temporal/u;

    move-result-object v0

    if-ne p1, v0, :cond_d

    goto :goto_12

    .line 656
    :cond_d
    invoke-super {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    return-object p0
.end method

.method public final a0(Lj$/time/ZoneOffset;)I
    .registers 3

    .line 705
    iget p1, p1, Lj$/time/ZoneOffset;->b:I

    iget v0, p0, Lj$/time/ZoneOffset;->b:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final b0()I
    .registers 2

    .line 474
    iget v0, p0, Lj$/time/ZoneOffset;->b:I

    return v0
.end method

.method public final c(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .registers 5

    .line 685
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/ZoneOffset;->b:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->b(JLj$/time/temporal/s;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 130
    check-cast p1, Lj$/time/ZoneOffset;

    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->a0(Lj$/time/ZoneOffset;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 723
    :cond_4
    instance-of v1, p1, Lj$/time/ZoneOffset;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 724
    check-cast p1, Lj$/time/ZoneOffset;

    iget p1, p1, Lj$/time/ZoneOffset;->b:I

    iget v1, p0, Lj$/time/ZoneOffset;->b:I

    if-ne v1, p1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public final f(Lj$/time/temporal/s;)Z
    .registers 3

    .line 530
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_9

    .line 531
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_13

    goto :goto_11

    :cond_9
    if-eqz p1, :cond_13

    .line 533
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->W(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_13

    :goto_11
    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lj$/time/temporal/s;)J
    .registers 4

    .line 623
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_8

    .line 624
    iget p1, p0, Lj$/time/ZoneOffset;->b:I

    int-to-long v0, p1

    return-wide v0

    .line 625
    :cond_8
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_11

    .line 628
    invoke-interface {p1, p0}, Lj$/time/temporal/s;->r(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    .line 626
    :cond_11
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 626
    throw v0
.end method

.method final h0(Ljava/io/DataOutput;)V
    .registers 5

    .line 788
    iget v0, p0, Lj$/time/ZoneOffset;->b:I

    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_b

    div-int/lit16 v1, v0, 0x384

    goto :goto_c

    :cond_b
    move v1, v2

    .line 789
    :goto_c
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v1, v2, :cond_14

    .line 791
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_14
    return-void
.end method

.method public final hashCode()I
    .registers 2

    .line 736
    iget v0, p0, Lj$/time/ZoneOffset;->b:I

    return v0
.end method

.method public final i(Lj$/time/temporal/s;)I
    .registers 5

    .line 591
    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_7

    .line 592
    iget p1, p0, Lj$/time/ZoneOffset;->b:I

    return p1

    :cond_7
    if-nez p1, :cond_16

    .line 561
    invoke-super {p0, p1}, Lj$/time/temporal/n;->l(Lj$/time/temporal/s;)Lj$/time/temporal/x;

    move-result-object v0

    .line 596
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->g(Lj$/time/temporal/s;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/x;->a(JLj$/time/temporal/s;)I

    move-result p1

    return p1

    .line 594
    :cond_16
    new-instance v0, Lj$/time/temporal/w;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/s;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 594
    throw v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .line 492
    iget-object v0, p0, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 747
    iget-object v0, p0, Lj$/time/ZoneOffset;->c:Ljava/lang/String;

    return-object v0
.end method
