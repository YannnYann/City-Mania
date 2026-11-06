###### Class io.bidmachine.media3.exoplayer.text.TextRenderer (io.bidmachine.media3.exoplayer.text.TextRenderer)
.class public final Lio/bidmachine/media3/exoplayer/text/TextRenderer;
.super Lio/bidmachine/media3/exoplayer/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final cueDecoder:Lio/bidmachine/media3/extractor/text/CueDecoder;

.field public final cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

.field public decoderReplacementState:I

.field public finalStreamEndPositionUs:J

.field public final formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

.field public inputStreamEnded:Z

.field public lastRendererPositionUs:J

.field public legacyDecodingEnabled:Z

.field public nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

.field public nextSubtitleEventIndex:I

.field public nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

.field public final output:Lio/bidmachine/media3/exoplayer/text/TextOutput;

.field public final outputHandler:Landroid/os/Handler;

.field public outputStreamEnded:Z

.field public streamError:Ljava/io/IOException;

.field public streamFormat:Lio/bidmachine/media3/common/Format;

.field public subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

.field public subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

.field public final subtitleDecoderFactory:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

.field public waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V
    .registers 4

    .line 138
    sget-object v0, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;-><init>(Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;)V
    .registers 5

    const/4 v0, 0x3

    .line 154
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 155
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/text/TextOutput;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->output:Lio/bidmachine/media3/exoplayer/text/TextOutput;

    if-nez p2, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    .line 157
    :cond_10
    invoke-static {p2, p0}, Lio/bidmachine/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_14
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 158
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 159
    new-instance p1, Lio/bidmachine/media3/extractor/text/CueDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/CueDecoder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoder:Lio/bidmachine/media3/extractor/text/CueDecoder;

    .line 160
    new-instance p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 162
    new-instance p1, Lio/bidmachine/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 164
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->legacyDecodingEnabled:Z

    return-void
.end method

.method private getPresentationTimeUs(J)J
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 609
    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 610
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getStreamOffsetUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public static hasNoEventsAfter(Lio/bidmachine/media3/extractor/text/Subtitle;J)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    .line 509
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p0, v1}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-gtz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    return v0
.end method

.method public static isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 630
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-media3-cues"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final assertLegacyDecodingEnabledIfRequired()V
    .registers 4

    .line 615
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->legacyDecodingEnabled:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-608"

    .line 617
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-mp4-cea-608"

    .line 618
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-708"

    .line 619
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy decoding is disabled, can\'t handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " samples (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "application/x-media3-cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public final clearOutput()V
    .registers 5

    .line 562
    new-instance v0, Lio/bidmachine/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-direct {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->updateOutput(Lio/bidmachine/media3/common/text/CueGroup;)V

    return-void
.end method

.method public final getCurrentEventTimeUs(J)J
    .registers 4

    .line 597
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result p1

    if-eqz p1, :cond_2a

    .line 598
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result p2

    if-nez p2, :cond_11

    goto :goto_2a

    :cond_11
    const/4 p2, -0x1

    if-ne p1, p2, :cond_21

    .line 603
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide p1

    return-wide p1

    .line 604
    :cond_21
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide p1

    return-wide p1

    .line 599
    :cond_2a
    :goto_2a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide p1, p1, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->timeUs:J

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 170
    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final getNextEventTime()J
    .registers 5

    .line 544
    iget v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_b

    return-wide v2

    .line 547
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1b

    return-wide v2

    .line 550
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final handleDecoderError(Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;)V
    .registers 4

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->clearOutput()V

    .line 591
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 567
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 569
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/common/text/CueGroup;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Lio/bidmachine/media3/common/text/CueGroup;)V

    return v1

    .line 572
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final initSubtitleDecoder()V
    .registers 4

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 534
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Format;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;->createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    .line 535
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    return-void
.end method

