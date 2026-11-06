###### Class info.flowersoft.theotown.components.DefaultSigns (info.flowersoft.theotown.components.DefaultSigns)
.class public final Linfo/flowersoft/theotown/components/DefaultSigns;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultSigns.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final ICON_NORMAL_SCALE:F

.field public final INT_FLOAT_FACTOR:I

.field public enableIconGrouping:Z

.field public final iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

.field public final iconGrid:Lio/blueflower/stapel2d/util/IntList;

.field public final iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

.field public iconOffsetY:F

.field public final icons:Lio/blueflower/stapel2d/util/IntList;

.field public final signs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Sign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    .line 36
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    .line 37
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

    const/16 v0, 0x64

    .line 39
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->INT_FLOAT_FACTOR:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->ICON_NORMAL_SCALE:F

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultSigns$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/components/DefaultSigns$1;-><init>(Linfo/flowersoft/theotown/components/DefaultSigns;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/DefaultSigns;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/DefaultSigns;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->enableIconGrouping:Z

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/DefaultSigns;Lio/blueflower/stapel2d/drawing/Engine;FFI)V
    .registers 5

    .line 32
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/DefaultSigns;->drawIcon(Lio/blueflower/stapel2d/drawing/Engine;FFI)V

    return-void
.end method


# virtual methods
.method public addSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
    .registers 3

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public countSigns()I
    .registers 2

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public drawAfterCached(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 24

    move-object/from16 v0, p0

    .line 218
    invoke-super/range {p0 .. p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V

    move-object/from16 v1, p1

    .line 219
    iget-object v1, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 221
    iget-boolean v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->enableIconGrouping:Z

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v2, :cond_43

    const/16 v2, 0x32

    .line 222
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 223
    :goto_15
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3d

    .line 224
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 225
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 226
    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    .line 228
    invoke-virtual {v0, v1, v2, v5, v6}, Linfo/flowersoft/theotown/components/DefaultSigns;->drawIcon(Lio/blueflower/stapel2d/drawing/Engine;FFI)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_15

    :cond_3d
    const/16 v2, 0xff

    .line 230
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void

    .line 234
    :cond_43
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b4

    .line 235
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v2

    .line 237
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v5

    const/high16 v6, 0x43000000    # 128.0f

    mul-float/2addr v5, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v5, v6

    .line 238
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v6

    .line 239
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v7

    div-float/2addr v6, v5

    float-to-int v6, v6

    div-float/2addr v7, v5

    float-to-int v7, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v7, 0x4

    .line 246
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v5

    const/4 v10, 0x0

    .line 247
    invoke-virtual {v8, v10, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v11

    rem-float/2addr v11, v5

    sub-float v11, v9, v11

    .line 248
    invoke-virtual {v8, v10, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v8

    rem-float/2addr v8, v5

    sub-float/2addr v9, v8

    .line 250
    new-instance v8, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v8}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    move v10, v3

    .line 251
    :goto_aa
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v12

    if-ge v10, v12, :cond_d0

    .line 252
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v13, v10, 0x2

    invoke-virtual {v12, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v12

    .line 253
    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/blueflower/stapel2d/util/IntList;

    if-nez v13, :cond_ca

    .line 255
    new-instance v13, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v13}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 256
    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_ca
    invoke-virtual {v13, v10}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v10, v10, 0x3

    goto :goto_aa

    .line 261
    :cond_d0
    :goto_d0
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v10

    mul-int/lit8 v12, v6, 0x7

    mul-int/2addr v12, v7

    if-ge v10, v12, :cond_e1

    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_d0

    .line 263
    :cond_e1
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntMap;->values()Lcom/badlogic/gdx/utils/IntMap$Values;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/blueflower/stapel2d/util/IntList;

    move v12, v3

    .line 264
    :goto_f6
    invoke-virtual {v10}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1fb

    .line 265
    invoke-virtual {v10, v12}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v13

    .line 266
    iget-object v14, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v14, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v4

    add-float/2addr v14, v11

    div-float/2addr v14, v5

    float-to-int v14, v14

    .line 267
    iget-object v15, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    move/from16 p1, v4

    add-int/lit8 v4, v13, 0x1

    invoke-virtual {v15, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, p1

    add-float/2addr v15, v9

    div-float/2addr v15, v5

    float-to-int v15, v15

    if-ltz v14, :cond_1e8

    if-ltz v15, :cond_1e8

    if-ge v14, v6, :cond_1e8

    if-ge v15, v7, :cond_1e8

    mul-int/2addr v15, v6

    add-int/2addr v14, v15

    mul-int/lit8 v15, v14, 0x7

    .line 270
    iget-object v3, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, p1

    move/from16 v16, v2

    .line 271
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    move/from16 v17, v3

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p1

    move/from16 v18, v2

    .line 272
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    move/from16 v19, v5

    add-int/lit8 v5, v15, 0x2

    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    move/from16 v20, v6

    int-to-float v6, v2

    mul-float v17, v17, v6

    move/from16 v21, v2

    .line 273
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p1

    add-float v17, v17, v2

    add-int/lit8 v2, v21, 0x1

    int-to-float v13, v2

    div-float v17, v17, v13

    mul-float v6, v6, v18

    move/from16 v18, v6

    .line 274
    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p1

    add-float v6, v18, v4

    div-float/2addr v6, v13

    .line 275
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    mul-float v13, v17, p1

    float-to-int v13, v13

    invoke-virtual {v4, v15, v13}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 276
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    mul-float v6, v6, p1

    float-to-int v6, v6

    invoke-virtual {v4, v3, v6}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 277
    iget-object v3, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v5, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    if-nez v21, :cond_1ab

    .line 279
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x3

    invoke-virtual {v2, v3, v13}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 280
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x4

    invoke-virtual {v2, v3, v6}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 281
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x5

    invoke-virtual {v2, v3, v13}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 282
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v15, v15, 0x6

    invoke-virtual {v2, v15, v6}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 283
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v14}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_1ee

    .line 285
    :cond_1ab
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 286
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x4

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 287
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v15, 0x5

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 288
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v15, v15, 0x6

    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v15, v3}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    goto :goto_1ee

    :cond_1e8
    move/from16 v16, v2

    move/from16 v19, v5

    move/from16 v20, v6

    :goto_1ee
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, p1

    move/from16 v2, v16

    move/from16 v5, v19

    move/from16 v6, v20

    const/4 v3, 0x0

    goto/16 :goto_f6

    :cond_1fb
    move/from16 v16, v2

    move/from16 p1, v4

    move/from16 v19, v5

    move/from16 v20, v6

    .line 292
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    const/4 v3, 0x0

    .line 294
    :goto_211
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a3

    .line 295
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 296
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 v4, v4, 0x7

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, p1

    .line 297
    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v6, v10}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, p1

    .line 298
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {v10, v12}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v10

    .line 299
    iget-object v13, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v14, v4, 0x3

    invoke-virtual {v13, v14}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v13

    int-to-float v13, v13

    div-float v13, v13, p1

    .line 300
    iget-object v14, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v15, v4, 0x4

    invoke-virtual {v14, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, p1

    .line 301
    iget-object v15, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    move/from16 v17, v3

    add-int/lit8 v3, v4, 0x5

    invoke-virtual {v15, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, p1

    .line 302
    iget-object v15, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v15, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, p1

    sub-float/2addr v3, v13

    div-float v3, v3, v16

    sub-float/2addr v4, v14

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 305
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    move v15, v3

    int-to-double v3, v10

    .line 307
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v16

    mul-float v4, v16, v15

    .line 309
    invoke-virtual {v1, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v3, v10

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 310
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 312
    invoke-virtual {v0, v1, v5, v6, v2}, Linfo/flowersoft/theotown/components/DefaultSigns;->drawIcon(Lio/blueflower/stapel2d/drawing/Engine;FFI)V

    .line 314
    iget-object v3, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGrid:Lio/blueflower/stapel2d/util/IntList;

    const/4 v4, 0x0

    invoke-virtual {v3, v12, v4}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    add-int/lit8 v3, v17, 0x1

    goto/16 :goto_211

    :cond_2a3
    const/4 v4, 0x0

    .line 317
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconGridIndices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    move v3, v4

    move/from16 v2, v16

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v4, p1

    goto/16 :goto_e9

    :cond_2b4
    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 6

    .line 208
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 209
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->icons:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 210
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->enableIconGrouping:Z

    .line 213
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x44960000    # 1200.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconOffsetY:F

    return-void
.end method

.method public final drawIcon(Lio/blueflower/stapel2d/drawing/Engine;FFI)V
    .registers 8

    .line 323
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconOffsetY:F

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 324
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_WARNING_SIGN:I

    invoke-virtual {p1, v0, p2, p3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 325
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p1, v0, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public drawSigns(Lio/blueflower/stapel2d/drawing/Engine;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->hideLabels:Z

    if-eqz v2, :cond_a

    goto/16 :goto_108

    .line 99
    :cond_a
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {v1, v9, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v10, 0xff

    .line 101
    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v2, 0x0

    move v11, v2

    .line 103
    :goto_1c
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_108

    .line 104
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Linfo/flowersoft/theotown/city/objects/Sign;

    .line 105
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getX()F

    move-result v3

    .line 107
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getY()F

    move-result v4

    .line 108
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    .line 109
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v3, v3

    float-to-int v4, v4

    .line 112
    sget-object v6, Linfo/flowersoft/theotown/resources/SignStyleProvider;->FONTS:[Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getSize()I

    move-result v13

    array-length v14, v6

    add-int/lit8 v14, v14, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget-object v13, v6, v13

    .line 113
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v14

    .line 115
    invoke-virtual {v8, v5, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v6

    .line 116
    invoke-virtual {v8, v5, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v5

    move v7, v5

    .line 117
    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v5

    .line 118
    invoke-virtual {v13, v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    sub-float/2addr v6, v15

    sub-float/2addr v7, v2

    .line 122
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v15

    if-eqz v15, :cond_96

    .line 123
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v15

    move/from16 v16, v9

    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v3

    mul-float/2addr v15, v3

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v15, v3

    float-to-int v3, v15

    int-to-float v3, v3

    sub-float/2addr v7, v3

    :goto_94
    move v4, v7

    goto :goto_99

    :cond_96
    move/from16 v16, v9

    goto :goto_94

    :goto_99
    const/16 v9, 0x64

    if-eqz p2, :cond_b2

    .line 127
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 128
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v3, v6

    move v6, v2

    .line 129
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 130
    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_b3

    :cond_b2
    move v3, v6

    .line 133
    :goto_b3
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    cmpl-float v2, v2, v16

    if-nez v2, :cond_c7

    if-nez p2, :cond_c7

    .line 134
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_f0

    .line 136
    :cond_c7
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 137
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    add-float v6, v3, v16

    invoke-virtual {v1, v13, v2, v6, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 138
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    sub-float v6, v3, v16

    invoke-virtual {v1, v13, v2, v6, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 139
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    sub-float v5, v4, v16

    invoke-virtual {v1, v13, v2, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 140
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    add-float v5, v4, v16

    invoke-virtual {v1, v13, v2, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 143
    :goto_f0
    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 144
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 145
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 147
    invoke-virtual {v1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v16

    goto/16 :goto_1c

    :cond_108
    :goto_108
    return-void
.end method

.method public getIconDrawer()Linfo/flowersoft/theotown/city/Drawer$IconDrawer;
    .registers 2

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    return-object v0
.end method

.method public getSign(I)Linfo/flowersoft/theotown/city/objects/Sign;
    .registers 3

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Sign;

    return-object p1
.end method

.method public getSignAt(IIII)Linfo/flowersoft/theotown/city/objects/Sign;
    .registers 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 168
    :goto_3
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b4

    .line 169
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Sign;

    .line 170
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    move/from16 v5, p3

    int-to-double v6, v5

    cmpl-double v3, v3, v6

    if-nez v3, :cond_35

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    move/from16 v6, p4

    int-to-double v7, v6

    cmpl-double v3, v3, v7

    if-nez v3, :cond_37

    goto/16 :goto_af

    :cond_35
    move/from16 v6, p4

    .line 174
    :cond_37
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getX()F

    move-result v4

    .line 176
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getY()F

    move-result v7

    .line 177
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v4, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    .line 178
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v4, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v10

    add-float/2addr v10, v9

    float-to-int v4, v4

    float-to-int v7, v7

    .line 181
    sget-object v9, Linfo/flowersoft/theotown/resources/SignStyleProvider;->FONTS:[Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Sign;->getSize()I

    move-result v11

    array-length v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget-object v9, v9, v11

    .line 182
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v11

    .line 184
    invoke-virtual {v11, v8, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v12

    float-to-int v12, v12

    .line 185
    invoke-virtual {v11, v8, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v8

    float-to-int v8, v8

    .line 186
    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    .line 187
    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 188
    div-int/lit8 v9, v10, 0x2

    sub-int v15, v12, v9

    sub-int/2addr v8, v3

    .line 191
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v4, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 192
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v9

    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    invoke-virtual {v11, v4, v7}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v4

    mul-float/2addr v9, v4

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v9, v4

    float-to-int v4, v9

    sub-int/2addr v8, v4

    :cond_9f
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v18, v3

    move/from16 v16, v8

    move/from16 v17, v10

    .line 195
    invoke-static/range {v13 .. v18}, Lio/blueflower/stapel2d/util/MathUtil;->inRect(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_b0

    :goto_af
    return-object v2

    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_b4
    const/4 v1, 0x0

    return-object v1
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x12

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 67
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "signs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 69
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 70
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/objects/Sign;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_1c

    .line 75
    :cond_33
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    :cond_37
    return-void
.end method

.method public removeSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
    .registers 3

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const-string v0, "signs"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 87
    :goto_a
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 88
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSigns;->signs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Sign;

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 90
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/objects/Sign;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 93
    :cond_26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultSigns.AnonymousClass1 (info.flowersoft.theotown.components.DefaultSigns$1)
.class Linfo/flowersoft/theotown/components/DefaultSigns$1;
.super Ljava/lang/Object;
.source "DefaultSigns.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/Drawer$IconDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultSigns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultSigns;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultSigns;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lio/blueflower/stapel2d/drawing/Engine;FFI)V
    .registers 8

    .line 49
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-eqz v0, :cond_5

    goto :goto_34

    .line 51
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->access$000(Linfo/flowersoft/theotown/components/DefaultSigns;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, p2, v1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->access$000(Linfo/flowersoft/theotown/components/DefaultSigns;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->access$000(Linfo/flowersoft/theotown/components/DefaultSigns;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    invoke-virtual {v0, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->access$100(Linfo/flowersoft/theotown/components/DefaultSigns;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultSigns$1;->this$0:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-static {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/DefaultSigns;->access$200(Linfo/flowersoft/theotown/components/DefaultSigns;Lio/blueflower/stapel2d/drawing/Engine;FFI)V

    :cond_34
    :goto_34
    return-void
.end method
