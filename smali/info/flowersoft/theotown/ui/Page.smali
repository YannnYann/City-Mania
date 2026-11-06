###### Class info.flowersoft.theotown.ui.Page (info.flowersoft.theotown.ui.Page)
.class public Linfo/flowersoft/theotown/ui/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public icon:Linfo/flowersoft/theotown/ui/ShadowedIcon;

.field public lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

.field public onBackgroundClick:Ljava/lang/Runnable;

.field public panelBackground:Lio/blueflower/stapel2d/gui/Panel;

.field public panelContent:Lio/blueflower/stapel2d/gui/Panel;

.field public panelTitle:Lio/blueflower/stapel2d/gui/Panel;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
    .registers 22

    move-object/from16 v1, p0

    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p4

    .line 35
    iput-object v6, v1, Linfo/flowersoft/theotown/ui/Page;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 37
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 38
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/16 v2, 0x1f4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/ui/Page$1;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Page$1;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelBackground:Lio/blueflower/stapel2d/gui/Panel;

    .line 55
    new-instance v6, Linfo/flowersoft/theotown/ui/Page$2;

    .line 56
    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    sub-int/2addr v0, v7

    const/4 v9, 0x2

    div-int/2addr v0, v9

    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 57
    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/2addr v0, v9

    invoke-virtual/range {p4 .. p4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    move-object v0, v6

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Page;->panelBackground:Lio/blueflower/stapel2d/gui/Panel;

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Page$2;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v10, v5

    .line 61
    new-instance v1, Linfo/flowersoft/theotown/ui/Page$3;

    const/4 v3, 0x0

    const/16 v5, 0x22

    const/4 v2, 0x0

    move-object v6, v0

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Page$3;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v2, v0

    move-object v0, v6

    iput-object v2, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/ui/Page$4;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Page$4;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v0, v6

    .line 93
    new-instance v3, Lio/blueflower/stapel2d/gui/Panel;

    add-int/lit8 v8, v10, -0x22

    const/4 v4, 0x0

    move v6, v7

    move v7, v8

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move v4, v6

    .line 94
    new-instance v0, Linfo/flowersoft/theotown/ui/Page$5;

    add-int/lit8 v5, v10, -0x44

    const/4 v2, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Page$5;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v3, v6

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelContent:Lio/blueflower/stapel2d/gui/Panel;

    .line 100
    new-instance v0, Linfo/flowersoft/theotown/ui/Page$6;

    move v6, v4

    const/4 v4, 0x0

    const/16 v7, 0x22

    move-object v8, v3

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/Page$6;-><init>(Linfo/flowersoft/theotown/ui/Page;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 108
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 109
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelContent:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 110
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0, v9, v2, v9, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 112
    new-instance v10, Linfo/flowersoft/theotown/ui/ShadowedIcon;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v14

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v15

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v11, p3

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Linfo/flowersoft/theotown/ui/ShadowedIcon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v10, v1, Linfo/flowersoft/theotown/ui/Page;->icon:Linfo/flowersoft/theotown/ui/ShadowedIcon;

    .line 113
    new-instance v2, Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int v6, v0, v3

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v8, v1, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    const/16 v4, 0x22

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v0, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 114
    invoke-virtual {v2, v0, v3}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 115
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 116
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 118
    const-string v0, "pageTitle"

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 119
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->panelContent:Lio/blueflower/stapel2d/gui/Panel;

    const-string v2, "pageContent"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    const-string v2, "pageControl"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;
    .registers 1

    .line 18
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/Page;->onBackgroundClick:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 17

    .line 153
    new-instance v0, Linfo/flowersoft/theotown/ui/Page$7;

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_b

    move v6, v10

    goto :goto_10

    :cond_b
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/ui/Page;->getButtonWidth(Z)I

    move-result p4

    move v6, p4

    :goto_10
    iget-object p4, p0, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    if-eqz p3, :cond_20

    .line 155
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p3

    :goto_1e
    move-object v8, p3

    goto :goto_27

    :cond_20
    iget-object p3, p0, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p3

    goto :goto_1e

    :goto_27
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/Page$7;-><init>(Linfo/flowersoft/theotown/ui/Page;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 163
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-object v0
.end method

.method public free()V
    .registers 2

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->panelBackground:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public getButtonWidth(Z)I
    .registers 4

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-eqz p1, :cond_15

    mul-int/lit8 v0, v0, 0x5

    return v0

    :cond_15
    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getContentPanel()Lio/blueflower/stapel2d/gui/Panel;
    .registers 2

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->panelContent:Lio/blueflower/stapel2d/gui/Panel;

    return-object v0
.end method

.method public getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;
    .registers 2

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    return-object v0
.end method

.method public getIcon()Linfo/flowersoft/theotown/ui/ShadowedIcon;
    .registers 2

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->icon:Linfo/flowersoft/theotown/ui/ShadowedIcon;

    return-object v0
.end method

.method public getTitlePanel()Lio/blueflower/stapel2d/gui/Panel;
    .registers 2

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page;->panelTitle:Lio/blueflower/stapel2d/gui/Panel;

    return-object v0
.end method

.method public setOnBackgroundClick(Ljava/lang/Runnable;)V
    .registers 2

    .line 149
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page;->onBackgroundClick:Ljava/lang/Runnable;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass1 (info.flowersoft.theotown.ui.Page$1)
.class Linfo/flowersoft/theotown/ui/Page$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$1;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 48
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$1;->this$0:Linfo/flowersoft/theotown/ui/Page;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Page;->access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$1;->this$0:Linfo/flowersoft/theotown/ui/Page;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Page;->access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass2 (info.flowersoft.theotown.ui.Page$2)
.class public Linfo/flowersoft/theotown/ui/Page$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 58
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$2;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass3 (info.flowersoft.theotown.ui.Page$3)
.class Linfo/flowersoft/theotown/ui/Page$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 61
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$3;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 64
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass4 (info.flowersoft.theotown.ui.Page$4)
.class Linfo/flowersoft/theotown/ui/Page$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$4;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 71
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 73
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 74
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 75
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 77
    :cond_1f
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v3

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v9, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 80
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 89
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$4;->this$0:Linfo/flowersoft/theotown/ui/Page;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Page;->access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 84
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$4;->this$0:Linfo/flowersoft/theotown/ui/Page;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Page;->access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$4;->this$0:Linfo/flowersoft/theotown/ui/Page;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Page;->access$000(Linfo/flowersoft/theotown/ui/Page;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass5 (info.flowersoft.theotown.ui.Page$5)
.class Linfo/flowersoft/theotown/ui/Page$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 94
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$5;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass6 (info.flowersoft.theotown.ui.Page$6)
.class Linfo/flowersoft/theotown/ui/Page$6;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 100
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$6;->this$0:Linfo/flowersoft/theotown/ui/Page;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Page.AnonymousClass7 (info.flowersoft.theotown.ui.Page$7)
.class public Linfo/flowersoft/theotown/ui/Page$7;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Page;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Page;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Page$7;->this$0:Linfo/flowersoft/theotown/ui/Page;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/Page$7;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 158
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Page$7;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
