###### Class io.bidmachine.media3.common.util.Clock (io.bidmachine.media3.common.util.Clock)
.class public interface abstract Lio/bidmachine/media3/common/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lio/bidmachine/media3/common/util/SystemClock;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/SystemClock;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method


# virtual methods
.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract nanoTime()J
.end method

.method public abstract onThreadBlocked()V
.end method

.method public abstract uptimeMillis()J
.end method
