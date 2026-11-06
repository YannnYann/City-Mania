###### Class com.explorestack.protobuf.ByteString (com.explorestack.protobuf.ByteString)
.class public abstract Lcom/explorestack/protobuf/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/ByteString$BoundedByteString;,
        Lcom/explorestack/protobuf/ByteString$LiteralByteString;,
        Lcom/explorestack/protobuf/ByteString$CodedBuilder;,
        Lcom/explorestack/protobuf/ByteString$Output;,
        Lcom/explorestack/protobuf/ByteString$LeafByteString;,
        Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;,
        Lcom/explorestack/protobuf/ByteString$ByteIterator;,
        Lcom/explorestack/protobuf/ByteString$ArraysByteArrayCopier;,
        Lcom/explorestack/protobuf/ByteString$SystemByteArrayCopier;,
        Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CONCATENATE_BY_COPY_SIZE:I = 0x80

.field public static final EMPTY:Lcom/explorestack/protobuf/ByteString;

.field static final MAX_READ_FROM_CHUNK_SIZE:I = 0x2000

.field static final MIN_READ_FROM_CHUNK_SIZE:I = 0x100

.field private static final UNSIGNED_BYTE_MASK:I = 0xff

.field private static final UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final byteArrayCopier:Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;


# instance fields
.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 94
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    sput-object v0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    .line 134
    invoke-static {}, Lcom/explorestack/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/explorestack/protobuf/ByteString$SystemByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$SystemByteArrayCopier;-><init>(Lcom/explorestack/protobuf/ByteString$1;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/explorestack/protobuf/ByteString$ArraysByteArrayCopier;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$ArraysByteArrayCopier;-><init>(Lcom/explorestack/protobuf/ByteString$1;)V

    :goto_1b
    sput-object v0, Lcom/explorestack/protobuf/ByteString;->byteArrayCopier:Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;

    .line 262
    new-instance v0, Lcom/explorestack/protobuf/ByteString$2;

    invoke-direct {v0}, Lcom/explorestack/protobuf/ByteString$2;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/explorestack/protobuf/ByteString;->hash:I

    return-void
.end method

.method public static synthetic access$200(B)I
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/explorestack/protobuf/ByteString;->toInt(B)I

    move-result p0

    return p0
.end method

.method private static balancedConcat(Ljava/util/Iterator;I)Lcom/explorestack/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;I)",
            "Lcom/explorestack/protobuf/ByteString;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1c

    if-ne p1, v0, :cond_c

    .line 617
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/ByteString;

    return-object p0

    :cond_c
    ushr-int/lit8 v0, p1, 0x1

    .line 620
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 621
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    .line 622
    invoke-virtual {v1, p0}, Lcom/explorestack/protobuf/ByteString;->concat(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 613
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "length (%s) must be >= 1"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkIndex(II)V
    .registers 5

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_3f

    if-gez p0, :cond_20

    .line 1248
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1250
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method public static checkRange(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_68

    if-ltz p0, :cond_4c

    if-ge p1, p0, :cond_2d

    .line 1270
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1274
    :cond_2d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1267
    :cond_4c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    return v0
.end method

.method public static copyFrom(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;)",
            "Lcom/explorestack/protobuf/ByteString;"
        }
    .end annotation

    .line 591
    instance-of v0, p0, Ljava/util/Collection;

    if-nez v0, :cond_15

    .line 593
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 594
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 595
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 598
    :cond_15
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :cond_1c
    if-nez v1, :cond_21

    .line 602
    sget-object p0, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object p0

    .line 605
    :cond_21
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/explorestack/protobuf/ByteString;->balancedConcat(Ljava/util/Iterator;I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 451
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;
    .registers 2

    .line 425
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom(Ljava/nio/ByteBuffer;I)Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 412
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    .line 413
    new-array p1, p1, [B

    .line 414
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 415
    new-instance p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object p0
.end method

.method public static copyFrom([B)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 372
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static copyFrom([BII)Lcom/explorestack/protobuf/ByteString;
    .registers 5

    add-int v0, p1, p2

    .line 361
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    .line 362
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/explorestack/protobuf/ByteString;->byteArrayCopier:Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;

    invoke-interface {v1, p0, p1, p2}, Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;->copyFrom([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 462
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    sget-object v1, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static newCodedBuilder(I)Lcom/explorestack/protobuf/ByteString$CodedBuilder;
    .registers 3

    .line 1170
    new-instance v0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;-><init>(ILcom/explorestack/protobuf/ByteString$1;)V

    return-object v0
.end method

.method public static newOutput()Lcom/explorestack/protobuf/ByteString$Output;
    .registers 2

    .line 977
    new-instance v0, Lcom/explorestack/protobuf/ByteString$Output;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method public static newOutput(I)Lcom/explorestack/protobuf/ByteString$Output;
    .registers 2

    .line 963
    new-instance v0, Lcom/explorestack/protobuf/ByteString$Output;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$Output;-><init>(I)V

    return-object v0
.end method

.method private static readChunk(Ljava/io/InputStream;I)Lcom/explorestack/protobuf/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_12

    sub-int v3, p1, v2

    .line 540
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    goto :goto_12

    :cond_10
    add-int/2addr v2, v3

    goto :goto_4

    :cond_12
    :goto_12
    if-nez v2, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_16
    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/ByteString;->copyFrom([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/ByteString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0x2000

    .line 485
    invoke-static {p0, v0, v1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;I)Lcom/explorestack/protobuf/ByteString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-static {p0, p1, p1}, Lcom/explorestack/protobuf/ByteString;->readFrom(Ljava/io/InputStream;II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static readFrom(Ljava/io/InputStream;II)Lcom/explorestack/protobuf/ByteString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :goto_5
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/ByteString;->readChunk(Ljava/io/InputStream;I)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    if-nez v1, :cond_10

    .line 525
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 521
    :cond_10
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int/lit8 p1, p1, 0x2

    .line 522
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_5
.end method

.method private static toInt(B)I
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private truncateAndEscapeForDisplay()Ljava/lang/String;
    .registers 4

    .line 1292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_d

    invoke-static {p0}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/TextFormatEscaper;->escapeBytes(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unsignedLexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/explorestack/protobuf/ByteString;->UNSIGNED_LEXICOGRAPHICAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 377
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 378
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 379
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v1, v0, p0}, Lcom/explorestack/protobuf/ByteString;->wrap([BII)Lcom/explorestack/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 381
    :cond_1c
    new-instance v0, Lcom/explorestack/protobuf/NioByteString;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/NioByteString;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Lcom/explorestack/protobuf/ByteString;
    .registers 2

    .line 391
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Lcom/explorestack/protobuf/ByteString;
    .registers 4

    .line 399
    new-instance v0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;

    invoke-direct {v0, p0, p1, p2}, Lcom/explorestack/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asReadOnlyByteBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract byteAt(I)B
.end method

.method public final concat(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;
    .registers 5

    const v0, 0x7fffffff

    .line 569
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 574
    invoke-static {p0, p1}, Lcom/explorestack/protobuf/RopeByteString;->concatenate(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 570
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ByteString would be too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract copyTo(Ljava/nio/ByteBuffer;)V
.end method

.method public copyTo([BI)V
    .registers 5

    const/4 v0, 0x0

    .line 641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/explorestack/protobuf/ByteString;->copyTo([BIII)V

    return-void
.end method

.method public final copyTo([BIII)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int v0, p2, p4

    .line 657
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    add-int v0, p3, p4

    .line 658
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    if-lez p4, :cond_14

    .line 660
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    :cond_14
    return-void
.end method

.method public abstract copyToInternal([BIII)V
.end method

.method public final endsWith(Lcom/explorestack/protobuf/ByteString;)Z
    .registers 4

    .line 345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/ByteString;->substring(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getTreeDepth()I
.end method

.method public final hashCode()I
    .registers 3

    .line 908
    iget v0, p0, Lcom/explorestack/protobuf/ByteString;->hash:I

    if-nez v0, :cond_12

    .line 911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 912
    invoke-virtual {p0, v0, v1, v0}, Lcom/explorestack/protobuf/ByteString;->partialHash(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 916
    :cond_10
    iput v0, p0, Lcom/explorestack/protobuf/ByteString;->hash:I

    :cond_12
    return v0
.end method

.method public abstract internalByteAt(I)B
.end method

.method public abstract isBalanced()Z
.end method

.method public final isEmpty()Z
    .registers 2

    .line 235
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isValidUtf8()Z
.end method

.method public iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;
    .registers 2

    .line 175
    new-instance v0, Lcom/explorestack/protobuf/ByteString$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/ByteString$1;-><init>(Lcom/explorestack/protobuf/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;
.end method

.method public abstract newInput()Ljava/io/InputStream;
.end method

.method public abstract partialHash(III)I
.end method

.method public abstract partialIsValidUtf8(III)I
.end method

.method public final peekCachedHashCode()I
    .registers 2

    .line 1223
    iget v0, p0, Lcom/explorestack/protobuf/ByteString;->hash:I

    return v0
.end method

.method public abstract size()I
.end method

.method public final startsWith(Lcom/explorestack/protobuf/ByteString;)Z
    .registers 5

    .line 333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1b

    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v2
.end method

.method public final substring(I)Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public abstract substring(II)Lcom/explorestack/protobuf/ByteString;
.end method

.method public final toByteArray()[B
    .registers 4

    .line 690
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 692
    sget-object v0, Lcom/explorestack/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 694
    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 695
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/explorestack/protobuf/ByteString;->copyToInternal([BIII)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1281
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1284
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1286
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString;->truncateAndEscapeForDisplay()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 1281
    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 784
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception v0

    .line 786
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 788
    throw v1
.end method

.method public final toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 800
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, ""

    return-object p1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ByteString;->toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final toStringUtf8()Ljava/lang/String;
    .registers 2

    .line 820
    sget-object v0, Lcom/explorestack/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/ByteString;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeTo(Lcom/explorestack/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeTo(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    if-lez p3, :cond_e

    .line 719
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/ByteString;->writeToInternal(Ljava/io/OutputStream;II)V

    :cond_e
    return-void
.end method

.method public abstract writeToInternal(Ljava/io/OutputStream;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.explorestack.protobuf.ByteString.AnonymousClass1 (com.explorestack.protobuf.ByteString$1)
.class Lcom/explorestack/protobuf/ByteString$1;
.super Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/explorestack/protobuf/ByteString;


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/ByteString;)V
    .registers 3

    .line 175
    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$1;->this$0:Lcom/explorestack/protobuf/ByteString;

    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/explorestack/protobuf/ByteString$1;->position:I

    .line 177
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 181
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public nextByte()B
    .registers 3

    .line 186
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$1;->position:I

    .line 187
    iget v1, p0, Lcom/explorestack/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 190
    iput v1, p0, Lcom/explorestack/protobuf/ByteString$1;->position:I

    .line 191
    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$1;->this$0:Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/explorestack/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0

    .line 188
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

###### Class com.explorestack.protobuf.ByteString.AnonymousClass2 (com.explorestack.protobuf.ByteString$2)
.class final Lcom/explorestack/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/explorestack/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)I
    .registers 7

    .line 266
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 267
    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v1

    .line 269
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 273
    invoke-interface {v0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    invoke-static {v2}, Lcom/explorestack/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-interface {v1}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    invoke-static {v3}, Lcom/explorestack/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_8

    return v2

    .line 279
    :cond_2b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 263
    check-cast p1, Lcom/explorestack/protobuf/ByteString;

    check-cast p2, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/ByteString$2;->compare(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ByteString;)I

    move-result p1

    return p1
.end method

###### Class com.explorestack.protobuf.ByteString.AbstractByteIterator (com.explorestack.protobuf.ByteString$AbstractByteIterator)
.class abstract Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/explorestack/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractByteIterator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Byte;
    .registers 2

    .line 213
    invoke-interface {p0}, Lcom/explorestack/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$AbstractByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class com.explorestack.protobuf.ByteString.ArraysByteArrayCopier (com.explorestack.protobuf.ByteString$ArraysByteArrayCopier)
.class final Lcom/explorestack/protobuf/ByteString$ArraysByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArraysByteArrayCopier"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ByteString$1;)V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$ArraysByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom([BII)[B
    .registers 4

    add-int/2addr p3, p2

    .line 126
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

###### Class com.explorestack.protobuf.ByteString.BoundedByteString (com.explorestack.protobuf.ByteString$BoundedByteString)
.class final Lcom/explorestack/protobuf/ByteString$BoundedByteString;
.super Lcom/explorestack/protobuf/ByteString$LiteralByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytesLength:I

.field private final bytesOffset:I


# direct methods
.method public constructor <init>([BII)V
    .registers 5

    .line 1552
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    add-int v0, p2, p3

    .line 1553
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    .line 1555
    iput p2, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 1556
    iput p3, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1611
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteAt(I)B
    .registers 4

    .line 1572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/ByteString;->checkIndex(II)V

    .line 1573
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public copyToInternal([BIII)V
    .registers 7

    .line 1597
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    .line 1597
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getOffsetIntoBytes()I
    .registers 2

    .line 1588
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method public internalByteAt(I)B
    .registers 4

    .line 1578
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .registers 2

    .line 1583
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1607
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->wrap([B)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

###### Class com.explorestack.protobuf.ByteString.ByteArrayCopier (com.explorestack.protobuf.ByteString$ByteArrayCopier)
.class interface abstract Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ByteArrayCopier"
.end annotation


# virtual methods
.method public abstract copyFrom([BII)[B
.end method

###### Class com.explorestack.protobuf.ByteString.ByteIterator (com.explorestack.protobuf.ByteString$ByteIterator)
.class public interface abstract Lcom/explorestack/protobuf/ByteString$ByteIterator;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ByteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract nextByte()B
.end method

###### Class com.explorestack.protobuf.ByteString.CodedBuilder (com.explorestack.protobuf.ByteString$CodedBuilder)
.class final Lcom/explorestack/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/explorestack/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 1180
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->newInstance([B)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/explorestack/protobuf/ByteString$1;)V
    .registers 3

    .line 1174
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/explorestack/protobuf/ByteString;
    .registers 3

    .line 1184
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 1189
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;
    .registers 2

    .line 1193
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    return-object v0
.end method

###### Class com.explorestack.protobuf.ByteString.LeafByteString (com.explorestack.protobuf.ByteString$LeafByteString)
.class abstract Lcom/explorestack/protobuf/ByteString$LeafByteString;
.super Lcom/explorestack/protobuf/ByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LeafByteString"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 873
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z
.end method

.method public final getTreeDepth()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isBalanced()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 873
    invoke-super {p0}, Lcom/explorestack/protobuf/ByteString;->iterator()Lcom/explorestack/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public writeToReverse(Lcom/explorestack/protobuf/ByteOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Lcom/explorestack/protobuf/ByteOutput;)V

    return-void
.end method

###### Class com.explorestack.protobuf.ByteString.LiteralByteString (com.explorestack.protobuf.ByteString$LiteralByteString)
.class Lcom/explorestack/protobuf/ByteString$LiteralByteString;
.super Lcom/explorestack/protobuf/ByteString$LeafByteString;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteralByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 1315
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$LeafByteString;-><init>()V

    .line 1317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1319
    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    return-void
.end method


# virtual methods
.method public final asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1373
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asReadOnlyByteBufferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    .line 1327
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final copyTo(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1368
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public copyToInternal([BIII)V
    .registers 6

    .line 1363
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1425
    :cond_4
    instance-of v1, p1, Lcom/explorestack/protobuf/ByteString;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1429
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 1432
    :cond_18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 1436
    :cond_1f
    instance-of v0, p1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    if-eqz v0, :cond_3d

    .line 1437
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    .line 1440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 1441
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->peekCachedHashCode()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    .line 1446
    :cond_34
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z

    move-result p1

    return p1

    .line 1449
    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equalsRange(Lcom/explorestack/protobuf/ByteString;II)Z
    .registers 9

    .line 1464
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v0

    if-gt p3, v0, :cond_6d

    add-int v0, p2, p3

    .line 1467
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result v1

    if-gt v0, v1, :cond_44

    .line 1472
    instance-of v1, p1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 1473
    check-cast p1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    .line 1474
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1475
    iget-object v1, p1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v3

    add-int/2addr v3, p3

    .line 1477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p3

    .line 1478
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result p1

    add-int/2addr p1, p2

    :goto_27
    if-ge p3, v3, :cond_35

    .line 1481
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_30

    return v2

    :cond_30
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_35
    const/4 p1, 0x1

    return p1

    .line 1488
    :cond_37
    invoke-virtual {p1, p2, v0}, Lcom/explorestack/protobuf/ByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->substring(II)Lcom/explorestack/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1468
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {p1}, Lcom/explorestack/protobuf/ByteString;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOffsetIntoBytes()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public internalByteAt(I)B
    .registers 3

    .line 1332
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final isValidUtf8()Z
    .registers 4

    .line 1407
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    .line 1408
    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/explorestack/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v0

    return v0
.end method

.method public final newCodedInput()Lcom/explorestack/protobuf/CodedInputStream;
    .registers 5

    .line 1508
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 1509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    const/4 v3, 0x1

    .line 1508
    invoke-static {v0, v1, v2, v3}, Lcom/explorestack/protobuf/CodedInputStream;->newInstance([BIIZ)Lcom/explorestack/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final newInput()Ljava/io/InputStream;
    .registers 5

    .line 1501
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final partialHash(III)I
    .registers 6

    .line 1493
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/explorestack/protobuf/Internal;->partialHash(I[BII)I

    move-result p1

    return p1
.end method

.method public final partialIsValidUtf8(III)I
    .registers 5

    .line 1413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v0

    add-int/2addr v0, p2

    .line 1414
    iget-object p2, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/explorestack/protobuf/Utf8;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 1337
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final substring(II)Lcom/explorestack/protobuf/ByteString;
    .registers 6

    .line 1345
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/explorestack/protobuf/ByteString;->checkRange(III)I

    move-result p2

    if-nez p2, :cond_d

    .line 1348
    sget-object p1, Lcom/explorestack/protobuf/ByteString;->EMPTY:Lcom/explorestack/protobuf/ByteString;

    return-object p1

    .line 1351
    :cond_d
    new-instance v0, Lcom/explorestack/protobuf/ByteString$BoundedByteString;

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/explorestack/protobuf/ByteString$BoundedByteString;-><init>([BII)V

    return-object v0
.end method

.method public final toStringInternal(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 1399
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v2

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/ByteOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/explorestack/protobuf/ByteOutput;->writeLazy([BII)V

    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1383
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final writeToInternal(Ljava/io/OutputStream;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->bytes:[B

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;->getOffsetIntoBytes()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

###### Class com.explorestack.protobuf.ByteString.Output (com.explorestack.protobuf.ByteString$Output)
.class public final Lcom/explorestack/protobuf/ByteString$Output;
.super Ljava/io/OutputStream;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final flushedBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private flushedBuffersTotalBytes:I

.field private final initialCapacity:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 991
    new-array v0, v0, [B

    sput-object v0, Lcom/explorestack/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 1008
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    if-ltz p1, :cond_13

    .line 1012
    iput p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->initialCapacity:I

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    .line 1014
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    return-void

    .line 1010
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private copyArray([BI)[B
    .registers 5

    .line 1060
    new-array v0, p2, [B

    .line 1061
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private flushFullBuffer(I)V
    .registers 5

    .line 1121
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1126
    iget v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->initialCapacity:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1127
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    const/4 p1, 0x0

    .line 1128
    iput p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method

.method private flushLastBuffer()V
    .registers 4

    .line 1136
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_18

    if-lez v0, :cond_28

    .line 1138
    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    .line 1139
    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v2, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    invoke-direct {v2, v0}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1144
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    new-instance v1, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    iget-object v2, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    invoke-direct {v1, v2}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v0, Lcom/explorestack/protobuf/ByteString$Output;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    .line 1152
    :cond_28
    :goto_28
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    const/4 v0, 0x0

    .line 1153
    iput v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 1104
    :try_start_1
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1105
    iput v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    .line 1106
    iput v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1107
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 3

    monitor-enter p0

    .line 1096
    :try_start_1
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffersTotalBytes:I

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized toByteString()Lcom/explorestack/protobuf/ByteString;
    .registers 2

    monitor-enter p0

    .line 1054
    :try_start_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$Output;->flushLastBuffer()V

    .line 1055
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFrom(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1113
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/ByteString$Output;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1111
    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    .line 1019
    :try_start_1
    iget v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    .line 1020
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/ByteString$Output;->flushFullBuffer(I)V

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_1c

    .line 1022
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    iget v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_d

    .line 1023
    monitor-exit p0

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_d

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    .line 1027
    :try_start_1
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_14

    .line 1029
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1030
    iget p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    goto :goto_26

    :catchall_12
    move-exception p1

    goto :goto_28

    .line 1033
    :cond_14
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 1034
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 1039
    invoke-direct {p0, p3}, Lcom/explorestack/protobuf/ByteString$Output;->flushFullBuffer(I)V

    .line 1040
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    iput p3, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_12

    .line 1043
    :goto_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_12

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    monitor-enter p0

    .line 1079
    :try_start_1
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$Output;->flushedBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/explorestack/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/ByteString;

    .line 1080
    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$Output;->buffer:[B

    .line 1081
    iget v2, p0, Lcom/explorestack/protobuf/ByteString$Output;->bufferPos:I

    .line 1082
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_28

    .line 1083
    array-length v3, v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_20

    aget-object v5, v0, v4

    .line 1084
    invoke-virtual {v5, p1}, Lcom/explorestack/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1087
    :cond_20
    invoke-direct {p0, v1, v2}, Lcom/explorestack/protobuf/ByteString$Output;->copyArray([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catchall_28
    move-exception p1

    .line 1082
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

###### Class com.explorestack.protobuf.ByteString.SystemByteArrayCopier (com.explorestack.protobuf.ByteString$SystemByteArrayCopier)
.class final Lcom/explorestack/protobuf/ByteString$SystemByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/explorestack/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemByteArrayCopier"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/protobuf/ByteString$1;)V
    .registers 2

    .line 113
    invoke-direct {p0}, Lcom/explorestack/protobuf/ByteString$SystemByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom([BII)[B
    .registers 6

    .line 116
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 117
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
