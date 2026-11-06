###### Class io.bidmachine.l (io.bidmachine.l)
.class public Lio/bidmachine/l;
.super Lio/bidmachine/tracking/SessionTrackerImpl;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/j;


# direct methods
.method public constructor <init>(Lio/bidmachine/tracking/EventTracker;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/tracking/SessionTrackerImpl;-><init>(Lio/bidmachine/tracking/EventTracker;)V

    .line 3
    new-instance p1, Lio/bidmachine/j;

    invoke-direct {p1}, Lio/bidmachine/j;-><init>()V

    iput-object p1, p0, Lio/bidmachine/l;->a:Lio/bidmachine/j;

    return-void
.end method


# virtual methods
.method public trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V
    .registers 14

    .line 1
    invoke-super/range {p0 .. p6}, Lio/bidmachine/tracking/SessionTrackerImpl;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    move-object v1, p1

    move-object p1, p0

    .line 3
    iget-object v0, p1, Lio/bidmachine/l;->a:Lio/bidmachine/j;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/j;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method
