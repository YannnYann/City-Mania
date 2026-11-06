###### Class io.bidmachine.media3.exoplayer.SuitableOutputChecker (io.bidmachine.media3.exoplayer.SuitableOutputChecker)
.class public interface abstract Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;
.super Ljava/lang/Object;
.source "SuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
.end method

.method public abstract isSelectedOutputSuitableForPlayback()Z
.end method

###### Class io.bidmachine.media3.exoplayer.SuitableOutputChecker.Callback (io.bidmachine.media3.exoplayer.SuitableOutputChecker$Callback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;
.super Ljava/lang/Object;
.source "SuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSelectedOutputSuitabilityChanged(Z)V
.end method
