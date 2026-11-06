###### Class info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder (info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "TaskBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public build()V
    .registers 8

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder$1;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 32
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$task_tutorial_entry00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TaskDraft;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.TaskBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "TaskBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/TaskBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method
