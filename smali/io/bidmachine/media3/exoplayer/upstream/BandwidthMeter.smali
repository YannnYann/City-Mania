###### Class io.bidmachine.media3.exoplayer.upstream.BandwidthMeter (io.bidmachine.media3.exoplayer.upstream.BandwidthMeter)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public getTimeToFirstByteEstimateUs()J
    .registers 3

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public abstract getTransferListener()Lio/bidmachine/media3/datasource/TransferListener;
.end method

.method public abstract removeEventListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.BandwidthMeter.EventListener (io.bidmachine.media3.exoplayer.upstream.BandwidthMeter$EventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onBandwidthSample(IJJ)V
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.BandwidthMeter.EventListener.EventDispatcher (io.bidmachine.media3.exoplayer.upstream.BandwidthMeter$EventListener$EventDispatcher)
.class public final Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;
    }
.end annotation


# instance fields
.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Se9KT3sjsbIJDPGatUs0u6uYmeY(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V
    .registers 6

    .line 81
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$000(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 5

    .line 60
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 63
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bandwidthSample(IJJ)V
    .registers 15

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 78
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$100(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 79
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$200(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    :cond_29
    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    :goto_2c
    move p1, v4

    move-wide p2, v5

    move-wide p4, v7

    goto :goto_6

    :cond_30
    return-void
.end method

.method public removeListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 5

    .line 68
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 69
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$000(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 70
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->release()V

    .line 71
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_21
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.BandwidthMeter.EventListener.EventDispatcher.HandlerAndListener (io.bidmachine.media3.exoplayer.upstream.BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener)
.class public final Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;

.field public released:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;
    .registers 1

    .line 87
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroid/os/Handler;
    .registers 1

    .line 87
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.upstream.BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$3:J

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->$r8$lambda$Se9KT3sjsbIJDPGatUs0u6uYmeY(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V

    return-void
.end method
