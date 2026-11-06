###### Class io.bidmachine.media3.ui.TimeBar (io.bidmachine.media3.ui.TimeBar)
.class public interface abstract Lio/bidmachine/media3/ui/TimeBar;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;)V
.end method

.method public abstract getPreferredUpdateDelay()J
.end method

.method public abstract setAdGroupTimesMs([J[ZI)V
.end method

.method public abstract setBufferedPosition(J)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setPosition(J)V
.end method

###### Class io.bidmachine.media3.ui.TimeBar.OnScrubListener (io.bidmachine.media3.ui.TimeBar$OnScrubListener)
.class public interface abstract Lio/bidmachine/media3/ui/TimeBar$OnScrubListener;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/ui/TimeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrubListener"
.end annotation


# virtual methods
.method public abstract onScrubMove(Lio/bidmachine/media3/ui/TimeBar;J)V
.end method

.method public abstract onScrubStart(Lio/bidmachine/media3/ui/TimeBar;J)V
.end method

.method public abstract onScrubStop(Lio/bidmachine/media3/ui/TimeBar;JZ)V
.end method
