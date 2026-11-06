###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase)
.class public abstract Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;,
        Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;,
        Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;,
        Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;,
        Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field public final initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

.field public final presentationTimeOffset:J

.field public final timescale:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJ)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 52
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    .line 53
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    return-void
.end method


# virtual methods
.method public getInitialization(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 2

    .line 66
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->initialization:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-object p1
.end method

.method public getPresentationTimeOffsetUs()J
    .registers 7

    .line 71
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase.MultiSegmentBase (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase$MultiSegmentBase)
.class public abstract Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field public final availabilityTimeOffsetUs:J

.field public final duration:J

.field public final periodStartUnixTimeUs:J

.field public final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field public final startNumber:J

.field public final timeShiftBufferDepthUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJJ)V"
        }
    .end annotation

    .line 164
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJ)V

    .line 165
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 166
    iput-wide p8, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 167
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    .line 168
    iput-wide p11, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    .line 169
    iput-wide p13, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    move-wide p1, p15

    .line 170
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 9

    .line 266
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    return-wide v0

    .line 272
    :cond_b
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long v0, p3, v0

    .line 273
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    add-long/2addr v0, v2

    .line 275
    invoke-virtual {p0, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide v0

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    int-to-long p1, p1

    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 9

    .line 251
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 252
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_16

    goto :goto_27

    .line 257
    :cond_16
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long/2addr p3, v2

    sub-long/2addr p3, v0

    .line 260
    invoke-virtual {p0, p3, p4, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide p1

    .line 261
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide p3

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    .line 253
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide p1

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 246
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 7

    .line 282
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_a

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 286
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v0

    .line 287
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    move-result-wide p3

    add-long/2addr v0, p3

    .line 288
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide p3

    .line 289
    invoke-virtual {p0, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    move-result-wide p1

    add-long/2addr p3, p1

    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    sub-long/2addr p3, p1

    return-wide p3
.end method

.method public abstract getSegmentCount(J)J
.end method

.method public final getSegmentDurationUs(JJ)J
    .registers 12

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_18

    .line 212
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, p3

    long-to-int p1, p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    mul-long/2addr p1, v1

    .line 213
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    div-long/2addr p1, p3

    return-wide p1

    .line 215
    :cond_18
    invoke-virtual {p0, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_34

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-nez v0, :cond_34

    .line 218
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    return-wide p3

    .line 219
    :cond_34
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr p1, v1

    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .registers 16

    .line 175
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v0

    .line 176
    invoke-virtual {p0, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_f

    goto :goto_26

    .line 180
    :cond_f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/16 v3, 0x1

    if-nez v2, :cond_35

    .line 182
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    div-long/2addr v5, v7

    .line 183
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    div-long/2addr p1, v5

    add-long/2addr v7, p1

    cmp-long p1, v7, v0

    if-gez p1, :cond_27

    :goto_26
    return-wide v0

    :cond_27
    const-wide/16 p1, -0x1

    cmp-long p1, p3, p1

    if-nez p1, :cond_2e

    return-wide v7

    :cond_2e
    add-long/2addr v0, p3

    sub-long/2addr v0, v3

    .line 189
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_35
    add-long/2addr p3, v0

    sub-long/2addr p3, v3

    move-wide v5, v0

    :goto_38
    cmp-long v2, v5, p3

    if-gtz v2, :cond_53

    sub-long v7, p3, v5

    const-wide/16 v9, 0x2

    .line 195
    div-long/2addr v7, v9

    add-long/2addr v7, v5

    .line 196
    invoke-virtual {p0, v7, v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v9

    cmp-long v2, v9, p1

    if-gez v2, :cond_4d

    add-long v5, v7, v3

    goto :goto_38

    :cond_4d
    if-lez v2, :cond_52

    sub-long/2addr v7, v3

    move-wide p3, v7

    goto :goto_38

    :cond_52
    return-wide v7

    :cond_53
    cmp-long p1, v5, v0

    if-nez p1, :cond_58

    return-wide v5

    :cond_58
    return-wide p3
.end method

.method public final getSegmentTimeUs(J)J
    .registers 9

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 227
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 228
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->presentationTimeOffset:J

    sub-long/2addr p1, v0

    :goto_13
    move-wide v0, p1

    goto :goto_1c

    .line 231
    :cond_15
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr p1, v0

    goto :goto_13

    :goto_1c
    const-wide/32 v2, 0xf4240

    .line 233
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract getSegmentUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .registers 2

    .line 295
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase.SegmentList (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase$SegmentList)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentList"
.end annotation


# instance fields
.field public final mediaSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    .line 338
    invoke-direct/range {v0 .. v16}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p13

    .line 348
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSegmentCount(J)J
    .registers 3

    .line 358
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 6

    .line 353
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-object p1
.end method

.method public isExplicit()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase.SegmentTemplate (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase$SegmentTemplate)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTemplate"
.end annotation


# instance fields
.field public final endNumber:J

.field public final initializationTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

.field public final mediaTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJJLjava/util/List;JLio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;JJ)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;",
            "JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    move-wide/from16 v11, p13

    move-wide/from16 v13, p17

    move-wide/from16 v15, p19

    .line 414
    invoke-direct/range {v0 .. v16}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p15

    .line 424
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-object/from16 v1, p16

    .line 425
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-wide/from16 v1, p8

    .line 426
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    return-void
.end method


# virtual methods
.method public getInitialization(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 15

    .line 432
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    if-eqz v0, :cond_1c

    .line 433
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    iget v4, p1, Lio/bidmachine/media3/common/Format;->bitrate:I

    const-wide/16 v5, 0x0

    const-wide/16 v2, 0x0

    .line 434
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    .line 436
    new-instance v7, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    invoke-direct/range {v7 .. v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v7

    .line 438
    :cond_1c
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->getInitialization(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public getSegmentCount(J)J
    .registers 8

    .line 458
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 459
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 460
    :cond_a
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_19

    .line 461
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1

    add-long/2addr v0, p1

    return-wide v0

    :cond_19
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4c

    .line 464
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;->timescale:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 465
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    .line 466
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 467
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/google/common/math/BigIntegerMath;->divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_4c
    return-wide v2
.end method

.method public getSegmentUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 20

    move-object/from16 v0, p0

    .line 445
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 446
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v2, p2, v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    :goto_13
    move-wide v8, v1

    goto :goto_1d

    .line 448
    :cond_15
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long v1, p2, v1

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr v1, v3

    goto :goto_13

    .line 450
    :goto_1d
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;

    move-object/from16 v1, p1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    iget-object v4, v1, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    iget v7, v1, Lio/bidmachine/media3/common/Format;->bitrate:I

    move-wide/from16 v5, p2

    .line 451
    invoke-virtual/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v11

    .line 453
    new-instance v10, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    invoke-direct/range {v10 .. v15}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v10
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase.SegmentTimelineElement (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase$SegmentTimelineElement)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTimelineElement"
.end annotation


# instance fields
.field public final duration:J

.field public final startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 488
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 499
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 500
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 505
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase.SingleSegmentBase (io.bidmachine.media3.exoplayer.dash.manifest.SegmentBase$SingleSegmentBase)
.class public Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;
.super Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentBase"
.end annotation


# instance fields
.field public final indexLength:J

.field public final indexStart:J


# direct methods
.method public constructor <init>()V
    .registers 11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 101
    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJ)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJJJ)V
    .registers 10

    .line 95
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase;-><init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;JJ)V

    move-object p1, p0

    .line 96
    iput-wide p6, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 97
    iput-wide p8, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    return-void
.end method


# virtual methods
.method public getIndex()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 7

    .line 111
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_a
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    const/4 v1, 0x0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method
