###### Class io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorInput (io.bidmachine.media3.extractor.jpeg.StartOffsetExtractorInput)
.class public final Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;
.super Lio/bidmachine/media3/extractor/ForwardingExtractorInput;
.source "StartOffsetExtractorInput.java"


# instance fields
.field public final startOffset:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ExtractorInput;J)V
    .registers 6

    .line 45
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/ForwardingExtractorInput;-><init>(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 46
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 47
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .registers 5

    .line 62
    invoke-super {p0}, Lio/bidmachine/media3/extractor/ForwardingExtractorInput;->getLength()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 57
    invoke-super {p0}, Lio/bidmachine/media3/extractor/ForwardingExtractorInput;->getPeekPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 5

    .line 52
    invoke-super {p0}, Lio/bidmachine/media3/extractor/ForwardingExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;->startOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
