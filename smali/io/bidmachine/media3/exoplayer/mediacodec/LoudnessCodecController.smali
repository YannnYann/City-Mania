###### Class io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController (io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;
    }
.end annotation


# instance fields
.field public loudnessCodecController:Landroid/media/LoudnessCodecController;

.field public final mediaCodecs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/media/MediaCodec;",
            ">;"
        }
    .end annotation
.end field

.field public final updateListener:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->mediaCodecs:Ljava/util/HashSet;

    .line 68
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->updateListener:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->updateListener:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    return-object p0
.end method


# virtual methods
.method public addMediaCodec(Landroid/media/MediaCodec;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_b

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 110
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->mediaCodecs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 127
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->mediaCodecs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 128
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_c

    .line 129
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/LoudnessCodecController;)V

    :cond_c
    return-void
.end method

.method public removeMediaCodec(Landroid/media/MediaCodec;)V
    .registers 3

    .line 119
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->mediaCodecs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_f

    .line 121
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    :cond_f
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 4

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_a

    .line 78
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/LoudnessCodecController;)V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    .line 84
    :cond_a
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$1;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$1;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    .line 82
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline2;->m(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    .line 91
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->loudnessCodecController:Landroid/media/LoudnessCodecController;

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->mediaCodecs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {p1, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :cond_35
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController.AnonymousClass1 (io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController$1)
.class public Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$1;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"

# interfaces
.implements Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->setAudioSessionId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$1;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 88
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$1;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->access$000(Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->onLoudnessParameterUpdate(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener (io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController$LoudnessParameterUpdateListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;
.super Ljava/lang/Object;
.source "LoudnessCodecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoudnessParameterUpdateListener"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$uNkKP0gU8BAGS6dn2UsfaRWt6aI(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 1

    .line 0
    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;

    return-void
.end method


# virtual methods
.method public abstract onLoudnessParameterUpdate(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.mediacodec.LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoudnessParameterUpdate(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController$LoudnessParameterUpdateListener;->$r8$lambda$uNkKP0gU8BAGS6dn2UsfaRWt6aI(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
