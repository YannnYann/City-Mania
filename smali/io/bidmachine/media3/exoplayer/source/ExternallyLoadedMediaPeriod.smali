###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod)
.class public final Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;
    }
.end annotation


# instance fields
.field public final externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

.field public final loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final loadingThrowable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final sampleData:[B

.field public final tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/source/ExternalLoader;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->uri:Landroid/net/Uri;

    .line 57
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    .line 58
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    .line 59
    new-instance p3, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    new-instance v0, Lio/bidmachine/media3/common/TrackGroup;

    filled-new-array {p2}, [Lio/bidmachine/media3/common/Format;

    move-result-object p2

    invoke-direct {v0, p2}, Lio/bidmachine/media3/common/TrackGroup;-><init>([Lio/bidmachine/media3/common/Format;)V

    filled-new-array {v0}, [Lio/bidmachine/media3/common/TrackGroup;

    move-result-object p2

    invoke-direct {p3, p2}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;-><init>([Lio/bidmachine/media3/common/TrackGroup;)V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->sampleData:[B

    .line 61
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingThrowable:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)[B
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->sampleData:[B

    return-object p0
.end method


# virtual methods
.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
    .registers 2

    .line 147
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public discardBuffer(JZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 4

    .line 0
    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .registers 3

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 142
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 92
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->tracks:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public maybeThrowPrepareError()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 4

    .line 67
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    .line 68
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->externalLoader:Lio/bidmachine/media3/exoplayer/source/ExternalLoader;

    new-instance p2, Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->uri:Landroid/net/Uri;

    invoke-direct {p2, p3}, Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;-><init>(Landroid/net/Uri;)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/source/ExternalLoader;->load(Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 69
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;-><init>(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)V

    .line 82
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 69
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public readDiscontinuity()J
    .registers 3

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public releasePeriod()V
    .registers 3

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->loadingFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 162
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_8
    return-void
.end method

.method public seekToUs(J)J
    .registers 3

    .line 0
    return-wide p1
.end method

.method public selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J
    .registers 9

    const/4 v0, 0x0

    .line 102
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 103
    aget-object v1, p3, v0

    if-eqz v1, :cond_13

    aget-object v1, p1, v0

    if-eqz v1, :cond_10

    aget-boolean v1, p2, v0

    if-nez v1, :cond_13

    :cond_10
    const/4 v1, 0x0

    .line 104
    aput-object v1, p3, v0

    .line 106
    :cond_13
    aget-object v1, p3, v0

    if-nez v1, :cond_25

    aget-object v1, p1, v0

    if-eqz v1, :cond_25

    .line 107
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;-><init>(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)V

    .line 108
    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 109
    aput-boolean v1, p4, v0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-wide p5
.end method

###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod$1)
.class public Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaPeriod.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$100(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 74
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$000(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod.SampleStreamImpl (io.bidmachine.media3.exoplayer.source.ExternallyLoadedMediaPeriod$SampleStreamImpl)
.class public final Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ExternallyLoadedMediaPeriod.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public streamState:I

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 174
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$000(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$100(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-nez v0, :cond_f

    return-void

    .line 187
    :cond_f
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readData(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I
    .registers 12

    .line 195
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, -0x4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 p1, 0x4

    .line 196
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/decoder/Buffer;->addFlag(I)V

    return v1

    :cond_b
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_49

    if-nez v0, :cond_14

    goto :goto_49

    .line 206
    :cond_14
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$000(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, -0x3

    return p1

    .line 210
    :cond_22
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$300(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)[B

    move-result-object p1

    array-length p1, p1

    .line 211
    invoke-virtual {p2, v5}, Lio/bidmachine/media3/decoder/Buffer;->addFlag(I)V

    const-wide/16 v6, 0x0

    .line 212
    iput-wide v6, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_42

    .line 214
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 215
    iget-object p2, p2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$300(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)[B

    move-result-object v0

    invoke-virtual {p2, v0, v4, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_42
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_48

    .line 218
    iput v2, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_48
    return v1

    .line 201
    :cond_49
    :goto_49
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->this$0:Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;->access$200(Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod;)Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object p2

    invoke-virtual {p2, v4}, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->get(I)Lio/bidmachine/media3/common/TrackGroup;

    move-result-object p2

    invoke-virtual {p2, v4}, Lio/bidmachine/media3/common/TrackGroup;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object p2

    iput-object p2, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    .line 202
    iput v5, p0, Lio/bidmachine/media3/exoplayer/source/ExternallyLoadedMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p1, -0x5

    return p1
.end method

.method public skipData(J)I
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method
