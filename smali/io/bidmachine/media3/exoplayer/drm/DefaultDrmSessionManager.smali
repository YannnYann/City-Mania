###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

.field public exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

.field public final exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

.field public final keepaliveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field public final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public volatile mediaDrmHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

.field public mode:I

.field public final multiSession:Z

.field public noMultiSessionDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

.field public offlineLicenseKeySetId:[B

.field public placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

.field public final playClearSamplesWithoutKeys:Z

.field public playbackHandler:Landroid/os/Handler;

.field public playbackLooper:Landroid/os/Looper;

.field public playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final preacquiredSessionReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;",
            ">;"
        }
    .end annotation
.end field

.field public prepareCallsCount:I

.field public final provisioningManagerImpl:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

.field public final referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

.field public final sessionKeepaliveMs:J

.field public final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field public final useDrmSessionsForClearContentTrackTypes:[I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;",
            "Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 345
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 346
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    .line 347
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    .line 348
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    .line 349
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    .line 350
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 351
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    .line 352
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 353
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    .line 354
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    const/4 p1, 0x0

    .line 355
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 357
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 358
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    .line 359
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JLio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .registers 12

    .line 72
    invoke-direct/range {p0 .. p10}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method public static synthetic access$1002(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 2

    .line 72
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .registers 1

    .line 72
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .registers 5

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J
    .registers 3

    .line 72
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    return-wide v0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)I
    .registers 1

    .line 72
    iget p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    return p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 1

    .line 72
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 2

    .line 72
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1
.end method

.method public static acquisitionFailedIndicatingResourceShortage(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z
    .registers 4

    .line 659
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    return v1

    .line 662
    :cond_9
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 663
    instance-of v0, p0, Landroid/media/ResourceBusyException;

    if-nez v0, :cond_23

    .line 664
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    return v2
.end method

.method public static getSchemeDatas(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 782
    :goto_8
    iget v2, p0, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v1, v2, :cond_32

    .line 783
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/DrmInitData;->get(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    .line 785
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 786
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    sget-object v3, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 787
    :cond_26
    iget-object v3, v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->data:[B

    if-nez v3, :cond_2c

    if-eqz p2, :cond_2f

    .line 788
    :cond_2c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_32
    return-object v0
.end method


# virtual methods
.method public final acquireSession(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .registers 9

    .line 473
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeCreateMediaDrmHandler(Landroid/os/Looper;)V

    .line 475
    iget-object p1, p3, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-nez p1, :cond_12

    .line 477
    iget-object p1, p3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 478
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 477
    invoke-virtual {p0, p1, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeAcquirePlaceholderSession(IZ)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    return-object p1

    .line 483
    :cond_12
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_4a

    .line 484
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/DrmInitData;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 485
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 486
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-direct {p1, p3, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    .line 487
    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    invoke-static {p3, p4, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_3d

    .line 489
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 491
    :cond_3d
    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/ErrorStateDrmSession;

    new-instance p3, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lio/bidmachine/media3/exoplayer/drm/ErrorStateDrmSession;-><init>(Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p2

    :cond_4a
    move-object p1, v1

    .line 497
    :cond_4b
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p3, :cond_52

    .line 498
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_6d

    .line 502
    :cond_52
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_58
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 503
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    move-object v1, v2

    :cond_6d
    :goto_6d
    if-nez v1, :cond_7f

    .line 513
    invoke-virtual {p0, p1, v0, p2, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    .line 518
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez p2, :cond_79

    .line 519
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->noMultiSessionDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 521
    :cond_79
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 523
    :cond_7f
    invoke-virtual {v1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v1
.end method

.method public acquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .registers 6

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 457
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    move v0, v2

    :cond_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 458
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->acquireSession(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    return-object p1
.end method

.method public final canAcquireSession(Lio/bidmachine/media3/common/DrmInitData;)Z
    .registers 6

    .line 574
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 578
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->getSchemeDatas(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 580
    iget v0, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    if-ne v0, v1, :cond_3c

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/DrmInitData;->get(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    sget-object v3, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultDrmSessionMgr"

    invoke-static {v3, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    return v2

    .line 589
    :cond_3d
    :goto_3d
    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    if-eqz p1, :cond_6d

    .line 590
    const-string v0, "cenc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_6d

    .line 593
    :cond_4a
    const-string v0, "cbcs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 596
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x19

    if-lt p1, v0, :cond_59

    return v1

    :cond_59
    return v2

    .line 597
    :cond_5a
    const-string v0, "cbc1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    const-string v0, "cens"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6c

    :cond_6b
    return v1

    :cond_6c
    :goto_6c
    return v2

    :cond_6d
    :goto_6d
    return v1
.end method

.method public final createAndAcquireSession(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ")",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 709
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playClearSamplesWithoutKeys:Z

    or-int v9, v1, p2

    .line 712
    new-instance v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->provisioningManagerImpl:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;

    iget v8, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keyRequestParameters:Ljava/util/HashMap;

    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 725
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/os/Looper;

    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 727
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-object/from16 v7, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v16}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    move-object/from16 v1, p3

    .line 732
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 733
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    .line 735
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_4d
    return-object v2
.end method

.method public final createAndAcquireSessionWithRetry(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Z)",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    .line 634
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 636
    invoke-virtual {p0, v0, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->undoAcquisition(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 637
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object v0

    .line 643
    :cond_1c
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->acquisitionFailedIndicatingResourceShortage(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z

    move-result v1

    if-eqz v1, :cond_42

    if-eqz p4, :cond_42

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 645
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_42

    .line 646
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 647
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3a

    .line 650
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllKeepaliveSessions()V

    .line 652
    :cond_3a
    invoke-virtual {p0, v0, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->undoAcquisition(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSession(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    return-object p1

    :cond_42
    return-object v0
.end method

.method public getCryptoType(Lio/bidmachine/media3/common/Format;)I
    .registers 5

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 532
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    .line 533
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-nez v2, :cond_25

    .line 534
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    .line 535
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Util;->linearSearch([II)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_24

    goto :goto_2b

    :cond_24
    return v0

    .line 539
    :cond_25
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->canAcquireSession(Lio/bidmachine/media3/common/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_2c

    :goto_2b
    return v1

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized initPlaybackLooper(Landroid/os/Looper;)V
    .registers 3

    monitor-enter p0

    .line 610
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v0, :cond_11

    .line 611
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 612
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    goto :goto_1e

    :catchall_f
    move-exception p1

    goto :goto_20

    :cond_11
    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 614
    :goto_16
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 615
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackHandler:Landroid/os/Handler;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_f

    .line 617
    :goto_1e
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_f

    throw p1
.end method

.method public final maybeAcquirePlaceholderSession(IZ)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .registers 7

    .line 548
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    .line 550
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_15

    sget-boolean v1, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v1, :cond_15

    goto :goto_40

    .line 553
    :cond_15
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->useDrmSessionsForClearContentTrackTypes:[I

    .line 554
    invoke-static {v1, p1}, Lio/bidmachine/media3/common/util/Util;->linearSearch([II)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_40

    .line 555
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->getCryptoType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    goto :goto_40

    .line 558
    :cond_26
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    if-nez p1, :cond_3a

    .line 561
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 560
    invoke-virtual {p0, p1, v0, v3, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->createAndAcquireSessionWithRetry(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p1

    .line 565
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    goto :goto_3d

    .line 568
    :cond_3a
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 570
    :goto_3d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->placeholderDrmSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-object p1

    :cond_40
    :goto_40
    return-object v3
.end method

.method public final maybeCreateMediaDrmHandler(Landroid/os/Looper;)V
    .registers 3

    .line 620
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v0, :cond_b

    .line 621
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    :cond_b
    return-void
.end method

.method public final maybeReleaseMediaDrm()V
    .registers 2

    .line 741
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    if-eqz v0, :cond_26

    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 743
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 744
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 746
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->release()V

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    :cond_26
    return-void
.end method

.method public preacquireSession(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
    .registers 4

    .line 444
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 445
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 448
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->acquire(Lio/bidmachine/media3/common/Format;)V

    return-object v0
.end method

.method public final prepare()V
    .registers 7

    const/4 v0, 0x1

    .line 399
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 400
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v0, :cond_d

    goto :goto_47

    .line 403
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 404
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;->acquireExoMediaDrm(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->exoMediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    .line 405
    new-instance v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    return-void

    .line 406
    :cond_25
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    .line 408
    :goto_31
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_47

    .line 409
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_47
    :goto_47
    return-void
.end method

.method public final release()V
    .registers 5

    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->verifyPlaybackThread(Z)V

    .line 417
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->prepareCallsCount:I

    if-eqz v1, :cond_c

    return-void

    .line 421
    :cond_c
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 425
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 426
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 429
    :cond_32
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->releaseAllPreacquiredSessions()V

    .line 431
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->maybeReleaseMediaDrm()V

    return-void
.end method

.method public final releaseAllKeepaliveSessions()V
    .registers 4

    .line 682
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->keepaliveSessions:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    const/4 v2, 0x0

    .line 684
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    goto :goto_a

    :cond_1b
    return-void
.end method

.method public final releaseAllPreacquiredSessions()V
    .registers 3

    .line 691
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->preacquiredSessionReferences:Ljava/util/Set;

    .line 692
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    .line 694
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->release()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public setMode(I[B)V
    .registers 4

    .line 387
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    .line 389
    :cond_f
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_12
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mode:I

    .line 392
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 436
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->initPlaybackLooper(Landroid/os/Looper;)V

    .line 437
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public final undoAcquisition(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 7

    .line 673
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 674
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->sessionKeepaliveMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_12

    const/4 p2, 0x0

    .line 675
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_12
    return-void
.end method

.method public final verifyPlaybackThread(Z)V
    .registers 4

    .line 752
    const-string v0, "DefaultDrmSessionMgr"

    if-eqz p1, :cond_13

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez p1, :cond_13

    .line 753
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 757
    :cond_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_58

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 763
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 758
    invoke-static {v0, p1, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_58
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.AnonymousClass1 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.Builder (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$Builder)
.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

.field public final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public multiSession:Z

.field public playClearSamplesWithoutKeys:Z

.field public sessionKeepaliveMs:J

.field public useDrmSessionsForClearContentTrackTypes:[I

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    .line 109
    sget-object v0, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 110
    sget-object v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    const/4 v0, 0x0

    .line 111
    new-array v0, v0, [I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    .line 113
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    const-wide/32 v0, 0x493e0

    .line 114
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    return-void
.end method


# virtual methods
.method public build(Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
    .registers 14

    .line 242
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->keyRequestParameters:Ljava/util/HashMap;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->sessionKeepaliveMs:J

    const/4 v11, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JLio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V

    return-object v0
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    .registers 2

    .line 214
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setMultiSession(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    .registers 2

    .line 163
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->multiSession:Z

    return-object p0
.end method

.method public setPlayClearSamplesWithoutKeys(Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    .registers 2

    .line 202
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->playClearSamplesWithoutKeys:Z

    return-object p0
.end method

.method public varargs setUseDrmSessionsForClearContent([I)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    .registers 8

    .line 184
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_15

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_f

    if-ne v3, v5, :cond_e

    goto :goto_f

    :cond_e
    move v5, v1

    .line 185
    :cond_f
    :goto_f
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 188
    :cond_15
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->useDrmSessionsForClearContentTrackTypes:[I

    return-object p0
.end method

.method public setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;
    .registers 3

    .line 146
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->uuid:Ljava/util/UUID;

    .line 147
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$Builder;->exoMediaDrmProvider:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.MediaDrmEventListener (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$MediaDrmEventListener)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .registers 2

    .line 917
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .registers 3

    .line 917
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;[BII[B)V
    .registers 6

    .line 922
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.MediaDrmHandler (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$MediaDrmHandler)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .registers 3

    .line 797
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 798
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 803
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_7

    goto :goto_28

    .line 808
    :cond_7
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 809
    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 810
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    :cond_28
    :goto_28
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.MissingSchemeDataException (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$MissingSchemeDataException)
.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;
.super Ljava/lang/Exception;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingSchemeDataException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media does not support uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .registers 3

    .line 259
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.PreacquiredSessionReference (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$PreacquiredSessionReference)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field public final eventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public isReleased:Z

.field public session:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public static synthetic $r8$lambda$-HT5HZxXXCeF4mZha06xVW4hhcE(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V
    .registers 3

    .line 985
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_5

    return-void

    .line 988
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_e

    .line 989
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 991
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 992
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    return-void
.end method

.method public static synthetic $r8$lambda$qNHwl7-BGh0CE1RIHMMAdoOUsGI(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lio/bidmachine/media3/common/Format;)V
    .registers 6

    .line 963
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 963
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$800(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_d

    goto :goto_2b

    .line 968
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 970
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 969
    invoke-static {v0, v1, v2, p1, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/common/Format;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 974
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 3

    .line 950
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public acquire(Lio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 960
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lio/bidmachine/media3/common/Format;)V

    .line 961
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .registers 3

    .line 982
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 983
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 982
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->$r8$lambda$-HT5HZxXXCeF4mZha06xVW4hhcE(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/common/Format;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->$r8$lambda$qNHwl7-BGh0CE1RIHMMAdoOUsGI(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.ProvisioningManagerImpl (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$ProvisioningManagerImpl)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvisioningManagerImpl"
.end annotation


# instance fields
.field public provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

.field public final sessionsAwaitingProvisioning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .registers 2

    .line 822
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onProvisionCompleted()V
    .registers 3

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 840
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 841
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 844
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 845
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onProvisionCompleted()V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 852
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 853
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 856
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 857
    invoke-virtual {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;Z)V

    goto :goto_12

    :cond_22
    return-void
.end method

.method public onSessionFullyReleased(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
    .registers 3

    .line 862
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 863
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    if-ne v0, p1, :cond_25

    const/4 p1, 0x0

    .line 864
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 865
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_25

    .line 868
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 869
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provision()V

    :cond_25
    return-void
.end method

.method public provisionRequired(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
    .registers 3

    .line 828
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    if-eqz v0, :cond_a

    return-void

    .line 833
    :cond_a
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 834
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provision()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager.ReferenceCountListenerImpl (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$ReferenceCountListenerImpl)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public static synthetic $r8$lambda$eqScggqvxs-oWxKmNWcQen-gmDM(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
    .registers 2

    const/4 v0, 0x0

    .line 895
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .registers 2

    .line 875
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .registers 3

    .line 875
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V
    .registers 8

    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ne p2, v0, :cond_43

    .line 888
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$800(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_43

    .line 892
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 894
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_94

    :cond_43
    if-nez p2, :cond_94

    .line 900
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 901
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$900(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p2

    const/4 v0, 0x0

    if-ne p2, p1, :cond_5c

    .line 902
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$902(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 904
    :cond_5c
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1000(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_69

    .line 905
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1002(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 907
    :cond_69
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1100(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 908
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_94

    .line 909
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 910
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 913
    :cond_94
    :goto_94
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$1200(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method public onReferenceCountIncremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V
    .registers 7

    .line 879
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_27

    .line 881
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$600(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 882
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->$r8$lambda$eqScggqvxs-oWxKmNWcQen-gmDM(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    return-void
.end method
