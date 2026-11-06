###### Class io.bidmachine.media3.common.audio.AudioManagerCompat (io.bidmachine.media3.common.audio.AudioManagerCompat)
.class public final Lio/bidmachine/media3/common/audio/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static applicationContext:Landroid/content/Context;

.field public static audioManager:Landroid/media/AudioManager;


# direct methods
.method public static synthetic $r8$lambda$iFKEQMPBr0FTKqKO6JT_tmF89CE(Landroid/content/Context;Lio/bidmachine/media3/common/util/ConditionVariable;)V
    .registers 3

    .line 136
    const-string v0, "audio"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    .line 138
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ConditionVariable;->open()Z

    return-void
.end method

.method public static abandonAudioFocusRequest(Landroid/media/AudioManager;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)I
    .registers 4

    .line 179
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 180
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 182
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 5

    const-class v0, Lio/bidmachine/media3/common/audio/AudioManagerCompat;

    monitor-enter v0

    .line 114
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 115
    sget-object v1, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->applicationContext:Landroid/content/Context;

    if-eq v1, p0, :cond_11

    const/4 v1, 0x0

    .line 117
    sput-object v1, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_54

    .line 119
    :cond_11
    :goto_11
    sget-object v1, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    if-eqz v1, :cond_17

    .line 120
    monitor-exit v0

    return-object v1

    .line 122
    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 123
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_24

    goto :goto_42

    .line 132
    :cond_24
    new-instance v1, Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-direct {v1}, Lio/bidmachine/media3/common/util/ConditionVariable;-><init>()V

    .line 133
    invoke-static {}, Lio/bidmachine/media3/common/util/BackgroundExecutor;->get()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lio/bidmachine/media3/common/util/ConditionVariable;)V

    .line 134
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ConditionVariable;->blockUninterruptible()V

    .line 141
    sget-object p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_f

    monitor-exit v0

    return-object p0

    .line 126
    :cond_42
    :goto_42
    :try_start_42
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->audioManager:Landroid/media/AudioManager;

    .line 127
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_f

    throw p0
.end method

.method public static getStreamMaxVolume(Landroid/media/AudioManager;I)I
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static getStreamMinVolume(Landroid/media/AudioManager;I)I
    .registers 4

    .line 207
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Lads_mobile_sdk/io$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getStreamVolume(Landroid/media/AudioManager;I)I
    .registers 5

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioManagerCompat"

    invoke-static {v2, v1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public static isStreamMute(Landroid/media/AudioManager;I)Z
    .registers 4

    .line 236
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 237
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 239
    :cond_b
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getStreamVolume(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static requestAudioFocus(Landroid/media/AudioManager;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)I
    .registers 4

    .line 157
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 158
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getAudioFocusRequest()Landroid/media/AudioFocusRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 161
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getAudioAttributes()Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/AudioAttributes;->getStreamType()I

    move-result v1

    .line 163
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getFocusGain()I

    move-result p1

    .line 160
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0
.end method

###### Class io.bidmachine.media3.common.audio.AudioManagerCompat$$ExternalSyntheticLambda2 (io.bidmachine.media3.common.audio.AudioManagerCompat$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lio/bidmachine/media3/common/util/ConditionVariable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/common/util/ConditionVariable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/common/util/ConditionVariable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/AudioManagerCompat$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->$r8$lambda$iFKEQMPBr0FTKqKO6JT_tmF89CE(Landroid/content/Context;Lio/bidmachine/media3/common/util/ConditionVariable;)V

    return-void
.end method
