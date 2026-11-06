###### Class io.bidmachine.media3.exoplayer.AudioFocusManager (io.bidmachine.media3.exoplayer.AudioFocusManager)
.class public final Lio/bidmachine/media3/exoplayer/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;
    }
.end annotation


# instance fields
.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

.field public audioFocusState:I

.field public final audioManager:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field public final eventHandler:Landroid/os/Handler;

.field public focusGainToRequest:I

.field public playerControl:Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;

.field public rebuildAudioFocusRequest:Z

.field public volumeMultiplier:F


# direct methods
.method public static synthetic $r8$lambda$K_Lzg_HngwM3cwWuHLPoe-B2c2M(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 1

    .line 145
    invoke-static {p0}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KxSGazph-ujCu5GmrOMewc_Lz3c(Lio/bidmachine/media3/exoplayer/AudioFocusManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    iput v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 145
    new-instance v0, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    .line 146
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->playerControl:Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method public static convertAudioAttributesToFocusGain(Lio/bidmachine/media3/common/AudioAttributes;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 287
    :cond_4
    iget v1, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusManager"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_36

    .line 341
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified audio usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/bidmachine/media3/common/AudioAttributes;->usage:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_25
    const/4 p0, 0x4

    return p0

    .line 335
    :pswitch_27
    iget p0, p0, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_2c

    return v3

    :cond_2c
    :pswitch_2c
    return v2

    :pswitch_2d
    return v0

    :pswitch_2e
    return v3

    :pswitch_2f
    return v5

    .line 303
    :pswitch_30
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    invoke-static {v4, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2e
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_27
        :pswitch_2c
        :pswitch_2c
        :pswitch_2f
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public final abandonAudioFocusIfHeld()V
    .registers 3

    .line 238
    iget v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_8

    goto :goto_19

    .line 242
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)I

    :cond_19
    :goto_19
    return-void
.end method

.method public final executePlayerCommand(I)V
    .registers 3

    .line 391
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->playerControl:Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_7

    .line 392
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    :cond_7
    return-void
.end method

.method public getVolumeMultiplier()F
    .registers 2

    .line 153
    iget v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public final handlePlatformAudioFocusChange(I)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_35

    if-eq p1, v1, :cond_35

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2b

    if-eq p1, v1, :cond_23

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    const/4 p1, 0x2

    .line 368
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 369
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    return-void

    .line 372
    :cond_2b
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    .line 373
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 374
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void

    :cond_35
    if-eq p1, v1, :cond_43

    .line 378
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_43

    :cond_3e
    const/4 p1, 0x4

    .line 382
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void

    :cond_43
    :goto_43
    const/4 p1, 0x0

    .line 379
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p1, 0x3

    .line 380
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->playerControl:Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 208
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method public final requestAudioFocus()I
    .registers 4

    .line 224
    iget v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    .line 227
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->requestAudioFocusInternal()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 229
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    .line 232
    :cond_11
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    const/4 v0, -0x1

    return v0
.end method

.method public final requestAudioFocusInternal()I
    .registers 4

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v1, :cond_3e

    :cond_8
    if-nez v0, :cond_12

    .line 251
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(I)V

    goto :goto_16

    .line 252
    :cond_12
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->buildUpon()Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v0

    .line 254
    :goto_16
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 255
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 257
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/AudioAttributes;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->setWillPauseWhenDucked(Z)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/AudioFocusManager;)V

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->eventHandler:Landroid/os/Handler;

    .line 259
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->build()Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 264
    :cond_3e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioManager:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)I

    move-result v0

    return v0
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V
    .registers 3

    .line 166
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 167
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 168
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->convertAudioAttributesToFocusGain(Lio/bidmachine/media3/common/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 169
    :cond_17
    :goto_17
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public final setAudioFocusState(I)V
    .registers 3

    .line 347
    iget v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_5

    goto :goto_20

    .line 350
    :cond_5
    iput p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    .line 356
    :goto_10
    iget v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    goto :goto_20

    .line 359
    :cond_17
    iput p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 360
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->playerControl:Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_20

    .line 361
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final shouldHandleAudioFocus(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 220
    iget p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-ne p1, v0, :cond_8

    return v0

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public updateAudioFocus(ZI)I
    .registers 5

    .line 184
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->shouldHandleAudioFocus(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    .line 185
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 186
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    :cond_f
    if-eqz p1, :cond_16

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    return p1

    .line 192
    :cond_16
    iget p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-eq p1, v1, :cond_1f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1e

    return v1

    :cond_1e
    return v0

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method public final willPauseWhenDucked()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    if-eqz v0, :cond_a

    iget v0, v0, Lio/bidmachine/media3/common/AudioAttributes;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.AudioFocusManager.PlayerControl (io.bidmachine.media3.exoplayer.AudioFocusManager$PlayerControl)
.class public interface abstract Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerControl"
.end annotation


# virtual methods
.method public abstract executePlayerCommand(I)V
.end method

.method public abstract setVolumeMultiplier(F)V
.end method

###### Class io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/AudioFocusManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->$r8$lambda$KxSGazph-ujCu5GmrOMewc_Lz3c(Lio/bidmachine/media3/exoplayer/AudioFocusManager;I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/AudioFocusManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->$r8$lambda$K_Lzg_HngwM3cwWuHLPoe-B2c2M(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method
