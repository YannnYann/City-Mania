###### Class info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation (info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "BodyDisposalBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;
    }
.end annotation


# static fields
.field public static final SWIPE_FACTOR:F


# instance fields
.field public final SKELETONS_ANIMATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public clearableByTouch:Z

.field public hasCapacity:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 43
    const-string v0, "body disposal"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 44
    const-string v1, "swipe factor"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->SWIPE_FACTOR:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    .line 38
    const-string v0, "$anim_skeletons00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->SKELETONS_ANIMATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->clearableByTouch:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;F)V
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->setProgress(F)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F
    .registers 1

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->getProgress()F

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->SKELETONS_ANIMATION:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object p0
.end method

.method public static synthetic access$300()F
    .registers 1

    .line 36
    sget v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->SWIPE_FACTOR:F

    return v0
.end method


# virtual methods
.method public canHandle()Z
    .registers 3

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getProvidedAmount(I)I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    .line 81
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->hasCapacity:Z

    if-eqz v0, :cond_48

    .line 82
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    const/16 v5, 0x28

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 83
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x28

    invoke-virtual {v7, v0, v2, v3, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 85
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 88
    :cond_48
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    .line 90
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "body disposal"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_d9

    .line 92
    const-string v3, "clear diamonds price"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 93
    const-string v3, "clear allow ad"

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-lez v10, :cond_d9

    .line 95
    iget-boolean v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->hasCapacity:Z

    if-eqz v3, :cond_d9

    .line 96
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v3, :cond_b7

    mul-int/lit16 v10, v10, 0x3e8

    .line 97
    const-string v3, "clear price"

    invoke-virtual {v2, v3, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v10, v2

    .line 98
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Linfo/flowersoft/theotown/components/DefaultBudget;

    move-object v2, v0

    .line 99
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;

    move-object v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_FIRE:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x2c6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v5, v10

    .line 100
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;J)V

    return-void

    :cond_b7
    move-object v3, v0

    .line 120
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_FIRE:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd0f

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v9, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v13}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;IZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    :cond_d9
    return-void
.end method

.method public final getProgress()F
    .registers 4

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v0

    if-lez v0, :cond_16

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->clearableByTouch:Z

    if-eqz v0, :cond_16

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x65b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_16
    const-string v0, ""

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 52
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->canHandle()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 55
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result p1

    if-lez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->hasCapacity:Z

    :cond_17
    return-void
.end method

