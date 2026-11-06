###### Class io.bidmachine.media3.exoplayer.dash.manifest.SingleSegmentIndex (io.bidmachine.media3.exoplayer.dash.manifest.SingleSegmentIndex)
.class public final Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;
.super Ljava/lang/Object;
.source "SingleSegmentIndex.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;


# instance fields
.field public final uri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;->uri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .registers 5

    .line 0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public getDurationUs(JJ)J
    .registers 5

    .line 0
    return-wide p3
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .registers 5

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .registers 5

    .line 0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getSegmentCount(J)J
    .registers 3

    .line 0
    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .registers 5

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 3

    .line 50
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/SingleSegmentIndex;->uri:Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 3

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public isExplicit()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
