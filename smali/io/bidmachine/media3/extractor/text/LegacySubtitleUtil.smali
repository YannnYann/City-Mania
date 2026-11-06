###### Class io.bidmachine.media3.extractor.text.LegacySubtitleUtil (io.bidmachine.media3.extractor.text.LegacySubtitleUtil)
.class public Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;
.super Ljava/lang/Object;
.source "LegacySubtitleUtil.java"


# direct methods
.method public static getStartIndex(Lio/bidmachine/media3/extractor/text/Subtitle;J)I
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_b
    invoke-interface {p0, p1, p2}, Lio/bidmachine/media3/extractor/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 83
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v0

    :cond_16
    if-lez v0, :cond_23

    add-int/lit8 v2, v0, -0x1

    .line 85
    invoke-interface {p0, v2}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v2

    cmp-long p0, v2, p1

    if-nez p0, :cond_23

    add-int/2addr v0, v1

    :cond_23
    return v0
.end method

.method public static outputSubtitleEvent(Lio/bidmachine/media3/extractor/text/Subtitle;ILio/bidmachine/media3/common/util/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/text/Subtitle;",
            "I",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p0, p1}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v2

    .line 94
    invoke-interface {p0, v2, v3}, Lio/bidmachine/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_30

    .line 99
    :cond_f
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_31

    add-int/lit8 v0, p1, 0x1

    .line 105
    invoke-interface {p0, v0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v4

    invoke-interface {p0, p1}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide p0

    sub-long/2addr v4, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v4, p0

    if-lez p0, :cond_30

    .line 107
    new-instance v0, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_30
    :goto_30
    return-void

    .line 101
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static toCuesWithTiming(Lio/bidmachine/media3/extractor/text/Subtitle;Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/text/Subtitle;",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/extractor/text/CuesWithTiming;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-wide v0, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;->getStartIndex(Lio/bidmachine/media3/extractor/text/Subtitle;J)I

    move-result v0

    .line 42
    iget-wide v1, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 43
    iget-wide v3, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    invoke-interface {p0, v3, v4}, Lio/bidmachine/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v6

    .line 44
    invoke-interface {p0, v0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v3

    .line 45
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-wide v7, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    cmp-long v1, v7, v3

    if-gez v1, :cond_3a

    .line 46
    new-instance v5, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    sub-long v9, v3, v7

    invoke-direct/range {v5 .. v10}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p2, v5}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    move v3, v0

    .line 54
    :goto_3c
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTimeCount()I

    move-result v4

    if-ge v3, v4, :cond_48

    .line 55
    invoke-static {p0, v3, p2}, Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;->outputSubtitleEvent(Lio/bidmachine/media3/extractor/text/Subtitle;ILio/bidmachine/media3/common/util/Consumer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 57
    :cond_48
    iget-boolean v3, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->outputAllCues:Z

    if-eqz v3, :cond_74

    if-eqz v1, :cond_50

    add-int/lit8 v0, v0, -0x1

    :cond_50
    :goto_50
    if-ge v2, v0, :cond_58

    .line 60
    invoke-static {p0, v2, p2}, Lio/bidmachine/media3/extractor/text/LegacySubtitleUtil;->outputSubtitleEvent(Lio/bidmachine/media3/extractor/text/Subtitle;ILio/bidmachine/media3/common/util/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_58
    if-eqz v1, :cond_74

    .line 63
    new-instance v3, Lio/bidmachine/media3/extractor/text/CuesWithTiming;

    iget-wide v1, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    .line 65
    invoke-interface {p0, v1, v2}, Lio/bidmachine/media3/extractor/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v4

    .line 66
    invoke-interface {p0, v0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide v5

    iget-wide v1, p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$OutputOptions;->startTimeUs:J

    .line 67
    invoke-interface {p0, v0}, Lio/bidmachine/media3/extractor/text/Subtitle;->getEventTime(I)J

    move-result-wide p0

    sub-long v7, v1, p0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/CuesWithTiming;-><init>(Ljava/util/List;JJ)V

    .line 63
    invoke-interface {p2, v3}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_74
    return-void
.end method
