###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

.field public cryptoConfig:Lio/bidmachine/media3/decoder/CryptoConfig;

.field public currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

.field public currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

.field public final eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/CopyOnWriteMultiset<",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final isPlaceholderSession:Z

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

.field public lastException:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

.field public final mode:I

.field public offlineLicenseKeySetId:[B

.field public final playClearSamplesWithoutKeys:Z

.field public final playbackLooper:Landroid/os/Looper;

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

.field public referenceCount:I

.field public final referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

.field public requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

.field public requestHandlerThread:Landroid/os/HandlerThread;

.field public final responseHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:[B

.field public state:I

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public static synthetic $r8$lambda$cdoB0TbcAzJv5uGBiw6jYnuwMic(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2

    .line 570
    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zTjWJhZjHM1t44MCfd8zHywXWGU(ILio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 2

    .line 392
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_9

    const/4 v0, 0x3

    if-ne p6, v0, :cond_c

    .line 190
    :cond_9
    invoke-static {p9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_c
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 193
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 194
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    .line 195
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    .line 196
    iput p6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    .line 197
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 198
    iput-boolean p8, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz p9, :cond_22

    .line 200
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_2e

    .line 203
    :cond_22
    invoke-static {p5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 205
    :goto_2e
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 206
    iput-object p11, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    .line 207
    new-instance p1, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    .line 208
    iput-object p13, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 209
    iput-object p14, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    const/4 p1, 0x2

    .line 210
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 211
    iput-object p12, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 212
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {p1, p0, p12}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 59
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 59
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;
    .registers 1

    .line 59
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;
    .registers 1

    .line 59
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->callback:Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .registers 1

    .line 59
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
    .registers 1

    .line 59
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-object p0
.end method


# virtual methods
.method public acquire(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5

    .line 311
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 312
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v1, 0x0

    if-gez v0, :cond_22

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session reference count less than zero: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    :cond_22
    if-eqz p1, :cond_29

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;->add(Ljava/lang/Object;)V

    .line 319
    :cond_29
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-ne v0, v2, :cond_5d

    .line 320
    iget p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    move v1, v2

    :cond_37
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 321
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 323
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 325
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_72

    :cond_5d
    if-eqz p1, :cond_72

    .line 328
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    .line 329
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v2, :cond_72

    .line 332
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    .line 334
    :cond_72
    :goto_72
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {p1, p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountIncremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public final dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/Consumer<",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 593
    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public final doLicense(Z)V
    .registers 10

    .line 433
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz v0, :cond_5

    goto :goto_4d

    .line 436
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 437
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_39

    if-eq v1, v2, :cond_39

    if-eq v1, v3, :cond_2b

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1b

    goto :goto_4d

    .line 466
    :cond_1b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-virtual {p0, v1, v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    return-void

    .line 461
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 462
    :cond_35
    invoke-virtual {p0, v0, v3, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    return-void

    .line 440
    :cond_39
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v1, :cond_41

    .line 441
    invoke-virtual {p0, v0, v2, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    return-void

    .line 442
    :cond_41
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4e

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_4e

    :cond_4d
    :goto_4d
    return-void

    .line 443
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v4

    .line 444
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v1, :cond_76

    const-wide/16 v6, 0x3c

    cmp-long v1, v4, v6

    if-gtz v1, :cond_76

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0, v0, v3, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->postKeyRequest([BIZ)V

    return-void

    :cond_76
    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-gtz p1, :cond_85

    .line 453
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/KeysExpiredException;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    invoke-virtual {p0, p1, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    return-void

    .line 455
    :cond_85
    iput v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 456
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void
.end method

.method public final getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Lio/bidmachine/media3/decoder/CryptoConfig;

    return-object v0
.end method

.method public final getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .registers 3

    .line 272
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 273
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->lastException:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLicenseDurationRemainingSec()J
    .registers 6

    .line 487
    sget-object v0, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 491
    :cond_10
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 492
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .registers 2

    .line 278
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 279
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 259
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 260
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasSessionId([B)Z
    .registers 3

    .line 216
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final isOpen()Z
    .registers 3

    .line 588
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public final onError(Ljava/lang/Throwable;I)V
    .registers 4

    .line 566
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 567
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->getErrorCodeForMediaDrmException(Ljava/lang/Throwable;I)I

    move-result p2

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->lastException:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 568
    const-string p2, "DefaultDrmSession"

    const-string v0, "DRM session error"

    invoke-static {p2, v0, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    instance-of p2, p1, Ljava/lang/Exception;

    if-eqz p2, :cond_1f

    .line 570
    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    goto :goto_33

    .line 571
    :cond_1f
    instance-of p2, p1, Ljava/lang/Error;

    if-eqz p2, :cond_3c

    .line 573
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 574
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_30

    goto :goto_33

    .line 575
    :cond_30
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 580
    :cond_33
    :goto_33
    iget p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3b

    const/4 p1, 0x1

    .line 581
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    :cond_3b
    return-void

    .line 578
    :cond_3c
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected Throwable subclass"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 506
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    if-ne p1, v0, :cond_69

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_69

    :cond_b
    const/4 p1, 0x0

    .line 510
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 512
    instance-of p1, p2, Ljava/lang/Exception;

    if-nez p1, :cond_63

    instance-of p1, p2, Ljava/lang/NoSuchMethodError;

    if-eqz p1, :cond_17

    goto :goto_63

    .line 518
    :cond_17
    :try_start_17
    check-cast p2, [B

    .line 519
    iget p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_38

    .line 520
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 521
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    return-void

    :catch_34
    move-exception p1

    goto :goto_5e

    :catch_36
    move-exception p1

    goto :goto_5e

    .line 523
    :cond_38
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v0, p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 524
    iget p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4b

    if-nez p2, :cond_52

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz p2, :cond_52

    :cond_4b
    if-eqz p1, :cond_52

    array-length p2, p1

    if-eqz p2, :cond_52

    .line 529
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    :cond_52
    const/4 p1, 0x4

    .line 531
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 532
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5d} :catch_36
    .catch Ljava/lang/NoSuchMethodError; {:try_start_17 .. :try_end_5d} :catch_34

    return-void

    :goto_5e
    const/4 p2, 0x1

    .line 535
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    goto :goto_69

    .line 513
    :cond_63
    :goto_63
    check-cast p2, Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    :cond_69
    :goto_69
    return-void
.end method

.method public final onKeysError(Ljava/lang/Throwable;Z)V
    .registers 4

    .line 550
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-nez v0, :cond_14

    .line 551
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_14

    :cond_b
    if-eqz p2, :cond_f

    const/4 p2, 0x1

    goto :goto_10

    :cond_f
    const/4 p2, 0x2

    .line 554
    :goto_10
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    return-void

    .line 552
    :cond_14
    :goto_14
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    return-void
.end method

.method public final onKeysRequired()V
    .registers 3

    .line 540
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_12

    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 541
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_12
    return-void
.end method

.method public onMediaDrmEvent(I)V
    .registers 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    return-void

    .line 223
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onKeysRequired()V

    return-void
.end method

.method public onProvisionCompleted()V
    .registers 2

    .line 242
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->openInternal()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->doLicense(Z)V

    :cond_a
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;Z)V
    .registers 3

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x3

    .line 248
    :goto_5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public final onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 410
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    if-ne p1, v0, :cond_34

    iget p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_34

    :cond_10
    const/4 p1, 0x0

    .line 414
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 416
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_20

    .line 417
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p2, Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    return-void

    .line 422
    :cond_20
    :try_start_20
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2d

    .line 428
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    return-void

    :catch_2d
    move-exception p1

    .line 424
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;Z)V

    :cond_34
    :goto_34
    return-void
.end method

.method public final openInternal()Z
    .registers 5

    .line 380
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 386
    :cond_8
    :try_start_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 387
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v2, v0, v3}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->setPlayerIdForSession([BLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 388
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->createCryptoConfig([B)Lio/bidmachine/media3/decoder/CryptoConfig;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Lio/bidmachine/media3/decoder/CryptoConfig;

    const/4 v0, 0x3

    .line 389
    iput v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 392
    new-instance v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->dispatchEvent(Lio/bidmachine/media3/common/util/Consumer;)V

    .line 393
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_31} :catch_45
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_34
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_31} :catch_32

    return v1

    :catch_32
    move-exception v0

    goto :goto_35

    :catch_34
    move-exception v0

    .line 399
    :goto_35
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 400
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    goto :goto_4a

    .line 402
    :cond_41
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    goto :goto_4a

    .line 396
    :catch_45
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    :goto_4a
    const/4 v0, 0x0

    return v0
.end method

.method public playClearSamplesWithoutKeys()Z
    .registers 2

    .line 265
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 266
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method public final postKeyRequest([BIZ)V
    .registers 7

    .line 497
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    invoke-interface {v0, p1, v1, p2, v2}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 498
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 499
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    goto :goto_22

    :catch_21
    move-exception p1

    :goto_22
    const/4 p2, 0x1

    .line 501
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public provision()V
    .registers 4

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 237
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 235
    invoke-virtual {v0, v2, v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->post(ILjava/lang/Object;Z)V

    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 293
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public release(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5

    .line 339
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 340
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-gtz v0, :cond_f

    .line 341
    const-string p1, "DefaultDrmSession"

    const-string v0, "release() called on a session that\'s already fully released."

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    add-int/lit8 v0, v0, -0x1

    .line 344
    iput v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    if-nez v0, :cond_51

    const/4 v0, 0x0

    .line 346
    iput v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 347
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->release()V

    .line 349
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 350
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 351
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 352
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Lio/bidmachine/media3/decoder/CryptoConfig;

    .line 353
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->lastException:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 354
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 355
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 356
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_51

    .line 357
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 358
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    :cond_51
    if-eqz p1, :cond_63

    .line 362
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;->remove(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/CopyOnWriteMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_63

    .line 365
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    .line 368
    :cond_63
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    invoke-interface {p1, p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->onReferenceCountDecremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V

    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .registers 4

    .line 305
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->verifyPlaybackThread()V

    .line 306
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->requiresSecureDecoder([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final restoreKeys()Z
    .registers 5

    const/4 v0, 0x1

    .line 478
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v1

    goto :goto_e

    :catch_d
    move-exception v1

    .line 481
    :goto_e
    invoke-virtual {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->onError(Ljava/lang/Throwable;I)V

    const/4 v0, 0x0

    return v0
.end method

.method public final verifyPlaybackThread()V
    .registers 4

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_41

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nExpected thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 604
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 599
    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$ProvisioningManager)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProvisioningManager"
.end annotation


# virtual methods
.method public abstract onProvisionCompleted()V
.end method

.method public abstract onProvisionError(Ljava/lang/Exception;Z)V
.end method

.method public abstract provisionRequired(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.ReferenceCountListener (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$ReferenceCountListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReferenceCountListener"
.end annotation


# virtual methods
.method public abstract onReferenceCountDecremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V
.end method

.method public abstract onReferenceCountIncremented(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;I)V
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.RequestHandler (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$RequestHandler)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestHandler"
.end annotation


# instance fields
.field public isReleased:Z

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    .line 643
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 644
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 659
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 662
    :try_start_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 668
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$200(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object v1

    goto :goto_4f

    :catch_21
    move-exception v1

    goto :goto_40

    :catch_23
    move-exception v1

    goto :goto_48

    .line 671
    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 664
    :cond_2b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 665
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$300(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$200(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;

    move-result-object v2

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    check-cast v3, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1
    :try_end_3f
    .catch Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException; {:try_start_4 .. :try_end_3f} :catch_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_21

    goto :goto_4f

    .line 679
    :goto_40
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    .line 674
    :goto_48
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->maybeRetryRequest(Landroid/os/Message;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_78

    .line 682
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v2

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 683
    monitor-enter p0

    .line 684
    :try_start_5b
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v2, :cond_77

    .line 685
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$500(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    .line 686
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_77

    :catchall_75
    move-exception p1

    goto :goto_79

    .line 689
    :cond_77
    :goto_77
    monitor-exit p0

    :goto_78
    return-void

    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_5b .. :try_end_7a} :catchall_75

    throw p1
.end method

.method public final maybeRetryRequest(Landroid/os/Message;Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;)Z
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 693
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 694
    iget-boolean v4, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    const/4 v5, 0x0

    if-nez v4, :cond_10

    return v5

    .line 697
    :cond_10
    iget v4, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    iput v4, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    .line 698
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 699
    invoke-static {v7}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v7

    if-le v4, v7, :cond_24

    return v5

    .line 702
    :cond_24
    new-instance v9, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v10, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    iget-object v12, v2, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v13, v2, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->uriAfterRedirects:Landroid/net/Uri;

    iget-object v14, v2, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->responseHeaders:Ljava/util/Map;

    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move v4, v5

    move v7, v6

    iget-wide v5, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    sub-long v17, v17, v5

    iget-wide v5, v2, Lio/bidmachine/media3/exoplayer/drm/MediaDrmCallbackException;->bytesLoaded:J

    move-wide/from16 v19, v5

    invoke-direct/range {v9 .. v20}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 711
    new-instance v5, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    invoke-direct {v5, v8}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 713
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_57

    .line 714
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    goto :goto_61

    .line 715
    :cond_57
    new-instance v6, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v6, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v6

    .line 716
    :goto_61
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 717
    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$400(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move-result-object v6

    new-instance v8, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->errorCount:I

    invoke-direct {v8, v9, v5, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    invoke-interface {v6, v8}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v2, v5

    if-nez v5, :cond_7c

    return v4

    .line 724
    :cond_7c
    monitor-enter p0

    .line 725
    :try_start_7d
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z

    if-nez v5, :cond_8c

    .line 726
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 727
    monitor-exit p0

    return v7

    :catchall_8a
    move-exception v0

    goto :goto_8e

    .line 729
    :cond_8c
    monitor-exit p0

    return v4

    :goto_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_7d .. :try_end_8f} :catchall_8a

    throw v0
.end method

.method public post(ILjava/lang/Object;Z)V
    .registers 11

    .line 648
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;

    .line 650
    invoke-static {}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide v1

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v6, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;-><init>(JZJLjava/lang/Object;)V

    .line 654
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 734
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->isReleased:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 736
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.RequestTask (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$RequestTask)
.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestTask"
.end annotation


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final startTimeMs:J

.field public final taskId:J


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .registers 7

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    .line 749
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    .line 750
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    .line 751
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.ResponseHandler (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$ResponseHandler)
.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .registers 3

    .line 614
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 615
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 621
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 622
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 623
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 624
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_17

    const/4 v2, 0x2

    if-eq p1, v2, :cond_11

    return-void

    .line 629
    :cond_11
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$100(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 626
    :cond_17
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->access$000(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession.UnexpectedDrmSessionException (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$UnexpectedDrmSessionException)
.class public final Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
.super Ljava/io/IOException;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedDrmSessionException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->$r8$lambda$zTjWJhZjHM1t44MCfd8zHywXWGU(ILio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Throwable;

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->$r8$lambda$cdoB0TbcAzJv5uGBiw6jYnuwMic(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.drm.DefaultDrmSession$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void
.end method
