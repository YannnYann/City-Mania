###### Class io.bidmachine.media3.extractor.TrackOutput (io.bidmachine.media3.extractor.TrackOutput)
.class public interface abstract Lio/bidmachine/media3/extractor/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;
    }
.end annotation


# virtual methods
.method public durationUs(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract format(Lio/bidmachine/media3/common/Format;)V
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-interface {p0, p1, p2, p3, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I

    move-result p1

    return p1
.end method

.method public abstract sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 4

    const/4 v0, 0x0

    .line 176
    invoke-interface {p0, p1, p2, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    return-void
.end method

.method public abstract sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
.end method

.method public abstract sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
.end method

###### Class io.bidmachine.media3.extractor.TrackOutput.CryptoData (io.bidmachine.media3.extractor.TrackOutput$CryptoData)
.class public final Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/TrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# instance fields
.field public final clearBlocks:I

.field public final cryptoMode:I

.field public final encryptedBlocks:I

.field public final encryptionKey:[B


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    .line 68
    iput-object p2, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 69
    iput p3, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    .line 70
    iput p4, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    if-eq v3, v2, :cond_10

    goto :goto_2f

    .line 81
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    .line 82
    iget v2, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v3, p1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v3, p1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    iget v3, p1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object p1, p1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    .line 85
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

    return v0

    :cond_2f
    :goto_2f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 90
    iget v0, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget v1, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget v1, p0, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    add-int/2addr v0, v1

    return v0
.end method
