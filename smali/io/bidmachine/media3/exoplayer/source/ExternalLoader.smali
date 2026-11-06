###### Class io.bidmachine.media3.exoplayer.source.ExternalLoader (io.bidmachine.media3.exoplayer.source.ExternalLoader)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/ExternalLoader;
.super Ljava/lang/Object;
.source "ExternalLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;
    }
.end annotation


# virtual methods
.method public abstract load(Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.source.ExternalLoader.LoadRequest (io.bidmachine.media3.exoplayer.source.ExternalLoader$LoadRequest)
.class public final Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;
.super Ljava/lang/Object;
.source "ExternalLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ExternalLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadRequest"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ExternalLoader$LoadRequest;->uri:Landroid/net/Uri;

    return-void
.end method
