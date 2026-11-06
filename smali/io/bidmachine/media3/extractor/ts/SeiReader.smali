###### Class io.bidmachine.media3.extractor.ts.SeiReader (io.bidmachine.media3.extractor.ts.SeiReader)
.class public final Lio/bidmachine/media3/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


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

.field public final reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;


# direct methods
.method public static synthetic $r8$lambda$1aH8PcLZoGcVaGcgCm3VKFzHYgA(Lio/bidmachine/media3/extractor/ts/SeiReader;JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 52
    iget-object p0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 52
    invoke-static {p1, p2, p3, p0}, Lio/bidmachine/media3/extractor/CeaUtil;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V

    return-void
.end method

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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->containerMimeType:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 49
    new-instance p1, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    new-instance p2, Lio/bidmachine/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/ts/SeiReader;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;-><init>(Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flush()V

    return-void
.end method

.method public consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 5

    .line 89
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->add(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 56
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_88

    .line 57
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 58
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Format;

    .line 60
    iget-object v4, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 61
    const-string v5, "application/cea-608"

    .line 62
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    const-string v5, "application/cea-708"

    .line 63
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

    .line 61
    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    iget-object v5, v3, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v5

    .line 66
    :goto_4e
    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 68
    invoke-virtual {v6, v5}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->containerMimeType:Ljava/lang/String;

    .line 69
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 70
    invoke-virtual {v5, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 71
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v3, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 72
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    .line 73
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/Format$Builder;->setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v3, v3, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 74
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    .line 66
    invoke-interface {v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 76
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_88
    return-void
.end method

.method public flush()V
    .registers 2

    .line 98
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flush()V

    return-void
.end method

.method public setReorderingQueueSize(I)V
    .registers 3

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->setMaxSize(I)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.SeiReader$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ts.SeiReader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/ts/SeiReader;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/ts/SeiReader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/ts/SeiReader;

    return-void
.end method


# virtual methods
.method public final consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/SeiReader$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/ts/SeiReader;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/SeiReader;->$r8$lambda$1aH8PcLZoGcVaGcgCm3VKFzHYgA(Lio/bidmachine/media3/extractor/ts/SeiReader;JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    return-void
.end method
