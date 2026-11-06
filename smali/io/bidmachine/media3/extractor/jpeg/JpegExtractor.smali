###### Class io.bidmachine.media3.extractor.jpeg.JpegExtractor (io.bidmachine.media3.extractor.jpeg.JpegExtractor)
.class public final Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# instance fields
.field public final extractor:Lio/bidmachine/media3/extractor/Extractor;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_15

    .line 72
    new-instance p1, Lio/bidmachine/media3/extractor/SingleSampleExtractor;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v2, v0, v1}, Lio/bidmachine/media3/extractor/SingleSampleExtractor;-><init>(IILjava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    return-void

    .line 76
    :cond_15
    new-instance p1, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/Extractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/Extractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .registers 2

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->release()V

    return-void
.end method

.method public seek(JJ)V
    .registers 6

    .line 98
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/Extractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
