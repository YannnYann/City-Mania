###### Class com.unity3d.ads.gl.EglSurfaceBase (com.unity3d.ads.gl.EglSurfaceBase)
.class public Lcom/unity3d/ads/gl/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEglSurfaceBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EglSurfaceBase.kt\ncom/unity3d/ads/gl/EglSurfaceBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n1#2:43\n*E\n"
.end annotation


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mEglCore:Lcom/unity3d/ads/gl/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/gl/EglCore;)V
    .registers 3

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mWidth:I

    .line 12
    iput v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mHeight:I

    .line 15
    iput-object p1, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEglCore:Lcom/unity3d/ads/gl/EglCore;

    return-void
.end method


# virtual methods
.method public final createOffscreenSurface(II)V
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_13

    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEglCore:Lcom/unity3d/ads/gl/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/ads/gl/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 24
    iput p1, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mWidth:I

    .line 25
    iput p2, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mHeight:I

    return-void

    .line 22
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final makeCurrent()V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEglCore:Lcom/unity3d/ads/gl/EglCore;

    iget-object v1, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/gl/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public final releaseEglSurface()V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEglCore:Lcom/unity3d/ads/gl/EglCore;

    iget-object v1, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/gl/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)Z

    .line 33
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mHeight:I

    .line 35
    iput v0, p0, Lcom/unity3d/ads/gl/EglSurfaceBase;->mWidth:I

    return-void
.end method
