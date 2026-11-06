###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api29;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public isOffloadVariableRateSupported:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAudioOffloadSupport(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/AudioAttributes;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 7

    .line 71
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_60

    iget v1, p1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    goto :goto_60

    .line 80
    :cond_12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported(Landroid/content/Context;)Z

    move-result v1

    .line 83
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5d

    .line 85
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->getApiLevelThatAudioFormatIntroducedAudioEncoding(I)I

    move-result v3

    if-ge v0, v3, :cond_2f

    goto :goto_5d

    .line 90
    :cond_2f
    iget v3, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v3

    if-nez v3, :cond_3a

    .line 92
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1

    .line 97
    :cond_3a
    :try_start_3a
    iget p1, p1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    invoke-static {p1, v3, v2}, Lio/bidmachine/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_40} :catch_5a

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_4f

    .line 105
    invoke-virtual {p2}, Lio/bidmachine/media3/common/AudioAttributes;->getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p2

    iget-object p2, p2, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 103
    invoke-static {p1, p2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31;->getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p1

    return-object p1

    .line 110
    :cond_4f
    invoke-virtual {p2}, Lio/bidmachine/media3/common/AudioAttributes;->getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p2

    iget-object p2, p2, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 108
    invoke-static {p1, p2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api29;->getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p1

    return-object p1

    .line 99
    :catch_5a
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1

    .line 87
    :cond_5d
    :goto_5d
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1

    .line 75
    :cond_60
    :goto_60
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1
.end method

.method public final isOffloadVariableRateSupported(Landroid/content/Context;)Z
    .registers 3

    .line 115
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 116
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_9
    if-eqz p1, :cond_29

    .line 120
    invoke-static {p1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    .line 121
    const-string v0, "offloadVariableRateSupported"

    .line 122
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 123
    const-string v0, "offloadVariableRateSupported=1"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 124
    :goto_22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    goto :goto_2d

    .line 128
    :cond_29
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    .line 130
    :goto_2d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;->isOffloadVariableRateSupported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider.Api29 (io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider$Api29)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api29;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# direct methods
.method public static getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 3

    .line 141
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api29$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 142
    sget-object p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    .line 144
    :cond_9
    new-instance p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    const/4 p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object p0

    .line 146
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider.Api31 (io.bidmachine.media3.exoplayer.audio.DefaultAudioOffloadSupportProvider$Api31)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31;
.super Ljava/lang/Object;
.source "DefaultAudioOffloadSupportProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static getOffloadedPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 6

    .line 160
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    if-nez p0, :cond_9

    .line 162
    sget-object p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p0

    .line 164
    :cond_9
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    .line 167
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le v0, v1, :cond_1a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    move p0, v2

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 171
    :goto_1b
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsGaplessSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p0

    return-object p0
.end method
