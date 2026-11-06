###### Class org.chromium.net.impl.VersionSafeCallbacks$RequestFinishedInfoListener (org.chromium.net.impl.VersionSafeCallbacks$RequestFinishedInfoListener)
.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;
.super Lorg/chromium/net/RequestFinishedInfo$Listener;
.source "VersionSafeCallbacks.java"


# instance fields
.field public final mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;


# direct methods
.method public constructor <init>(Lorg/chromium/net/RequestFinishedInfo$Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Lorg/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 184
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 194
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0}, Lorg/chromium/net/RequestFinishedInfo$Listener;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestInfo"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;->mWrappedListener:Lorg/chromium/net/RequestFinishedInfo$Listener;

    invoke-virtual {v0, p1}, Lorg/chromium/net/RequestFinishedInfo$Listener;->onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
