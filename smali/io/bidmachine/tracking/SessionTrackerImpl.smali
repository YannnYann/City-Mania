###### Class io.bidmachine.tracking.SessionTrackerImpl (io.bidmachine.tracking.SessionTrackerImpl)
.class public Lio/bidmachine/tracking/SessionTrackerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/tracking/SessionTracker;


# instance fields
.field public final eventTracker:Lio/bidmachine/tracking/EventTracker;

.field public final trackEventInfoHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Lio/bidmachine/tracking/TrackEventInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/tracking/EventTracker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->eventTracker:Lio/bidmachine/tracking/EventTracker;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearTrackingEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Lio/bidmachine/tracking/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_11

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public clearTrackingEvents(Lio/bidmachine/tracking/TrackingObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    invoke-interface {p1}, Lio/bidmachine/tracking/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;JJLio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 12

    move-wide v0, p3

    .line 1
    new-instance p4, Lio/bidmachine/tracking/TrackEventInfo;

    invoke-direct {p4, v0, v1, p5, p6}, Lio/bidmachine/tracking/TrackEventInfo;-><init>(JJ)V

    move-object p3, p2

    move-object p5, p7

    move-object p6, p8

    move-object p7, p9

    move-object p2, p1

    move-object p1, p0

    .line 2
    invoke-virtual/range {p1 .. p7}, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method

.method public trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 14

    .line 3
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->eventTracker:Lio/bidmachine/tracking/EventTracker;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/tracking/EventTracker;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method

.method public trackEventFinish(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 15

    .line 1
    invoke-interface {p1}, Lio/bidmachine/tracking/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_37

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/tracking/TrackEventInfo;

    if-eqz v1, :cond_23

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/tracking/TrackEventInfo;->setFinishTimeMs(J)V

    .line 8
    :cond_23
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 10
    invoke-virtual {p0, p1}, Lio/bidmachine/tracking/SessionTrackerImpl;->clearTrackingEvents(Lio/bidmachine/tracking/TrackingObject;)V

    :cond_2f
    :goto_2f
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object v5, v1

    goto :goto_39

    :cond_37
    const/4 v1, 0x0

    goto :goto_2f

    .line 13
    :goto_39
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method

.method public trackEventStart(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lio/bidmachine/tracking/TrackingObject;->getTrackingKey()Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1a

    .line 4
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 5
    iget-object v1, p0, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEventInfoHolders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    if-eqz p3, :cond_23

    goto :goto_28

    .line 11
    :cond_23
    new-instance p3, Lio/bidmachine/tracking/TrackEventInfo;

    invoke-direct {p3}, Lio/bidmachine/tracking/TrackEventInfo;-><init>()V

    .line 12
    :goto_28
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method
