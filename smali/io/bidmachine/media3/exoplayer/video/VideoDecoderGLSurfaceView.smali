###### Class io.bidmachine.media3.exoplayer.video.VideoDecoderGLSurfaceView (io.bidmachine.media3.exoplayer.video.VideoDecoderGLSurfaceView)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final renderer:Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 73
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Lio/bidmachine/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-object p0
.end method

.method public setOutputBuffer(Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.VideoDecoderGLSurfaceView.Renderer (io.bidmachine.media3.exoplayer.video.VideoDecoderGLSurfaceView$Renderer)
.class public final Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Renderer"
.end annotation


# static fields
.field public static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field public static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field public static final kColorConversion2020:[F

.field public static final kColorConversion601:[F

.field public static final kColorConversion709:[F


# instance fields
.field public colorMatrixLocation:I

.field public final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final previousStrides:[I

.field public final previousWidths:[I

.field public program:Lio/bidmachine/media3/common/util/GlProgram;

.field public renderedOutputBuffer:Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

.field public final surfaceView:Landroid/opengl/GLSurfaceView;

.field public final texLocations:[I

.field public final textureCoords:[Ljava/nio/FloatBuffer;

.field public final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    .line 92
    new-array v1, v0, [F

    fill-array-data v1, :array_32

    sput-object v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 98
    new-array v1, v0, [F

    fill-array-data v1, :array_48

    sput-object v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 104
    new-array v0, v0, [F

    fill-array-data v0, :array_5e

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    .line 124
    const-string v0, "u_tex"

    const-string v1, "v_tex"

    const-string v2, "y_tex"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 142
    new-array v0, v0, [F

    fill-array-data v0, :array_74

    .line 143
    invoke-static {v0}, Lio/bidmachine/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_32
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_48
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_5e
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_74
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .registers 6

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    const/4 p1, 0x3

    .line 165
    new-array v0, p1, [I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    .line 166
    new-array v0, p1, [I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    .line 167
    new-array v0, p1, [I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    .line 168
    new-array v0, p1, [I

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    new-array v0, p1, [Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    :goto_22
    if-ge v0, p1, :cond_30

    .line 172
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_30
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 25

    move-object/from16 v1, p0

    const/4 v0, 0x5

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 208
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    .line 209
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v9, :cond_1c

    .line 210
    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v10, :cond_1c

    goto/16 :goto_108

    :cond_1c
    if-eqz v9, :cond_27

    .line 215
    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v10, :cond_25

    .line 216
    invoke-virtual {v10}, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 218
    :cond_25
    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    .line 221
    :cond_27
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    .line 224
    sget-object v10, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 225
    iget v11, v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    if-eq v11, v8, :cond_3b

    if-eq v11, v6, :cond_38

    goto :goto_3d

    .line 230
    :cond_38
    sget-object v10, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    goto :goto_3d

    .line 227
    :cond_3b
    sget-object v10, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    .line 237
    :goto_3d
    iget v11, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    invoke-static {v11, v8, v5, v10, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 244
    iget-object v10, v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 245
    iget-object v11, v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-static {v11}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/nio/ByteBuffer;

    move v12, v5

    :goto_53
    if-ge v12, v6, :cond_86

    .line 248
    iget v13, v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->height:I

    if-nez v12, :cond_5c

    :goto_59
    move/from16 v18, v13

    goto :goto_5f

    :cond_5c
    add-int/2addr v13, v8

    div-int/2addr v13, v4

    goto :goto_59

    :goto_5f
    const v13, 0x84c0

    add-int/2addr v13, v12

    .line 249
    invoke-static {v13}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 250
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v13, v13, v12

    const/16 v14, 0xde1

    invoke-static {v14, v13}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v13, 0xcf5

    .line 251
    invoke-static {v13, v8}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 252
    aget v17, v10, v12

    const/16 v21, 0x1401

    aget-object v22, v11, v12

    const/4 v15, 0x0

    const/16 v16, 0x1909

    const/16 v19, 0x0

    const/16 v20, 0x1909

    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/2addr v12, v8

    goto :goto_53

    .line 264
    :cond_86
    new-array v11, v6, [I

    .line 265
    iget v9, v9, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->width:I

    aput v9, v11, v5

    add-int/2addr v9, v8

    .line 269
    div-int/2addr v9, v4

    aput v9, v11, v4

    aput v9, v11, v8

    move v9, v5

    :goto_93
    if-ge v9, v6, :cond_f4

    .line 272
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v12, v12, v9

    aget v13, v11, v9

    if-ne v12, v13, :cond_a5

    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v12, v12, v9

    aget v13, v10, v9

    if-eq v12, v13, :cond_f2

    .line 273
    :cond_a5
    aget v12, v10, v9

    if-eqz v12, :cond_ab

    move v12, v8

    goto :goto_ac

    :cond_ab
    move v12, v5

    :goto_ac
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 274
    aget v12, v11, v9

    int-to-float v12, v12

    aget v13, v10, v9

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 277
    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/16 v14, 0x8

    new-array v14, v14, [F

    aput v7, v14, v5

    aput v7, v14, v8

    aput v7, v14, v4

    aput v3, v14, v6

    aput v12, v14, v2

    aput v7, v14, v0

    const/4 v15, 0x6

    aput v12, v14, v15

    const/4 v12, 0x7

    aput v3, v14, v12

    .line 278
    invoke-static {v14}, Lio/bidmachine/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v12

    aput-object v12, v13, v9

    .line 280
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    aget v13, v12, v9

    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    aget-object v18, v12, v9

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v18}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 287
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    aget v13, v11, v9

    aput v13, v12, v9

    .line 288
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v13, v10, v9

    aput v13, v12, v9

    :cond_f2
    add-int/2addr v9, v8

    goto :goto_93

    :cond_f4
    const/16 v3, 0x4000

    .line 292
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 293
    invoke-static {v0, v5, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 295
    :try_start_fc
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V
    :try_end_ff
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_fc .. :try_end_ff} :catch_100

    return-void

    :catch_100
    move-exception v0

    .line 297
    const-string v2, "VideoDecoderGLSV"

    const-string v3, "Failed to draw a frame"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_108
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    const/4 p1, 0x0

    .line 202
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9

    .line 179
    :try_start_0
    new-instance p1, Lio/bidmachine/media3/common/util/GlProgram;

    const-string p2, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {p1, p2, v0}, Lio/bidmachine/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    .line 180
    const-string p2, "in_pos"

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    .line 181
    sget-object v5, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    const-string v0, "in_tc_y"

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 189
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    const-string v0, "in_tc_u"

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 190
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    const-string v0, "in_tc_v"

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 191
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    const-string p2, "mColorConversion"

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    .line 192
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setupTextures()V

    .line 194
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V
    :try_end_55
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception v0

    move-object p1, v0

    .line 196
    const-string p2, "VideoDecoderGLSV"

    const-string v0, "Failed to set up the textures and program"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setOutputBuffer(Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;)V
    .registers 3

    .line 303
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 304
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz p1, :cond_d

    .line 307
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/VideoDecoderOutputBuffer;->release()V

    .line 309
    :cond_d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final setupTextures()V
    .registers 6

    .line 315
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_7
    if-ge v1, v2, :cond_2d

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Lio/bidmachine/media3/common/util/GlProgram;

    sget-object v3, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    add-int/2addr v0, v1

    .line 318
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 319
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    aget v0, v0, v1

    const/16 v3, 0x2601

    const/16 v4, 0xde1

    invoke-static {v4, v0, v3}, Lio/bidmachine/media3/common/util/GlUtil;->bindTexture(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catch_2b
    move-exception v0

    goto :goto_31

    .line 321
    :cond_2d
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V
    :try_end_30
    .catch Lio/bidmachine/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_30} :catch_2b

    return-void

    .line 323
    :goto_31
    const-string v1, "VideoDecoderGLSV"

    const-string v2, "Failed to set up the textures"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
