###### Class io.bidmachine.media3.common.util.SystemHandlerWrapper (io.bidmachine.media3.common.util.SystemHandlerWrapper)
.class public final Lio/bidmachine/media3/common/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/common/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation


# static fields
.field public static final messagePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;)V
    .registers 1

    .line 30
    invoke-static {p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->recycleMessage(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;)V

    return-void
.end method

.method public static obtainSystemMessage()Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;
    .registers 3

    .line 125
    sget-object v0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 126
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 127
    new-instance v1, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;-><init>(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$1;)V

    goto :goto_1e

    :catchall_10
    move-exception v1

    goto :goto_20

    .line 128
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    :goto_1e
    monitor-exit v0

    return-object v1

    .line 129
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_10

    throw v1
.end method

.method public static recycleMessage(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;)V
    .registers 4

    .line 133
    sget-object v0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 134
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_11

    .line 135
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    .line 137
    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .line 45
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public hasMessages(I)Z
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 51
    :goto_5
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 52
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public obtainMessage(I)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
    .registers 4

    .line 57
    invoke-static {}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lio/bidmachine/media3/common/util/SystemHandlerWrapper;)Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
    .registers 6

    .line 67
    invoke-static {}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 68
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lio/bidmachine/media3/common/util/SystemHandlerWrapper;)Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
    .registers 7

    .line 73
    invoke-static {}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 74
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lio/bidmachine/media3/common/util/SystemHandlerWrapper;)Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
    .registers 5

    .line 62
    invoke-static {}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->setMessage(Landroid/os/Message;Lio/bidmachine/media3/common/util/SystemHandlerWrapper;)Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 3

    .line 111
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMessages(I)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 100
    :goto_5
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 101
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessage(I)Z
    .registers 3

    .line 84
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .registers 5

    .line 94
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtFrontOfQueue(Lio/bidmachine/media3/common/util/HandlerWrapper$Message;)Z
    .registers 3

    .line 79
    check-cast p1, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;

    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendAtFrontOfQueue(Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.common.util.SystemHandlerWrapper.AnonymousClass1 (io.bidmachine.media3.common.util.SystemHandlerWrapper$1)
.class public synthetic Lio/bidmachine/media3/common/util/SystemHandlerWrapper$1;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/SystemHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.util.SystemHandlerWrapper.SystemMessage (io.bidmachine.media3.common.util.SystemHandlerWrapper$SystemMessage)
.class public final Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/common/util/HandlerWrapper$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/SystemHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# instance fields
.field public handler:Lio/bidmachine/media3/common/util/SystemHandlerWrapper;

.field public message:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$1;)V
    .registers 2

    .line 140
    invoke-direct {p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final recycle()V
    .registers 2

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 171
    iput-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->handler:Lio/bidmachine/media3/common/util/SystemHandlerWrapper;

    .line 172
    invoke-static {p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper;->access$100(Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;)V

    return-void
.end method

.method public sendAtFrontOfQueue(Landroid/os/Handler;)Z
    .registers 3

    .line 153
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    .line 154
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    return p1
.end method

.method public sendToTarget()V
    .registers 2

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    return-void
.end method

.method public setMessage(Landroid/os/Message;Lio/bidmachine/media3/common/util/SystemHandlerWrapper;)Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;
    .registers 3

    .line 147
    iput-object p1, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 148
    iput-object p2, p0, Lio/bidmachine/media3/common/util/SystemHandlerWrapper$SystemMessage;->handler:Lio/bidmachine/media3/common/util/SystemHandlerWrapper;

    return-object p0
.end method
