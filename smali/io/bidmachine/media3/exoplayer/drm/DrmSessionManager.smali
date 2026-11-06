###### Class io.bidmachine.media3.exoplayer.drm.DrmSessionManager (io.bidmachine.media3.exoplayer.drm.DrmSessionManager)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public abstract acquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
.end method

.method public abstract getCryptoType(Lio/bidmachine/media3/common/Format;)I
.end method

.method public preacquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .registers 3

    .line 135
    sget-object p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-object p1
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DrmSessionManager.AnonymousClass1 (io.bidmachine.media3.exoplayer.drm.DrmSessionManager$1)
.class public Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .registers 5

    .line 58
    iget-object p1, p2, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 61
    :cond_6
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/ErrorStateDrmSession;

    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/ErrorStateDrmSession;-><init>(Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p1
.end method

.method public getCryptoType(Lio/bidmachine/media3/common/Format;)I
    .registers 2

    .line 70
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference (io.bidmachine.media3.exoplayer.drm.DrmSessionManager$DrmSessionReference)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DrmSessionReference"
.end annotation


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# direct methods
.method public static synthetic $r8$lambda$7mbBokBUvhOHAk1TCN3zClYHTuo()V
    .registers 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.drm.DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->$r8$lambda$7mbBokBUvhOHAk1TCN3zClYHTuo()V

    return-void
.end method
