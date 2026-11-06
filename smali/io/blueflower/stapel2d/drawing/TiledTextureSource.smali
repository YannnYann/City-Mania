###### Class io.blueflower.stapel2d.drawing.TiledTextureSource (io.blueflower.stapel2d.drawing.TiledTextureSource)
.class public final Lio/blueflower/stapel2d/drawing/TiledTextureSource;
.super Lio/blueflower/stapel2d/drawing/TextureSource;
.source "TiledTextureSource.java"


# instance fields
.field public final bitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public final targetUnit:Lio/blueflower/stapel2d/util/IntList;

.field public final targetX:Lio/blueflower/stapel2d/util/IntList;

.field public final targetY:Lio/blueflower/stapel2d/util/IntList;

.field public units:I

.field public w:I


# direct methods
.method public static synthetic $r8$lambda$QnzRsrhEt5HCnPDUwTnHfmHzBrk(Lio/blueflower/stapel2d/drawing/TiledTextureSource;Lio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/drawing/Texture;[Lcom/badlogic/gdx/graphics/Pixmap;[IIII)V
    .registers 10

    :goto_0
    if-ge p6, p7, :cond_19

    .line 122
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    .line 122
    invoke-virtual {p1, p6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 123
    aput-object v0, p3, p6

    .line 124
    aput p6, p4, p5

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 0
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/TextureSource;-><init>()V

    .line 29
    iput p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->w:I

    .line 30
    iput p2, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->h:I

    .line 31
    iput p3, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->units:I

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    .line 34
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetX:Lio/blueflower/stapel2d/util/IntList;

    .line 35
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetY:Lio/blueflower/stapel2d/util/IntList;

    .line 36
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetUnit:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method


# virtual methods
.method public addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;II)V
    .registers 5

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;III)V

    return-void
.end method

.method public addSource(Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;III)V
    .registers 6

    .line 52
    iget v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->w:I

    if-lt p2, v0, :cond_7

    sub-int/2addr p2, v0

    add-int/lit8 p4, p4, 0x1

    .line 56
    :cond_7
    iget v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->h:I

    if-lt p3, v0, :cond_e

    sub-int/2addr p3, v0

    add-int/lit8 p4, p4, 0x2

    .line 61
    :cond_e
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetX:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 63
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 64
    iget-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetUnit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 73
    iget v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->h:I

    return v0
.end method

.method public getUnits()I
    .registers 2

    .line 78
    iget v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->units:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 68
    iget v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->w:I

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 21

    move-object/from16 v1, p0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 96
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 97
    new-instance v8, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v8}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v0, 0x0

    .line 98
    :goto_11
    iget-object v3, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_31

    .line 99
    iget-object v3, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;

    .line 100
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->isAsync()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 101
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_2e

    .line 103
    :cond_2b
    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 107
    :cond_31
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    new-array v4, v0, [Lcom/badlogic/gdx/graphics/Pixmap;

    .line 108
    invoke-static {}, Linfo/flowersoft/theotown/util/Parallel;->autoThreadCount()I

    move-result v0

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v10, 0x1

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 109
    new-array v5, v11, [I

    .line 110
    new-array v12, v11, [I

    .line 111
    new-array v13, v11, [I

    .line 113
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    invoke-static {v0, v11}, Linfo/flowersoft/theotown/util/Parallel;->sizePerWorker(II)I

    move-result v0

    const/4 v3, 0x0

    :goto_59
    if-ge v3, v11, :cond_70

    mul-int v14, v3, v0

    .line 115
    aput v14, v12, v3

    const/4 v15, -0x1

    .line 116
    aput v15, v5, v3

    add-int/2addr v14, v0

    .line 117
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 120
    :cond_70
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v14

    new-instance v0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/drawing/TiledTextureSource;Lio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/drawing/Texture;[Lcom/badlogic/gdx/graphics/Pixmap;[I)V

    invoke-static {v11, v14, v0}, Linfo/flowersoft/theotown/util/Parallel;->startParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)[Ljava/lang/Thread;

    move-result-object v0

    :goto_7f
    move v14, v10

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_82
    if-ge v3, v11, :cond_da

    .line 132
    :goto_84
    aget v9, v12, v3

    move/from16 v16, v10

    aget v10, v5, v3

    if-gt v9, v10, :cond_c4

    .line 134
    aget-object v10, v4, v9

    if-eqz v10, :cond_b3

    .line 136
    invoke-virtual {v2, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v9

    .line 137
    iget-object v15, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetX:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v15, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v15

    move-object/from16 v17, v0

    .line 138
    iget-object v0, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    move-object/from16 v18, v2

    .line 139
    iget-object v2, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetUnit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 140
    invoke-virtual {v1, v10, v15, v0, v2}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 141
    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move/from16 v15, v16

    goto :goto_b7

    :cond_b3
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .line 144
    :goto_b7
    aget v0, v12, v3

    add-int/lit8 v0, v0, 0x1

    aput v0, v12, v3

    move/from16 v10, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_84

    :cond_c4
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    .line 146
    aget v0, v13, v3

    if-lt v9, v0, :cond_cf

    move/from16 v0, v16

    goto :goto_d0

    :cond_cf
    const/4 v0, 0x0

    :goto_d0
    and-int/2addr v14, v0

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto :goto_82

    :cond_da
    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v16, v10

    if-eqz v14, :cond_13c

    .line 156
    invoke-static/range {v17 .. v17}, Linfo/flowersoft/theotown/util/Parallel;->join([Ljava/lang/Thread;)Z

    const/4 v9, 0x0

    .line 158
    :goto_e6
    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge v9, v0, :cond_119

    .line 159
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    .line 160
    iget-object v2, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->bitmaps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/AbstractBitmapTextureSource;->getBitmap(Lio/blueflower/stapel2d/drawing/Texture;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    .line 161
    iget-object v4, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetX:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 162
    iget-object v5, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetY:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 163
    iget-object v10, v1, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->targetUnit:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    .line 164
    invoke-virtual {v1, v2, v4, v5, v0}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 165
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    .line 168
    :cond_119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    .line 169
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading texture took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextureLoading"

    invoke-interface {v0, v3, v2}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13c
    move-object/from16 v3, p1

    if-nez v15, :cond_145

    const-wide/16 v9, 0x1

    .line 151
    :try_start_142
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_145
    .catch Ljava/lang/InterruptedException; {:try_start_142 .. :try_end_145} :catch_145

    :catch_145
    :cond_145
    move/from16 v10, v16

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    goto/16 :goto_7f
.end method

.method public release(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.blueflower.stapel2d.drawing.TiledTextureSource$$ExternalSyntheticLambda0 (io.blueflower.stapel2d.drawing.TiledTextureSource$$ExternalSyntheticLambda0)
.class public final synthetic Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/drawing/TiledTextureSource;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/IntList;

.field public final synthetic f$2:Lio/blueflower/stapel2d/drawing/Texture;

.field public final synthetic f$3:[Lcom/badlogic/gdx/graphics/Pixmap;

.field public final synthetic f$4:[I


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/drawing/TiledTextureSource;Lio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/drawing/Texture;[Lcom/badlogic/gdx/graphics/Pixmap;[I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    iput-object p2, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iput-object p3, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/drawing/Texture;

    iput-object p4, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$3:[Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object p5, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$4:[I

    return-void
.end method


# virtual methods
.method public final work(III)V
    .registers 12

    .line 0
    iget-object v0, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/drawing/TiledTextureSource;

    iget-object v1, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v3, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$3:[Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v4, p0, Lio/blueflower/stapel2d/drawing/TiledTextureSource$$ExternalSyntheticLambda0;->f$4:[I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lio/blueflower/stapel2d/drawing/TiledTextureSource;->$r8$lambda$QnzRsrhEt5HCnPDUwTnHfmHzBrk(Lio/blueflower/stapel2d/drawing/TiledTextureSource;Lio/blueflower/stapel2d/util/IntList;Lio/blueflower/stapel2d/drawing/Texture;[Lcom/badlogic/gdx/graphics/Pixmap;[IIII)V

    return-void
.end method
