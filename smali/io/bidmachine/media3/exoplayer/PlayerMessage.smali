###### Class io.bidmachine.media3.exoplayer.PlayerMessage (io.bidmachine.media3.exoplayer.PlayerMessage)
.class public final Lio/bidmachine/media3/exoplayer/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;,
        Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public deleteAfterDelivery:Z

.field public isCanceled:Z

.field public isDelivered:Z

.field public isProcessed:Z

.field public isSent:Z

.field public looper:Landroid/os/Looper;

.field public mediaItemIndex:I

.field public payload:Ljava/lang/Object;

.field public positionMs:J

.field public final sender:Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;

.field public final target:Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;

.field public final timeline:Lio/bidmachine/media3/common/Timeline;

.field public type:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/common/util/Clock;Landroid/os/Looper;)V
    .registers 7

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->sender:Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;

    .line 102
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->target:Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;

    .line 103
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 104
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    .line 105
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 106
    iput p4, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public getDeleteAfterDelivery()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getMediaItemIndex()I
    .registers 2

    .line 232
    iget v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 157
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .registers 3

    .line 186
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;
    .registers 2

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->target:Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->timeline:Lio/bidmachine/media3/common/Timeline;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 137
    iget v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->type:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .registers 2

    monitor-enter p0

    .line 290
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .registers 3

    monitor-enter p0

    .line 302
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isProcessed:Z

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 305
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public send()Lio/bidmachine/media3/exoplayer/PlayerMessage;
    .registers 7

    .line 265
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 266
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    .line 267
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 269
    :cond_17
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isSent:Z

    .line 270
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->sender:Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;->sendMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/PlayerMessage;
    .registers 3

    .line 149
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 150
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(I)Lio/bidmachine/media3/exoplayer/PlayerMessage;
    .registers 3

    .line 130
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 131
    iput p1, p0, Lio/bidmachine/media3/exoplayer/PlayerMessage;->type:I

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.PlayerMessage.Sender (io.bidmachine.media3.exoplayer.PlayerMessage$Sender)
.class public interface abstract Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sender"
.end annotation


# virtual methods
.method public abstract sendMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
.end method

###### Class io.bidmachine.media3.exoplayer.PlayerMessage.Target (io.bidmachine.media3.exoplayer.PlayerMessage$Target)
.class public interface abstract Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/PlayerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Target"
.end annotation


# virtual methods
.method public abstract handleMessage(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method
