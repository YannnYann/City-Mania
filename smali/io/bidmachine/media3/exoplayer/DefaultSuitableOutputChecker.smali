###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker)
.class public final Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;,
        Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;
    }
.end annotation


# instance fields
.field public final impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_12

    .line 52
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    return-void

    :cond_12
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1e

    .line 54
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    return-void

    .line 56
    :cond_1e
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_7

    .line 75
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->disable()V

    :cond_7
    return-void
.end method

.method public enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 12

    .line 67
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_c

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 68
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V

    :cond_c
    return-void
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;->impl:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.AnonymousClass1 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$1;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi23 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23)
.class public final Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImplApi23"
.end annotation


# instance fields
.field public audioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field public audioManager:Landroid/media/AudioManager;

.field public isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$aHaF7_ZJMb9QA6Uws4Z9i3DZm7Y(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 3

    .line 199
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;->onSelectedOutputSuitabilityChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$gm-vhPWMbrE0E81SMuSuqAF-ccE(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V
    .registers 2

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_f

    .line 236
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceCallback;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$saegtuxVsU1PSYTzvPfOrvUwWfE(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;Landroid/content/Context;)V
    .registers 5

    .line 202
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 202
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->isWear(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_16

    .line 206
    :cond_c
    const-string v0, "audio"

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_17

    :goto_16
    return-void

    .line 211
    :cond_17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->audioManager:Landroid/media/AudioManager;

    .line 212
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 224
    new-instance v1, Landroid/os/Handler;

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 226
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->hasSupportedAudioOutput()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$1;)V
    .registers 2

    .line 179
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;-><init>()V

    return-void
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Z
    .registers 1

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->hasSupportedAudioOutput()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .registers 1

    .line 179
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    return-object p0
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 232
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V

    .line 233
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 12

    .line 192
    new-instance v0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 194
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;)V

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 200
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hasSupportedAudioOutput()Z
    .registers 11

    .line 247
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->audioManager:Landroid/media/AudioManager;

    .line 248
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_82

    aget-object v4, v0, v3

    .line 250
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-eq v5, v6, :cond_81

    .line 251
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_81

    .line 252
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_81

    .line 253
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-eq v5, v6, :cond_81

    .line 254
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_81

    .line 255
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_42

    goto :goto_81

    .line 258
    :cond_42
    sget v5, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_51

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0x16

    if-ne v8, v9, :cond_51

    return v7

    :cond_51
    const/16 v8, 0x1c

    if-lt v5, v8, :cond_5e

    .line 261
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_5e

    return v7

    :cond_5e
    const/16 v8, 0x1f

    if-lt v5, v8, :cond_71

    .line 265
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-eq v8, v6, :cond_70

    .line 266
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v8, 0x1b

    if-ne v6, v8, :cond_71

    :cond_70
    return v7

    :cond_71
    const/16 v6, 0x21

    if-lt v5, v6, :cond_7e

    .line 269
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_7e

    return v7

    :cond_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_81
    :goto_81
    return v7

    :cond_82
    return v2
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .registers 2

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi23.AnonymousClass1 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$1)
.class public Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;
.super Landroid/media/AudioDeviceCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 3

    .line 216
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$600(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$500(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 3

    .line 221
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$600(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->access$500(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->$r8$lambda$aHaF7_ZJMb9QA6Uws4Z9i3DZm7Y(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->$r8$lambda$saegtuxVsU1PSYTzvPfOrvUwWfE(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;->$r8$lambda$gm-vhPWMbrE0E81SMuSuqAF-ccE(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi23;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35)
.class public final Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;
.super Ljava/lang/Object;
.source "DefaultSuitableOutputChecker.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImplApi35"
.end annotation


# static fields
.field public static final EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;


# instance fields
.field public controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

.field public isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public routeCallback:Landroid/media/MediaRouter2$RouteCallback;

.field public router:Landroid/media/MediaRouter2;


# direct methods
.method public static synthetic $r8$lambda$He27y1FrPaFShMttmmlsBM_nl2g(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 3

    .line 111
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;->onSelectedOutputSuitabilityChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJDyuukTG_VAqe9G91ZShBLkEzM(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    .line 139
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline13;->m(Ljava/lang/Object;)Landroid/media/MediaRouter2$ControllerCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline14;->m(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$ControllerCallback;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 141
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline15;->m(Ljava/lang/Object;)Landroid/media/MediaRouter2$RouteCallback;

    move-result-object p0

    invoke-static {v0, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline16;->m(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RouteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nc_xr0N7dzJ-Micyiu-rm7zaBfo(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;Landroid/content/Context;)V
    .registers 5

    .line 114
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 114
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline3;->m(Landroid/content/Context;)Landroid/media/MediaRouter2;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    .line 116
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    .line 117
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21;-><init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;)V

    .line 118
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->routeCallback:Landroid/media/MediaRouter2$RouteCallback;

    sget-object v2, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 120
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->controllerCallback:Landroid/media/MediaRouter2$ControllerCallback;

    .line 128
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    invoke-static {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline5;->m(Landroid/media/MediaRouter2;Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 129
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    .line 130
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 129
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 86
    invoke-static {}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline1;->m()V

    .line 88
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/RouteDiscoveryPreference$Builder;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->EMPTY_DISCOVERY_PREFERENCE:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$1;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Landroid/media/MediaRouter2;
    .registers 1

    .line 85
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->router:Landroid/media/MediaRouter2;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/MediaRouter2;)Z
    .registers 1

    .line 85
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .registers 1

    .line 85
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    return-object p0
.end method

.method public static isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z
    .registers 5

    .line 166
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline17;->m(Landroid/media/MediaRoute2Info;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_11

    if-eq p1, v1, :cond_d

    const/4 p0, 0x2

    if-ne p1, p0, :cond_10

    :cond_d
    if-eqz p2, :cond_10

    return v1

    :cond_10
    return v0

    :cond_11
    if-nez p0, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public static isSelectedOutputSuitableForPlayback(Landroid/media/MediaRouter2;)Z
    .registers 4

    .line 152
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Landroid/media/MediaRouter2;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline8;->m(Landroid/media/MediaRouter2$RoutingController;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline9;->m(Landroid/media/RoutingSessionInfo;)I

    move-result v0

    .line 154
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline10;->m(Landroid/media/MediaRouter2$RoutingController;)Z

    move-result v1

    .line 155
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline7;->m(Landroid/media/MediaRouter2;)Landroid/media/MediaRouter2$RoutingController;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline11;->m(Landroid/media/MediaRouter2$RoutingController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline12;->m(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    .line 156
    invoke-static {v2, v0, v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isRouteSuitableForMediaPlayback(Landroid/media/MediaRoute2Info;IZ)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public disable()V
    .registers 3

    .line 136
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    .line 137
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadSafe"
        }
    .end annotation

    .line 104
    new-instance v0, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 106
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18;

    invoke-direct {v5, p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18;-><init>(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;)V

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 112
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;-><init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isSelectedOutputSuitableForPlayback()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->isSuitableForPlaybackState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.AnonymousClass1 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$1)
.class public Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$1;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.AnonymousClass2 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$2)
.class public Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;
.super Landroid/media/MediaRouter2$ControllerCallback;
.source "DefaultSuitableOutputChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    invoke-direct {p0}, Landroid/media/MediaRouter2$ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->access$400(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$2;->this$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    .line 125
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->access$200(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)Landroid/media/MediaRouter2;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->access$300(Landroid/media/MediaRouter2;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->$r8$lambda$He27y1FrPaFShMttmmlsBM_nl2g(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->$r8$lambda$Nc_xr0N7dzJ-Micyiu-rm7zaBfo(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;->$r8$lambda$KJDyuukTG_VAqe9G91ZShBLkEzM(Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21 (io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21)
.class public final synthetic Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method
