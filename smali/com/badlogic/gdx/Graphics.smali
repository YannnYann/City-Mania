###### Class com.badlogic.gdx.Graphics (com.badlogic.gdx.Graphics)
.class public interface abstract Lcom/badlogic/gdx/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/Graphics$BufferFormat;,
        Lcom/badlogic/gdx/Graphics$DisplayMode;
    }
.end annotation


# virtual methods
.method public abstract getBackBufferHeight()I
.end method

.method public abstract getBackBufferWidth()I
.end method

.method public abstract getDeltaTime()F
.end method

.method public abstract getDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPpiX()F
.end method

.method public abstract getWidth()I
.end method

.method public abstract newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;
.end method

.method public abstract requestRendering()V
.end method

.method public abstract setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V
.end method

.method public abstract setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V
.end method

.method public abstract setVSync(Z)V
.end method

.method public abstract supportsExtension(Ljava/lang/String;)Z
.end method

###### Class com.badlogic.gdx.Graphics.BufferFormat (com.badlogic.gdx.Graphics$BufferFormat)
.class public Lcom/badlogic/gdx/Graphics$BufferFormat;
.super Ljava/lang/Object;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferFormat"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final coverageSampling:Z

.field public final depth:I

.field public final g:I

.field public final r:I

.field public final samples:I

.field public final stencil:I


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .registers 9

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->r:I

    .line 111
    iput p2, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->g:I

    .line 112
    iput p3, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->b:I

    .line 113
    iput p4, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->a:I

    .line 114
    iput p5, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->depth:I

    .line 115
    iput p6, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->stencil:I

    .line 116
    iput p7, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->samples:I

    .line 117
    iput-boolean p8, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->coverageSampling:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", g: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", depth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stencil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->stencil:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", num samples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->samples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coverage sampling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/badlogic/gdx/Graphics$BufferFormat;->coverageSampling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.Graphics.DisplayMode (com.badlogic.gdx.Graphics$DisplayMode)
.class public Lcom/badlogic/gdx/Graphics$DisplayMode;
.super Ljava/lang/Object;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayMode"
.end annotation


# instance fields
.field public final bitsPerPixel:I

.field public final height:I

.field public final refreshRate:I

.field public final width:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    .line 73
    iput p2, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    .line 74
    iput p3, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    .line 75
    iput p4, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bpp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->bitsPerPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hz: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/Graphics$DisplayMode;->refreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
