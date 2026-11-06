###### Class info.flowersoft.theotown.ui.selectable.SelectableEyedropper (info.flowersoft.theotown.ui.selectable.SelectableEyedropper)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableEyedropper.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public final onSelect:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 21
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$tool_eyedropper00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ToolDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 23
    new-instance p1, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->onSelect:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->addToHistory(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    return-void
.end method


# virtual methods
.method public final addToHistory(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 4

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 33
    const-string v1, "roottoolbar"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 34
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    if-eqz v1, :cond_1b

    .line 35
    check-cast v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 62
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE_DROPPER:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 67
    sget-object v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x885

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 4

    .line 46
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/EyeDropperTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->onSelect:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/EyeDropperTool;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableEyedropper.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableEyedropper$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;
.super Ljava/lang/Object;
.source "SelectableEyedropper.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 3

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;->access$000(Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

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

    .line 23
    check-cast p1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableEyedropper$1;->set(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    return-void
.end method
