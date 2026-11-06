###### Class io.bidmachine.media3.extractor.DiscardingTrackOutput (io.bidmachine.media3.extractor.DiscardingTrackOutput)
.class public final Lio/bidmachine/media3/extractor/DiscardingTrackOutput;
.super Ljava/lang/Object;
.source "DiscardingTrackOutput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# instance fields
.field public final readBuffer:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 40
    new-array v0, v0, [B

    iput-object v0, p0, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    return-void
.end method


# virtual methods
.method public format(Lio/bidmachine/media3/common/Format;)V
    .registers 2

    .line 0
    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object p4, p0, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    array-length p4, p4

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 53
    iget-object p4, p0, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;->readBuffer:[B

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1a

    if-eqz p3, :cond_14

    return p2

    .line 58
    :cond_14
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1a
    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 4

    .line 65
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 7

    .line 0
    return-void
.end method
