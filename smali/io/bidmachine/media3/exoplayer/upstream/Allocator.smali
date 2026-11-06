###### Class io.bidmachine.media3.exoplayer.upstream.Allocator (io.bidmachine.media3.exoplayer.upstream.Allocator)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/Allocator;
.super Ljava/lang/Object;
.source "Allocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;
    }
.end annotation


# virtual methods
.method public abstract allocate()Lio/bidmachine/media3/exoplayer/upstream/Allocation;
.end method

.method public abstract getIndividualAllocationLength()I
.end method

.method public abstract release(Lio/bidmachine/media3/exoplayer/upstream/Allocation;)V
.end method

.method public abstract release(Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;)V
.end method

.method public abstract trim()V
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Allocator.AllocationNode (io.bidmachine.media3.exoplayer.upstream.Allocator$AllocationNode)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;
.super Ljava/lang/Object;
.source "Allocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Allocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AllocationNode"
.end annotation


# virtual methods
.method public abstract getAllocation()Lio/bidmachine/media3/exoplayer/upstream/Allocation;
.end method

.method public abstract next()Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;
.end method
