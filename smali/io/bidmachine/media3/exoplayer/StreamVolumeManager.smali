###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager (io.bidmachine.media3.exoplayer.StreamVolumeManager)
.class public final Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;,
        Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;,
        Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;
    }
.end annotation


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public audioManager:Landroid/media/AudioManager;

.field public final listener:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;

.field public receiver:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

.field public final stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler<",
            "Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;",
            ">;"
        }
    .end annotation
.end field

.field public volumeBeforeMute:I


# direct methods
.method public static synthetic $r8$lambda$F8dMQcb2tXlIlCM-eISH09vjVFw(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$SdFhdzlzm9zwZ4VjK_4Dn7R1FFw(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->onStreamVolumeStateChanged(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jDaCJnxL96YqjDq8K42wh11ni_c(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)V
    .registers 5

    .line 100
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 100
    const-string v1, "audio"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 101
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 103
    new-instance v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$1;)V

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    :try_start_1f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->receiver:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v0

    .line 109
    const-string v1, "StreamVolumeManager"

    const-string v2, "Error registering stream volume receiver"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_2f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->generateState(I)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ssDPA30Hi0UhpJoSO2xyInO29Js(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .registers 5

    .line 267
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->receiver:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    if-eqz v0, :cond_15

    .line 269
    :try_start_4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    .line 271
    const-string v1, "StreamVolumeManager"

    const-string v2, "Error unregistering stream volume receiver"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->receiver:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    :cond_15
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;ILandroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 13

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->applicationContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->listener:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;

    .line 84
    new-instance v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    move p1, v1

    .line 91
    new-instance p2, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    new-instance v5, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v1, v0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 98
    new-instance p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)V

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->receiver:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->generateState(I)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final generateState(I)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
    .registers 9

    .line 294
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getStreamVolume(Landroid/media/AudioManager;I)I

    move-result v3

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->isStreamMute(Landroid/media/AudioManager;I)Z

    move-result v4

    .line 297
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getStreamMinVolume(Landroid/media/AudioManager;I)I

    move-result v5

    .line 298
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getStreamMaxVolume(Landroid/media/AudioManager;I)I

    move-result v6

    .line 299
    new-instance v1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;-><init>(IIZII)V

    return-object v1
.end method

.method public getMaxVolume()I
    .registers 2

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    return v0
.end method

.method public getMinVolume()I
    .registers 2

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    return v0
.end method

.method public final onStreamVolumeStateChanged(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V
    .registers 6

    .line 280
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-nez v0, :cond_c

    iget-boolean v1, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-eqz v1, :cond_c

    .line 281
    iget v1, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iput v1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->volumeBeforeMute:I

    .line 283
    :cond_c
    iget v1, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    iget v2, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    if-ne v1, v2, :cond_16

    iget-boolean v1, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    if-eq v0, v1, :cond_1d

    .line 284
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->listener:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;

    iget-boolean v1, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    invoke-interface {v0, v2, v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;->onStreamVolumeChanged(IZ)V

    .line 286
    :cond_1d
    iget v0, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    iget v1, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    if-ne v0, v1, :cond_31

    iget v0, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    iget v2, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    if-ne v0, v2, :cond_31

    iget p1, p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    iget p2, p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    if-eq p1, p2, :cond_30

    goto :goto_31

    :cond_30
    return-void

    .line 289
    :cond_31
    :goto_31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->listener:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;

    invoke-interface {p1, v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;->onStreamTypeChanged(I)V

    return-void
.end method

.method public release()V
    .registers 4

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->stateHandler:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->updateStateAsync(Lcom/google/common/base/Function;Lcom/google/common/base/Function;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager.AnonymousClass1 (io.bidmachine.media3.exoplayer.StreamVolumeManager$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$1;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager.Listener (io.bidmachine.media3.exoplayer.StreamVolumeManager$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onStreamTypeChanged(I)V
.end method

.method public abstract onStreamVolumeChanged(IZ)V
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager.StreamVolumeState (io.bidmachine.media3.exoplayer.StreamVolumeManager$StreamVolumeState)
.class public final Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamVolumeState"
.end annotation


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final muted:Z

.field public final streamType:I

.field public final volume:I


# direct methods
.method public constructor <init>(IIZII)V
    .registers 6

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    .line 313
    iput p2, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->volume:I

    .line 314
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->muted:Z

    .line 315
    iput p4, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->minVolume:I

    .line 316
    iput p5, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->maxVolume:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager.VolumeChangeReceiver (io.bidmachine.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver)
.class public final Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;


# direct methods
.method public static synthetic $r8$lambda$0_Q_lzrbL-INagZ8UqFjxbpwO18(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V
    .registers 3

    .line 327
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    .line 327
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->access$100(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 331
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->access$000(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;->streamType:I

    .line 332
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->access$000(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object v1

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->access$200(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$1;)V
    .registers 3

    .line 320
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 325
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->access$000(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object p1

    new-instance p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;->$r8$lambda$0_Q_lzrbL-INagZ8UqFjxbpwO18(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$VolumeChangeReceiver;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    check-cast p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    check-cast p2, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->$r8$lambda$SdFhdzlzm9zwZ4VjK_4Dn7R1FFw(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->$r8$lambda$jDaCJnxL96YqjDq8K42wh11ni_c(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->$r8$lambda$F8dMQcb2tXlIlCM-eISH09vjVFw(Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    check-cast p1, Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->$r8$lambda$ssDPA30Hi0UhpJoSO2xyInO29Js(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager$StreamVolumeState;

    move-result-object p1

    return-object p1
.end method
