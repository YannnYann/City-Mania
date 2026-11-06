###### Class io.bidmachine.media3.extractor.ts.Ac4Extractor (io.bidmachine.media3.extractor.ts.Ac4Extractor)
.class public final Lio/bidmachine/media3/extractor/ts/Ac4Extractor;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public final reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

.field public final sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public startedPacket:Z


# direct methods
.method public static synthetic $r8$lambda$fCTl7zN9h55lt1uwA4lCrXY9Y-U()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 43
    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    const-string v1, "audio/ac4"

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    .line 68
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 6

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    new-instance v1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 122
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 123
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 140
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    .line 146
    :cond_11
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 147
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 149
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    if-nez p1, :cond_2a

    .line 151
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    invoke-virtual {p1, v2, v3, p2}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 156
    :cond_2a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->sampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    return v1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    .line 129
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->reader:Lio/bidmachine/media3/extractor/ts/Ac4Reader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->seek()V

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 79
    :goto_9
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 80
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 81
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    const v5, 0x494433

    if-eq v4, v5, :cond_66

    .line 89
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 90
    invoke-interface {p1, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v1, v2

    move v4, v3

    .line 95
    :goto_24
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 96
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 97
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_4e

    const v6, 0xac41

    if-eq v5, v6, :cond_4e

    .line 100
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_49

    return v2

    .line 104
    :cond_49
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v1, v2

    goto :goto_24

    :cond_4e
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_54

    return v6

    .line 109
    :cond_54
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v6, v5}, Lio/bidmachine/media3/extractor/Ac4Util;->parseAc4SyncframeSize([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_60

    return v2

    :cond_60
    add-int/lit8 v5, v5, -0x7

    .line 113
    invoke-interface {p1, v5}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_24

    :cond_66
    const/4 v4, 0x3

    .line 84
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 85
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 87
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_9
.end method

###### Class io.bidmachine.media3.extractor.ts.Ac4Extractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ts.Ac4Extractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;->$r8$lambda$fCTl7zN9h55lt1uwA4lCrXY9Y-U()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
