###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;)Ljava/lang/Object;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;)Ljava/lang/Object;
    .registers 1

    .line 23
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 15

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 36
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v1

    neg-int v2, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 37
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v3

    sub-int v3, v1, v3

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 38
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 39
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v1

    add-int/lit8 v5, v1, 0x14

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v8, v1

    .line 59
    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$2;

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 60
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    neg-int v9, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 61
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v10, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 62
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v11

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 63
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v12

    iget-object v13, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 83
    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$3;

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    neg-int v9, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v10, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v11

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v12

    iget-object v13, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 102
    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$4;

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v9

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v10, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v11

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v12

    iget-object v13, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 120
    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 121
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    neg-int v9, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 122
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v10, v0

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 123
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v11

    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 124
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v12

    iget-object v13, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 43
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 44
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xa0

    .line 45
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 46
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 48
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 49
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 54
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->edgeGradients:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 67
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 68
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xa0

    .line 69
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 70
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    neg-int p1, p2

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 72
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 73
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 78
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->edgeGradients:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$3;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 86
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 87
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xa0

    .line 88
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 89
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v4, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 91
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 92
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 97
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->edgeGradients:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$4;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 105
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 106
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xa0

    .line 107
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 108
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    neg-int p1, p1

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_X:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 110
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 111
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 116
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->edgeGradients:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "BorderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 8

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getDate()Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getSpeed()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 129
    :goto_16
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    const/4 v2, 0x6

    .line 130
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v1

    if-nez v0, :cond_31

    if-eqz v1, :cond_83

    .line 133
    :cond_31
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-eqz v0, :cond_3f

    .line 136
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 137
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;->drawBorder(II)V

    :cond_3f
    if-eqz v1, :cond_7e

    .line 142
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const-wide/16 v3, 0x7d0

    rem-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v3

    const-wide v3, 0x409f400000000000L    # 2000.0

    div-double/2addr v0, v3

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float v3, v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 146
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 147
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 148
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/BorderBuilder$5;->drawBorder(II)V

    const/16 v0, 0xff

    .line 149
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 152
    :cond_7e
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 155
    :cond_83
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->draw(II)V

    return-void
.end method

.method public final drawBorder(II)V
    .registers 13

    .line 158
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->NP_UI_PAUSE:I

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 160
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v9, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 161
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getCornerRadius()F

    move-result p1

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result p2

    mul-float v1, p1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_6f

    .line 164
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    const/high16 p1, 0x40000000    # 2.0f

    sub-float v3, v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    add-float v4, v1, p1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v5, -0x3fb6f025

    const v6, -0x4036f025

    move v2, v1

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 170
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    const v5, -0x4036f025

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v1, v2

    .line 176
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float p1, p1

    sub-float v2, p1, v1

    const v5, 0x3fc90fdb

    const v6, 0x40490fdb    # (float)Math.PI

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 182
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float p2, p2

    sub-float v2, p2, v1

    const/4 v5, 0x0

    const v6, 0x3fc90fdb

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    :cond_6f
    return-void
.end method
