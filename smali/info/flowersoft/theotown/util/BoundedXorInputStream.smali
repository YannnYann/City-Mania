###### Class info.flowersoft.theotown.util.BoundedXorInputStream (info.flowersoft.theotown.util.BoundedXorInputStream)
.class public final Linfo/flowersoft/theotown/util/BoundedXorInputStream;
.super Ljava/io/FilterInputStream;
.source "BoundedXorInputStream.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoundedXorInputStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoundedXorInputStream.kt\ninfo/flowersoft/theotown/util/BoundedXorInputStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"
.end annotation


# instance fields
.field public final len:I

.field public markPos:I

.field public final mask:[B

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BI)V
    .registers 5

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    iput-object p2, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->mask:[B

    .line 9
    iput p3, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->len:I

    .line 15
    array-length p1, p2

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-nez p1, :cond_37

    if-lez p3, :cond_1c

    return-void

    .line 16
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input stream of length "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 15
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 19
    iget v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->len:I

    iget v1, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 3

    .line 42
    iget v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    iput v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->markPos:I

    .line 43
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    return-void
.end method

.method public read()I
    .registers 5

    .line 22
    iget v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    iget v1, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->len:I

    if-lt v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    .line 23
    :cond_8
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_11

    return v0

    .line 25
    :cond_11
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->mask:[B

    iget v2, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    xor-int/2addr v0, v1

    return v0
.end method

.method public read([BII)I
    .registers 8

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v0, p3, :cond_1a

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->read()I

    move-result v2

    if-gez v2, :cond_10

    goto :goto_1a

    :cond_10
    add-int v3, p2, v0

    int-to-byte v2, v2

    .line 35
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    :goto_1a
    if-nez v1, :cond_1e

    const/4 p1, -0x1

    return p1

    :cond_1e
    return v1
.end method

.method public reset()V
    .registers 2

    .line 47
    iget v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->markPos:I

    iput v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    .line 48
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 5

    .line 52
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 53
    iget v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/util/BoundedXorInputStream;->pos:I

    return-wide p1
.end method
