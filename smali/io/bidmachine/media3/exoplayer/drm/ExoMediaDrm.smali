###### Class io.bidmachine.media3.exoplayer.drm.ExoMediaDrm (io.bidmachine.media3.exoplayer.drm.ExoMediaDrm)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;,
        Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;,
        Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;,
        Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;
    }
.end annotation


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Lio/bidmachine/media3/decoder/CryptoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract getProvisionRequest()Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract provideProvisionResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract requiresSecureDecoder([BLjava/lang/String;)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
.end method

.method public setPlayerIdForSession([BLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.drm.ExoMediaDrm.KeyRequest (io.bidmachine.media3.exoplayer.drm.ExoMediaDrm$KeyRequest)
.class public final Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# instance fields
.field public final data:[B

.field public final licenseServerUrl:Ljava/lang/String;

.field public final requestType:I


# direct methods
.method public constructor <init>([BLjava/lang/String;I)V
    .registers 4

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->data:[B

    .line 305
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    .line 306
    iput p3, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->requestType:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 311
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->data:[B

    return-object v0
.end method

.method public getLicenseServerUrl()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;->licenseServerUrl:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.drm.ExoMediaDrm.OnEventListener (io.bidmachine.media3.exoplayer.drm.ExoMediaDrm$OnEventListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEventListener"
.end annotation


# virtual methods
.method public abstract onEvent(Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;[BII[B)V
.end method

###### Class io.bidmachine.media3.exoplayer.drm.ExoMediaDrm.Provider (io.bidmachine.media3.exoplayer.drm.ExoMediaDrm$Provider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$Provider;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation


# virtual methods
.method public abstract acquireExoMediaDrm(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.end method

###### Class io.bidmachine.media3.exoplayer.drm.ExoMediaDrm.ProvisionRequest (io.bidmachine.media3.exoplayer.drm.ExoMediaDrm$ProvisionRequest)
.class public final Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field public final data:[B

.field public final defaultUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .registers 3

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    .line 348
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->data:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .registers 2

    .line 361
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->defaultUrl:Ljava/lang/String;

    return-object v0
.end method
