###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 0
    return-void
.end method

.method public onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    .line 0
    return-void
.end method

.method public onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 6

    .line 0
    return-void
.end method

.method public onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener.EventDispatcher (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher)
.class public Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field public final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public static synthetic $r8$lambda$NIZKg4DPrIlKCWFcIUPsrjX8NVg(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 5

    .line 398
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 398
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p3, v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OS3T0NrvWYu6WUVKGfIyYvpqnUk(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 13

    .line 463
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 463
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v0, p5

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PPgJ22DQcyHRMKK9_-aCSZBYVU4(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 4

    .line 484
    iget p0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 484
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S72aGdYzIDcVZK8gtLtQ7PX_Ba8(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 5

    .line 356
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 356
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p3, v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQ9o0kPncR6k3bLWwrGOiLNov8k(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 4

    .line 509
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 509
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p2, v0, p0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xa3nUuoZRHVJtDzyM9henQdPLAY(Lio/bidmachine/media3/common/util/Consumer;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 2

    .line 516
    invoke-interface {p0, p1}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxIICcrd-xw7TtrfQtZxdTj0cqs(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;ILio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 11

    .line 313
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 313
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v0, p4

    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 160
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 171
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 172
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 5

    .line 208
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;",
            ">;)V"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 515
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    .line 516
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/common/util/Consumer;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public downstreamFormatChanged(ILio/bidmachine/media3/common/Format;ILjava/lang/Object;J)V
    .registers 17

    .line 494
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 501
    invoke-static/range {p5 .. p6}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 494
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public downstreamFormatChanged(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 507
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V
    .registers 14

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 361
    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V
    .registers 21

    .line 382
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 390
    invoke-static/range {p7 .. p8}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 391
    invoke-static/range {p9 .. p10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 382
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 396
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V
    .registers 14

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 319
    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V
    .registers 21

    .line 340
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 348
    invoke-static/range {p7 .. p8}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 349
    invoke-static/range {p9 .. p10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 340
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 354
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .registers 23

    .line 438
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 446
    invoke-static/range {p7 .. p8}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 447
    invoke-static/range {p9 .. p10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object/from16 p2, p11

    move/from16 p3, p12

    .line 438
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V
    .registers 18

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 410
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 11

    .line 461
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;II)V
    .registers 16

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v11, p3

    .line 237
    invoke-virtual/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJI)V
    .registers 22

    .line 286
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 294
    invoke-static/range {p7 .. p8}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 295
    invoke-static/range {p9 .. p10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    move/from16 p2, p11

    .line 286
    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method public loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 5

    .line 311
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 5

    .line 219
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 220
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_6

    .line 221
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .registers 16

    .line 469
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    .line 476
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 477
    invoke-static {p4, p5}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(IILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 469
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public upstreamDiscarded(Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 482
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 483
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public withParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .registers 5

    .line 185
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener.EventDispatcher.ListenerAndHandler (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$ListenerAndHandler)
.class public final Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public handler:Landroid/os/Handler;

.field public listener:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 3

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 527
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$3:Ljava/io/IOException;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$3:Ljava/io/IOException;

    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$3:Ljava/io/IOException;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$4:Z

    move-object v5, p1

    check-cast v5, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$OS3T0NrvWYu6WUVKGfIyYvpqnUk(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput p4, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$3:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$zxIICcrd-xw7TtrfQtZxdTj0cqs(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;ILio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$S72aGdYzIDcVZK8gtLtQ7PX_Ba8(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$rQ9o0kPncR6k3bLWwrGOiLNov8k(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$NIZKg4DPrIlKCWFcIUPsrjX8NVg(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$PPgJ22DQcyHRMKK9_-aCSZBYVU4(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/Consumer;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/Consumer;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/common/util/Consumer;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/common/util/Consumer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$xa3nUuoZRHVJtDzyM9henQdPLAY(Lio/bidmachine/media3/common/util/Consumer;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
