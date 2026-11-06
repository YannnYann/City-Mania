###### Class ads_mobile_sdk.y24 (ads_mobile_sdk.y24)
.class public abstract Lads_mobile_sdk/y24;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;
    .registers 12

    if-ltz p1, :cond_90

    const v0, 0xffff

    if-gt p1, v0, :cond_90

    .line 110
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    if-gez v5, :cond_13

    return-object v6

    :cond_13
    int-to-long v7, p1

    sub-long v3, v1, v3

    .line 116
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p1, v3

    const/16 v3, 0x16

    add-int/2addr p1, v3

    .line 118
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 119
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    int-to-long v7, v5

    sub-long/2addr v1, v7

    .line 121
    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    invoke-virtual {p0, v5, v7, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    if-ne p0, v4, :cond_88

    .line 124
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    const/4 v4, -0x1

    if-ge p0, v3, :cond_4d

    goto :goto_6d

    :cond_4d
    sub-int/2addr p0, v3

    .line 128
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_53
    if-ge v5, v3, :cond_6d

    sub-int v7, p0, v5

    .line 134
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    const v9, 0x6054b50

    if-ne v8, v9, :cond_6a

    add-int/lit8 v8, v7, 0x14

    .line 135
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    and-int/2addr v8, v0

    if-ne v8, v5, :cond_6a

    goto :goto_6e

    :cond_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_6d
    :goto_6d
    move v7, v4

    :goto_6e
    if-ne v7, v4, :cond_71

    return-object v6

    .line 136
    :cond_71
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 138
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 140
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ByteBuffer byte order must be little endian"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 142
    const-string v0, "maxCommentSize: "

    invoke-static {v0, p1}, Lads_mobile_sdk/uj;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
