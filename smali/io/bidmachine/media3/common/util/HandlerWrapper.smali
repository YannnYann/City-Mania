###### Class io.bidmachine.media3.common.util.HandlerWrapper (io.bidmachine.media3.common.util.HandlerWrapper)
.class public interface abstract Lio/bidmachine/media3/common/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
    }
.end annotation


# virtual methods
.method public abstract getLooper()Landroid/os/Looper;
.end method

.method public abstract hasMessages(I)Z
.end method

.method public abstract obtainMessage(I)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(IIILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
.end method

.method public abstract obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract removeCallbacksAndMessages(Ljava/lang/Object;)V
.end method

.method public abstract removeMessages(I)V
.end method

.method public abstract sendEmptyMessage(I)Z
.end method

.method public abstract sendEmptyMessageAtTime(IJ)Z
.end method

.method public abstract sendMessageAtFrontOfQueue(Lio/bidmachine/media3/common/util/HandlerWrapper$Message;)Z
.end method

###### Class io.bidmachine.media3.common.util.HandlerWrapper.Message (io.bidmachine.media3.common.util.HandlerWrapper$Message)
.class public interface abstract Lio/bidmachine/media3/common/util/HandlerWrapper$Message;
.super Ljava/lang/Object;
.source "HandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/HandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Message"
.end annotation


# virtual methods
.method public abstract sendToTarget()V
.end method
