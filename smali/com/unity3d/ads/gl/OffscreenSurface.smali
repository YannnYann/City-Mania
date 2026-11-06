###### Class com.unity3d.ads.gl.OffscreenSurface (com.unity3d.ads.gl.OffscreenSurface)
.class public final Lcom/unity3d/ads/gl/OffscreenSurface;
.super Lcom/unity3d/ads/gl/EglSurfaceBase;
.source "OffscreenSurface.kt"


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/gl/EglCore;II)V
    .registers 5

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/ads/gl/EglSurfaceBase;-><init>(Lcom/unity3d/ads/gl/EglCore;)V

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/unity3d/ads/gl/EglSurfaceBase;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/unity3d/ads/gl/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method
