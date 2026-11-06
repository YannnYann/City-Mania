###### Class info.flowersoft.theotown.ui.Dialog (info.flowersoft.theotown.ui.Dialog)
.class public Linfo/flowersoft/theotown/ui/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/Dialog$Background;
    }
.end annotation


# static fields
.field public static final KEY_FILTER:[I


# instance fields
.field public background:Linfo/flowersoft/theotown/ui/Dialog$Background;

.field public canCloseViaBackground:Z

.field public cancelButton:Lio/blueflower/stapel2d/gui/Button;

.field public contentPane:Lio/blueflower/stapel2d/gui/Panel;

.field public drawBackground:Z

.field public icon:Lio/blueflower/stapel2d/gui/Icon;

.field public lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public lblTitle:Lio/blueflower/stapel2d/gui/Label;

.field public lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

.field public needsBackground:Z

.field public onClose:Ljava/lang/Runnable;

.field public showTime:J

.field public window:Lio/blueflower/stapel2d/gui/Panel;

.field public windowNP:I


# direct methods
.method public static synthetic $r8$lambda$o7PClk1-CaM7kehFY0BxRS9Qzac()V
    .registers 0

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x6f

    .line 33
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/Dialog;->KEY_FILTER:[I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
    .registers 24

    move-object/from16 v1, p0

    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x1

    .line 65
    iput-boolean v9, v1, Linfo/flowersoft/theotown/ui/Dialog;->canCloseViaBackground:Z

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog$Background;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    const/4 v8, 0x0

    .line 75
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/Dialog$Background;->setVisible(Z)V

    .line 77
    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    move/from16 v2, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 78
    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    move/from16 v2, p5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 80
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$1;

    .line 81
    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v7, 0x2

    div-int/2addr v2, v7

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/2addr v3, v7

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog$1;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    .line 106
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 108
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    iput v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->windowNP:I

    .line 122
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$2;

    const/16 v6, 0x1e

    iget-object v7, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    move/from16 v2, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/Dialog$2;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    if-nez p1, :cond_7d

    move v12, v8

    goto :goto_7e

    :cond_7d
    move v12, v5

    .line 136
    :goto_7e
    new-instance v10, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    sub-int/2addr v0, v12

    add-int/lit8 v14, v0, -0x1e

    const/16 v15, 0x1e

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v13, 0x0

    move-object/from16 v11, p2

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v10, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    .line 137
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 138
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Label;->setScaleToFitWidth(Z)V

    .line 139
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 140
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 142
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$3;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    const/16 v5, 0x1e

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog$3;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 171
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$4;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/lit8 v5, v2, -0x40

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog$4;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 177
    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 179
    new-instance v10, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v14

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v15

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v12, 0x0

    move-object/from16 v11, p3

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v10, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    const/4 v0, 0x0

    .line 180
    invoke-virtual {v10, v0, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setAlignment(FF)V

    .line 181
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 183
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$5;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/lit8 v5, v2, -0x22

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    const/16 v7, 0x22

    iget-object v8, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/Dialog$5;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 189
    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 12

    const/16 v4, 0x12c

    const/16 v5, 0xa0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 70
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/Dialog;)I
    .registers 1

    .line 31
    iget p0, p0, Linfo/flowersoft/theotown/ui/Dialog;->windowNP:I

    return p0
.end method

.method public static synthetic access$100()[I
    .registers 1

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/ui/Dialog;->KEY_FILTER:[I

    return-object v0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/ui/Dialog;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->needsBackground:Z

    return p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/Dialog;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Linfo/flowersoft/theotown/ui/Dialog;->drawBackground:Z

    return p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/Dialog;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Linfo/flowersoft/theotown/ui/Dialog;->canCloseViaBackground:Z

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/ui/Dialog;)Ljava/lang/Runnable;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/Dialog;->onClose:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public abuseFor(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 418
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 419
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->addChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 420
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 421
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v2

    add-int/2addr p1, v2

    .line 420
    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 422
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    .line 423
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 422
    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 426
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p1

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    iput p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->windowNP:I

    const/4 p1, 0x1

    .line 428
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 5

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, p2, v0, p3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 333
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    return-object p1
.end method

.method public addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 18

    .line 387
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    if-eqz p5, :cond_a

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    :goto_8
    move-object v8, v0

    goto :goto_f

    :cond_a
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    goto :goto_8

    .line 388
    :goto_f
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$8;

    .line 389
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v9, p4

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/Dialog$8;-><init>(Linfo/flowersoft/theotown/ui/Dialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLjava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 400
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz p3, :cond_2c

    .line 403
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    :cond_2c
    return-object v0
.end method

.method public addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 13

    .line 317
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$7;

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Linfo/flowersoft/theotown/ui/Dialog;->getButtonWidth(Z)I

    move-result v6

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/Dialog$7;-><init>(Linfo/flowersoft/theotown/ui/Dialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    .line 324
    check-cast v0, Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    invoke-virtual {p1, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 325
    iget-object p1, v1, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    check-cast p1, Linfo/flowersoft/theotown/ui/GoldButton;

    return-object p1
.end method

.method public addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;
    .registers 2

    .line 296
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/Dialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    move-result-object v0

    return-object v0
.end method

.method public addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;
    .registers 10

    .line 301
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog$6;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/Dialog$6;-><init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    return-object v0
.end method

.method public cancel()V
    .registers 2

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    if-eqz v0, :cond_7

    .line 283
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->click()V

    :cond_7
    return-void
.end method

.method public clearButtons()V
    .registers 2

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    .line 411
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 412
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getSecondPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 413
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    return-void
.end method

.method public distributeButtons()V
    .registers 12

    .line 337
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 338
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 339
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getSecondPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 340
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_19
    const/4 v4, 0x3

    if-ge v2, v4, :cond_a1

    .line 344
    aget-object v4, v0, v2

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 346
    :goto_24
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v7

    if-ge v6, v7, :cond_4f

    .line 347
    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    .line 348
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_4c

    .line 350
    :cond_35
    instance-of v8, v7, Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v8, :cond_49

    .line 351
    move-object v8, v7

    check-cast v8, Linfo/flowersoft/theotown/ui/IconButton;

    const v9, 0x7fffffff

    .line 353
    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 354
    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 356
    :cond_49
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 358
    :cond_4f
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_56

    goto :goto_9d

    .line 361
    :cond_56
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 362
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 363
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/LineLayout;->getSpace()I

    move-result v4

    mul-int/2addr v6, v4

    sub-int/2addr v3, v6

    .line 364
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 368
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    .line 369
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v3, v6

    move v6, v1

    .line 370
    :goto_7a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_9c

    .line 371
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/blueflower/stapel2d/gui/Gadget;

    if-ge v6, v3, :cond_8a

    move v9, v7

    goto :goto_8b

    :cond_8a
    move v9, v1

    :goto_8b
    add-int/2addr v9, v4

    .line 373
    instance-of v10, v8, Linfo/flowersoft/theotown/ui/IconButton;

    if-eqz v10, :cond_96

    .line 374
    move-object v10, v8

    check-cast v10, Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v10, v9}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 376
    :cond_96
    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    :cond_9c
    move v3, v7

    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19

    :cond_a1
    if-eqz v3, :cond_a8

    .line 380
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    :cond_a8
    return-void
.end method

.method public free()V
    .registers 3

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog$Background;->free()V

    :cond_1a
    return-void
.end method

.method public getButtonWidth(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x3c

    return p1
.end method

.method public getCancelButton()Lio/blueflower/stapel2d/gui/Button;
    .registers 2

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    return-object v0
.end method

.method public getContentPane()Lio/blueflower/stapel2d/gui/Panel;
    .registers 2

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    return-object v0
.end method

.method public getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;
    .registers 2

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIcon()I
    .registers 2

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Icon;->getFrame()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
    .registers 2

    .line 479
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleLabel()Lio/blueflower/stapel2d/gui/Label;
    .registers 2

    .line 475
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Lio/blueflower/stapel2d/gui/Panel;
    .registers 2

    .line 432
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    return-object v0
.end method

.method public isCanCloseViaBackground()Z
    .registers 2

    .line 197
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->canCloseViaBackground:Z

    return v0
.end method

.method public isCloseButtonVisible()Z
    .registers 2

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawBackground()Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->drawBackground:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 436
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public needsBackground()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->needsBackground:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->drawBackground:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public onCleanup()V
    .registers 1

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public redrawBackground()V
    .registers 3

    .line 490
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz v0, :cond_e

    .line 491
    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->release()V

    .line 492
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    const/4 v1, 0x0

    iput-object v1, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    :cond_e
    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->needsBackground:Z

    return-void
.end method

.method public removeControlLine()V
    .registers 5

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 239
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 241
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    sub-int/2addr v1, v2

    .line 242
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    .line 241
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public setCanCloseViaBackground(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->canCloseViaBackground:Z

    return-void
.end method

.method public setCancelButton(Lio/blueflower/stapel2d/gui/Button;)V
    .registers 2

    .line 278
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

.method public setDrawBackground(Z)V
    .registers 2

    .line 440
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->drawBackground:Z

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->icon:Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .registers 2

    .line 615
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->onClose:Ljava/lang/Runnable;

    return-void
.end method

.method public setSize(II)V
    .registers 7

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    .line 221
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 222
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 223
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 224
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 226
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 227
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lineControl:Lio/blueflower/stapel2d/gui/ElementLine;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/16 v1, 0x22

    sub-int/2addr v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0, v2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setShape(IIII)V

    .line 228
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    invoke-virtual {p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    goto :goto_79

    .line 231
    :cond_5c
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    sub-int/2addr p2, v0

    .line 232
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 231
    invoke-virtual {p1, p2, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 234
    :goto_79
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblText:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    return-void
.end method

.method public setVisible(ZZ)V
    .registers 6

    if-eqz p1, :cond_8

    .line 453
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    goto :goto_24

    .line 455
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 457
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_24

    .line 458
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    .line 463
    :cond_24
    :goto_24
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_36

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/ui/Dialog;->showTime:J

    .line 467
    :cond_36
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->background:Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/ui/Dialog$Background;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass1 (info.flowersoft.theotown.ui.Dialog$1)
.class Linfo/flowersoft/theotown/ui/Dialog$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 83
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$1;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 12

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/Dialog$1;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-wide v2, v2, Linfo/flowersoft/theotown/ui/Dialog;->showTime:J

    sub-long/2addr v0, v2

    .line 93
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_41

    const-wide/16 v3, 0x64

    cmp-long v3, v0, v3

    if-gez v3, :cond_41

    .line 94
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->uiAnimations:Z

    if-eqz v3, :cond_41

    int-to-long v3, p2

    long-to-double v5, v0

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    .line 95
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    mul-double/2addr v5, v7

    sub-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int p2, v3

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0xff

    .line 96
    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_41
    add-int/lit8 v1, p1, -0x9

    add-int/lit8 v2, p2, -0x9

    .line 100
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/lit8 v4, v0, 0x14

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v5, v0, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 102
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/Dialog$1;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/Dialog;->access$000(Linfo/flowersoft/theotown/ui/Dialog;)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 86
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$1;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass2 (info.flowersoft.theotown.ui.Dialog$2)
.class Linfo/flowersoft/theotown/ui/Dialog$2;
.super Lio/blueflower/stapel2d/gui/Icon;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 122
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$2;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 125
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 126
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 127
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 129
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    const/high16 v2, 0x41d00000    # 26.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1d

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 130
    :cond_1d
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Lio/blueflower/stapel2d/gui/Icon;->frame:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 131
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass3 (info.flowersoft.theotown.ui.Dialog$3)
.class Linfo/flowersoft/theotown/ui/Dialog$3;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$3;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 145
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 147
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 148
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 149
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 151
    :cond_1f
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v5, p1

    int-to-float v5, v5

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float v6, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v7, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v8, p1

    const/high16 v10, 0x3f000000    # 0.5f

    iget v11, v2, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 155
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$3;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isCloseButtonVisible()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$3;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    if-eqz v0, :cond_9

    .line 161
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->click()V

    :cond_9
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass4 (info.flowersoft.theotown.ui.Dialog$4)
.class Linfo/flowersoft/theotown/ui/Dialog$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 171
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$4;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 174
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass5 (info.flowersoft.theotown.ui.Dialog$5)
.class Linfo/flowersoft/theotown/ui/Dialog$5;
.super Lio/blueflower/stapel2d/gui/ElementLine;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 183
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$5;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 186
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass6 (info.flowersoft.theotown.ui.Dialog$6)
.class Linfo/flowersoft/theotown/ui/Dialog$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$6;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/Dialog$6;->val$runnable:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onClick()V
    .registers 3

    .line 304
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 305
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$6;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$6;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass7 (info.flowersoft.theotown.ui.Dialog$7)
.class public Linfo/flowersoft/theotown/ui/Dialog$7;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 317
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$7;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 320
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$7;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.AnonymousClass8 (info.flowersoft.theotown.ui.Dialog$8)
.class public Linfo/flowersoft/theotown/ui/Dialog$8;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$closeDialog:Z

.field public final synthetic val$run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLjava/lang/Runnable;)V
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

    .line 389
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-boolean p9, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->val$closeDialog:Z

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->val$run:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 392
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 393
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->val$closeDialog:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 394
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$8;->val$run:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 395
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.ui.Dialog.Background (info.flowersoft.theotown.ui.Dialog$Background)
.class public Linfo/flowersoft/theotown/ui/Dialog$Background;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Background"
.end annotation


# instance fields
.field public blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 500
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    .line 501
    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 514
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_25

    .line 516
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    if-le v0, v2, :cond_25

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 517
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-nez v0, :cond_25

    .line 518
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    return-void

    .line 522
    :cond_25
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 524
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz v0, :cond_7c

    .line 525
    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 526
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->endFilling()V

    .line 527
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->iterate()V

    .line 529
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 530
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 531
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 532
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 533
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 534
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 535
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v4

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 536
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->access$202(Linfo/flowersoft/theotown/ui/Dialog;Z)Z

    goto :goto_7c

    .line 538
    :cond_6f
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->release()V

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    .line 540
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->access$202(Linfo/flowersoft/theotown/ui/Dialog;Z)Z

    .line 545
    :cond_7c
    :goto_7c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-nez v0, :cond_de

    .line 546
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0x32

    .line 547
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 548
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v1

    int-to-float v8, v1

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 549
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0xff

    .line 550
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 552
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 554
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/Dialog;->access$300(Linfo/flowersoft/theotown/ui/Dialog;)Z

    move-result p1

    if-nez p1, :cond_dd

    .line 555
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->access$202(Linfo/flowersoft/theotown/ui/Dialog;Z)Z

    .line 556
    new-instance p1, Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-direct {p1, v3}, Linfo/flowersoft/theotown/drawing/BlurScreen;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    .line 557
    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->prepare()V

    .line 558
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->beginFilling()V

    .line 560
    :try_start_c6
    invoke-virtual {v3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_c9} :catch_ca

    return-void

    :catch_ca
    move-exception v0

    move-object p1, v0

    .line 562
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 563
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v0, "Clear"

    invoke-interface {p2, v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 564
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz p1, :cond_dd

    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->endFilling()V

    :cond_dd
    return-void

    .line 568
    :cond_de
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public free()V
    .registers 2

    .line 597
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->onCleanup()V

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog$Background;->setVisible(Z)V

    .line 599
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    return-void
.end method

.method public getDialog()Linfo/flowersoft/theotown/ui/Dialog;
    .registers 2

    .line 610
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    return-object v0
.end method

.method public onClick()V
    .registers 2

    .line 574
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 575
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/Dialog;->access$400(Linfo/flowersoft/theotown/ui/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/Dialog;->cancelButton:Lio/blueflower/stapel2d/gui/Button;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->click()V

    :cond_14
    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 580
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->visible:Z

    if-eq p1, v0, :cond_30

    .line 581
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    if-nez p1, :cond_2a

    .line 583
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz p1, :cond_18

    .line 584
    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->endFilling()V

    .line 585
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->release()V

    const/4 p1, 0x0

    .line 586
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    .line 588
    :cond_18
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/Dialog;->access$500(Linfo/flowersoft/theotown/ui/Dialog;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/Dialog;->access$500(Linfo/flowersoft/theotown/ui/Dialog;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 590
    :cond_2a
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->access$202(Linfo/flowersoft/theotown/ui/Dialog;Z)Z

    :cond_30
    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 3

    .line 506
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/Dialog$Background;->this$0:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 507
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 508
    invoke-static {}, Linfo/flowersoft/theotown/ui/Dialog;->access$100()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->filteredFlush([I)V

    :cond_12
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 3

    .line 604
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 605
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.Dialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.Dialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/Dialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/Dialog;->$r8$lambda$o7PClk1-CaM7kehFY0BxRS9Qzac()V

    return-void
.end method