.method public final setProgress(F)V
    .registers 4

    const/4 v0, 0x0

    .line 153
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getAspectCapacity(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getAspects()[I

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 155
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 156
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingWorker()Linfo/flowersoft/theotown/components/management/BuildingWorker;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    .line 157
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/management/BuildingWorker;->getController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/buildingcontroller/WasteController;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 158
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/buildingcontroller/ProductionAspectController;->updateFrame(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "BodyDisposalBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

.field public final synthetic val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic val$price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;J)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
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
            null,
            null,
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-wide p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$price:J

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    .line 116
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$price:J

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 3

    .line 111
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 8

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->val$price:J

    long-to-double v1, v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 104
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 105
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;F)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "BodyDisposalBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

.field public final synthetic val$allowAd:Z

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$diamondPrice:I

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public static synthetic $r8$lambda$j-kT493JSjZBJlex6XKOU3501oA(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;)Ljava/lang/Boolean;
    .registers 2

    .line 129
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;F)V

    .line 130
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;IZLio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
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
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$diamondPrice:I

    iput-boolean p11, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$allowAd:Z

    iput-object p12, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput-object p13, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 140
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 14

    .line 123
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_PRIEST:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xccb

    .line 124
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xdbd

    .line 125
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 126
    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/Dialog;->getWindow()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    iget v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$diamondPrice:I

    int-to-long v5, v5

    new-instance v7, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;)V

    .line 132
    iget-boolean v8, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$allowAd:Z

    if-eqz v8, :cond_33

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    :goto_34
    iget-object v9, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clear "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    iget-object v11, v11, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 134
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Clear_Landfill"

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;->$r8$lambda$j-kT493JSjZBJlex6XKOU3501oA(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$2;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation.BodyDisposalProgress (info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$BodyDisposalProgress)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "BodyDisposalBuildingInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BodyDisposalProgress"
.end annotation


# instance fields
.field public lastTime:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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

    .line 165
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    move-object p1, p0

    .line 166
    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 21

    move-object/from16 v0, p0

    .line 171
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 172
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, v1, p1

    .line 173
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v12, v3, p2

    .line 174
    iget v13, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v6, v13

    .line 175
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v9, v3

    .line 176
    iget v14, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 178
    sget-object v15, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0x28

    .line 179
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 180
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v1

    int-to-float v5, v12

    int-to-float v7, v14

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v10, 0xff

    .line 181
    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 183
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v3

    const v6, 0x3f7d70a4    # 0.99f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_4e

    .line 184
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v9

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 188
    :cond_4e
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    add-int/lit8 v6, v12, 0x1

    int-to-float v6, v6

    add-int/lit8 v8, v9, -0x2

    int-to-float v8, v8

    add-int/lit8 v11, v14, -0x2

    int-to-float v11, v11

    .line 189
    invoke-virtual {v2, v3, v6, v8, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    move-object v3, v2

    .line 190
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    move v8, v4

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$200(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/16 v16, 0x0

    aget v6, v6, v16

    int-to-float v9, v9

    move v11, v10

    move v10, v9

    move v9, v5

    const/4 v5, 0x0

    move/from16 v17, v11

    move v11, v7

    move v7, v6

    const/4 v6, 0x0

    move/from16 p1, v1

    move/from16 v1, v17

    invoke-virtual/range {v2 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    move-object v2, v3

    move v4, v8

    move v5, v9

    move v7, v11

    const/16 v3, 0x78

    .line 192
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 193
    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object v3, v2

    .line 194
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$200(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v6, v16

    const/4 v5, 0x0

    move v7, v6

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    move-object v2, v3

    .line 196
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 197
    invoke-virtual {v2, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 198
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    .line 200
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    div-int/lit8 v13, v13, 0x2

    add-int v4, p1, v13

    int-to-float v4, v4

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    int-to-float v5, v12

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v8, v3

    move-object v7, v15

    move-object v3, v1

    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

.method public onUpdate()V
    .registers 15

    .line 206
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 207
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 208
    iget-wide v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->lastTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    if-lez v2, :cond_12

    const/16 v3, 0x64

    if-le v2, v3, :cond_14

    :cond_12
    const/16 v2, 0x14

    .line 211
    :cond_14
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v3, :cond_c8

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c8

    .line 212
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 213
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v3

    iget-object v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v5

    mul-float/2addr v3, v5

    .line 214
    iget-object v5, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v5

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v6

    mul-float/2addr v5, v6

    .line 215
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 216
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$100(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;)F

    move-result v5

    invoke-static {}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$300()F

    move-result v6

    mul-float/2addr v6, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;->access$000(Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation;F)V

    .line 218
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v2, v3

    .line 221
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v3

    .line 222
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getDustAnimation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v4

    iget-object v5, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 223
    invoke-virtual {v5}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v5

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Master;->getVirtualWidthRatio()F

    move-result v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 224
    invoke-virtual {v6}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v6

    iget-object v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Master;->getVirtualHeightRatio()F

    move-result v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v7, v2

    .line 225
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v2, v9

    .line 226
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v8, v7, v9

    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    const/16 v13, 0x3e8

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40800000    # 4.0f

    move v7, v2

    .line 221
    invoke-virtual/range {v3 .. v13}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addParticle(Linfo/flowersoft/theotown/draft/AnimationDraft;FFFFFFLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;I)V

    .line 234
    :cond_c8
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BodyDisposalBuildingInformation$BodyDisposalProgress;->lastTime:J

    return-void
.end method
