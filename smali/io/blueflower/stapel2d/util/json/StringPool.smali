###### Class io.blueflower.stapel2d.util.json.StringPool (io.blueflower.stapel2d.util.json.StringPool)
.class public final Lio/blueflower/stapel2d/util/json/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field public final pool:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/blueflower/stapel2d/util/json/StringPool;->pool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_3
    add-int v3, p2, p3

    if-ge v1, v3, :cond_f

    mul-int/lit8 v2, v2, 0x1f

    .line 17
    aget-char v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    ushr-int/lit8 v1, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v1, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 23
    iget-object v2, p0, Lio/blueflower/stapel2d/util/json/StringPool;->pool:[Ljava/lang/String;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 25
    aget-object v2, v2, v1

    if-eqz v2, :cond_46

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p3, :cond_2c

    goto :goto_46

    :cond_2c
    :goto_2c
    if-ge v0, p3, :cond_45

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_42

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 35
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/StringPool;->pool:[Ljava/lang/String;

    aput-object v0, p1, v1

    return-object v0

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_45
    return-object v2

    .line 27
    :cond_46
    :goto_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 28
    iget-object p1, p0, Lio/blueflower/stapel2d/util/json/StringPool;->pool:[Ljava/lang/String;

    aput-object v0, p1, v1

    return-object v0
.end method
