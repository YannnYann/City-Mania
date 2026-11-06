###### Class io.bidmachine.media3.common.util.GlProgram (io.bidmachine.media3.common.util.GlProgram)
.class public final Lio/bidmachine/media3/common/util/GlProgram;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/util/GlProgram$Attribute;,
        Lio/bidmachine/media3/common/util/GlProgram$Uniform;
    }
.end annotation


# instance fields
.field public final attributeByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/util/GlProgram$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public final attributes:[Lio/bidmachine/media3/common/util/GlProgram$Attribute;

.field public final programId:I

.field public final uniformByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/common/util/GlProgram$Uniform;",
            ">;"
        }
    .end annotation
.end field

.field public final uniforms:[Lio/bidmachine/media3/common/util/GlProgram$Uniform;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    .line 79
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    const v1, 0x8b31

    .line 82
    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    const p1, 0x8b30

    .line 83
    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/common/util/GlProgram;->addShader(IILjava/lang/String;)V

    .line 86
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    .line 87
    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 88
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 89
    aget p2, p2, p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2d

    move p2, v1

    goto :goto_2e

    :cond_2d
    move p2, p1

    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to link shader program: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {p2, v2}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 92
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/common/util/GlProgram;->attributeByName:Ljava/util/Map;

    .line 94
    new-array p2, v1, [I

    const v2, 0x8b89

    .line 95
    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 96
    aget v0, p2, p1

    new-array v0, v0, [Lio/bidmachine/media3/common/util/GlProgram$Attribute;

    iput-object v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->attributes:[Lio/bidmachine/media3/common/util/GlProgram$Attribute;

    move v0, p1

    .line 97
    :goto_5f
    aget v2, p2, p1

    if-ge v0, v2, :cond_77

    .line 98
    iget v2, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/GlProgram$Attribute;->create(II)Lio/bidmachine/media3/common/util/GlProgram$Attribute;

    move-result-object v2

    .line 99
    iget-object v3, p0, Lio/bidmachine/media3/common/util/GlProgram;->attributes:[Lio/bidmachine/media3/common/util/GlProgram$Attribute;

    aput-object v2, v3, v0

    .line 100
    iget-object v3, p0, Lio/bidmachine/media3/common/util/GlProgram;->attributeByName:Ljava/util/Map;

    iget-object v4, v2, Lio/bidmachine/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 102
    :cond_77
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/common/util/GlProgram;->uniformByName:Ljava/util/Map;

    .line 103
    new-array p2, v1, [I

    .line 104
    iget v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    const v1, 0x8b86

    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 105
    aget v0, p2, p1

    new-array v0, v0, [Lio/bidmachine/media3/common/util/GlProgram$Uniform;

    iput-object v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->uniforms:[Lio/bidmachine/media3/common/util/GlProgram$Uniform;

    move v0, p1

    .line 106
    :goto_8f
    aget v1, p2, p1

    if-ge v0, v1, :cond_a7

    .line 107
    iget v1, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->create(II)Lio/bidmachine/media3/common/util/GlProgram$Uniform;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lio/bidmachine/media3/common/util/GlProgram;->uniforms:[Lio/bidmachine/media3/common/util/GlProgram$Uniform;

    aput-object v1, v2, v0

    .line 109
    iget-object v2, p0, Lio/bidmachine/media3/common/util/GlProgram;->uniformByName:Ljava/util/Map;

    iget-object v3, v1, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 111
    :cond_a7
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static synthetic access$000([B)I
    .registers 1

    .line 38
    invoke-static {p0}, Lio/bidmachine/media3/common/util/GlProgram;->getCStringLength([B)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(ILjava/lang/String;)I
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(ILjava/lang/String;)I
    .registers 2

    .line 38
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/GlProgram;->getUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static addShader(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 115
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 116
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    .line 119
    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    .line 120
    invoke-static {p1, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 121
    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    move v0, v2

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", source: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static {v0, p2}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    .line 124
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 125
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 126
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static getAttributeLocation(ILjava/lang/String;)I
    .registers 2

    .line 130
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCStringLength([B)I
    .registers 3

    const/4 v0, 0x0

    .line 258
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 259
    aget-byte v1, p0, v0

    if-nez v1, :cond_9

    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_c
    array-length p0, p0

    return p0
.end method

.method public static getUniformLocation(ILjava/lang/String;)I
    .registers 2

    .line 139
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    .line 169
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 170
    invoke-static {}, Lio/bidmachine/media3/common/util/GlUtil;->checkGlError()V

    return p1
.end method

.method public final getAttributeLocation(Ljava/lang/String;)I
    .registers 3

    .line 135
    iget v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/GlProgram;->getAttributeLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .registers 3

    .line 144
    iget v0, p0, Lio/bidmachine/media3/common/util/GlProgram;->programId:I

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/GlProgram;->getUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.common.util.GlProgram.Attribute (io.bidmachine.media3.common.util.GlProgram$Attribute)
.class public final Lio/bidmachine/media3/common/util/GlProgram$Attribute;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field public final location:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lio/bidmachine/media3/common/util/GlProgram$Attribute;->name:Ljava/lang/String;

    .line 310
    iput p2, p0, Lio/bidmachine/media3/common/util/GlProgram$Attribute;->location:I

    return-void
.end method

.method public static create(II)Lio/bidmachine/media3/common/util/GlProgram$Attribute;
    .registers 14

    const/4 v1, 0x1

    .line 273
    new-array v2, v1, [I

    const v3, 0x8b8a

    const/4 v11, 0x0

    .line 274
    invoke-static {p0, v3, v2, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 279
    aget v2, v2, v11

    new-array v9, v2, [B

    .line 281
    new-array v3, v1, [I

    new-array v5, v1, [I

    new-array v7, v1, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    .line 293
    new-instance v1, Ljava/lang/String;

    invoke-static {v9}, Lio/bidmachine/media3/common/util/GlProgram;->access$000([B)I

    move-result v2

    invoke-direct {v1, v9, v11, v2}, Ljava/lang/String;-><init>([BII)V

    .line 294
    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/GlProgram;->access$100(ILjava/lang/String;)I

    move-result v0

    .line 296
    new-instance v2, Lio/bidmachine/media3/common/util/GlProgram$Attribute;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/media3/common/util/GlProgram$Attribute;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method

###### Class io.bidmachine.media3.common.util.GlProgram.Uniform (io.bidmachine.media3.common.util.GlProgram$Uniform)
.class public final Lio/bidmachine/media3/common/util/GlProgram$Uniform;
.super Ljava/lang/Object;
.source "GlProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/util/GlProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field public final floatValue:[F

.field public final intValue:[I

.field public final location:I

.field public final name:Ljava/lang/String;

.field public texMinFilter:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->name:Ljava/lang/String;

    .line 390
    iput p2, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->location:I

    .line 391
    iput p3, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->type:I

    const/16 p1, 0x10

    .line 392
    new-array p1, p1, [F

    iput-object p1, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->floatValue:[F

    const/4 p1, 0x4

    .line 393
    new-array p1, p1, [I

    iput-object p1, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->intValue:[I

    const/16 p1, 0x2601

    .line 394
    iput p1, p0, Lio/bidmachine/media3/common/util/GlProgram$Uniform;->texMinFilter:I

    return-void
.end method

.method public static create(II)Lio/bidmachine/media3/common/util/GlProgram$Uniform;
    .registers 14

    const/4 v1, 0x1

    .line 351
    new-array v2, v1, [I

    const v3, 0x8b87

    const/4 v11, 0x0

    .line 352
    invoke-static {p0, v3, v2, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 355
    new-array v7, v1, [I

    .line 356
    aget v2, v2, v11

    new-array v9, v2, [B

    .line 358
    new-array v3, v1, [I

    new-array v5, v1, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 370
    new-instance v1, Ljava/lang/String;

    invoke-static {v9}, Lio/bidmachine/media3/common/util/GlProgram;->access$000([B)I

    move-result v2

    invoke-direct {v1, v9, v11, v2}, Ljava/lang/String;-><init>([BII)V

    .line 371
    invoke-static {p0, v1}, Lio/bidmachine/media3/common/util/GlProgram;->access$200(ILjava/lang/String;)I

    move-result v0

    .line 373
    new-instance v2, Lio/bidmachine/media3/common/util/GlProgram$Uniform;

    aget v3, v7, v11

    invoke-direct {v2, v1, v0, v3}, Lio/bidmachine/media3/common/util/GlProgram$Uniform;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method
