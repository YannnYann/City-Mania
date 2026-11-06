###### Class io.bidmachine.media3.exoplayer.upstream.CmcdConfiguration (io.bidmachine.media3.exoplayer.upstream.CmcdConfiguration)
.class public final Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;
    }
.end annotation

###### Class io.bidmachine.media3.exoplayer.upstream.CmcdConfiguration.Factory (io.bidmachine.media3.exoplayer.upstream.CmcdConfiguration$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;
.super Ljava/lang/Object;
.source "CmcdConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createCmcdConfiguration(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;
.end method
