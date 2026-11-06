###### Class com.google.android.gms.ads.VideoController (com.google.android.gms.ads.VideoController)
.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$Companion;,
        Lcom/google/android/gms/ads/VideoController$PlaybackState;,
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/ads/VideoController$Companion;

.field public static final PLAYBACK_STATE_ENDED:I = 0x3

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final PLAYBACK_STATE_READY:I = 0x5

.field public static final PLAYBACK_STATE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/ads/VideoController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/VideoController$Companion;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/ads/VideoController;->Companion:Lcom/google/android/gms/ads/VideoController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVideoCurrentTime()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoDuration()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVideoContent()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isClickToExpandEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isCustomControlsEnabled()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final isMuted()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final mute(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final pause()V
    .registers 1

    .line 0
    return-void
.end method

.method public final play()V
    .registers 1

    .line 0
    return-void
.end method

.method public final stop()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.google.android.gms.ads.VideoController.Companion (com.google.android.gms.ads.VideoController$Companion)
.class public final Lcom/google/android/gms/ads/VideoController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$Companion;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.VideoController.PlaybackState (com.google.android.gms.ads.VideoController$PlaybackState)
.class public interface abstract annotation Lcom/google/android/gms/ads/VideoController$PlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PlaybackState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks (com.google.android.gms.ads.VideoController$VideoLifecycleCallbacks)
.class public abstract Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onVideoMute(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onVideoPlay()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onVideoStart()V
    .registers 1

    .line 0
    return-void
.end method
