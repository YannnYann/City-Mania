###### Class org.chromium.net.UploadDataSink (org.chromium.net.UploadDataSink)
.class public abstract Lorg/chromium/net/UploadDataSink;
.super Ljava/lang/Object;
.source "UploadDataSink.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onReadError(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation
.end method

.method public abstract onReadSucceeded(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalChunk"
        }
    .end annotation
.end method

.method public abstract onRewindError(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation
.end method

.method public abstract onRewindSucceeded()V
.end method
