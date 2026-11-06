###### Class io.bidmachine.ads.networks.gam_dynamic.GAMEventTracker (io.bidmachine.ads.networks.gam_dynamic.GAMEventTracker)
.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/GAMEventTracker;
.super Ljava/lang/Object;
.source "GAMEventTracker.java"

# interfaces
.implements Lio/bidmachine/tracking/EventTracker;


# virtual methods
.method public abstract trackEvent(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsFormat;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V
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
.end method
