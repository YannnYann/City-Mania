###### Class io.bidmachine.media3.exoplayer.source.chunk.MediaChunkIterator (io.bidmachine.media3.exoplayer.source.chunk.MediaChunkIterator)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;
.super Ljava/lang/Object;
.source "MediaChunkIterator.java"


# static fields
.field public static final EMPTY:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    return-void
.end method


# virtual methods
.method public abstract getChunkEndTimeUs()J
.end method

.method public abstract getChunkStartTimeUs()J
.end method

.method public abstract next()Z
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.MediaChunkIterator.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.chunk.MediaChunkIterator$1)
.class public Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator$1;
.super Ljava/lang/Object;
.source "MediaChunkIterator.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 2

    .line 58
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getChunkStartTimeUs()J
    .registers 2

    .line 53
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public next()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
