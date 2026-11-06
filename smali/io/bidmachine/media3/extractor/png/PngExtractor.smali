###### Class io.bidmachine.media3.extractor.png.PngExtractor (io.bidmachine.media3.extractor.png.PngExtractor)
.class public final Lio/bidmachine/media3/extractor/png/PngExtractor;
.super Ljava/lang/Object;
.source "PngExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# instance fields
.field public final imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    const/4 v1, 0x2

    const-string v2, "image/png"

    const v3, 0x8950

    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/png/PngExtractor;->imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lio/bidmachine/media3/extractor/png/PngExtractor;->imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/png/PngExtractor;->imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 62
    iget-object v0, p0, Lio/bidmachine/media3/extractor/png/PngExtractor;->imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;->seek(JJ)V

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/bidmachine/media3/extractor/png/PngExtractor;->imageExtractor:Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
