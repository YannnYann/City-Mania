###### Class info.flowersoft.theotown.ui.StartScreenDrawer (info.flowersoft.theotown.ui.StartScreenDrawer)
.class public Linfo/flowersoft/theotown/ui/StartScreenDrawer;
.super Ljava/lang/Object;
.source "StartScreenDrawer.java"


# static fields
.field public static final bgAuthors:[Ljava/lang/String;

.field public static final bgCount:I

.field public static sessionId:J


# instance fields
.field public author:Ljava/lang/String;

.field public bar:Lio/blueflower/stapel2d/drawing/Image;

.field public bg:Lio/blueflower/stapel2d/drawing/Image;

.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/drawing/Image;",
            ">;"
        }
    .end annotation
.end field

.field public logo:Lio/blueflower/stapel2d/drawing/Image;

.field public final pixmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation
.end field

.field public final versionText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 40
    const-string v21, "Westerdam by JustHamster"

    const-string v22, "England by erge"

    const-string v1, "Heariyu3 by lhhsy223"

    const-string v2, "Tearburg by drinKis"

    const-string v3, "Amorlen by gloxinia_luvsu"

    const-string v4, ""

    const-string v5, "Rosenburg by ajakartanguy"

    const-string v6, "City by DualHD"

    const-string v7, "Batavia by The Bl\u00fce Mask"

    const-string v8, "City by Rinclan"

    const-string v9, "Washington D.C by DualHD"

    const-string v10, "1980\'s Village by Roellyan"

    const-string v11, "Qoxil by danielcarollo0"

    const-string v12, "Vi\u1ec7t Nam by Chucmai"

    const-string v13, "\u957f\u5b89\u57ce by chao nimalebi"

    const-string v14, "CivCity by M2M4"

    const-string v15, "Enton by ento21"

    const-string v16, "KANG-BIN by qwertyuio"

    const-string v17, "City by Atach Awha"

    const-string v18, "East Greenhills by HarryMadera"

    const-string v19, "City by Mazein"

    const-string v20, "Eater by bany adam"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bgAuthors:[Ljava/lang/String;

    .line 64
    array-length v0, v0

    sput v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bgCount:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->versionText:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->images:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->pixmaps:Ljava/util/List;

    .line 81
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 85
    :try_start_37
    sget-wide v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->sessionId:J

    sget p1, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bgCount:I

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->selectBackground(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->selectBackground(I)V

    .line 93
    :goto_4a
    const-string p1, "startlogo.png"

    const/16 v0, 0x2601

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->logo:Lio/blueflower/stapel2d/drawing/Image;

    .line 94
    const-string p1, "loadingbar.png"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bar:Lio/blueflower/stapel2d/drawing/Image;

    return-void
.end method

.method public static startNewSession()V
    .registers 2

    .line 37
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sput-wide v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->sessionId:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/drawing/Image;

    .line 184
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    goto :goto_6

    .line 186
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->pixmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Pixmap;

    .line 189
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_28

    .line 191
    :cond_38
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->pixmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bg:Lio/blueflower/stapel2d/drawing/Image;

    .line 194
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->logo:Lio/blueflower/stapel2d/drawing/Image;

    .line 195
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bar:Lio/blueflower/stapel2d/drawing/Image;

    return-void
.end method

.method public drawBackground()V
    .registers 4

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bg:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v0, :cond_5

    return-void

    .line 105
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bg:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawCentered(Lio/blueflower/stapel2d/drawing/Image;FI)V

    return-void
.end method

.method public drawBar(F)V
    .registers 11

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44160000    # 600.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v7, v0, v1

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bar:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v0, :cond_1f

    return-void

    .line 137
    :cond_1f
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v0

    .line 138
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    if-eqz v0, :cond_32

    const/4 v2, 0x2

    aget v0, v0, v2

    float-to-int v0, v0

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    sub-int/2addr v1, v0

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 142
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bar:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v0, v1

    sub-float v5, v0, v7

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v0

    int-to-float v6, v0

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 145
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bar:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v6, p1, v0

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public final drawCentered(Lio/blueflower/stapel2d/drawing/Image;FI)V
    .registers 16

    .line 222
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    .line 223
    invoke-virtual {p1, p3}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v1

    div-float/2addr v0, v1

    .line 225
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_29

    .line 230
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v0, v2

    .line 231
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_38

    .line 233
    :cond_29
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    .line 234
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_38
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v3, v2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v3, p2

    .line 238
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float v6, p2, v3

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 239
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result p2

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float v7, p2, v3

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr v3, p2

    sub-float v8, v2, v3

    int-to-float p2, v1

    sub-float v9, p2, v3

    move-object v5, p1

    move v10, p3

    .line 238
    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public drawLogo()V
    .registers 6

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->logo:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v0, :cond_5

    return-void

    .line 117
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    .line 121
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    int-to-float v4, v1

    mul-float/2addr v4, v3

    .line 122
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x45000000    # 2048.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->logo:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->drawCentered(Lio/blueflower/stapel2d/drawing/Image;FI)V

    return-void
.end method

.method public drawText(Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    .line 149
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-nez v1, :cond_8

    goto/16 :goto_ae

    .line 152
    :cond_8
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    if-eqz v2, :cond_ae

    .line 153
    iget-object v3, v2, Lio/blueflower/stapel2d/drawing/Font;->image:Lio/blueflower/stapel2d/drawing/Image;

    if-nez v3, :cond_12

    goto/16 :goto_ae

    .line 155
    :cond_12
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x44160000    # 600.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v3

    .line 158
    sget-object v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v6}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_39

    const/4 v8, 0x3

    .line 159
    aget v8, v6, v8

    float-to-int v8, v8

    goto :goto_3a

    :cond_39
    move v8, v7

    :goto_3a
    const/4 v9, 0x2

    add-int/2addr v8, v9

    .line 160
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v10

    if-eqz v6, :cond_48

    aget v11, v6, v9

    float-to-int v11, v11

    goto :goto_49

    :cond_48
    move v11, v7

    :goto_49
    sub-int/2addr v10, v11

    .line 161
    iget-object v11, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v11

    if-eqz v6, :cond_55

    aget v4, v6, v4

    float-to-int v7, v4

    :cond_55
    sub-int/2addr v11, v7

    sub-int/2addr v11, v9

    .line 163
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 164
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 165
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 166
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    mul-float/2addr v3, v4

    .line 167
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v6, v8

    int-to-float v7, v10

    sub-float v8, v7, v3

    sub-float/2addr v8, v5

    move-object/from16 v9, p1

    invoke-virtual {v4, v2, v9, v6, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 168
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->versionText:Ljava/lang/String;

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v3, v10

    sub-float/2addr v7, v3

    sub-float/2addr v7, v5

    invoke-virtual {v4, v2, v9, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 170
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->author:Ljava/lang/String;

    if-eqz v2, :cond_a4

    .line 171
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 172
    iget-object v12, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v13, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v14, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->author:Ljava/lang/String;

    int-to-float v15, v11

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v20}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 175
    :cond_a4
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 176
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->flip()V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public final loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;
    .registers 6

    .line 205
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    .line 206
    invoke-static {p1, v1}, Linfo/flowersoft/theotown/util/Hashing;->internalName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    const/4 v0, 0x4

    .line 205
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPAPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    .line 209
    new-instance v0, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v1, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 213
    invoke-virtual {v0, p2, p2}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 215
    invoke-static {v0}, Lio/blueflower/stapel2d/drawing/Image;->createSingleFrame(Lio/blueflower/stapel2d/drawing/Texture;)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object p2

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->pixmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->images:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final selectBackground(I)V
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2601

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->loadImage(Ljava/lang/String;I)Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bg:Lio/blueflower/stapel2d/drawing/Image;

    .line 99
    sget-object v0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->bgAuthors:[Ljava/lang/String;

    aget-object p1, v0, p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/StartScreenDrawer;->author:Ljava/lang/String;

    return-void
.end method