.method public final invokeUpdateOutputInternal(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 4

    .line 578
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->output:Lio/bidmachine/media3/exoplayer/text/TextOutput;

    iget-object v1, p1, Lio/bidmachine/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 579
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->output:Lio/bidmachine/media3/exoplayer/text/TextOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/text/TextOutput;->onCues(Lio/bidmachine/media3/common/text/CueGroup;)V

    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 473
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 8

    .line 478
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 481
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    if-nez v0, :cond_11

    .line 483
    :try_start_a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->maybeThrowStreamError()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_11

    :catch_e
    move-exception v0

    .line 485
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    .line 489
    :cond_11
    :goto_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamError:Ljava/io/IOException;

    if-eqz v0, :cond_5c

    .line 490
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    .line 491
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    return v1

    .line 494
    :cond_3b
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 496
    invoke-static {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->hasNoEventsAfter(Lio/bidmachine/media3/extractor/text/Subtitle;J)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 497
    invoke-static {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->hasNoEventsAfter(Lio/bidmachine/media3/extractor/text/Subtitle;J)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    if-eqz v0, :cond_5c

    :cond_5b
    return v2

    :cond_5c
    return v1
.end method

.method public onDisabled()V
    .registers 3

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 463
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 464
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->clearOutput()V

    .line 465
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 466
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    if-eqz v0, :cond_16

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleDecoder()V

    :cond_16
    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 4

    .line 228
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 229
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    if-eqz p1, :cond_9

    .line 230
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->clear()V

    .line 232
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->clearOutput()V

    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 234
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 235
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 236
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_3f

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 237
    iget p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-eqz p1, :cond_2a

    .line 238
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    return-void

    .line 240
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 241
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    .line 242
    invoke-interface {p1}, Lio/bidmachine/media3/decoder/Decoder;->flush()V

    .line 243
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/decoder/Decoder;->setOutputStartTimeUs(J)V

    :cond_3f
    return-void
.end method

.method public onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 7

    const/4 p2, 0x0

    .line 210
    aget-object p1, p1, p2

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    .line 211
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1a

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    .line 213
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    if-eqz p1, :cond_16

    .line 214
    iput p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void

    .line 216
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    return-void

    .line 220
    :cond_1a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    iget p1, p1, Lio/bidmachine/media3/common/Format;->cueReplacementBehavior:I

    if-ne p1, p2, :cond_26

    .line 221
    new-instance p1, Lio/bidmachine/media3/exoplayer/text/MergingCuesResolver;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/text/MergingCuesResolver;-><init>()V

    goto :goto_2b

    .line 222
    :cond_26
    new-instance p1, Lio/bidmachine/media3/exoplayer/text/ReplacingCuesResolver;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/text/ReplacingCuesResolver;-><init>()V

    :goto_2b
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    return-void
.end method

.method public final readAndDecodeCuesWithTiming(J)Z
    .registers 10

    .line 322
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 326
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v2, v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    const/4 v2, -0x4

    if-eq v0, v2, :cond_12

    return v1

    .line 329
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    return v1

    .line 333
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 335
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoder:Lio/bidmachine/media3/extractor/text/CueDecoder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v2, v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 339
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 340
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    .line 336
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/text/CueDecoder;->decode(J[BII)Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cueDecoderInputBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 343
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-interface {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->addCues(Lio/bidmachine/media3/extractor/text/CuesWithTiming;J)Z

    move-result p1

    return p1
.end method

.method public final releaseSubtitleBuffers()V
    .registers 3

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    .line 514
    iput v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 515
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_f

    .line 516
    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->release()V

    .line 517
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    .line 519
    :cond_f
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_18

    .line 520
    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->release()V

    .line 521
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    :cond_18
    return-void
.end method

.method public final releaseSubtitleDecoder()V
    .registers 2

    .line 526
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 527
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0}, Lio/bidmachine/media3/decoder/Decoder;->release()V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    const/4 v0, 0x0

    .line 529
    iput v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void
.end method

.method public render(JJ)V
    .registers 7

    .line 250
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->isCurrentStreamFinal()Z

    move-result p3

    if-eqz p3, :cond_1b

    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1b

    cmp-long p3, p1, p3

    if-ltz p3, :cond_1b

    .line 253
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    const/4 p3, 0x1

    .line 254
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 257
    :cond_1b
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_20

    return-void

    .line 261
    :cond_20
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->streamFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/Format;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z

    move-result p3

    if-eqz p3, :cond_37

    .line 262
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->renderFromCuesWithTiming(J)V

    return-void

    .line 265
    :cond_37
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->assertLegacyDecodingEnabledIfRequired()V

    .line 266
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->renderFromSubtitles(J)V

    return-void
.end method

.method public final renderFromCuesWithTiming(J)V
    .registers 9

    .line 295
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->readAndDecodeCuesWithTiming(J)Z

    move-result v0

    .line 297
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->getNextCueChangeTimeUs(J)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_1b

    .line 298
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-eqz v5, :cond_1b

    if-nez v0, :cond_1b

    .line 299
    iput-boolean v4, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    :cond_1b
    if-eqz v3, :cond_22

    cmp-long v1, v1, p1

    if-gtz v1, :cond_22

    move v0, v4

    :cond_22
    if-eqz v0, :cond_41

    .line 306
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-interface {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->getPreviousCueChangeTimeUs(J)J

    move-result-wide v1

    .line 308
    new-instance v3, Lio/bidmachine/media3/common/text/CueGroup;

    invoke-direct {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v4

    invoke-direct {v3, v0, v4, v5}, Lio/bidmachine/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->updateOutput(Lio/bidmachine/media3/common/text/CueGroup;)V

    .line 309
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->cuesResolver:Lio/bidmachine/media3/exoplayer/text/CuesResolver;

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/text/CuesResolver;->discardCuesBeforeTimeUs(J)V

    .line 311
    :cond_41
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    return-void
.end method

.method public final renderFromSubtitles(J)V
    .registers 13

    .line 352
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    if-nez v0, :cond_27

    .line 354
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;->setPositionUs(J)V

    .line 356
    :try_start_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {v0}, Lio/bidmachine/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_21
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_27

    :catch_22
    move-exception p1

    .line 358
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->handleDecoderError(Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;)V

    return-void

    .line 363
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    goto/16 :goto_129

    .line 368
    :cond_30
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4a

    .line 371
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    move v0, v2

    :goto_3b
    cmp-long v4, v4, p1

    if-gtz v4, :cond_4b

    .line 373
    iget v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 374
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    move v0, v3

    goto :goto_3b

    :cond_4a
    move v0, v2

    .line 378
    :cond_4b
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v5, 0x0

    if-eqz v4, :cond_8b

    .line 380
    invoke-virtual {v4}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v6

    if-eqz v6, :cond_73

    if-nez v0, :cond_8b

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getNextEventTime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-nez v4, :cond_8b

    .line 382
    iget v4, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne v4, v1, :cond_6d

    .line 383
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->replaceSubtitleDecoder()V

    goto :goto_8b

    .line 385
    :cond_6d
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleBuffers()V

    .line 386
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_8b

    .line 389
    :cond_73
    iget-wide v6, v4, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->timeUs:J

    cmp-long v6, v6, p1

    if-gtz v6, :cond_8b

    .line 391
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    if-eqz v0, :cond_80

    .line 392
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer;->release()V

    .line 394
    :cond_80
    invoke-virtual {v4, p1, p2}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 395
    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    .line 396
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move v0, v3

    :cond_8b
    :goto_8b
    if-eqz v0, :cond_a8

    .line 403
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getCurrentEventTimeUs(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v6

    .line 406
    new-instance v0, Lio/bidmachine/media3/common/text/CueGroup;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitle:Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-virtual {v4, p1, p2}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, v6, v7}, Lio/bidmachine/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 407
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->updateOutput(Lio/bidmachine/media3/common/text/CueGroup;)V

    .line 410
    :cond_a8
    iget p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne p1, v1, :cond_ae

    goto/16 :goto_129

    .line 415
    :cond_ae
    :goto_ae
    :try_start_ae
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    if-nez p1, :cond_129

    .line 416
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    if-nez p1, :cond_cc

    .line 418
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {p1}, Lio/bidmachine/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    if-nez p1, :cond_c7

    goto :goto_129

    .line 422
    :cond_c7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    goto :goto_cc

    :catch_ca
    move-exception p1

    goto :goto_126

    .line 424
    :cond_cc
    :goto_cc
    iget p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    if-ne p2, v3, :cond_e4

    const/4 p2, 0x4

    .line 425
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/decoder/Buffer;->setFlags(I)V

    .line 426
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 427
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    .line 428
    iput v1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    return-void

    .line 432
    :cond_e4
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    invoke-virtual {p0, p2, p1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 v0, -0x4

    if-ne p2, v0, :cond_122

    .line 434
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p2

    if-eqz p2, :cond_f8

    .line 435
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 436
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_110

    .line 438
    :cond_f8
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    if-nez p2, :cond_ff

    goto :goto_129

    .line 443
    :cond_ff
    iget-wide v6, p2, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v6, p1, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 444
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 445
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isKeyFrame()Z

    move-result v0

    xor-int/2addr v0, v3

    and-int/2addr p2, v0

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 447
    :goto_110
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez p2, :cond_ae

    .line 448
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoder:Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/text/SubtitleDecoder;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 449
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->nextSubtitleInputBuffer:Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
    :try_end_121
    .catch Lio/bidmachine/media3/extractor/text/SubtitleDecoderException; {:try_start_ae .. :try_end_121} :catch_ca

    goto :goto_ae

    :cond_122
    const/4 p1, -0x3

    if-ne p2, p1, :cond_ae

    goto :goto_129

    .line 456
    :goto_126
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->handleDecoderError(Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;)V

    :cond_129
    :goto_129
    return-void
.end method

.method public final replaceSubtitleDecoder()V
    .registers 1

    .line 539
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->releaseSubtitleDecoder()V

    .line 540
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->initSubtitleDecoder()V

    return-void
.end method

.method public setFinalStreamEndPositionUs(J)V
    .registers 4

    .line 200
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 201
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    return-void
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 179
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->isCuesWithTiming(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->subtitleDecoderFactory:Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/text/SubtitleDecoderFactory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_23

    .line 182
    :cond_f
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    .line 183
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_1d
    const/4 p1, 0x0

    .line 185
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    .line 181
    :cond_23
    :goto_23
    iget p1, p1, Lio/bidmachine/media3/common/Format;->cryptoType:I

    if-nez p1, :cond_29

    const/4 p1, 0x4

    goto :goto_2a

    :cond_29
    const/4 p1, 0x2

    .line 180
    :goto_2a
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method

.method public final updateOutput(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 4

    .line 554
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 555
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 557
    :cond_d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->invokeUpdateOutputInternal(Lio/bidmachine/media3/common/text/CueGroup;)V

    return-void
.end method
