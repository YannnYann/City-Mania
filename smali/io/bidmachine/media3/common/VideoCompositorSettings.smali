###### Class io.bidmachine.media3.common.VideoCompositorSettings (io.bidmachine.media3.common.VideoCompositorSettings)
.class public interface abstract Lio/bidmachine/media3/common/VideoCompositorSettings;
.super Ljava/lang/Object;
.source "VideoCompositorSettings.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/VideoCompositorSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lio/bidmachine/media3/common/VideoCompositorSettings$1;

    invoke-direct {v0}, Lio/bidmachine/media3/common/VideoCompositorSettings$1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/VideoCompositorSettings;->DEFAULT:Lio/bidmachine/media3/common/VideoCompositorSettings;

    return-void
.end method

###### Class io.bidmachine.media3.common.VideoCompositorSettings.AnonymousClass1 (io.bidmachine.media3.common.VideoCompositorSettings$1)
.class public Lio/bidmachine/media3/common/VideoCompositorSettings$1;
.super Ljava/lang/Object;
.source "VideoCompositorSettings.java"

# interfaces
.implements Lio/bidmachine/media3/common/VideoCompositorSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/VideoCompositorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
