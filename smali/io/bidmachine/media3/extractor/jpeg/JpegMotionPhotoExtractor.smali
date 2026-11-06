###### Class io.bidmachine.media3.extractor.jpeg.JpegMotionPhotoExtractor (io.bidmachine.media3.extractor.jpeg.JpegMotionPhotoExtractor)
.class public final Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;
.super Ljava/lang/Object;
.source "JpegMotionPhotoExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# instance fields
.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public lastExtractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

.field public marker:I

.field public motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

.field public mp4ExtractorStartOffsetExtractorInput:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

.field public mp4StartPosition:J

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public segmentLength:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const-wide/16 v0, -0x1

    .line 94
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    return-void
.end method

.method public static getMotionPhotoMetadata(Ljava/lang/String;J)Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 308
    :cond_8
    invoke-static {p0}, Lio/bidmachine/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parse(Ljava/lang/String;)Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v1

    .line 312
    :cond_f
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/jpeg/MotionPhotoDescription;->getMotionPhotoMetadata(J)Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object p0

    return-object p0
.end method

.method private readSegment(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3f

    .line 219
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 220
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {p1, v1, v2, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 221
    iget-object v1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v1, :cond_44

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    .line 222
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 223
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 225
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->getMotionPhotoMetadata(Ljava/lang/String;J)Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-eqz p1, :cond_44

    .line 227
    iget-wide v0, p1, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    goto :goto_44

    .line 232
    :cond_3f
    iget v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 234
    :cond_44
    :goto_44
    iput v2, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final advancePeekPositionToNextSegment(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 191
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    sub-int/2addr v0, v1

    .line 192
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public final endReading()V
    .registers 5

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 270
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    const/4 v0, 0x6

    .line 271
    iput v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final outputImageTrack(Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;)V
    .registers 7

    .line 275
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 276
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    .line 277
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v2, "image/jpeg"

    .line 279
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    new-instance v2, Lio/bidmachine/media3/common/Metadata;

    const/4 v3, 0x1

    new-array v3, v3, [Lio/bidmachine/media3/common/Metadata$Entry;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    .line 280
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 277
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public final peekMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 185
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    return p1
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_58

    const/4 v3, 0x4

    if-eq v0, v3, :cond_47

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 p1, 0x6

    if-ne v0, p1, :cond_16

    const/4 p1, -0x1

    return p1

    .line 161
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 146
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    if-eq p1, v0, :cond_2f

    .line 147
    :cond_24
    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->lastExtractorInput:Lio/bidmachine/media3/extractor/ExtractorInput;

    .line 148
    new-instance v0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v3, v4}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lio/bidmachine/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 152
    :cond_2f
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    .line 153
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    invoke-virtual {p1, v0, p2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    if-ne p1, v2, :cond_46

    .line 155
    iget-wide v0, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    :cond_46
    return p1

    .line 139
    :cond_47
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_54

    .line 140
    iput-wide v5, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    return v2

    .line 143
    :cond_54
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->sniffMotionPhotoVideo(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 136
    :cond_58
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readSegment(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 133
    :cond_5c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readSegmentLength(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 130
    :cond_60
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->readMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1
.end method

.method public final readMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 197
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 198
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v0, 0xffda

    if-ne p1, v0, :cond_2d

    .line 200
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_29

    const/4 p1, 0x4

    .line 201
    iput p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void

    .line 203
    :cond_29
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return-void

    :cond_2d
    const v0, 0xffd0

    if-lt p1, v0, :cond_37

    const v0, 0xffd9

    if-le p1, v0, :cond_3f

    :cond_37
    const v0, 0xff01

    if-eq p1, v0, :cond_3f

    const/4 p1, 0x1

    .line 206
    iput p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    :cond_3f
    return-void
.end method

.method public final readSegmentLength(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 212
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 213
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->segmentLength:I

    .line 214
    iput v1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void
.end method

.method public release()V
    .registers 2

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->release()V

    :cond_7
    return-void
.end method

.method public seek(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    return-void

    .line 170
    :cond_d
    iget v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    .line 171
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seek(JJ)V

    :cond_1d
    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    return v2

    .line 103
    :cond_b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe0

    if-ne v0, v1, :cond_1f

    .line 108
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->advancePeekPositionToNextSegment(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 109
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->peekMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    .line 111
    :cond_1f
    iget v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->marker:I

    const v1, 0xffe1

    if-eq v0, v1, :cond_27

    return v2

    :cond_27
    const/4 v0, 0x2

    .line 114
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 115
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 117
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_51

    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    if-nez p1, :cond_51

    const/4 p1, 0x1

    return p1

    :cond_51
    return v2
.end method

.method public final sniffMotionPhotoVideo(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 241
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 240
    invoke-interface {p1, v0, v1, v2, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_12

    .line 243
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return-void

    .line 245
    :cond_12
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 246
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    if-nez v0, :cond_24

    .line 247
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    sget-object v1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    .line 251
    :cond_24
    new-instance v0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;-><init>(Lio/bidmachine/media3/extractor/ExtractorInput;J)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4ExtractorStartOffsetExtractorInput:Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorInput;

    .line 253
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 254
    iget-object p1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4Extractor:Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    new-instance v0, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->mp4StartPosition:J

    iget-object v3, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 255
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/jpeg/StartOffsetExtractorOutput;-><init>(JLio/bidmachine/media3/extractor/ExtractorOutput;)V

    .line 254
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    .line 256
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->startReadingMotionPhoto()V

    return-void

    .line 258
    :cond_4d
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->endReading()V

    return-void
.end method

.method public final startReadingMotionPhoto()V
    .registers 2

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->outputImageTrack(Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;)V

    const/4 v0, 0x5

    .line 265
    iput v0, p0, Lio/bidmachine/media3/extractor/jpeg/JpegMotionPhotoExtractor;->state:I

    return-void
.end method
