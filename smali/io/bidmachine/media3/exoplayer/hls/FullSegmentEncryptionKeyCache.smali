###### Class io.bidmachine.media3.exoplayer.hls.FullSegmentEncryptionKeyCache (io.bidmachine.media3.exoplayer.hls.FullSegmentEncryptionKeyCache)
.class public final Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;
.super Ljava/lang/Object;
.source "FullSegmentEncryptionKeyCache.java"


# instance fields
.field public final backingMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;

    add-int/lit8 v2, p1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;-><init>(Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;IFZI)V

    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public get(Landroid/net/Uri;)[B
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public put(Landroid/net/Uri;[B)[B
    .registers 4

    .line 63
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public remove(Landroid/net/Uri;)[B
    .registers 3

    .line 83
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->backingMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.hls.FullSegmentEncryptionKeyCache.AnonymousClass1 (io.bidmachine.media3.exoplayer.hls.FullSegmentEncryptionKeyCache$1)
.class public Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

.field public final synthetic val$maxSize:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;IFZI)V
    .registers 6

    .line 36
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->this$0:Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iput p5, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget v0, p0, Lio/bidmachine/media3/exoplayer/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
