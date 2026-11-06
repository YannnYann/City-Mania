###### Class info.flowersoft.theotown.util.EncOutputStream (info.flowersoft.theotown.util.EncOutputStream)
.class public Linfo/flowersoft/theotown/util/EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "EncOutputStream.java"


# instance fields
.field public final pA:I

.field public final pB:I

.field public final pC:I

.field public pos:I

.field public final salt:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Linfo/flowersoft/theotown/util/EncOutputStream;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pos:I

    and-int/lit16 p2, p2, 0xff

    .line 28
    iput p2, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->salt:I

    .line 29
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    invoke-virtual {v0, p2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 31
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    mul-int/lit16 p2, p2, 0x4165

    shr-int/lit8 p1, p3, 0x1b

    and-int/lit8 p1, p1, 0xf

    add-int/2addr p2, p1

    .line 32
    iput p2, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pos:I

    if-nez p3, :cond_2d

    const/16 p1, 0xa3

    .line 35
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pA:I

    const/16 p1, 0x65

    .line 36
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pB:I

    const/16 p1, 0x95

    .line 37
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pC:I

    return-void

    :cond_2d
    shr-int/lit8 p1, p3, 0x1

    and-int/lit16 p1, p1, 0xfd

    .line 39
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pA:I

    shr-int/lit8 p1, p3, 0xb

    and-int/lit16 p1, p1, 0xfd

    .line 40
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pB:I

    shr-int/lit8 p1, p3, 0x15

    and-int/lit16 p1, p1, 0xfd

    .line 41
    iput p1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pC:I

    return-void
.end method


# virtual methods
.method public pack(III)B
    .registers 5

    .line 51
    iget v0, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pA:I

    mul-int/2addr v0, p2

    iget p2, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pB:I

    add-int/2addr v0, p2

    iget p2, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pC:I

    mul-int/2addr p2, p3

    add-int/2addr v0, p2

    and-int/lit16 p2, v0, 0xff

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget v0, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->pos:I

    iget v1, p0, Linfo/flowersoft/theotown/util/EncOutputStream;->salt:I

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/util/EncOutputStream;->pack(III)B

    move-result p1

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method
