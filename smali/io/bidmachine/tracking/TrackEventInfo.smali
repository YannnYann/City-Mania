###### Class io.bidmachine.tracking.TrackEventInfo (io.bidmachine.tracking.TrackEventInfo)
.class public final Lio/bidmachine/tracking/TrackEventInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eventParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public finishTimeMs:J

.field public startTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/tracking/TrackEventInfo;-><init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lio/bidmachine/tracking/TrackEventInfo;->startTimeMs:J

    .line 6
    iput-wide p3, p0, Lio/bidmachine/tracking/TrackEventInfo;->finishTimeMs:J

    return-void
.end method

.method public synthetic constructor <init>(JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_8

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_8
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_d

    move-wide p3, p1

    .line 8
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/tracking/TrackEventInfo;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getEventParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->eventParameters:Ljava/util/Map;

    return-object v0
.end method

.method public final getFinishTimeMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->finishTimeMs:J

    return-wide v0
.end method

.method public final getStartTimeMs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->startTimeMs:J

    return-wide v0
.end method

.method public final setFinishTimeMs(J)V
    .registers 5

    .line 1
    iget-wide v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->startTimeMs:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/tracking/TrackEventInfo;->finishTimeMs:J

    return-void
.end method

.method public final withParameter(Ljava/lang/String;Ljava/lang/Object;)Lio/bidmachine/tracking/TrackEventInfo;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->eventParameters:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->eventParameters:Ljava/util/Map;

    .line 4
    :cond_15
    iget-object v0, p0, Lio/bidmachine/tracking/TrackEventInfo;->eventParameters:Ljava/util/Map;

    if-eqz v0, :cond_1c

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object p0
.end method
