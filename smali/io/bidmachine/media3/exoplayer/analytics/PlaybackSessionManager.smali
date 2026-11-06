###### Class io.bidmachine.media3.exoplayer.analytics.PlaybackSessionManager (io.bidmachine.media3.exoplayer.analytics.PlaybackSessionManager)
.class public interface abstract Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract finishAllSessions(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract getActiveSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionForMediaPeriodId(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
.end method

.method public abstract setListener(Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;)V
.end method

.method public abstract updateSessions(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract updateSessionsWithDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract updateSessionsWithTimelineChange(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.PlaybackSessionManager.Listener (io.bidmachine.media3.exoplayer.analytics.PlaybackSessionManager$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdPlaybackStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSessionActive(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onSessionCreated(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onSessionFinished(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
.end method
