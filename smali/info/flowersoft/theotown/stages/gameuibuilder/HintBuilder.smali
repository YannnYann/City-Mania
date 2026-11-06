###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "HintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# instance fields
.field public buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/Button;",
            ">;"
        }
    .end annotation
.end field

.field public hints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;",
            ">;"
        }
    .end annotation
.end field

.field public line:Lio/blueflower/stapel2d/gui/ElementLine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 10

    .line 32
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->hints:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->buttons:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    const/4 v0, 0x6

    .line 34
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 36
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->hints:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v6, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;

    invoke-direct {v6, p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Linfo/flowersoft/theotown/components/DefaultCatastrophe;)V

    new-instance v7, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;

    invoke-direct {v7, p0, v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Linfo/flowersoft/theotown/components/DefaultCatastrophe;Linfo/flowersoft/theotown/city/City;)V

    const-string v4, "Fire!"

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Ljava/util/List;
    .registers 1

    .line 24
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->hints:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Ljava/util/List;
    .registers 1

    .line 24
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->buttons:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Lio/blueflower/stapel2d/gui/ElementLine;
    .registers 1

    .line 24
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 11

    .line 55
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v8

    .line 56
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->areaPanel:Lio/blueflower/stapel2d/gui/Panel;

    move-object v1, v0

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;

    .line 58
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v5

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v7

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    const/4 v0, 0x0

    move v9, v0

    .line 74
    :goto_2f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->hints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_6e

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->hints:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    .line 76
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 77
    iget-object v0, v8, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    .line 78
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v4, v2, 0x4

    .line 79
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v5, v0, 0x4

    .line 80
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Font;Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;)V

    const/4 v2, 0x2

    .line 106
    invoke-virtual {v0, v2, v2, v2, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 107
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->buttons:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    :cond_6e
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;
.super Ljava/lang/Object;
.source "HintBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

.field public final synthetic val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Linfo/flowersoft/theotown/components/DefaultCatastrophe;)V
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

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;->val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;->val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isActive()Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;
.super Ljava/lang/Object;
.source "HintBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;-><init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

.field public final synthetic val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Linfo/flowersoft/theotown/components/DefaultCatastrophe;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;->val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;->val$catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->isActive()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 46
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getLocation()[I

    move-result-object v0

    .line 47
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$2;->val$city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/city/City;->focus(FF)V

    :cond_21
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "HintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 58
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 4

    .line 61
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    const/4 v0, 0x0

    .line 63
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    .line 65
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Button;

    .line 66
    iget-object v1, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->isActive:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 69
    :cond_3a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;)Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "HintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

.field public final synthetic val$font:Lio/blueflower/stapel2d/drawing/Font;

.field public final synthetic val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Font;Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;)V
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

    .line 80
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 83
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 84
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    .line 85
    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    .line 86
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    .line 87
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    .line 88
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0x64

    .line 89
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v3, v2

    .line 90
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    move v6, v3

    move-object v3, v4

    move v4, v5

    int-to-float v5, p1

    int-to-float p2, p2

    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    move v6, p2

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move p2, v5

    .line 91
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    int-to-float v4, v0

    add-int/lit8 v5, p1, -0x1

    int-to-float v5, v5

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v10, v4

    .line 92
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 93
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    int-to-float v5, p1

    move v4, v10

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    const/16 p1, 0xff

    .line 94
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 95
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 96
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v3, p1, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 97
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 102
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$4;->val$hint:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.HintBuilder.Hint (info.flowersoft.theotown.stages.gameuibuilder.HintBuilder$Hint)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;
.super Ljava/lang/Object;
.source "HintBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hint"
.end annotation


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public isActive:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public onClick:Ljava/lang/Runnable;

.field public text:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->text:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 128
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->isActive:Lio/blueflower/stapel2d/util/Getter;

    .line 129
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/HintBuilder$Hint;->onClick:Ljava/lang/Runnable;

    return-void
.end method
