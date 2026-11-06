###### Class io.bidmachine.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory (io.bidmachine.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# instance fields
.field public asyncCryptoFlagEnabled:Z

.field public asynchronousMode:I

.field public final callbackThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final queueingThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    .line 74
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 77
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    .line 103
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    .line 104
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 105
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_53

    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_53

    .line 151
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->shouldUseAsynchronousAdapterInDefaultMode()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 152
    :cond_13
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "DMCodecAdapterFactory"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    if-eqz v1, :cond_43

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    if-eqz v2, :cond_43

    .line 159
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    goto :goto_49

    .line 161
    :cond_43
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(I)V

    move-object v0, v1

    .line 162
    :goto_49
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->asyncCryptoFlagEnabled:Z

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->experimentalSetAsyncCryptoFlagEnabled(Z)V

    .line 163
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1

    .line 165
    :cond_53
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final shouldUseAsynchronousAdapterInDefaultMode()Z
    .registers 5

    .line 169
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_8

    return v2

    .line 175
    :cond_8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;->context:Landroid/content/Context;

    if-eqz v1, :cond_1d

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1d

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.amazon.hardware.tv_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method
