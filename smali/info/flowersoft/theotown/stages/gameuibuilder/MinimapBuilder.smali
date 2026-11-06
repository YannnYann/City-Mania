###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "MinimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 33
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 13

    .line 38
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->biggerMinimap:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x100

    :goto_6
    move v9, v0

    goto :goto_b

    :cond_8
    const/16 v0, 0x80

    goto :goto_6

    .line 41
    :goto_b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 42
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int v11, v1, v2

    .line 44
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 46
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    .line 47
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->leftMinimap:Z

    if-eqz v3, :cond_2b

    const/4 v0, 0x0

    goto :goto_32

    :cond_2b
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    sub-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x4

    :goto_32
    add-int v3, v2, v0

    sub-int v0, v11, v9

    add-int/lit8 v4, v0, -0x1d

    add-int/lit8 v5, v9, 0x4

    add-int/lit8 v6, v9, 0x1d

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v10, 0x18

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;III)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "MinimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

.field public final buttonLine:Lio/blueflower/stapel2d/gui/Panel;

.field public final minimap:Linfo/flowersoft/theotown/ui/Minimap;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;

.field public final synthetic val$bottomY:I

.field public final synthetic val$buttonHeight:I

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$minimapWidth:I


# direct methods
.method public static synthetic $r8$lambda$5O_-105z2x1r_snQKRd9oeqk6Yc(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V
    .registers 2

    .line 93
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;

    .line 93
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->turnMap(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KN59SZGgAhGol14kw79MVHjTzA(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V
    .registers 2

    .line 109
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;

    .line 109
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->turnMap(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gez4xV8cityjRNozEp32PFTPiag(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 97
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->zoomOut(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$GmqlR4zDj6Pc1z9IZ2Mc_lqTYnY(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v1, v3}, Linfo/flowersoft/theotown/city/City;->focus(FFFZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wQeNdF-9UH6ioPSdLD1equTI1B4(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 105
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->zoomIn(F)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;III)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;

    iput-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    iput v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$minimapWidth:I

    iput v8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$buttonHeight:I

    move/from16 v0, p10

    iput v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$bottomY:I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 52
    new-instance v0, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->shouldBeVisible()Z

    move-result v2

    const-wide/16 v3, 0xc8

    invoke-direct {v0, v2, v3, v4}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;-><init>(ZJ)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 59
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iput-object p0, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->minimapPanel:Lio/blueflower/stapel2d/gui/Panel;

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/ui/Minimap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v5, p8

    move-object v1, v6

    move v4, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Minimap;-><init>(Linfo/flowersoft/theotown/city/City;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v0

    move-object v9, v1

    iput-object v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    const/4 v10, 0x1

    .line 62
    invoke-virtual {v7, v10}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 63
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->setMinimap(Linfo/flowersoft/theotown/ui/Minimap;)V

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "N"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 78
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 79
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 81
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$2;

    add-int/lit8 v3, p8, 0x1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v2, 0x0

    move-object v6, p0

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->buttonLine:Lio/blueflower/stapel2d/gui/Panel;

    .line 87
    new-instance v2, Linfo/flowersoft/theotown/util/LineLayoutFiller;

    invoke-direct {v2, v5, v10, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 88
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineWidth(I)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {v2, v0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setStart(II)V

    .line 91
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TURN_RIGHT:I

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V

    const-string v4, ""

    invoke-virtual {v2, v0, v4, v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 95
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 97
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda2;

    invoke-direct {v5, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 95
    invoke-virtual {v2, v0, v4, v3, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 99
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CENTER:I

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v2, v0, v4, v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 103
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda4;

    invoke-direct {v3, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 105
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda5;

    invoke-direct {v5, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 103
    invoke-virtual {v2, v0, v4, v3, v5}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 107
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TURN_LEFT:I

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V

    invoke-virtual {v2, v0, v4, v3}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 111
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    return-void
.end method

.method private updateSize()V
    .registers 5

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_f

    return-void

    .line 133
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 134
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$minimapWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$buttonHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 135
    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$bottomY:I

    sub-int/2addr v2, v1

    iput v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    .line 136
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    .line 138
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$minimapWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->buttonLine:Lio/blueflower/stapel2d/gui/Panel;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->minimap:Linfo/flowersoft/theotown/ui/Minimap;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 9

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->getState()F

    move-result v0

    .line 151
    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->smooth:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    .line 153
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->leftMinimap:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1e

    int-to-float p1, p1

    .line 154
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v0, v2

    :goto_1a
    mul-float/2addr v1, v3

    add-float/2addr p1, v1

    float-to-int p1, p1

    goto :goto_27

    :cond_1e
    int-to-float p1, p1

    .line 156
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v3, v2, v0

    goto :goto_1a

    :goto_27
    int-to-float p2, p2

    .line 158
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    add-int/lit8 v1, p1, -0x8

    add-int/lit8 v2, p2, -0x8

    .line 160
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v4, v0, 0x10

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 161
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 162
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 121
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->shouldBeVisible()Z

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->getTargetState()Z

    move-result v1

    if-eq v0, v1, :cond_15

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->shouldBeVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->setState(Z)V

    .line 124
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->getState()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 1

    .line 144
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->updateSize()V

    .line 145
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->animationTimer:Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/VisibilityAnimationTimer;->setState(Z)V

    return-void
.end method

.method public final shouldBeVisible()Z
    .registers 2

    .line 166
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showMinimap:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder.AnonymousClass1.C10841 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;
.super Linfo/flowersoft/theotown/ui/ShadowedLabel;
.source "MinimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getAlignmentX()F
    .registers 3

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    .line 69
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getAlignmentY()F
    .registers 3

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->val$city:Linfo/flowersoft/theotown/city/City;

    .line 75
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder.AnonymousClass1.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$2;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "MinimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 81
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$2;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 84
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->$r8$lambda$5O_-105z2x1r_snQKRd9oeqk6Yc(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->$r8$lambda$Gez4xV8cityjRNozEp32PFTPiag(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canZoomOut()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->$r8$lambda$GmqlR4zDj6Pc1z9IZ2Mc_lqTYnY(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->$r8$lambda$wQeNdF-9UH6ioPSdLD1equTI1B4(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canZoomIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;->$r8$lambda$7KN59SZGgAhGol14kw79MVHjTzA(Linfo/flowersoft/theotown/stages/gameuibuilder/MinimapBuilder$1;)V

    return-void
.end method
