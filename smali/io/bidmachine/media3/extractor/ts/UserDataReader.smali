###### Class io.bidmachine.media3.extractor.ts.UserDataReader (io.bidmachine.media3.extractor.ts.UserDataReader)
.class public final Lio/bidmachine/media3/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# instance fields
.field public final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final containerMimeType:Ljava/lang/String;

.field public final outputs:[Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->containerMimeType:Ljava/lang/String;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8

    .line 70
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_9

    goto :goto_26

    .line 73
    :cond_9
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 74
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 75
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_26

    const v0, 0x47413934

    if-ne v1, v0, :cond_26

    const/4 v0, 0x3

    if-ne v2, v0, :cond_26

    .line 79
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v0}, Lio/bidmachine/media3/extractor/CeaUtil;->consumeCcData(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 46
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_82

    .line 47
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 48
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Format;

    .line 50
    iget-object v4, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 51
    const-string v5, "application/cea-608"

    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "application/cea-708"

    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_30

    :cond_2e
    move v5, v0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v5, 0x1

    :goto_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption MIME type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 55
    new-instance v5, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 57
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->containerMimeType:Ljava/lang/String;

    .line 58
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 59
    invoke-virtual {v5, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 60
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v3, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 61
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    .line 62
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v3, v3, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 63
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    .line 55
    invoke-interface {v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 65
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/UserDataReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_82
    return-void
.end method
