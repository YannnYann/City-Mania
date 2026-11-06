###### Class io.bidmachine.media3.common.util.GlUtil (io.bidmachine.media3.common.util.GlUtil)
.class public final Lio/bidmachine/media3/common/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/GlUtil$GlException;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

.field public static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG:[I

.field public static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

.field public static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x3038

    const/16 v1, 0xf

    .line 68
    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    sput-object v2, Lio/bidmachine/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 79
    new-array v1, v1, [I

    fill-array-data v1, :array_4e

    sput-object v1, Lio/bidmachine/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    const/16 v1, 0x309d

    const/16 v2, 0x3340

    .line 106
    filled-new-array {v1, v2, v0, v0}, [I

    move-result-object v2

    sput-object v2, Lio/bidmachine/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    const/16 v2, 0x3540

    .line 111
    filled-new-array {v1, v2, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_HLG:[I

    .line 115
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void

    nop

    :array_2c
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
        0x3026
        0x0
        0x3038
    .end array-data

    :array_4e
    .array-data 4
        0x3040
        0x4
        0x3024
        0xa
        0x3023
        0xa
        0x3022
        0xa
        0x3021
        0x2
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method public static bindTexture(III)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 765
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 766
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2800

    .line 767
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 768
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2801

    .line 769
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 770
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 771
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 772
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2803

    .line 773
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 774
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static checkGlError()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 506
    :goto_6
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    if-eqz v2, :cond_38

    if-eqz v1, :cond_13

    const/16 v1, 0xa

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    :cond_13
    invoke-static {v2}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error code: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    :cond_2e
    const-string v2, "glError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_6

    :cond_38
    if-nez v1, :cond_3b

    return-void

    .line 518
    :cond_3b
    new-instance v1, Lio/bidmachine/media3/common/util/GlUtil$GlException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/bidmachine/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkGlException(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 1040
    :cond_3
    new-instance p0, Lio/bidmachine/media3/common/util/GlUtil$GlException;

    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 628
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 629
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .registers 2

    .line 619
    array-length v0, p0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static createExternalTexture()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 637
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    const v1, 0x8d65

    const/16 v2, 0x2601

    .line 638
    invoke-static {v1, v0, v2}, Lio/bidmachine/media3/common/util/GlUtil;->bindTexture(III)V

    return v0
.end method

.method public static generateTexture()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 738
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 739
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 740
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    .line 741
    aget v0, v1, v2

    return v0
.end method

.method public static isExtensionSupported(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1062
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3055

    .line 1063
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1064
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v0
.end method

.method public static isProtectedContentExtensionSupported(Landroid/content/Context;)Z
    .registers 6

    .line 172
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_21

    .line 175
    const-string v3, "samsung"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "XT1650"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_20
    return v2

    :cond_21
    if-ge v0, v1, :cond_30

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    .line 186
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_30

    return v2

    .line 191
    :cond_30
    const-string p0, "EGL_EXT_protected_content"

    invoke-static {p0}, Lio/bidmachine/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurfacelessContextExtensionSupported()Z
    .registers 1

    .line 202
    const-string v0, "EGL_KHR_surfaceless_context"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/GlUtil;->isExtensionSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setToIdentity([F)V
    .registers 2

    const/4 v0, 0x0

    .line 149
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

###### Class io.bidmachine.media3.common.util.GlUtil.GlException (io.bidmachine.media3.common.util.GlUtil$GlException)
.class public final Lio/bidmachine/media3/common/util/GlUtil$GlException;
.super Ljava/lang/Exception;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
