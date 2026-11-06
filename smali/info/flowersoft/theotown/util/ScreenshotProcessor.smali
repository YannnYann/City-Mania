###### Class info.flowersoft.theotown.util.ScreenshotProcessor (info.flowersoft.theotown.util.ScreenshotProcessor)
.class public abstract Linfo/flowersoft/theotown/util/ScreenshotProcessor;
.super Ljava/lang/Object;
.source "ScreenshotProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public takePhoto:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->takePhoto:Z

    return-void
.end method


# virtual methods
.method public abstract onTakePhoto()V
.end method

.method public run()V
    .registers 2

    .line 16
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->takePhoto:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->takePhoto:Z

    .line 19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->onTakePhoto()V

    :cond_a
    return-void
.end method

.method public take()V
    .registers 2

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/ScreenshotProcessor;->takePhoto:Z

    return-void
.end method
