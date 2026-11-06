###### Class io.bidmachine.media3.extractor.NoOpExtractorOutput (io.bidmachine.media3.extractor.NoOpExtractorOutput)
.class public final Lio/bidmachine/media3/extractor/NoOpExtractorOutput;
.super Ljava/lang/Object;
.source "NoOpExtractorOutput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .registers 1

    .line 0
    return-void
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 0
    return-void
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 3

    .line 26
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p1
.end method
