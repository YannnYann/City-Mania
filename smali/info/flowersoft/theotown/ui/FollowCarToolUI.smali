###### Class info.flowersoft.theotown.ui.FollowCarToolUI (info.flowersoft.theotown.ui.FollowCarToolUI)
.class public Linfo/flowersoft/theotown/ui/FollowCarToolUI;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "FollowCarToolUI.java"


# instance fields
.field public final BRAKE_FRAME:I

.field public final CARREMOVER_FRAME:I

.field public final EMEGENCY_FRAME:I

.field public final STEERINGWHEEL_FRAME:I

.field public final THROTTLE_FRAME:I

.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;IIII",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    .line 36
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object p4, v0

    .line 23
    const-string p5, "$anim_cartool_emergency00"

    const-class p6, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p5, p6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 p7, 0x0

    aget p5, p5, p7

    iput p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->EMEGENCY_FRAME:I

    .line 24
    const-string p5, "$anim_cartool_carremover00"

    invoke-static {p5, p6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p5, p5, p7

    iput p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->CARREMOVER_FRAME:I

    .line 25
    const-string p5, "$anim_cartool_steeringwheel00"

    invoke-static {p5, p6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p5, p5, p7

    iput p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->STEERINGWHEEL_FRAME:I

    .line 26
    const-string p5, "$anim_cartool_brake00"

    invoke-static {p5, p6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p5, p5, p7

    iput p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->BRAKE_FRAME:I

    .line 27
    const-string p5, "$anim_cartool_throttle00"

    invoke-static {p5, p6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p5

    check-cast p5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p5, p5, p7

    iput p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->THROTTLE_FRAME:I

    move-object p5, p1

    .line 38
    new-instance p1, Linfo/flowersoft/theotown/ui/DateIndicator;

    move-object p6, p2

    const/4 p2, 0x0

    move-object p7, p3

    const/4 p3, 0x0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/DateIndicator;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    .line 40
    iput-object p5, p4, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 43
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->build()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;
    .registers 1

    .line 21
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->getTool()Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object p0

    return-object p0
.end method

.method private build()V
    .registers 17

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$1;

    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v6, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/FollowCarToolUI$1;-><init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v9, 0x1

    .line 62
    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 64
    iget v7, v1, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->STEERINGWHEEL_FRAME:I

    .line 65
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v3, 0x4

    new-array v3, v3, [F

    invoke-virtual {v2, v7, v3}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v8

    .line 66
    new-instance v15, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x64

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    const/16 v4, 0xc8

    const/16 v5, 0x64

    move-object v6, v0

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;-><init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;IIIILio/blueflower/stapel2d/gui/Gadget;I[F)V

    .line 106
    invoke-virtual {v15, v9}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->setTouchThrough(Z)V

    .line 108
    new-instance v7, Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x2a

    const/16 v13, 0x2a

    const/16 v14, 0x2a

    const-string v10, ""

    const/4 v11, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;-><init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 126
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CONTROL_CAR_LEFT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 128
    new-instance v7, Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v11, v0, -0x2a

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v12, v0, -0x2a

    const-string v10, ""

    invoke-direct/range {v7 .. v15}, Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;-><init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 146
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->CONTROL_CAR_RIGHT:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/input/KeyAction;->applyTo(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 190
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public final getTool()Linfo/flowersoft/theotown/tools/FollowCarTool;
    .registers 3

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 176
    instance-of v1, v0, Linfo/flowersoft/theotown/tools/FollowCarTool;

    if-eqz v1, :cond_11

    .line 177
    check-cast v0, Linfo/flowersoft/theotown/tools/FollowCarTool;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->getTool()Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.FollowCarToolUI.AnonymousClass1 (info.flowersoft.theotown.ui.FollowCarToolUI$1)
.class Linfo/flowersoft/theotown/ui/FollowCarToolUI$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "FollowCarToolUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FollowCarToolUI;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 47
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$1;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 59
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$1;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 52
    :cond_a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getCurrentCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-nez v0, :cond_11

    return v1

    .line 54
    :cond_11
    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    return v0
.end method

###### Class info.flowersoft.theotown.ui.FollowCarToolUI.AnonymousClass2 (info.flowersoft.theotown.ui.FollowCarToolUI$2)
.class Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "FollowCarToolUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FollowCarToolUI;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

.field public final synthetic val$frame:I

.field public final synthetic val$uvs:[F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;IIIILio/blueflower/stapel2d/gui/Gadget;I[F)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    iput p7, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$frame:I

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$uvs:[F

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 29

    move-object/from16 v0, p0

    .line 69
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 72
    :cond_b
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 73
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v2, v2, p1

    .line 74
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v4, v4, p2

    .line 76
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/16 v18, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 77
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/16 v19, 0x3

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    .line 79
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v6, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$frame:I

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 80
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$frame:I

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v8

    mul-float/2addr v8, v6

    div-float/2addr v8, v7

    .line 81
    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getPendingDir()I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v1, v6

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v6

    float-to-double v6, v1

    .line 82
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    float-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-float v1, v9

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-float v5, v9

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    neg-double v9, v9

    float-to-double v11, v8

    mul-double/2addr v9, v11

    double-to-float v8, v9

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    double-to-float v6, v6

    .line 87
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v9, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$frame:I

    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v7

    neg-float v9, v1

    sub-float v10, v9, v8

    int-to-float v2, v2

    add-float/2addr v10, v2

    neg-float v11, v5

    sub-float v12, v11, v6

    int-to-float v4, v4

    add-float/2addr v12, v4

    add-float/2addr v9, v8

    add-float/2addr v9, v2

    add-float/2addr v11, v6

    add-float/2addr v11, v4

    sub-float v13, v1, v8

    add-float/2addr v13, v2

    sub-float v14, v5, v6

    add-float/2addr v14, v4

    iget-object v15, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$uvs:[F

    const/16 v20, 0x0

    move/from16 v16, v8

    move v8, v11

    aget v11, v15, v20

    const/16 v21, 0x1

    move/from16 v17, v6

    move v6, v12

    aget v12, v15, v21

    move/from16 v22, v5

    move v5, v10

    move v10, v14

    aget v14, v15, v19

    aget v15, v15, v18

    move/from16 v23, v17

    const/16 v17, 0x1

    move/from16 v24, v4

    move-object v4, v7

    move v7, v9

    move v9, v13

    move v13, v11

    move/from16 v25, v16

    move/from16 v16, v12

    invoke-virtual/range {v3 .. v17}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 94
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$frame:I

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v4

    add-float v1, v1, v25

    add-float/2addr v1, v2

    add-float v5, v22, v23

    add-float v5, v5, v24

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$2;->val$uvs:[F

    aget v11, v2, v20

    aget v12, v2, v19

    aget v13, v2, v18

    aget v16, v2, v21

    move v14, v12

    move v15, v13

    move v6, v8

    move v8, v5

    move v5, v7

    move v7, v1

    invoke-virtual/range {v3 .. v17}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 103
    invoke-virtual/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.FollowCarToolUI.AnonymousClass3 (info.flowersoft.theotown.ui.FollowCarToolUI$3)
.class public Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "FollowCarToolUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FollowCarToolUI;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 3

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    .line 112
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getPendingDir()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 116
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$3;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_18

    .line 120
    :cond_c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getPendingDir()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    add-int/lit8 v1, v1, -0x1

    .line 122
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/FollowCarTool;->drive(I)V

    :cond_18
    :goto_18
    return-void
.end method

###### Class info.flowersoft.theotown.ui.FollowCarToolUI.AnonymousClass4 (info.flowersoft.theotown.ui.FollowCarToolUI$4)
.class public Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "FollowCarToolUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FollowCarToolUI;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FollowCarToolUI;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 4

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    .line 132
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getPendingDir()I

    move-result v0

    if-ne v0, v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    return v0

    :cond_18
    :goto_18
    return v2
.end method

.method public onClick()V
    .registers 4

    .line 136
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FollowCarToolUI$4;->this$0:Linfo/flowersoft/theotown/ui/FollowCarToolUI;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/FollowCarToolUI;->access$000(Linfo/flowersoft/theotown/ui/FollowCarToolUI;)Linfo/flowersoft/theotown/tools/FollowCarTool;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_17

    .line 140
    :cond_c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->getPendingDir()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    add-int/2addr v1, v2

    .line 142
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/FollowCarTool;->drive(I)V

    :cond_17
    :goto_17
    return-void
.end method
