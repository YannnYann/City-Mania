###### Class io.bidmachine.media3.exoplayer.image.ImageOutput (io.bidmachine.media3.exoplayer.image.ImageOutput)
.class public interface abstract Lio/bidmachine/media3/exoplayer/image/ImageOutput;
.super Ljava/lang/Object;
.source "ImageOutput.java"


# static fields
.field public static final NO_OP:Lio/bidmachine/media3/exoplayer/image/ImageOutput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageOutput$1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/image/ImageOutput$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/image/ImageOutput;->NO_OP:Lio/bidmachine/media3/exoplayer/image/ImageOutput;

    return-void
.end method


# virtual methods
.method public abstract onDisabled()V
.end method

.method public abstract onImageAvailable(JLandroid/graphics/Bitmap;)V
.end method

###### Class io.bidmachine.media3.exoplayer.image.ImageOutput.AnonymousClass1 (io.bidmachine.media3.exoplayer.image.ImageOutput$1)
.class public Lio/bidmachine/media3/exoplayer/image/ImageOutput$1;
.super Ljava/lang/Object;
.source "ImageOutput.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/image/ImageOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/image/ImageOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled()V
    .registers 1

    .line 0
    return-void
.end method

.method public onImageAvailable(JLandroid/graphics/Bitmap;)V
    .registers 4

    .line 0
    return-void
.end method
