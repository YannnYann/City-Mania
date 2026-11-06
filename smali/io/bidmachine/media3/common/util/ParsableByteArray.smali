###### Class io.bidmachine.media3.common.util.ParsableByteArray (io.bidmachine.media3.common.util.ParsableByteArray)
.class public final Lio/bidmachine/media3/common/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "ParsableByteArray.java"


# static fields
.field public static final CR_AND_LF:[C

.field public static final LF:[C

.field public static final SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:[B

.field public limit:I

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [C

    fill-array-data v0, :array_24

    sput-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    const/4 v0, 0x1

    .line 37
    new-array v0, v0, [C

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->LF:[C

    .line 38
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 39
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    return-void

    nop

    :array_24
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-array v0, p1, [B

    iput-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    .line 63
    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    .line 73
    array-length p1, p1

    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    .line 84
    iput p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method


# virtual methods
.method public bytesLeft()I
    .registers 3

    .line 136
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .line 186
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    return v0
.end method

.method public ensureCapacity(I)V
    .registers 3

    .line 129
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    :cond_e
    return-void
.end method

.method public final findNextLineTerminator(Ljava/nio/charset/Charset;)I
    .registers 6

    .line 668
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_43

    .line 670
    :cond_11
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 671
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 672
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_41

    .line 675
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    const/4 v0, 0x2

    goto :goto_44

    :cond_43
    :goto_43
    const/4 v0, 0x1

    .line 677
    :goto_44
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    :goto_46
    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v3, v0, -0x1

    sub-int v3, v2, v3

    if-ge v1, v3, :cond_a5

    .line 678
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_5e
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    .line 679
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_a2

    .line 681
    :cond_69
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 682
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_79
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v2, v1

    if-nez v3, :cond_8a

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    .line 684
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    goto :goto_a2

    .line 686
    :cond_8a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_a3

    aget-byte v2, v2, v1

    .line 688
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->isLinebreak(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    :goto_a2
    return v1

    :cond_a3
    add-int/2addr v1, v0

    goto :goto_46

    :cond_a5
    return v2
.end method

.method public getData()[B
    .registers 2

    .line 181
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 156
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return v0
.end method

.method public limit()I
    .registers 2

    .line 141
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    return v0
.end method

.method public peekChar(Ljava/nio/charset/Charset;)C
    .registers 5

    .line 259
    sget-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 260
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 261
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    int-to-char p1, p1

    return p1
.end method

.method public final peekCharacterAndSize(Ljava/nio/charset/Charset;)I
    .registers 7

    .line 735
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 736
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v2, :cond_20

    .line 738
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte p1, p1, v0

    move v4, v1

    goto :goto_5b

    .line 740
    :cond_20
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_31

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 741
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 742
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lt v0, v3, :cond_42

    .line 743
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, p1, v0

    add-int/2addr v0, v2

    .line 744
    aget-byte p1, p1, v0

    :goto_40
    move v2, v3

    goto :goto_5b

    .line 746
    :cond_42
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lt p1, v3, :cond_60

    .line 747
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v0, 0x1

    aget-byte v4, p1, v2

    .line 748
    aget-byte p1, p1, v0

    goto :goto_40

    .line 753
    :goto_5b
    invoke-static {v4, p1, v1, v2}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result p1

    return p1

    :cond_60
    return v1
.end method

.method public peekUnsignedByte()I
    .registers 3

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V
    .registers 5

    .line 208
    iget-object v0, p1, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 209
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    return-void
.end method

.method public readBytes([BII)V
    .registers 6

    .line 221
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public final readCharacterIfInList(Ljava/nio/charset/Charset;[C)C
    .registers 5

    .line 711
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result p1

    if-eqz p1, :cond_19

    shr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    .line 713
    invoke-static {p2, v0}, Lcom/google/common/primitives/Chars;->contains([CC)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 714
    iget p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    const v1, 0xffff

    and-int/2addr p1, v1

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return v0

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public readDelimiterTerminatedString(C)Ljava/lang/String;
    .registers 5

    .line 509
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 512
    :cond_8
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    .line 513
    :goto_a
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v0

    if-eq v1, p1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 516
    :cond_17
    iget-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    invoke-static {p1, v1, v2}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object p1

    .line 517
    iput v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    .line 518
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-ge v0, v1, :cond_2b

    add-int/lit8 v0, v0, 0x1

    .line 519
    iput v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    :cond_2b
    return-object p1
.end method

.method public readDouble()D
    .registers 3

    .line 443
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2

    .line 438
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .registers 6

    .line 335
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public readInt24()I
    .registers 6

    .line 298
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2

    .line 531
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    .line 552
    sget-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    .line 553
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 554
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_22

    const/4 p1, 0x0

    return-object p1

    .line 557
    :cond_22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 558
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    .line 560
    :cond_2d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->findNextLineTerminator(Ljava/nio/charset/Charset;)I

    move-result v0

    .line 561
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-ne v1, v2, :cond_3f

    return-object v0

    .line 565
    :cond_3f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipLineTerminator(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readLittleEndianInt()I
    .registers 6

    .line 343
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    iput v3, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public readLittleEndianLong()J
    .registers 12

    .line 363
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x3

    iput v8, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x10

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x5

    iput v8, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x20

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x28

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x7

    iput v8, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v9, v7

    and-long/2addr v9, v5

    const/16 v7, 0x30

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    add-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v8

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readLittleEndianShort()S
    .registers 5

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    int-to-short v0, v0

    return v0
.end method

.method public readLittleEndianUnsignedInt()J
    .registers 11

    .line 327
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x8

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x10

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readLittleEndianUnsignedIntToInt()I
    .registers 5

    .line 416
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 418
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readLittleEndianUnsignedShort()I
    .registers 5

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    return v0
.end method

.method public readLong()J
    .registers 11

    .line 351
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x30

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x28

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x4

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x20

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x5

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x18

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v7, v1, 0x6

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v4, v0, v4

    int-to-long v8, v4

    and-long/2addr v8, v5

    const/16 v4, 0x10

    shl-long/2addr v8, v4

    or-long/2addr v2, v8

    add-int/lit8 v4, v1, 0x7

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/2addr v1, v9

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readNullTerminatedString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readDelimiterTerminatedString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readNullTerminatedString(I)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    .line 478
    const-string p1, ""

    return-object p1

    .line 481
    :cond_5
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 482
    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_18

    add-int/lit8 v1, p1, -0x1

    goto :goto_19

    :cond_18
    move v1, p1

    .line 485
    :goto_19
    iget-object v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v2, v0, v1}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public readShort()S
    .registers 5

    .line 281
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    int-to-short v0, v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 3

    .line 453
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 464
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 465
    iget p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public readSynchSafeInt()I
    .registers 5

    .line 389
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 390
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 391
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 392
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public readUnsignedByte()I
    .registers 4

    .line 266
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedFixedPoint1616()I
    .registers 6

    .line 375
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 376
    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return v0
.end method

.method public readUnsignedInt()J
    .registers 11

    .line 319
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v7, 0x18

    shl-long/2addr v3, v7

    add-int/lit8 v7, v1, 0x2

    iput v7, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    int-to-long v8, v2

    and-long/2addr v8, v5

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long v2, v3, v8

    add-int/lit8 v4, v1, 0x3

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    const/16 v9, 0x8

    shl-long/2addr v7, v9

    or-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedInt24()I
    .registers 6

    .line 291
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v1, 0x2

    iput v4, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public readUnsignedIntToInt()I
    .registers 5

    .line 402
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 404
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Top bit not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readUnsignedLeb128ToInt()I
    .registers 3

    .line 636
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLeb128ToLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    return v0
.end method

.method public readUnsignedLeb128ToLong()J
    .registers 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_4
    const/16 v5, 0x9

    if-ge v2, v5, :cond_2d

    .line 616
    iget v5, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    iget v6, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-eq v5, v6, :cond_25

    .line 619
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x7f

    and-long/2addr v7, v5

    mul-int/lit8 v9, v2, 0x7

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    const-wide/16 v7, 0x80

    and-long/2addr v5, v7

    cmp-long v5, v5, v0

    if-nez v5, :cond_22

    return-wide v3

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 617
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to read a byte over the limit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-wide v3
.end method

.method public readUnsignedLongToLong()J
    .registers 6

    .line 429
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b

    return-wide v0

    .line 431
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top bit not zero: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUnsignedShort()I
    .registers 5

    .line 271
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    return v0
.end method

.method public readUtf8EncodedLong()J
    .registers 12

    .line 577
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_9
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_25

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_22

    if-ge v3, v4, :cond_1e

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_26

    :cond_1e
    if-ne v3, v2, :cond_25

    move v2, v5

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_5c

    :goto_28
    if-ge v5, v2, :cond_56

    .line 594
    iget-object v3, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3f

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 596
    :cond_3f
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence continuation byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_56
    iget v3, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-wide v0

    .line 591
    :cond_5c
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid UTF-8 sequence first byte: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readUtfCharsetFromBom()Ljava/nio/charset/Charset;
    .registers 8

    .line 645
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v2

    const/16 v4, -0x11

    if-ne v3, v4, :cond_27

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    const/16 v4, -0x45

    if-ne v3, v4, :cond_27

    add-int/lit8 v3, v2, 0x2

    aget-byte v0, v0, v3

    const/16 v3, -0x41

    if-ne v0, v3, :cond_27

    add-int/2addr v2, v1

    .line 649
    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    .line 650
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 651
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_52

    .line 652
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    aget-byte v3, v0, v2

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-ne v3, v5, :cond_44

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v4, :cond_44

    add-int/2addr v2, v1

    .line 653
    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    .line 654
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object v0

    :cond_44
    if-ne v3, v4, :cond_52

    add-int/lit8 v3, v2, 0x1

    .line 655
    aget-byte v0, v0, v3

    if-ne v0, v5, :cond_52

    add-int/2addr v2, v1

    .line 656
    iput v2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    .line 657
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object v0

    :cond_52
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(I)V
    .registers 3

    .line 94
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_9

    new-array v0, p1, [B

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    :goto_b
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public reset([B)V
    .registers 3

    .line 104
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public reset([BI)V
    .registers 3

    .line 114
    iput-object p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    .line 115
    iput p2, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    const/4 p1, 0x0

    .line 116
    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public setLimit(I)V
    .registers 3

    if-ltz p1, :cond_9

    .line 150
    iget-object v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 151
    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public setPosition(I)V
    .registers 3

    if-ltz p1, :cond_8

    .line 168
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 169
    iput p1, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public skipBytes(I)V
    .registers 3

    .line 197
    iget v0, p0, Lio/bidmachine/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public final skipLineTerminator(Ljava/nio/charset/Charset;)V
    .registers 4

    .line 696
    sget-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    .line 697
    sget-object v0, Lio/bidmachine/media3/common/util/ParsableByteArray;->LF:[C

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    :cond_f
    return-void
.end method
