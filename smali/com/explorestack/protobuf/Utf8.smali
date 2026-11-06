###### Class com.explorestack.protobuf.Utf8 (com.explorestack.protobuf.Utf8)
.class public final Lcom/explorestack/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/Utf8$DecodeUtil;,
        Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;,
        Lcom/explorestack/protobuf/Utf8$SafeProcessor;,
        Lcom/explorestack/protobuf/Utf8$Processor;,
        Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field public static final processor:Lcom/explorestack/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    invoke-static {}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/explorestack/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_17

    :cond_12
    new-instance v0, Lcom/explorestack/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/explorestack/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_17
    sput-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    return-void
.end method

.method public static synthetic access$000(II)I
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(III)I
    .registers 3

    .line 76
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100([BII)I
    .registers 3

    .line 76
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(I)I
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 76
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Ljava/nio/ByteBuffer;III)I
    .registers 4

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method public static decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeUtf8([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 340
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/CharSequence;[BII)I
    .registers 5

    .line 293
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 241
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 246
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 252
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 256
    :cond_25
    invoke-static {p0, v1}, Lcom/explorestack/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-lt v2, v0, :cond_2d

    return v2

    .line 263
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 270
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_35

    .line 273
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_32

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_32

    const v3, 0xdfff

    if-gt v2, v3, :cond_32

    .line 281
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 283
    :cond_2c
    new-instance p0, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_35
    return v1
.end method

.method public static estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .registers 8

    add-int/lit8 p2, p2, -0x7

    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_18

    .line 374
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_18
    sub-int/2addr v0, p1

    return v0
.end method

.method public static incompleteStateFor(I)I
    .registers 2

    .line 0
    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method public static incompleteStateFor(II)I
    .registers 3

    .line 0
    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_d
    :goto_d
    const/4 p0, -0x1

    return p0
.end method

.method public static incompleteStateFor(III)I
    .registers 4

    .line 0
    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method public static incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .registers 6

    if-eqz p3, :cond_25

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1c

    const/4 v1, 0x2

    if-ne p3, v1, :cond_16

    .line 215
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    .line 217
    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 213
    :cond_1c
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    .line 211
    :cond_25
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method public static incompleteStateFor([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 194
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    .line 201
    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    .line 203
    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 199
    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    .line 197
    :cond_24
    invoke-static {v0}, Lcom/explorestack/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method public static isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 307
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/explorestack/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([B)Z
    .registers 4

    .line 147
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/explorestack/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([BII)Z
    .registers 4

    .line 159
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 5

    .line 320
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 5

    .line 176
    sget-object v0, Lcom/explorestack/protobuf/Utf8;->processor:Lcom/explorestack/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p0

    return p0
.end method

###### Class com.explorestack.protobuf.Utf8.DecodeUtil (com.explorestack.protobuf.Utf8$DecodeUtil)
.class public Lcom/explorestack/protobuf/Utf8$DecodeUtil;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeUtil"
.end annotation


# direct methods
.method public static synthetic access$1000(BBBB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1883
    invoke-static/range {p0 .. p5}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V

    return-void
.end method

.method public static synthetic access$400(B)Z
    .registers 1

    .line 1883
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(B[CI)V
    .registers 3

    .line 1883
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V

    return-void
.end method

.method public static synthetic access$600(B)Z
    .registers 1

    .line 1883
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(BB[CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1883
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V

    return-void
.end method

.method public static synthetic access$800(B)Z
    .registers 1

    .line 1883
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(BBB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1883
    invoke-static {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V

    return-void
.end method

.method public static handleFourBytes(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1933
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_41

    .line 1942
    invoke-static {p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1943
    invoke-static {p3}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_41

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 1948
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 1949
    invoke-static {p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 1950
    invoke-static {p3}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    .line 1951
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->highSurrogate(I)C

    move-result p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 1952
    invoke-static {p0}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->lowSurrogate(I)C

    move-result p0

    aput-char p0, p4, p5

    return-void

    .line 1944
    :cond_41
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static handleOneByte(B[CI)V
    .registers 3

    int-to-char p0, p0

    .line 1901
    aput-char p0, p1, p2

    return-void
.end method

.method public static handleThreeBytes(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1917
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2e

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2e

    .line 1922
    :cond_14
    invoke-static {p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_2e

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 1927
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    .line 1923
    :cond_2e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static handleTwoBytes(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    .line 1908
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->isNotTrailingByte(B)Z

    move-result v0

    if-nez v0, :cond_17

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 1911
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->trailingByteValue(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    .line 1909
    :cond_17
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static highSurrogate(I)C
    .registers 2

    .line 0
    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static isNotTrailingByte(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isOneByte(B)Z
    .registers 1

    .line 0
    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static isThreeBytes(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isTwoBytes(B)Z
    .registers 2

    .line 0
    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static lowSurrogate(I)C
    .registers 2

    .line 0
    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method public static trailingByteValue(B)I
    .registers 1

    .line 0
    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

###### Class com.explorestack.protobuf.Utf8.Processor (com.explorestack.protobuf.Utf8$Processor)
.class public abstract Lcom/explorestack/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Processor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 10

    .line 541
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_5
    :goto_5
    if-lt p1, p2, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 552
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_83

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_2a

    if-lt v0, p2, :cond_1b

    return v1

    :cond_1b
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_29

    .line 564
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_29
    :goto_29
    return v3

    :cond_2a
    const/16 v5, -0x10

    if-ge v1, v5, :cond_57

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_38

    sub-int/2addr p2, v0

    .line 572
    invoke-static {p0, v1, v0, p2}, Lcom/explorestack/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_38
    add-int/lit8 v5, p1, 0x2

    .line 575
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_56

    const/16 v6, -0x60

    if-ne v1, v2, :cond_46

    if-lt v0, v6, :cond_56

    :cond_46
    const/16 v2, -0x13

    if-ne v1, v2, :cond_4c

    if-ge v0, v6, :cond_56

    .line 582
    :cond_4c
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 p1, p1, 0x3

    goto :goto_5

    :cond_56
    :goto_56
    return v3

    :cond_57
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_61

    sub-int/2addr p2, v0

    .line 590
    invoke-static {p0, v1, v0, p2}, Lcom/explorestack/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_61
    add-int/lit8 v2, p1, 0x2

    .line 594
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_82

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_82

    add-int/lit8 v0, p1, 0x3

    .line 602
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v4, :cond_82

    add-int/lit8 p1, p1, 0x4

    .line 604
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_5

    :cond_82
    return v3

    :cond_83
    move p1, v0

    goto :goto_5
.end method


# virtual methods
.method public final decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 627
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 628
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 629
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 630
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 632
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract decodeUtf8([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public final decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 646
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_ba

    add-int v0, p2, p3

    .line 656
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_11
    if-ge p2, v0, :cond_27

    .line 662
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 663
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_27

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 667
    invoke-static {v2, v5, v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_11

    :cond_27
    :goto_27
    move v6, v1

    :goto_28
    if-ge p2, v0, :cond_b4

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    .line 671
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 672
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-eqz v3, :cond_56

    add-int/lit8 p2, v6, 0x1

    .line 673
    invoke-static {v1, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v2

    :goto_3d
    if-ge v1, v0, :cond_53

    .line 677
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 678
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_53

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x1

    .line 682
    invoke-static {v2, v5, p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v3

    goto :goto_3d

    :cond_53
    :goto_53
    move v6, p2

    move p2, v1

    goto :goto_28

    .line 684
    :cond_56
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v3

    if-eqz v3, :cond_70

    if-ge v2, v0, :cond_6b

    add-int/lit8 p2, p2, 0x2

    .line 689
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v3, v6, 0x1

    .line 688
    invoke-static {v1, v2, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v6, v3

    goto :goto_28

    .line 686
    :cond_6b
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 690
    :cond_70
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v3

    if-eqz v3, :cond_92

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_8d

    add-int/lit8 v3, p2, 0x2

    .line 696
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 p2, p2, 0x3

    .line 697
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v4, v6, 0x1

    .line 694
    invoke-static {v1, v2, v3, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v6, v4

    goto :goto_28

    .line 692
    :cond_8d
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_92
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_af

    add-int/lit8 v3, p2, 0x2

    .line 706
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v4, p2, 0x3

    .line 707
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 p2, p2, 0x4

    .line 708
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 704
    invoke-static/range {v1 .. v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_28

    .line 702
    :cond_af
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 716
    :cond_b4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 647
    :cond_ba
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 648
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method public abstract encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method public final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method public final isValidUtf8([BII)Z
    .registers 5

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method public final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 6

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 429
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 430
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1

    .line 431
    :cond_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 434
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public abstract partialIsValidUtf8(I[BII)I
.end method

.method public final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 11

    if-eqz p1, :cond_92

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1e

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1d

    add-int/lit8 p1, p3, 0x1

    .line 469
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    goto :goto_1d

    :cond_1a
    move p3, p1

    goto/16 :goto_92

    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    const/16 v4, -0x10

    if-ge v0, v4, :cond_4f

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_38

    add-int/lit8 p1, p3, 0x1

    .line 478
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_35

    .line 480
    invoke-static {v0, p3}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_35
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_38
    if-gt p1, v3, :cond_4e

    const/16 v4, -0x60

    if-ne v0, v1, :cond_40

    if-lt p1, v4, :cond_4e

    :cond_40
    const/16 v1, -0x13

    if-ne v0, v1, :cond_46

    if-ge p1, v4, :cond_4e

    :cond_46
    add-int/lit8 p1, p3, 0x1

    .line 489
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    :cond_4e
    return v2

    :cond_4f
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_64

    add-int/lit8 p1, p3, 0x1

    .line 499
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt p1, p4, :cond_62

    .line 501
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_62
    const/4 p3, 0x0

    goto :goto_6a

    :cond_64
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_6a
    if-nez p3, :cond_7c

    add-int/lit8 p3, p1, 0x1

    .line 507
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_79

    .line 509
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_79
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_7c
    if-gt v1, v3, :cond_91

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_91

    if-gt p3, v3, :cond_91

    add-int/lit8 p3, p1, 0x1

    .line 526
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_92

    :cond_91
    return v2

    .line 533
    :cond_92
    :goto_92
    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method

###### Class com.explorestack.protobuf.Utf8.SafeProcessor (com.explorestack.protobuf.Utf8$SafeProcessor)
.class public final Lcom/explorestack/protobuf/Utf8$SafeProcessor;
.super Lcom/explorestack/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeProcessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 860
    invoke-direct {p0}, Lcom/explorestack/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method public static partialIsValidUtf8([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1098
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1102
    :cond_d
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8NonAscii([BII)I
    .registers 10

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 1115
    aget-byte v1, p0, p1

    if-gez v1, :cond_6a

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_1f

    if-lt v0, p2, :cond_14

    return v1

    :cond_14
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_1e

    add-int/lit8 p1, p1, 0x2

    .line 1127
    aget-byte v0, p0, v0

    if-le v0, v4, :cond_0

    :cond_1e
    return v3

    :cond_1f
    const/16 v5, -0x10

    if-ge v1, v5, :cond_45

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_2c

    .line 1134
    invoke-static {p0, v0, p2}, Lcom/explorestack/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v5, p1, 0x2

    .line 1136
    aget-byte v0, p0, v0

    if-gt v0, v4, :cond_44

    const/16 v6, -0x60

    if-ne v1, v2, :cond_38

    if-lt v0, v6, :cond_44

    :cond_38
    const/16 v2, -0x13

    if-ne v1, v2, :cond_3e

    if-ge v0, v6, :cond_44

    :cond_3e
    add-int/lit8 p1, p1, 0x3

    aget-byte v0, p0, v5

    if-le v0, v4, :cond_0

    :cond_44
    return v3

    :cond_45
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_4e

    .line 1149
    invoke-static {p0, v0, p2}, Lcom/explorestack/protobuf/Utf8;->access$1100([BII)I

    move-result p0

    return p0

    :cond_4e
    add-int/lit8 v2, p1, 0x2

    .line 1151
    aget-byte v0, p0, v0

    if-gt v0, v4, :cond_69

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_69

    add-int/lit8 v0, p1, 0x3

    aget-byte v1, p0, v2

    if-gt v1, v4, :cond_69

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v4, :cond_0

    :cond_69
    return v3

    :cond_6a
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method public decodeUtf8([BII)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 958
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_a4

    add-int v0, p2, p3

    .line 968
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_e
    if-ge p2, v0, :cond_22

    .line 974
    aget-byte v2, p1, p2

    .line 975
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_22

    :cond_19
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 979
    invoke-static {v2, v5, v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_e

    :cond_22
    :goto_22
    move v6, v1

    :goto_23
    if-ge p2, v0, :cond_9e

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    .line 983
    aget-byte v1, p1, p2

    .line 984
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-eqz v3, :cond_4d

    add-int/lit8 p2, v6, 0x1

    .line 985
    invoke-static {v1, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v2

    :goto_36
    if-ge v1, v0, :cond_4a

    .line 989
    aget-byte v2, p1, v1

    .line 990
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_4a

    :cond_41
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x1

    .line 994
    invoke-static {v2, v5, p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v3

    goto :goto_36

    :cond_4a
    :goto_4a
    move v6, p2

    move p2, v1

    goto :goto_23

    .line 996
    :cond_4d
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v3

    if-eqz v3, :cond_65

    if-ge v2, v0, :cond_60

    add-int/lit8 p2, p2, 0x2

    .line 1000
    aget-byte v2, p1, v2

    add-int/lit8 v3, v6, 0x1

    invoke-static {v1, v2, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v6, v3

    goto :goto_23

    .line 998
    :cond_60
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1001
    :cond_65
    invoke-static {v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v3

    if-eqz v3, :cond_83

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_7e

    add-int/lit8 v3, p2, 0x2

    .line 1005
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, v6, 0x1

    invoke-static {v1, v2, v3, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v6, v4

    goto :goto_23

    .line 1003
    :cond_7e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_83
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_99

    add-int/lit8 v3, p2, 0x2

    .line 1015
    aget-byte v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 p2, p2, 0x4

    aget-byte v4, p1, v4

    invoke-static/range {v1 .. v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_23

    .line 1013
    :cond_99
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1027
    :cond_9e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 959
    :cond_a4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1034
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 1039
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 1045
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 1046
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p3, v0

    return p3

    :cond_1e
    add-int/2addr p3, v1

    :goto_1f
    if-ge v1, v0, :cond_fd

    .line 1053
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 1055
    aput-byte v3, p2, p3

    move p3, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4b

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 1057
    aput-byte v5, p2, p3

    add-int/lit8 p3, p3, 0x2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1058
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 1061
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1062
    aput-byte v6, p2, v4

    add-int/lit8 p3, p3, 0x3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 1063
    aput-byte v3, p2, v5

    goto :goto_b5

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 1068
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 1071
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 1072
    aput-byte v5, p2, p3

    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v1, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1073
    aput-byte v6, p2, v3

    add-int/lit8 v3, p3, 0x3

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    .line 1074
    aput-byte v6, p2, v5

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 1075
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 1069
    :cond_ba
    new-instance p1, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v5, v3, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 1080
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 1081
    :cond_d8
    new-instance p1, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p1, v1, v0}, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p1

    .line 1083
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fd
    return p3
.end method

.method public partialIsValidUtf8(I[BII)I
    .registers 11

    if-eqz p1, :cond_86

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1c

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1b

    add-int/lit8 p1, p3, 0x1

    .line 881
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    goto :goto_1b

    :cond_18
    move p3, p1

    goto/16 :goto_86

    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    const/16 v4, -0x10

    if-ge v0, v4, :cond_49

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_34

    add-int/lit8 p1, p3, 0x1

    .line 892
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_31

    .line 894
    invoke-static {v0, p3}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_31
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_34
    if-gt p1, v3, :cond_48

    const/16 v4, -0x60

    if-ne v0, v1, :cond_3c

    if-lt p1, v4, :cond_48

    :cond_3c
    const/16 v1, -0x13

    if-ne v0, v1, :cond_42

    if-ge p1, v4, :cond_48

    :cond_42
    add-int/lit8 p1, p3, 0x1

    .line 897
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    :cond_48
    return v2

    :cond_49
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_5c

    add-int/lit8 p1, p3, 0x1

    .line 913
    aget-byte v1, p2, p3

    if-lt p1, p4, :cond_5a

    .line 915
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_5a
    const/4 p3, 0x0

    goto :goto_62

    :cond_5c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_62
    if-nez p3, :cond_72

    add-int/lit8 p3, p1, 0x1

    .line 921
    aget-byte p1, p2, p1

    if-lt p3, p4, :cond_6f

    .line 923
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_6f
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_72
    if-gt v1, v3, :cond_85

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_85

    if-gt p3, v3, :cond_85

    add-int/lit8 p3, p1, 0x1

    .line 931
    aget-byte p1, p2, p1

    if-le p1, v3, :cond_86

    :cond_85
    return v2

    .line 946
    :cond_86
    :goto_86
    invoke-static {p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result p1

    return p1
.end method

.method public partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 5

    .line 952
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

###### Class com.explorestack.protobuf.Utf8.UnpairedSurrogateException (com.explorestack.protobuf.Utf8$UnpairedSurrogateException)
.class public Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;
.super Ljava/lang/IllegalArgumentException;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnpairedSurrogateException"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.explorestack.protobuf.Utf8.UnsafeProcessor (com.explorestack.protobuf.Utf8$UnsafeProcessor)
.class public final Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;
.super Lcom/explorestack/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1169
    invoke-direct {p0}, Lcom/explorestack/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .registers 1

    .line 1172
    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/explorestack/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public static partialIsValidUtf8(JI)I
    .registers 13

    .line 1774
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :cond_7
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    .line 1783
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_9

    :cond_19
    move-wide p0, v4

    :cond_1a
    if-nez p2, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v0, p2, -0x1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    if-ge v1, v4, :cond_3a

    if-nez v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 p2, p2, -0x2

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p0

    .line 1800
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v6, :cond_37

    goto :goto_39

    :cond_37
    move-wide p0, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v7, -0x10

    const-wide/16 v8, 0x2

    if-ge v1, v7, :cond_65

    const/4 v7, 0x2

    if-ge v0, v7, :cond_48

    .line 1808
    invoke-static {p0, p1, v1, v0}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_48
    add-int/lit8 p2, p2, -0x3

    add-long/2addr v2, p0

    .line 1812
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_64

    const/16 v7, -0x60

    if-ne v1, v4, :cond_57

    if-lt v0, v7, :cond_64

    :cond_57
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5d

    if-ge v0, v7, :cond_64

    :cond_5d
    add-long/2addr p0, v8

    .line 1819
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_64
    return v5

    :cond_65
    const/4 v4, 0x3

    if-ge v0, v4, :cond_6d

    .line 1827
    invoke-static {p0, p1, v1, v0}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    :cond_6d
    add-int/lit8 p2, p2, -0x4

    add-long/2addr v2, p0

    .line 1831
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_8f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_8f

    add-long/2addr v8, p0

    .line 1839
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v6, :cond_8f

    const-wide/16 v0, 0x3

    add-long/2addr p0, v0

    .line 1841
    invoke-static {v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_8f
    return v5
.end method

.method public static partialIsValidUtf8([BJI)I
    .registers 14

    .line 1700
    invoke-static {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :cond_7
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .line 1709
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v0, p3, -0x1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    if-ge v1, v4, :cond_3a

    if-nez v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 p3, p3, -0x2

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    .line 1726
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v6, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v7, -0x10

    const-wide/16 v8, 0x2

    if-ge v1, v7, :cond_65

    const/4 v7, 0x2

    if-ge v0, v7, :cond_48

    .line 1733
    invoke-static {p0, v1, p1, p2, v0}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_48
    add-int/lit8 p3, p3, -0x3

    add-long/2addr v2, p1

    .line 1738
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_64

    const/16 v7, -0x60

    if-ne v1, v4, :cond_57

    if-lt v0, v7, :cond_64

    :cond_57
    const/16 v4, -0x13

    if-ne v1, v4, :cond_5d

    if-ge v0, v7, :cond_64

    :cond_5d
    add-long/2addr p1, v8

    .line 1744
    invoke-static {p0, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_64
    return v5

    :cond_65
    const/4 v4, 0x3

    if-ge v0, v4, :cond_6d

    .line 1751
    invoke-static {p0, v1, p1, p2, v0}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    :cond_6d
    add-int/lit8 p3, p3, -0x4

    add-long/2addr v2, p1

    .line 1756
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_8f

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_8f

    add-long/2addr v8, p1

    .line 1763
    invoke-static {p0, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v6, :cond_8f

    const-wide/16 v0, 0x3

    add-long/2addr p1, v0

    .line 1765
    invoke-static {p0, v8, v9}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-le v0, v6, :cond_7

    :cond_8f
    return v5
.end method

.method public static unsafeEstimateConsecutiveAscii(JI)I
    .registers 9

    const/16 v0, 0x10

    if-ge p2, v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    move v2, v0

    :goto_e
    if-lez v2, :cond_1f

    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    .line 1683
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1b

    sub-int/2addr v0, v2

    return v0

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_e

    :cond_1f
    sub-int v0, p2, v0

    :goto_21
    if-lt v0, v1, :cond_39

    .line 1693
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_21

    :cond_39
    sub-int/2addr p2, v0

    return p2
.end method

.method public static unsafeEstimateConsecutiveAscii([BJI)I
    .registers 8

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ge p3, v0, :cond_6

    return v1

    :cond_6
    :goto_6
    if-ge v1, p3, :cond_16

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    .line 1660
    invoke-static {p0, p1, p2}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_6

    :cond_16
    return p3
.end method

.method public static unsafeIncompleteStateFor(JII)I
    .registers 6

    if-eqz p3, :cond_27

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 1871
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1870
    invoke-static {p2, p3, p0}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1873
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1868
    :cond_1e
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    invoke-static {p2, p0}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1866
    :cond_27
    invoke-static {p2}, Lcom/explorestack/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method

.method public static unsafeIncompleteStateFor([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 1857
    invoke-static {p0, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1856
    invoke-static {p1, p4, p0}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1859
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1854
    :cond_1e
    invoke-static {p0, p2, p3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1852
    :cond_27
    invoke-static {p1}, Lcom/explorestack/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public decodeUtf8([BII)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1369
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_c1

    add-int v0, p2, p3

    .line 1379
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_e
    if-ge p2, v0, :cond_25

    int-to-long v2, p2

    .line 1385
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    .line 1386
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_25

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 1390
    invoke-static {v2, v5, v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_e

    :cond_25
    :goto_25
    move v6, v1

    :goto_26
    if-ge p2, v0, :cond_bb

    add-int/lit8 v1, p2, 0x1

    int-to-long v2, p2

    .line 1394
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    .line 1395
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-eqz v3, :cond_54

    add-int/lit8 p2, v6, 0x1

    .line 1396
    invoke-static {v2, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    :goto_3a
    if-ge v1, v0, :cond_51

    int-to-long v2, v1

    .line 1400
    invoke-static {p1, v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v2

    .line 1401
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_51

    :cond_48
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x1

    .line 1405
    invoke-static {v2, v5, p2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v3

    goto :goto_3a

    :cond_51
    :goto_51
    move v6, p2

    move p2, v1

    goto :goto_26

    .line 1407
    :cond_54
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v3

    if-eqz v3, :cond_6f

    if-ge v1, v0, :cond_6a

    add-int/lit8 p2, p2, 0x2

    int-to-long v3, v1

    .line 1412
    invoke-static {p1, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    add-int/lit8 v3, v6, 0x1

    .line 1411
    invoke-static {v2, v1, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v6, v3

    goto :goto_26

    .line 1409
    :cond_6a
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1413
    :cond_6f
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v3

    if-eqz v3, :cond_93

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_8e

    add-int/lit8 v3, p2, 0x2

    int-to-long v7, v1

    .line 1419
    invoke-static {p1, v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    add-int/lit8 p2, p2, 0x3

    int-to-long v3, v3

    .line 1420
    invoke-static {p1, v3, v4}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 v4, v6, 0x1

    .line 1417
    invoke-static {v2, v1, v3, v5, v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v6, v4

    goto :goto_26

    .line 1415
    :cond_8e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_93
    add-int/lit8 v3, v0, -0x2

    if-ge v1, v3, :cond_b6

    add-int/lit8 v3, p2, 0x2

    int-to-long v7, v1

    .line 1429
    invoke-static {p1, v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    add-int/lit8 v4, p2, 0x3

    int-to-long v7, v3

    .line 1430
    invoke-static {p1, v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    add-int/lit8 p2, p2, 0x4

    int-to-long v7, v4

    .line 1431
    invoke-static {p1, v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1427
    invoke-static/range {v1 .. v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_26

    .line 1425
    :cond_b6
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1439
    :cond_bb
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1370
    :cond_c1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    .line 1371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    or-int v2, v0, v1

    .line 1446
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    or-int/2addr v2, v3

    if-ltz v2, :cond_d2

    .line 1450
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v4, v2

    .line 1455
    new-array v10, v1, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    cmp-long v6, v2, v4

    const-wide/16 v12, 0x1

    if-gez v6, :cond_34

    .line 1461
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1462
    invoke-static {v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v7

    if-nez v7, :cond_2c

    goto :goto_34

    :cond_2c
    add-long/2addr v2, v12

    add-int/lit8 v7, v1, 0x1

    .line 1466
    invoke-static {v6, v10, v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v7

    goto :goto_1b

    :cond_34
    :goto_34
    move v11, v1

    :goto_35
    cmp-long v1, v2, v4

    if-gez v1, :cond_cc

    add-long v6, v2, v12

    move-wide v7, v6

    .line 1470
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    .line 1471
    invoke-static {v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v1

    if-eqz v1, :cond_66

    add-int/lit8 v1, v11, 0x1

    .line 1472
    invoke-static {v6, v10, v11}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move-wide v6, v7

    :goto_4c
    cmp-long v2, v6, v4

    if-gez v2, :cond_63

    .line 1476
    invoke-static {v6, v7}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    .line 1477
    invoke-static {v2}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_5b

    goto :goto_63

    :cond_5b
    add-long/2addr v6, v12

    add-int/lit8 v3, v1, 0x1

    .line 1481
    invoke-static {v2, v10, v1}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_4c

    :cond_63
    :goto_63
    move v11, v1

    move-wide v2, v6

    goto :goto_35

    .line 1483
    :cond_66
    invoke-static {v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v1

    const-wide/16 v14, 0x2

    if-eqz v1, :cond_83

    cmp-long v1, v7, v4

    if-gez v1, :cond_7e

    add-long/2addr v2, v14

    .line 1488
    invoke-static {v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-int/lit8 v7, v11, 0x1

    .line 1487
    invoke-static {v6, v1, v10, v11}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v11, v7

    goto :goto_35

    .line 1485
    :cond_7e
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1489
    :cond_83
    invoke-static {v6}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v1

    const-wide/16 v16, 0x3

    if-eqz v1, :cond_a8

    sub-long v18, v4, v12

    cmp-long v1, v7, v18

    if-gez v1, :cond_a3

    add-long/2addr v14, v2

    .line 1495
    invoke-static {v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-long v2, v2, v16

    .line 1496
    invoke-static {v14, v15}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-int/lit8 v8, v11, 0x1

    .line 1493
    invoke-static {v6, v1, v7, v10, v11}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v11, v8

    goto :goto_35

    .line 1491
    :cond_a3
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_a8
    sub-long v18, v4, v14

    cmp-long v1, v7, v18

    if-gez v1, :cond_c7

    add-long/2addr v14, v2

    .line 1505
    invoke-static {v7, v8}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    add-long v16, v2, v16

    .line 1506
    invoke-static {v14, v15}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    const-wide/16 v14, 0x4

    add-long/2addr v2, v14

    .line 1507
    invoke-static/range {v16 .. v17}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v9

    .line 1503
    invoke-static/range {v6 .. v11}, Lcom/explorestack/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_35

    .line 1501
    :cond_c7
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1515
    :cond_cc
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v10, v0, v11}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1447
    :cond_d2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1448
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1522
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1523
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_135

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_135

    const/4 v2, 0x0

    :goto_1a
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_2f

    .line 1532
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 1533
    invoke-static {v1, v4, v5, v3}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_133

    .line 1541
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4c

    cmp-long v14, v4, v6

    if-gez v14, :cond_4c

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 1543
    invoke-static {v1, v4, v5, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v19, v6

    move-wide/from16 p3, v11

    move-wide v4, v14

    goto/16 :goto_ef

    :cond_4c
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_70

    sub-long v17, v6, v15

    cmp-long v14, v4, v17

    if-gtz v14, :cond_70

    move-wide/from16 p3, v11

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0x6

    or-int/lit16 v14, v14, 0x3c0

    int-to-byte v14, v14

    .line 1545
    invoke-static {v1, v4, v5, v14}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    .line 1546
    invoke-static {v1, v11, v12, v13}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v19, v6

    goto/16 :goto_ef

    :cond_70
    move-wide/from16 p3, v11

    const v11, 0xdfff

    const v12, 0xd800

    const-wide/16 v17, 0x3

    if-lt v13, v12, :cond_82

    if-ge v11, v13, :cond_7f

    goto :goto_82

    :cond_7f
    move-wide/from16 v19, v6

    goto :goto_a9

    :cond_82
    :goto_82
    sub-long v19, v6, v17

    cmp-long v14, v4, v19

    if-gtz v14, :cond_7f

    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    .line 1549
    invoke-static {v1, v4, v5, v14}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v14, v4, v15

    ushr-int/lit8 v16, v13, 0x6

    move-wide/from16 v19, v6

    and-int/lit8 v6, v16, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1550
    invoke-static {v1, v11, v12, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v17

    and-int/lit8 v6, v13, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1551
    invoke-static {v1, v14, v15, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    goto :goto_ef

    :goto_a9
    const-wide/16 v6, 0x4

    sub-long v21, v19, v6

    cmp-long v14, v4, v21

    if-gtz v14, :cond_100

    add-int/lit8 v11, v2, 0x1

    if-eq v11, v8, :cond_f8

    .line 1556
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 1559
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    add-long v12, v4, p3

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    .line 1560
    invoke-static {v1, v4, v5, v14}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v14, v4, v15

    ushr-int/lit8 v16, v2, 0xc

    move-wide/from16 v21, v6

    and-int/lit8 v6, v16, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 1561
    invoke-static {v1, v12, v13, v6}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v6, v4, v17

    ushr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v12, v3

    int-to-byte v12, v12

    .line 1562
    invoke-static {v1, v14, v15, v12}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    add-long v4, v4, v21

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 1563
    invoke-static {v1, v6, v7, v2}, Lcom/explorestack/protobuf/UnsafeUtil;->putByte([BJB)V

    move v2, v11

    :goto_ef
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p3

    move-wide/from16 v6, v19

    goto/16 :goto_33

    :cond_f7
    move v2, v11

    .line 1557
    :cond_f8
    new-instance v0, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    :cond_100
    if-gt v12, v13, :cond_118

    if-gt v13, v11, :cond_118

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_112

    .line 1566
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_118

    .line 1568
    :cond_112
    new-instance v0, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/explorestack/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1571
    :cond_118
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_133
    long-to-int v0, v4

    return v0

    .line 1525
    :cond_135
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 1526
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public partialIsValidUtf8(I[BII)I
    .registers 15

    or-int v0, p3, p4

    .line 1178
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    if-ltz v0, :cond_a8

    int-to-long v0, p3

    int-to-long p3, p4

    if-eqz p1, :cond_a1

    cmp-long v2, v0, p3

    if-ltz v2, :cond_10

    return p1

    :cond_10
    int-to-byte v2, p1

    const/16 v3, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge v2, v3, :cond_2a

    const/16 p1, -0x3e

    if-lt v2, p1, :cond_29

    add-long/2addr v6, v0

    .line 1204
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_26

    goto :goto_29

    :cond_26
    move-wide v0, v6

    goto/16 :goto_a1

    :cond_29
    :goto_29
    return v4

    :cond_2a
    const/16 v8, -0x10

    if-ge v2, v8, :cond_5e

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_44

    add-long v8, v0, v6

    .line 1213
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v0, v8, p3

    if-ltz v0, :cond_43

    .line 1215
    invoke-static {v2, p1}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_43
    move-wide v0, v8

    :cond_44
    if-gt p1, v5, :cond_5d

    const/16 v8, -0x60

    if-ne v2, v3, :cond_4c

    if-lt p1, v8, :cond_5d

    :cond_4c
    const/16 v3, -0x13

    if-ne v2, v3, :cond_52

    if-ge p1, v8, :cond_5d

    :cond_52
    add-long v2, v0, v6

    .line 1224
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_5b

    goto :goto_5d

    :cond_5b
    move-wide v0, v2

    goto :goto_a1

    :cond_5d
    :goto_5d
    return v4

    :cond_5e
    shr-int/lit8 v3, p1, 0x8

    not-int v3, v3

    int-to-byte v3, v3

    if-nez v3, :cond_76

    add-long v8, v0, v6

    .line 1234
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    cmp-long p1, v8, p3

    if-ltz p1, :cond_73

    .line 1236
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_73
    const/4 p1, 0x0

    move-wide v0, v8

    goto :goto_79

    :cond_76
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_79
    if-nez p1, :cond_8b

    add-long v8, v0, v6

    .line 1242
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    cmp-long v0, v8, p3

    if-ltz v0, :cond_8a

    .line 1244
    invoke-static {v2, v3, p1}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_8a
    move-wide v0, v8

    :cond_8b
    if-gt v3, v5, :cond_a0

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_a0

    if-gt p1, v5, :cond_a0

    add-long v2, v0, v6

    .line 1261
    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_5b

    :cond_a0
    return v4

    :cond_a1
    :goto_a1
    sub-long/2addr p3, v0

    long-to-int p1, p3

    .line 1267
    invoke-static {p2, v0, v1, p1}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1179
    :cond_a8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p2, p2

    .line 1180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Array length=%d, index=%d, limit=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 14

    or-int v0, p3, p4

    .line 1274
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    if-ltz v0, :cond_ad

    .line 1278
    invoke-static {p2}, Lcom/explorestack/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v0

    if-eqz p1, :cond_a6

    cmp-long p4, v0, p2

    if-ltz p4, :cond_1a

    return p1

    :cond_1a
    int-to-byte p4, p1

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    const-wide/16 v5, 0x1

    if-ge p4, v2, :cond_34

    const/16 p1, -0x3e

    if-lt p4, p1, :cond_33

    add-long/2addr v5, v0

    .line 1301
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_30

    goto :goto_33

    :cond_30
    move-wide v0, v5

    goto/16 :goto_a6

    :cond_33
    :goto_33
    return v3

    :cond_34
    const/16 v7, -0x10

    if-ge p4, v7, :cond_64

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_4e

    add-long v7, v0, v5

    .line 1310
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v0, v7, p2

    if-ltz v0, :cond_4d

    .line 1312
    invoke-static {p4, p1}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_4d
    move-wide v0, v7

    :cond_4e
    if-gt p1, v4, :cond_63

    const/16 v7, -0x60

    if-ne p4, v2, :cond_56

    if-lt p1, v7, :cond_63

    :cond_56
    const/16 v2, -0x13

    if-ne p4, v2, :cond_5c

    if-ge p1, v7, :cond_63

    :cond_5c
    add-long/2addr v5, v0

    .line 1321
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_30

    :cond_63
    return v3

    :cond_64
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    if-nez v2, :cond_7c

    add-long v7, v0, v5

    .line 1331
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    cmp-long p1, v7, p2

    if-ltz p1, :cond_79

    .line 1333
    invoke-static {p4, v2}, Lcom/explorestack/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_79
    const/4 p1, 0x0

    move-wide v0, v7

    goto :goto_7f

    :cond_7c
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :goto_7f
    if-nez p1, :cond_91

    add-long v7, v0, v5

    .line 1339
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    cmp-long v0, v7, p2

    if-ltz v0, :cond_90

    .line 1341
    invoke-static {p4, v2, p1}, Lcom/explorestack/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_90
    move-wide v0, v7

    :cond_91
    if-gt v2, v4, :cond_a5

    shl-int/lit8 p4, p4, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p4, v2

    shr-int/lit8 p4, p4, 0x1e

    if-nez p4, :cond_a5

    if-gt p1, v4, :cond_a5

    add-long/2addr v5, v0

    .line 1358
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_30

    :cond_a5
    return v3

    :cond_a6
    :goto_a6
    sub-long/2addr p2, v0

    long-to-int p1, p2

    .line 1364
    invoke-static {v0, v1, p1}, Lcom/explorestack/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1275
    :cond_ad
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1276
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
