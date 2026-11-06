###### Class io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler (io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler)
.class public final Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;,
        Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;,
        Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;
    }
.end annotation


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

.field public final decoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

.field public expiredManifestPublishTimeUs:J

.field public final handler:Landroid/os/Handler;

.field public isWaitingForManifestRefresh:Z

.field public manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

.field public final manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field public released:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 103
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 104
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 106
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 107
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    .line 108
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->decoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;
    .registers 1

    .line 63
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->decoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    return-object p0
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 63
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)J
    .registers 3

    .line 63
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->getManifestPublishTimeMsInEmsg(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;)Landroid/os/Handler;
    .registers 1

    .line 63
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getManifestPublishTimeMsInEmsg(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)J
    .registers 3

    .line 244
    :try_start_0
    iget-object p0, p0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    :catch_b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public static isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 256
    const-string v0, "urn:mpeg:dash:event:2012"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "1"

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const-string p0, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final handleManifestExpiredMessage(JJ)V
    .registers 7

    .line 200
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1c

    .line 202
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 204
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_31

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 136
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->released:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 139
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    .line 142
    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->eventTimeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->manifestPublishTimeMsInEmsg:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->handleManifestExpiredMessage(JJ)V

    return v1
.end method

.method public final maybeNotifyDashManifestRefreshNeeded()V
    .registers 2

    .line 233
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestRefreshRequested()V

    return-void
.end method

.method public maybeRefreshManifestBeforeLoadingNextChunk(J)Z
    .registers 9

    .line 154
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 157
    :cond_8
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    return v3

    .line 163
    :cond_e
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-gez p1, :cond_34

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 168
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->notifyManifestPublishTimeExpired()V

    move v2, v3

    :cond_34
    if-eqz v2, :cond_39

    .line 173
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    :cond_39
    return v2
.end method

.method public newPlayerTrackEmsgHandler()Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .registers 3

    .line 125
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;-><init>(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V

    return-object v0
.end method

.method public final notifyManifestPublishTimeExpired()V
    .registers 4

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestPublishTimeExpired(J)V

    return-void
.end method

.method public onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V
    .registers 2

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    return-void
.end method

.method public onChunkLoadError(Z)Z
    .registers 5

    .line 183
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 186
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    :cond_e
    if-eqz p1, :cond_14

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    return v2

    :cond_14
    return v1
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->released:Z

    .line 131
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removePreviouslyExpiredManifestPublishTimeValues()V
    .registers 6

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 217
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 221
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_a

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_2c
    return-void
.end method

.method public updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 118
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 119
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 120
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->removePreviouslyExpiredManifestPublishTimeValues()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler.ManifestExpiryEventInfo (io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler$ManifestExpiryEventInfo)
.class public final Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManifestExpiryEventInfo"
.end annotation


# instance fields
.field public final eventTimeUs:J

.field public final manifestPublishTimeMsInEmsg:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->eventTimeUs:J

    .line 398
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->manifestPublishTimeMsInEmsg:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler.PlayerEmsgCallback (io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler$PlayerEmsgCallback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerEmsgCallback"
.end annotation


# virtual methods
.method public abstract onDashManifestPublishTimeExpired(J)V
.end method

.method public abstract onDashManifestRefreshRequested()V
.end method

###### Class io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler (io.bidmachine.media3.exoplayer.dash.PlayerEmsgHandler$PlayerTrackEmsgHandler)
.class public final Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerTrackEmsgHandler"
.end annotation


# instance fields
.field public final buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

.field public final formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

.field public maxLoadedChunkEndTimeUs:J

.field public final sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V
    .registers 3

    .line 269
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->createWithoutDrm(Lio/bidmachine/media3/exoplayer/upstream/Allocator;)Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    .line 271
    new-instance p1, Lio/bidmachine/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    .line 272
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 273
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    return-void
.end method


# virtual methods
.method public final dequeueSample()Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;
    .registers 5

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 365
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Lio/bidmachine/media3/exoplayer/FormatHolder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    const/4 v3, 0x0

    .line 366
    invoke-virtual {v0, v1, v2, v3, v3}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->read(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1b

    .line 368
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 369
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public format(Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 278
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public maybeRefreshManifestBeforeLoadingNextChunk(J)Z
    .registers 4

    .line 308
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result p1

    return p1
.end method

.method public onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V
    .registers 6

    .line 318
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_15

    .line 319
    :cond_11
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    .line 321
    :cond_15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V

    return-void
.end method

.method public onChunkLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z
    .registers 6

    .line 331
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 333
    :goto_14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->onChunkLoadError(Z)Z

    move-result p1

    return p1
.end method

.method public final onManifestExpiredMessageEncountered(JJ)V
    .registers 6

    .line 384
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;-><init>(JJ)V

    .line 386
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->access$300(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->access$300(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final parseAndDiscardSamples()V
    .registers 6

    .line 344
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 345
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->dequeueSample()Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_0

    .line 349
    :cond_10
    iget-wide v2, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 350
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;

    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->access$000(Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;)Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageDecoder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/bidmachine/media3/extractor/metadata/SimpleMetadataDecoder;->decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_0

    .line 354
    :cond_1f
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    .line 355
    iget-object v1, v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v0, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-static {v1, v4}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->parsePlayerEmsgEvent(JLio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)V

    goto :goto_0

    .line 359
    :cond_33
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->discardToRead()V

    return-void
.end method

.method public final parsePlayerEmsgEvent(JLio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)V
    .registers 8

    .line 375
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler;->access$200(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_e

    return-void

    .line 379
    :cond_e
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onManifestExpiredMessageEncountered(JJ)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 338
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->release()V

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-interface {p4, p1, p2, p3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 4

    .line 290
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 14

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lio/bidmachine/media3/exoplayer/source/SampleQueue;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/SampleQueue;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 297
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->parseAndDiscardSamples()V

    return-void
.end method
