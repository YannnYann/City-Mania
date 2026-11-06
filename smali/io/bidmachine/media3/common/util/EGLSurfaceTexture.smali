###### Class io.bidmachine.media3.common.util.EGLSurfaceTexture (io.bidmachine.media3.common.util.EGLSurfaceTexture)
.class public final Lio/bidmachine/media3/common/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/EGLSurfaceTexture$TextureImageListener;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRIBUTES:[I


# instance fields
.field public context:Landroid/opengl/EGLContext;

.field public display:Landroid/opengl/EGLDisplay;

.field public final handler:Landroid/os/Handler;

.field public surface:Landroid/opengl/EGLSurface;

.field public texture:Landroid/graphics/SurfaceTexture;

.field public final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x11

    .line 67
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_a
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lio/bidmachine/media3/common/util/EGLSurfaceTexture$TextureImageListener;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 113
    new-array p1, p1, [I

    iput-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    return-void
.end method

.method public static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 211
    new-array v4, v0, [Landroid/opengl/EGLConfig;

    .line 212
    new-array v7, v0, [I

    .line 213
    sget-object v2, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 214
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    .line 223
    aget v2, v7, v1

    if-lez v2, :cond_1c

    aget-object v2, v4, v1

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 227
    :goto_1d
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aget v2, v7, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v3, v4, v1

    filled-new-array {p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    .line 225
    const-string v2, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    invoke-static {v2, p0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 229
    aget-object p0, v4, v1

    return-object p0
.end method

.method public static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/16 v0, 0x3038

    const/16 v1, 0x3098

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_13

    .line 236
    new-array p2, v2, [I

    aput v1, p2, v5

    aput v3, p2, v4

    aput v0, p2, v3

    goto :goto_23

    :cond_13
    const/4 p2, 0x5

    .line 238
    new-array p2, p2, [I

    aput v1, p2, v5

    aput v3, p2, v4

    const/16 v1, 0x32c0

    aput v1, p2, v3

    aput v4, p2, v2

    const/4 v1, 0x4

    aput v0, p2, v1

    .line 247
    :goto_23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 248
    invoke-static {p0, p1, v0, p2, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v5

    .line 250
    :goto_2d
    const-string p1, "eglCreateContext failed"

    invoke-static {v4, p1}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    return-object p0
.end method

.method public static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 259
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_41

    :cond_6
    const/16 v1, 0x3038

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x3056

    const/16 v6, 0x3057

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne p3, v7, :cond_28

    const/4 p3, 0x7

    .line 263
    new-array p3, p3, [I

    aput v6, p3, v8

    aput v0, p3, v0

    aput v5, p3, v7

    aput v0, p3, v4

    const/16 v4, 0x32c0

    aput v4, p3, v3

    aput v0, p3, v2

    const/4 v2, 0x6

    aput v1, p3, v2

    goto :goto_34

    .line 274
    :cond_28
    new-array p3, v2, [I

    aput v6, p3, v8

    aput v0, p3, v0

    aput v5, p3, v7

    aput v0, p3, v4

    aput v1, p3, v3

    .line 283
    :goto_34
    invoke-static {p0, p1, p3, v8}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v8

    .line 284
    :goto_3c
    const-string p3, "eglCreatePbufferSurface failed"

    invoke-static {v0, p3}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 288
    :goto_41
    invoke-static {p0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    .line 289
    const-string p2, "eglMakeCurrent failed"

    invoke-static {p0, p2}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    return-object p1
.end method

.method public static generateTextureIds([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 295
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v0

    .line 201
    :goto_b
    const-string v4, "eglGetDisplay failed"

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    const/4 v3, 0x2

    .line 203
    new-array v3, v3, [I

    .line 205
    invoke-static {v1, v3, v0, v3, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    .line 206
    const-string v2, "eglInitialize failed"

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final dispatchOnFrameAvailable()V
    .registers 1

    .line 0
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 168
    iget-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 123
    invoke-static {v0}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 125
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v1, p1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 126
    iget-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {p1}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 127
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 128
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 175
    iget-object p1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .registers 6

    .line 134
    iget-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 136
    :try_start_6
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_17

    .line 137
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 138
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v1

    goto :goto_65

    .line 141
    :cond_17
    :goto_17
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_2c

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 142
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 145
    :cond_2c
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_3f

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 146
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 148
    :cond_3f
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_48

    .line 149
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_48
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 152
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_5c

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 155
    iget-object v1, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 157
    :cond_5c
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 158
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 159
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 160
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    return-void

    .line 141
    :goto_65
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_7a

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 142
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 145
    :cond_7a
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_8d

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 146
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 148
    :cond_8d
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_96

    .line 149
    iget-object v3, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_96
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 152
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_aa

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    .line 155
    iget-object v2, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 157
    :cond_aa
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 158
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 159
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 160
    iput-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 161
    throw v1
.end method

.method public run()V
    .registers 2

    .line 183
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/common/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_a

    .line 186
    :try_start_7
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

###### Class io.bidmachine.media3.common.util.EGLSurfaceTexture.TextureImageListener (io.bidmachine.media3.common.util.EGLSurfaceTexture$TextureImageListener)
.class public interface abstract Lio/bidmachine/media3/common/util/EGLSurfaceTexture$TextureImageListener;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/EGLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextureImageListener"
.end annotation
