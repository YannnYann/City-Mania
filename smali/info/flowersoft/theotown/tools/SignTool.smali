###### Class info.flowersoft.theotown.tools.SignTool (info.flowersoft.theotown.tools.SignTool)
.class public Linfo/flowersoft/theotown/tools/SignTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "SignTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/SignTool$SignEditor;
    }
.end annotation


# instance fields
.field public focusSignIndex:I

.field public signEditor:Linfo/flowersoft/theotown/tools/SignTool$SignEditor;

.field public signs:Linfo/flowersoft/theotown/components/DefaultSigns;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/SignTool$SignEditor;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    .line 25
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->signEditor:Linfo/flowersoft/theotown/tools/SignTool$SignEditor;

    .line 27
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/SignTool$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/SignTool$1;-><init>(Linfo/flowersoft/theotown/tools/SignTool;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 49
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/SignTool$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/SignTool$2;-><init>(Linfo/flowersoft/theotown/tools/SignTool;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/SignTool;I)V
    .registers 2

    .line 16
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/SignTool;->focusSign(I)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/SignTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 16
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/SignTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 16
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 79
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/16 v0, 0x12

    .line 80
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultSigns;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/components/DefaultSigns;->drawSigns(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    return-void
.end method

.method public final focusSign(I)V
    .registers 6

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->countSigns()I

    move-result v0

    if-lez v0, :cond_47

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    if-gez v0, :cond_19

    .line 86
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultSigns;->countSigns()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    .line 87
    :cond_19
    iget p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->countSigns()I

    move-result v0

    if-lt p1, v0, :cond_26

    const/4 p1, 0x0

    iput p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    .line 88
    :cond_26
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    iget v0, p0, Linfo/flowersoft/theotown/tools/SignTool;->focusSignIndex:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultSigns;->getSign(I)Linfo/flowersoft/theotown/city/objects/Sign;

    move-result-object p1

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Sign;->getX()F

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Sign;->getY()F

    move-result p1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    :cond_47
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 116
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "Sign"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 95
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, p5, p6}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object p1

    .line 96
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/SignTool;->signs:Linfo/flowersoft/theotown/components/DefaultSigns;

    iget p3, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    iget p4, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    invoke-virtual {p2, p5, p6, p3, p4}, Linfo/flowersoft/theotown/components/DefaultSigns;->getSignAt(IIII)Linfo/flowersoft/theotown/city/objects/Sign;

    move-result-object p2

    if-nez p2, :cond_1e

    .line 98
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/SignTool;->signEditor:Linfo/flowersoft/theotown/tools/SignTool$SignEditor;

    iget p3, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    int-to-float p3, p3

    iget p1, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    int-to-float p1, p1

    invoke-interface {p2, p3, p1}, Linfo/flowersoft/theotown/tools/SignTool$SignEditor;->newSign(FF)V

    return-void

    .line 100
    :cond_1e
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool;->signEditor:Linfo/flowersoft/theotown/tools/SignTool$SignEditor;

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/tools/SignTool$SignEditor;->editSign(Linfo/flowersoft/theotown/city/objects/Sign;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.SignTool.AnonymousClass1 (info.flowersoft.theotown.tools.SignTool$1)
.class public Linfo/flowersoft/theotown/tools/SignTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "SignTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/SignTool;-><init>(Linfo/flowersoft/theotown/tools/SignTool$SignEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/SignTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/SignTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool$1;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 30
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "cmdNext"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool$1;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/SignTool;->access$100(Linfo/flowersoft/theotown/tools/SignTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x491

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool$1;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/SignTool;->access$000(Linfo/flowersoft/theotown/tools/SignTool;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.SignTool.AnonymousClass2 (info.flowersoft.theotown.tools.SignTool$2)
.class public Linfo/flowersoft/theotown/tools/SignTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "SignTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/SignTool;-><init>(Linfo/flowersoft/theotown/tools/SignTool$SignEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/SignTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/SignTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/SignTool$2;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 52
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "cmdPrev"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool$2;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/SignTool;->access$200(Linfo/flowersoft/theotown/tools/SignTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xd35

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/SignTool$2;->this$0:Linfo/flowersoft/theotown/tools/SignTool;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/SignTool;->access$000(Linfo/flowersoft/theotown/tools/SignTool;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.SignTool.SignEditor (info.flowersoft.theotown.tools.SignTool$SignEditor)
.class public interface abstract Linfo/flowersoft/theotown/tools/SignTool$SignEditor;
.super Ljava/lang/Object;
.source "SignTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/SignTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignEditor"
.end annotation


# virtual methods
.method public abstract editSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
.end method

.method public abstract newSign(FF)V
.end method
