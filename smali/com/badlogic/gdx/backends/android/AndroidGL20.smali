###### Class com.badlogic.gdx.backends.android.AndroidGL20 (com.badlogic.gdx.backends.android.AndroidGL20)
.class public Lcom/badlogic/gdx/backends/android/AndroidGL20;
.super Ljava/lang/Object;
.source "AndroidGL20.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL20;


# instance fields
.field public buffer:[B

.field public ints:[I

.field public ints2:[I

.field public ints3:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints2:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints3:[I

    const/16 v0, 0x200

    .line 29
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->buffer:[B

    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .registers 2

    .line 32
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    return-void
.end method

.method public glAttachShader(II)V
    .registers 3

    .line 36
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    return-void
.end method

.method public glBindBuffer(II)V
    .registers 3

    .line 44
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public glBindFramebuffer(II)V
    .registers 3

    .line 48
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public glBindTexture(II)V
    .registers 3

    .line 56
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public glBlendFunc(II)V
    .registers 3

    .line 72
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .registers 5

    .line 80
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public glCheckFramebufferStatus(I)I
    .registers 2

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p1

    return p1
.end method

.method public glClear(I)V
    .registers 2

    .line 92
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public glClearColor(FFFF)V
    .registers 5

    .line 96
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public glCompileShader(I)V
    .registers 2

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .registers 9

    .line 130
    invoke-static/range {p1 .. p8}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    return-void
.end method

.method public glCreateProgram()I
    .registers 2

    .line 134
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public glCreateShader(I)I
    .registers 2

    .line 138
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    return p1
.end method

.method public glDeleteFramebuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 155
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glDeleteTexture(I)V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 186
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public glDepthMask(Z)V
    .registers 2

    .line 194
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    return-void
.end method

.method public glDisable(I)V
    .registers 2

    .line 206
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public glDisableVertexAttribArray(I)V
    .registers 2

    .line 210
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public glDrawElements(IIII)V
    .registers 5

    .line 222
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void
.end method

.method public glEnable(I)V
    .registers 2

    .line 226
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    return-void
.end method

.method public glEnableVertexAttribArray(I)V
    .registers 2

    .line 230
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public glFramebufferTexture2D(IIIII)V
    .registers 6

    .line 246
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 254
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenFramebuffer()I
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenFramebuffers(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 267
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenTexture()I
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidGL20;->ints:[I

    aget v0, v0, v2

    return v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 285
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGenerateMipmap(I)V
    .registers 2

    .line 263
    invoke-static {p1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    return-void
.end method

.method public glGetAttribLocation(ILjava/lang/String;)I
    .registers 3

    .line 320
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glGetError()I
    .registers 2

    .line 332
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .registers 3

    .line 336
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .registers 3

    .line 344
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetProgramInfoLog(I)Ljava/lang/String;
    .registers 2

    .line 352
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetProgramiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 348
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetProgramiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetShaderInfoLog(I)Ljava/lang/String;
    .registers 2

    .line 364
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetShaderiv(IILjava/nio/IntBuffer;)V
    .registers 4

    .line 360
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glGetShaderiv(IILjava/nio/IntBuffer;)V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .registers 2

    .line 372
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public glGetUniformLocation(ILjava/lang/String;)I
    .registers 3

    .line 392
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public glLinkProgram(I)V
    .registers 2

    .line 444
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void
.end method

.method public glPixelStorei(II)V
    .registers 3

    .line 448
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    return-void
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .registers 8

    .line 456
    invoke-static/range {p1 .. p7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glScissor(IIII)V
    .registers 5

    .line 472
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method public glShaderSource(ILjava/lang/String;)V
    .registers 3

    .line 480
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 10

    .line 509
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .registers 4

    .line 513
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public glTexParameteri(III)V
    .registers 4

    .line 521
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 10

    .line 530
    invoke-static/range {p1 .. p9}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public glUniform1f(IF)V
    .registers 3

    .line 534
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public glUniform1i(II)V
    .registers 3

    .line 546
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public glUniform1iv(II[II)V
    .registers 5

    .line 554
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform1iv(II[II)V

    return-void
.end method

.method public glUniform2f(IFF)V
    .registers 4

    .line 558
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public glUniform3f(IFFF)V
    .registers 5

    .line 582
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public glUniform4f(IFFFF)V
    .registers 6

    .line 606
    invoke-static {p1, p2, p3, p4, p5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public glUseProgram(I)V
    .registers 2

    .line 654
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .registers 7

    .line 694
    invoke-static/range {p1 .. p6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public glViewport(IIII)V
    .registers 5

    .line 702
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method
