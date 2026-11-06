###### Class io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport (io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
.super Ljava/lang/Object;
.source "AudioOffloadSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;


# instance fields
.field public final isFormatSupported:Z

.field public final isGaplessSupported:Z

.field public final isSpeedChangeSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    .line 28
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->access$100(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    .line 108
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->access$200(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    .line 109
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->access$300(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$1;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    if-eq v3, v2, :cond_10

    goto :goto_25

    .line 125
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    .line 126
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    if-ne v2, p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 133
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    shl-int/lit8 v0, v0, 0x2

    .line 134
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 135
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isSpeedChangeSupported:Z

    add-int/2addr v0, v1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport.AnonymousClass1 (io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$1;
.super Ljava/lang/Object;
.source "AudioOffloadSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport.Builder (io.bidmachine.media3.exoplayer.audio.AudioOffloadSupport$Builder)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;
.super Ljava/lang/Object;
.source "AudioOffloadSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public isFormatSupported:Z

.field public isGaplessSupported:Z

.field public isSpeedChangeSupported:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isFormatSupported:Z

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isGaplessSupported:Z

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isSpeedChangeSupported:Z

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 3

    .line 89
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isFormatSupported:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isGaplessSupported:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isSpeedChangeSupported:Z

    if-nez v0, :cond_d

    goto :goto_15

    .line 90
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_15
    :goto_15
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$1;)V

    return-object v0
.end method

.method public setIsFormatSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;
    .registers 2

    .line 56
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isFormatSupported:Z

    return-object p0
.end method

.method public setIsGaplessSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;
    .registers 2

    .line 67
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isGaplessSupported:Z

    return-object p0
.end method

.method public setIsSpeedChangeSupported(Z)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;
    .registers 2

    .line 78
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport$Builder;->isSpeedChangeSupported:Z

    return-object p0
.end method
