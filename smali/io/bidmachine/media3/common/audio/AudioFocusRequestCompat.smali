###### Class io.bidmachine.media3.common.audio.AudioFocusRequestCompat (io.bidmachine.media3.common.audio.AudioFocusRequestCompat)
.class public final Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;,
        Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
    }
.end annotation


# instance fields
.field public final audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public final focusChangeHandler:Landroid/os/Handler;

.field public final focusGain:I

.field public final frameworkAudioFocusRequest:Ljava/lang/Object;

.field public final onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public final pauseOnDuck:Z


# direct methods
.method public constructor <init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lio/bidmachine/media3/common/AudioAttributes;Z)V
    .registers 9

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    .line 54
    iput-object p3, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 56
    iput-boolean p5, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->pauseOnDuck:Z

    .line 58
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_19

    .line 59
    new-instance v2, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

    invoke-direct {v2, p2, p3}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_1b

    .line 63
    :cond_19
    iput-object p2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :goto_1b
    if-lt v0, v1, :cond_3a

    .line 67
    invoke-static {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p4}, Lio/bidmachine/media3/common/AudioAttributes;->getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p4

    iget-object p4, p4, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1, p4}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 70
    invoke-static {p1, p5}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioFocusRequest$Builder;Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 71
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Ljava/lang/Object;

    return-void

    :cond_3a
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
    .registers 3

    .line 122
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 130
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 133
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    .line 134
    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    iget v3, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    if-ne v1, v3, :cond_37

    iget-boolean v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->pauseOnDuck:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->pauseOnDuck:Z

    if-ne v1, v3, :cond_37

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v3, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 136
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    iget-object v3, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    .line 137
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-object p1, p1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 138
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    return v0

    :cond_37
    return v2
.end method

.method public getAudioAttributes()Lio/bidmachine/media3/common/AudioAttributes;
    .registers 2

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAudioFocusRequest()Landroid/media/AudioFocusRequest;
    .registers 2

    .line 149
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->frameworkAudioFocusRequest:Ljava/lang/Object;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline5;->m(Ljava/lang/Object;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getFocusChangeHandler()Landroid/os/Handler;
    .registers 2

    .line 117
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getFocusGain()I
    .registers 2

    .line 83
    iget v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    return v0
.end method

.method public getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 143
    iget v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusGain:I

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->focusChangeHandler:Landroid/os/Handler;

    iget-object v3, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-boolean v4, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->pauseOnDuck:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public willPauseWhenDucked()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->pauseOnDuck:Z

    return v0
.end method

###### Class io.bidmachine.media3.common.audio.AudioFocusRequestCompat.AnonymousClass1 (io.bidmachine.media3.common.audio.AudioFocusRequestCompat$1)
.class public synthetic Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$1;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.audio.AudioFocusRequestCompat.Builder (io.bidmachine.media3.common.audio.AudioFocusRequestCompat$Builder)
.class public final Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public focusChangeHandler:Landroid/os/Handler;

.field public focusGain:I

.field public onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public pauseOnDuck:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lio/bidmachine/media3/common/AudioAttributes;->DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 188
    iput p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)V
    .registers 3

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getFocusGain()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    .line 193
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 194
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getFocusChangeHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->getAudioAttributes()Lio/bidmachine/media3/common/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 196
    invoke-virtual {p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;->willPauseWhenDucked()Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$1;)V
    .registers 3

    .line 169
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;-><init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;)V

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;
    .registers 7

    .line 292
    iget-object v2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_18

    .line 296
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusGain:I

    iget-object v3, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    .line 299
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    iget-object v4, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-boolean v5, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;-><init>(ILandroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Lio/bidmachine/media3/common/AudioAttributes;Z)V

    return-object v0

    .line 293
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t build an AudioFocusRequestCompat instance without a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
    .registers 2

    .line 265
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    return-object p0
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
    .registers 3

    .line 245
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 248
    iput-object p2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->focusChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setWillPauseWhenDucked(Z)Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;
    .registers 2

    .line 281
    iput-boolean p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$Builder;->pauseOnDuck:Z

    return-object p0
.end method

###### Class io.bidmachine.media3.common.audio.AudioFocusRequestCompat.OnAudioFocusChangeListenerHandlerCompat (io.bidmachine.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat)
.class public Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;
.super Ljava/lang/Object;
.source "AudioFocusRequestCompat.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnAudioFocusChangeListenerHandlerCompat"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$-vFX2x10k-tMu4fnQsV_qGxRqF4(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;I)V
    .registers 2

    .line 341
    iget-object p0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 341
    invoke-interface {p0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)V
    .registers 3

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 336
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .line 341
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->handler:Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;I)V

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

    iput p2, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;->$r8$lambda$-vFX2x10k-tMu4fnQsV_qGxRqF4(Lio/bidmachine/media3/common/audio/AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat;I)V

    return-void
.end method
