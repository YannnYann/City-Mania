###### Class io.bidmachine.media3.extractor.ogg.OggExtractor (io.bidmachine.media3.extractor.ogg.OggExtractor)
.class public Lio/bidmachine/media3/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public output:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

.field public streamReaderInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$ACY2F4YPgFz7mRcMAPpLV7XSq2A()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 40
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;
    .registers 2

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object p0
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    if-nez v0, :cond_1b

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 82
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_1b

    .line 79
    :cond_13
    const-string p1, "Failed to determine bitstream type"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 84
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_35

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 87
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-virtual {v1, v3, v0}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/TrackOutput;)V

    .line 88
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    .line 90
    :cond_35
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

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

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->seek(JJ)V

    :cond_7
    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1
    :try_end_4
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const/4 p1, 0x0

    return p1
.end method

.method public final sniffInternal(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->populate(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5e

    iget v2, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_14

    goto :goto_5e

    .line 100
    :cond_14
    iget v0, v0, Lio/bidmachine/media3/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    new-instance v2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 102
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    invoke-static {v2}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->resetPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/ogg/FlacReader;->verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 105
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/FlacReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    goto :goto_5d

    .line 106
    :cond_3a
    invoke-static {v2}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->resetPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 107
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    goto :goto_5d

    .line 108
    :cond_4c
    invoke-static {v2}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->resetPosition(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/ogg/OpusReader;->verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 109
    new-instance p1, Lio/bidmachine/media3/extractor/ogg/OpusReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->streamReader:Lio/bidmachine/media3/extractor/ogg/StreamReader;

    :goto_5d
    return v1

    :cond_5e
    :goto_5e
    return v3
.end method

###### Class io.bidmachine.media3.extractor.ogg.OggExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ogg.OggExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/ogg/OggExtractor;->$r8$lambda$ACY2F4YPgFz7mRcMAPpLV7XSq2A()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
