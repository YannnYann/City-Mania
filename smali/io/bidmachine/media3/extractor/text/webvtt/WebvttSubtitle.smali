###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttSubtitle (io.bidmachine.media3.extractor.text.webvtt.WebvttSubtitle)
.class public final Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/Subtitle;


# instance fields
.field public final cueInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final cueTimesUs:[J

.field public final sortedCueTimesUs:[J


# direct methods
.method public static synthetic $r8$lambda$PsrKgKujeEhhEeKX45VIvQko7XE(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;)I
    .registers 4

    .line 83
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    iget-wide p0, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    const/4 v0, 0x0

    .line 39
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    mul-int/lit8 v2, v0, 0x2

    .line 42
    iget-object v3, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->startTimeUs:J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-wide v4, v1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->endTimeUs:J

    aput-wide v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 45
    :cond_36
    iget-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 46
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 71
    :goto_c
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 72
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v5, v3, 0x2

    aget-wide v6, v4, v5

    cmp-long v6, v6, p1

    if-gtz v6, :cond_40

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v4, v5

    cmp-long v4, p1, v5

    if-gez v4, :cond_40

    .line 73
    iget-object v4, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->cueInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 74
    iget-object v5, v4, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->cue:Lio/bidmachine/media3/common/text/Cue;

    iget v6, v5, Lio/bidmachine/media3/common/text/Cue;->line:F

    const v7, -0x800001

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3d

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 77
    :cond_3d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 83
    :cond_43
    new-instance p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_6f

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;->cue:Lio/bidmachine/media3/common/text/Cue;

    .line 86
    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue;->buildUpon()Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    rsub-int/lit8 p2, v2, -0x1

    int-to-float p2, p2

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Lio/bidmachine/media3/common/text/Cue$Builder;->setLine(FI)Lio/bidmachine/media3/common/text/Cue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/text/Cue$Builder;->build()Lio/bidmachine/media3/common/text/Cue;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_6f
    return-object v0
.end method

.method public getEventTime(I)J
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 62
    :goto_7
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 63
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v2, v2

    if-ge p1, v2, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 64
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getEventTimeCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 5

    .line 51
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    .line 52
    iget-object p2, p0, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_d

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.webvtt.WebvttSubtitle$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.webvtt.WebvttSubtitle$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    check-cast p2, Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/text/webvtt/WebvttSubtitle;->$r8$lambda$PsrKgKujeEhhEeKX45VIvQko7XE(Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;Lio/bidmachine/media3/extractor/text/webvtt/WebvttCueInfo;)I

    move-result p1

    return p1
.end method
