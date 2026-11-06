###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "PerformanceInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->performance:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 15
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

    .line 46
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 48
    :cond_9
    new-instance v9, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;)V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PERFORMANCE:I

    .line 57
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setChildIndex(I)V

    return-void
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 31
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;
.super Ljava/lang/Object;
.source "PerformanceInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .registers 4

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMin:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 52
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMax:F

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMin:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 51
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$1;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass2 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PerformanceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;->finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$performance:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 11
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

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->val$performance:Lio/blueflower/stapel2d/util/Getter;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 59
    new-instance p2, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;

    iget-object p3, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result p3

    iget-object p4, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p4}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p4

    iget-object p5, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    .line 60
    invoke-virtual {p5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p5

    iget-object p6, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p6

    iget-object p7, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p7}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p7

    move-object p8, p9

    invoke-direct/range {p2 .. p8}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    iput-object p2, p1, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 22

    move-object/from16 v1, p0

    .line 65
    invoke-super {v1}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 66
    new-instance v8, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PERFORMANCE:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc3c

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lio/blueflower/stapel2d/gui/Master;

    const-string v4, ""

    const/16 v5, 0xc8

    const/16 v6, 0x46

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$1;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v10, v0

    .line 74
    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    .line 75
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 76
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 77
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$2;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$2;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;)V

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    .line 84
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;

    invoke-direct {v0, v1, v8}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;Linfo/flowersoft/theotown/city/modifier/CityModifier;)V

    .line 96
    new-instance v11, Linfo/flowersoft/theotown/ui/DragButton;

    .line 97
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v15

    .line 98
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v16

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMin:F

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->performanceMax:F

    const/16 v20, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xa0

    move-object/from16 v17, v0

    move/from16 v19, v2

    move/from16 v18, v3

    invoke-direct/range {v11 .. v20}, Linfo/flowersoft/theotown/ui/DragButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Property;FFF)V

    .line 100
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$4;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v7

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x28

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$4;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 106
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 107
    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$2$1)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$1;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "PerformanceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 16
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

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$1;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object p2, p1

    .line 70
    new-instance p1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;

    iget-object p3, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result p3

    iget-object p4, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p4}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p4

    iget-object p5, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    .line 71
    invoke-virtual {p5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p5

    iget-object p6, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p6

    iget-object p7, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p7}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p7

    iget-object p2, p2, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->val$performance:Lio/blueflower/stapel2d/util/Getter;

    move-object v7, p7

    move-object p7, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move-object p6, v7

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass2.RunnableC10872 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$2$2)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$2;
.super Ljava/lang/Object;
.source "PerformanceInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$2;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->redrawBackground()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass2.AnonymousClass3 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$2$3)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;
.super Ljava/lang/Object;
.source "PerformanceInformation.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

.field public final synthetic val$modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;Linfo/flowersoft/theotown/city/modifier/CityModifier;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->val$modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .registers 2

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->get()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Float;)V
    .registers 4

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->val$modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setBuildingPerformance(Linfo/flowersoft/theotown/city/objects/Building;F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 84
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$3;->set(Ljava/lang/Float;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.AnonymousClass2.AnonymousClass4 (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$2$4)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$4;
.super Lio/blueflower/stapel2d/gui/Label;
.source "PerformanceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 100
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$4;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 6

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2$4;->this$1:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$2;->this$0:Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Label;->draw(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.PerformanceIcon (info.flowersoft.theotown.stages.tiledialog.PerformanceInformation$PerformanceIcon)
.class public Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "PerformanceInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerformanceIcon"
.end annotation


# instance fields
.field public process:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 117
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PERFORMANCE:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 118
    iput-object p6, v0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;->process:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 122
    iget v0, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a4

    .line 123
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 124
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    .line 125
    iget v2, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v2

    .line 126
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentX:F

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v3, p1

    int-to-float p1, v3

    .line 127
    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v3, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Icon;->alignmentY:F

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    mul-float/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v3, p2

    int-to-float p2, v3

    .line 129
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v4

    add-float/2addr v4, p1

    iget v5, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v1

    add-float/2addr v1, p2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {p0, v3, v4, v1, v5}, Lio/blueflower/stapel2d/gui/Icon;->drawIcon(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 131
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/PerformanceInformation$PerformanceIcon;->process:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v3, 0x3f3d70a4    # 0.74f

    mul-float/2addr v1, v3

    const v3, 0x3ec28f5c    # 0.38f

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    double-to-float v1, v4

    div-float/2addr v0, v3

    add-float v5, p1, v0

    div-float/2addr v2, v3

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    add-float v6, p2, v2

    float-to-double p1, v1

    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    add-float v7, v0, v5

    .line 137
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p1, v1

    add-float v8, p1, v6

    .line 138
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 139
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 140
    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_a4
    return-void
.end method
