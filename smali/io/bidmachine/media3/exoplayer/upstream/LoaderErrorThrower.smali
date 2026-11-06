###### Class io.bidmachine.media3.exoplayer.upstream.LoaderErrorThrower (io.bidmachine.media3.exoplayer.upstream.LoaderErrorThrower)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;
.super Ljava/lang/Object;
.source "LoaderErrorThrower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;
    }
.end annotation


# virtual methods
.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.LoaderErrorThrower.Placeholder (io.bidmachine.media3.exoplayer.upstream.LoaderErrorThrower$Placeholder)
.class public final Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;
.super Ljava/lang/Object;
.source "LoaderErrorThrower.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Placeholder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeThrowError()V
    .registers 1

    .line 0
    return-void
.end method
