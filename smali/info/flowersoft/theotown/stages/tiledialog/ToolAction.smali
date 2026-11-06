###### Class info.flowersoft.theotown.stages.tiledialog.ToolAction (info.flowersoft.theotown.stages.tiledialog.ToolAction)
.class public Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;
.super Ljava/lang/Object;
.source "ToolAction.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/tiledialog/Action;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public icon:I

.field public text:Ljava/lang/String;

.field public tool:Linfo/flowersoft/theotown/city/components/Tool;


# direct methods
.method public constructor <init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/components/Tool;Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->icon:I

    .line 23
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p1, p4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->text:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->tool:Linfo/flowersoft/theotown/city/components/Tool;

    .line 25
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->icon:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public onClick()V
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/ToolAction;->tool:Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
