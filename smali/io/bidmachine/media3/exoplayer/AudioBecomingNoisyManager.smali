###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager)
.class public final Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;,
        Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
    }
.end annotation


# instance fields
.field public final backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final context:Landroid/content/Context;

.field public isEnabled:Z

.field public final receiver:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;


# direct methods
.method public static synthetic $r8$lambda$PNSqKrk1VPoOQU3jF8Oe_ar5ax8(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V
    .registers 2

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    .line 81
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPhkL0K7Z4DBG4DVbs6hdopUw2E(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    .line 77
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 56
    invoke-interface {p5, p2, p1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 57
    new-instance p2, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 59
    invoke-interface {p5, p3, p1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;-><init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->receiver:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    return p0
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_15

    .line 75
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    return-void

    .line 81
    :cond_15
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->backgroundHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->isEnabled:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager.AudioBecomingNoisyReceiver (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$AudioBecomingNoisyReceiver)
.class public final Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field public final eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final listener:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;


# direct methods
.method public static synthetic $r8$lambda$QptJ3-j-i1wSBtNMjra4UmLnO2M(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->callListenerIfEnabled()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 91
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 92
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

    return-void
.end method


# virtual methods
.method public final callListenerIfEnabled()V
    .registers 2

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->access$000(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;->onAudioBecomingNoisy()V

    :cond_d
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 97
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 98
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance p2, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->$r8$lambda$QptJ3-j-i1wSBtNMjra4UmLnO2M(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager.EventListener (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$EventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAudioBecomingNoisy()V
.end method

###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->$r8$lambda$dPhkL0K7Z4DBG4DVbs6hdopUw2E(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.AudioBecomingNoisyManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->$r8$lambda$PNSqKrk1VPoOQU3jF8Oe_ar5ax8(Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;)V

    return-void
.end method
