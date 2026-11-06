###### Class io.bidmachine.media3.common.util.BackgroundThreadStateHandler (io.bidmachine.media3.common.util.BackgroundThreadStateHandler)
.class public final Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
.super Ljava/lang/Object;
.source "BackgroundThreadStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public backgroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public foregroundState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final onStateChanged:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field public pendingOperations:I


# direct methods
.method public static synthetic $r8$lambda$ILjiu2PMdO4pQ_WoLM98xu79lto(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .registers 3

    .line 124
    iget v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    .line 124
    iput v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    if-nez v0, :cond_b

    .line 125
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$NnM2jeN9N9iIZb-QT844dqEqJFE(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .registers 3

    .line 144
    iget v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    if-nez v0, :cond_7

    .line 145
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static synthetic $r8$lambda$VTzRKxpHOTwoFTDc52AoXsJK854(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Lcom/google/common/base/Function;)V
    .registers 4

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 120
    invoke-interface {p1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Looper;",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    invoke-interface {p4, p2, v0}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 82
    invoke-interface {p4, p3, v0}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 83
    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 85
    iput-object p5, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 97
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    return-object v0

    .line 99
    :cond_f
    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    return-object v0
.end method

.method public runInBackground(Ljava/lang/Runnable;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setStateInBackground(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundState:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateStateAsync(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function<",
            "TT;TT;>;",
            "Lcom/google/common/base/Function<",
            "TT;TT;>;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 117
    iget v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->pendingOperations:I

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Lcom/google/common/base/Function;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 129
    iget-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->updateStateInForeground(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateStateInForeground(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 167
    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->foregroundState:Ljava/lang/Object;

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 169
    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->onStateChanged:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;

    invoke-interface {v1, v0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;->onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

###### Class io.bidmachine.media3.common.util.BackgroundThreadStateHandler.StateChangeListener (io.bidmachine.media3.common.util.BackgroundThreadStateHandler$StateChangeListener)
.class public interface abstract Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;
.super Ljava/lang/Object;
.source "BackgroundThreadStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->$r8$lambda$NnM2jeN9N9iIZb-QT844dqEqJFE(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda1 (io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic f$1:Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Lcom/google/common/base/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->$r8$lambda$VTzRKxpHOTwoFTDc52AoXsJK854(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Lcom/google/common/base/Function;)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda2 (io.bidmachine.media3.common.util.BackgroundThreadStateHandler$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iput-object p2, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iget-object v1, p0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->$r8$lambda$ILjiu2PMdO4pQ_WoLM98xu79lto(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;Ljava/lang/Object;)V

    return-void
.end method
