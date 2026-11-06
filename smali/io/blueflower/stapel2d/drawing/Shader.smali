###### Class io.blueflower.stapel2d.drawing.Shader (io.blueflower.stapel2d.drawing.Shader)
.class public final Lio/blueflower/stapel2d/drawing/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# instance fields
.field public currentContext:I

.field public fSrc:Ljava/lang/String;

.field public fragment:I

.field public program:I

.field public final uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public useable:Z

.field public vSrc:Ljava/lang/String;

.field public vertex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->currentContext:I

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 36
    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/Shader;->vSrc:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lio/blueflower/stapel2d/drawing/Shader;->fSrc:Ljava/lang/String;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lio/blueflower/stapel2d/drawing/Shader;->useable:Z

    return-void
.end method


# virtual methods
.method public isUseable()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->useable:Z

    return v0
.end method

.method public load(I)V
    .registers 6

    const v0, 0x8b31

    .line 43
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->vSrc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/drawing/Shader;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->vertex:I

    const v0, 0x8b30

    .line 44
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->fSrc:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/blueflower/stapel2d/drawing/Shader;->loadShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->fragment:I

    .line 46
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    .line 47
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Shader;->vertex:I

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 48
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Shader;->fragment:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glAttachShader(II)V

    .line 50
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glLinkProgram(I)V

    const/4 v0, 0x4

    .line 52
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    const v3, 0x8b82

    invoke-interface {v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-eqz v0, :cond_5a

    .line 59
    iput p1, p0, Lio/blueflower/stapel2d/drawing/Shader;->currentContext:I

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lio/blueflower/stapel2d/drawing/Shader;->useable:Z

    .line 63
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/Shader;->uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    return-void

    .line 55
    :cond_5a
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Linker failed"

    invoke-interface {p1, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-boolean v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->useable:Z

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not link shader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v2, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final loadShader(ILjava/lang/String;)I
    .registers 5

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCreateShader(I)I

    move-result p1

    .line 68
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v1, p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->normalizeShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glShaderSource(ILjava/lang/String;)V

    .line 69
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/graphics/GL20;->glCompileShader(I)V

    const/4 p2, 0x4

    .line 71
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p2

    .line 72
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8b81

    invoke-interface {v0, p1, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    if-eqz p2, :cond_2f

    return p1

    .line 74
    :cond_2f
    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Compile shader"

    invoke-interface {p2, v1, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public release()V
    .registers 2

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->currentContext:I

    return-void
.end method

.method public resolveUniformLocation(Ljava/lang/String;)I
    .registers 4

    .line 82
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 83
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/Shader;->uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1

    .line 86
    :cond_10
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/graphics/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->uniformLocations:Lcom/badlogic/gdx/utils/ObjectIntMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    return v0
.end method

.method public setUniform(Ljava/lang/String;F)V
    .registers 5

    .line 97
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 98
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glUniform1f(IF)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;FF)V
    .registers 6

    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 103
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL20;->glUniform2f(IFF)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;FFFF)V
    .registers 14

    .line 112
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lio/blueflower/stapel2d/drawing/Shader;->program:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glUseProgram(I)V

    .line 113
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Shader;->resolveUniformLocation(Ljava/lang/String;)I

    move-result v3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/GL20;->glUniform4f(IFFFF)V

    return-void
.end method
