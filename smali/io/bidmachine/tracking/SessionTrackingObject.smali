###### Class io.bidmachine.tracking.SessionTrackingObject (io.bidmachine.tracking.SessionTrackingObject)
.class public Lio/bidmachine/tracking/SessionTrackingObject;
.super Lio/bidmachine/tracking/TrackingObjectImpl;
.source "SourceFile"


# instance fields
.field private final sessionTracker:Lio/bidmachine/tracking/SessionTracker;


# direct methods
.method public constructor <init>(Lio/bidmachine/tracking/SessionTracker;)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/bidmachine/tracking/SessionTrackingObject;-><init>(Ljava/lang/Object;Lio/bidmachine/tracking/SessionTracker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/tracking/SessionTracker;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/tracking/TrackingObjectImpl;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    invoke-interface {v0, p0}, Lio/bidmachine/tracking/SessionTracker;->clearTrackingEvents(Lio/bidmachine/tracking/TrackingObject;)V

    return-void
.end method

.method public clearEvent(Lio/bidmachine/TrackEventType;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/tracking/SessionTracker;->clearTrackingEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)V

    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lio/bidmachine/tracking/SessionTracker;->trackEventFinish(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method

.method public eventStart(Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    invoke-interface {v0, p0, p1, p2}, Lio/bidmachine/tracking/SessionTracker;->trackEventStart(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V

    return-void
.end method

.method public trackEvent(Lio/bidmachine/TrackEventType;JJLio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V
    .registers 19

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackingObject;->sessionTracker:Lio/bidmachine/tracking/SessionTracker;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Lio/bidmachine/tracking/SessionTracker;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;JJLio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method
