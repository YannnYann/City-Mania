###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;,
        Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;,
        Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;,
        Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;
    }
.end annotation


# instance fields
.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

.field public final audioDeviceCallback:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

.field public final context:Landroid/content/Context;

.field public final externalSurroundSoundSettingObserver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

.field public final handler:Landroid/os/Handler;

.field public final hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final listener:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

.field public registered:Z

.field public routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)V
    .registers 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 104
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 105
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 106
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 107
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 108
    sget p3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p4, 0x17

    const/4 v0, 0x0

    if-lt p3, p4, :cond_28

    new-instance p3, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    invoke-direct {p3, p0, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    goto :goto_29

    :cond_28
    move-object p3, v0

    :goto_29
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    .line 109
    new-instance p3, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {p3, p0, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getExternalSurroundSoundGlobalSettingUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_41

    .line 113
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 115
    :cond_41
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/common/AudioAttributes;
    .registers 1

    .line 44
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;
    .registers 1

    .line 44
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    return-object p0
.end method

.method public static synthetic access$302(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;
    .registers 2

    .line 44
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    return-object p1
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;
    .registers 1

    .line 44
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final onNewAudioCapabilities(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V
    .registers 3

    .line 197
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 198
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 199
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;->onAudioCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_13
    return-void
.end method

.method public register()Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;
    .registers 6

    .line 155
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    return-object v0

    :cond_d
    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    .line 159
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_17

    .line 160
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->register()V

    .line 162
    :cond_17
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_28

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    if-eqz v0, :cond_28

    .line 163
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    invoke-static {v1, v0, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;->registerAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 165
    :cond_28
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->handler:Landroid/os/Handler;

    .line 166
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 172
    invoke-static {v1, v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    return-object v0
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V
    .registers 4

    .line 124
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 126
    invoke-static {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public setRoutedDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 137
    :goto_9
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    if-eqz p1, :cond_17

    .line 141
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_17
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->routedDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 142
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 143
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->onNewAudioCapabilities(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public unregister()V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 186
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->audioDeviceCallback:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;

    if-eqz v0, :cond_17

    .line 187
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;->unregisterAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    .line 189
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->hdmiAudioPlugBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->externalSurroundSoundSettingObserver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;

    if-eqz v0, :cond_25

    .line 191
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->unregister()V

    :cond_25
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->registered:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.AnonymousClass1 (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.Api23 (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$Api23)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Api23;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static registerAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 3

    .line 265
    invoke-static {p0}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static unregisterAudioDeviceCallback(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V
    .registers 2

    .line 270
    invoke-static {p0}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.AudioDeviceCallbackV23 (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$AudioDeviceCallbackV23)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;
.super Landroid/media/AudioDeviceCallback;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioDeviceCallbackV23"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .registers 3

    .line 243
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 5

    .line 246
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 247
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$500(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    .line 246
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$400(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 5

    .line 252
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    move-result-object v0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Util;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 253
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$302(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 255
    :cond_12
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 256
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$500(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$AudioDeviceCallbackV23;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    .line 255
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$400(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.ExternalSurroundSoundSettingObserver (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;
.super Landroid/database/ContentObserver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExternalSurroundSoundSettingObserver"
.end annotation


# instance fields
.field public final resolver:Landroid/content/ContentResolver;

.field public final settingUri:Landroid/net/Uri;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5

    .line 221
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 222
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 223
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    .line 224
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 237
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 238
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$500(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    .line 237
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$400(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

.method public register()V
    .registers 4

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->settingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 232
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$ExternalSurroundSoundSettingObserver;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.HdmiAudioPlugBroadcastReceiver (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HdmiAudioPlugBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$1;)V
    .registers 3

    .line 203
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 207
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_19

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 210
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$200(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;->this$0:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    move-result-object v2

    .line 209
    invoke-static {p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getCapabilitiesInternal(Landroid/content/Context;Landroid/content/Intent;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object p1

    .line 208
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->access$400(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    :cond_19
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener (io.bidmachine.media3.exoplayer.audio.AudioCapabilitiesReceiver$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V
.end method
