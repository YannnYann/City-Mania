###### Class io.bidmachine.ads.networks.gam_dynamic.GAMEventTrackerImpl (io.bidmachine.ads.networks.gam_dynamic.GAMEventTrackerImpl)
.class public Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTrackerImpl;
.super Lio/bidmachine/tracking/EventTrackerImpl;
.source "GAMEventTrackerImpl.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventConfiguration"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lio/bidmachine/tracking/EventTrackerImpl;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    return-void
.end method


# virtual methods
.method public trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsFormat;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "trackEventType",
            "adsFormat",
            "eventData",
            "bmError"
        }
    .end annotation

    .line 25
    new-instance v1, Lio/bidmachine/tracking/SimpleTrackingObject;

    invoke-direct {v1}, Lio/bidmachine/tracking/SimpleTrackingObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move-object v6, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/tracking/EventTrackerImpl;->trackEvent(Lio/bidmachine/tracking/TrackingObject;Lio/bidmachine/TrackEventType;Lio/bidmachine/tracking/TrackEventInfo;Lio/bidmachine/AdsType;Lio/bidmachine/utils/BMError;Lio/bidmachine/tracking/EventData;)V

    return-void
.end method
