###### Class info.flowersoft.theotown.store.CategoryEntry (info.flowersoft.theotown.store.CategoryEntry)
.class public Linfo/flowersoft/theotown/store/CategoryEntry;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "CategoryEntry.java"


# instance fields
.field public final actionIcon:I

.field public childIndex:I

.field public clickOnWholeThing:Z

.field public final icon:I

.field public lblCount:Lio/blueflower/stapel2d/gui/Label;

.field public lblTitle:Lio/blueflower/stapel2d/gui/Label;

.field public final onClick:Ljava/lang/Runnable;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V
    .registers 14

    .line 36
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p6

    add-int/lit8 v3, p6, -0x4

    const/16 v4, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->clickOnWholeThing:Z

    const/4 p1, 0x0

    .line 29
    iput p1, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->childIndex:I

    .line 38
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result p1

    iput p1, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->childIndex:I

    .line 40
    iput-object p2, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->title:Ljava/lang/String;

    .line 41
    iput-object p3, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->subtitle:Ljava/lang/String;

    .line 42
    iput p4, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->icon:I

    .line 43
    iput p5, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->actionIcon:I

    .line 44
    iput-object p7, v0, Linfo/flowersoft/theotown/store/CategoryEntry;->onClick:Ljava/lang/Runnable;

    .line 46
    invoke-direct {p0}, Linfo/flowersoft/theotown/store/CategoryEntry;->build()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/store/CategoryEntry;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Linfo/flowersoft/theotown/store/CategoryEntry;->clickOnWholeThing:Z

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/store/CategoryEntry;)Ljava/lang/Runnable;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/store/CategoryEntry;->onClick:Ljava/lang/Runnable;

    return-object p0
.end method

.method private build()V
    .registers 19

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/store/CategoryEntry$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v6, p0

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/store/CategoryEntry$1;-><init>(Linfo/flowersoft/theotown/store/CategoryEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setFillParent(Z)V

    .line 74
    new-instance v0, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 78
    invoke-virtual {v0, v2, v3, v3, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 80
    iget v5, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->icon:I

    if-eqz v5, :cond_40

    .line 81
    new-instance v4, Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v8

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 84
    :cond_40
    new-instance v11, Lio/blueflower/stapel2d/gui/Label;

    iget-object v12, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->title:Ljava/lang/String;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v15

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v16

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v11, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    .line 85
    invoke-virtual {v11, v3, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 87
    new-instance v4, Lio/blueflower/stapel2d/gui/Label;

    iget-object v5, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->subtitle:Ljava/lang/String;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v8

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    iget-object v10, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->lblTitle:Lio/blueflower/stapel2d/gui/Label;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v4, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->lblCount:Lio/blueflower/stapel2d/gui/Label;

    .line 88
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 89
    iget-object v2, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->lblCount:Lio/blueflower/stapel2d/gui/Label;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    iget-object v2, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->lblCount:Lio/blueflower/stapel2d/gui/Label;

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    move-object v2, v0

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/store/CategoryEntry$2;

    move-object v3, v2

    iget v2, v1, Linfo/flowersoft/theotown/store/CategoryEntry;->actionIcon:I

    .line 93
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/store/CategoryEntry$2;-><init>(Linfo/flowersoft/theotown/store/CategoryEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public setClickOnWholeThing(Z)Linfo/flowersoft/theotown/store/CategoryEntry;
    .registers 2

    .line 54
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/CategoryEntry;->clickOnWholeThing:Z

    return-object p0
.end method

###### Class info.flowersoft.theotown.store.CategoryEntry.AnonymousClass1 (info.flowersoft.theotown.store.CategoryEntry$1)
.class public Linfo/flowersoft/theotown/store/CategoryEntry$1;
.super Lio/blueflower/stapel2d/gui/Button;
.source "CategoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/CategoryEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/CategoryEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/CategoryEntry;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/store/CategoryEntry$1;->this$0:Linfo/flowersoft/theotown/store/CategoryEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 70
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/store/CategoryEntry$1;->this$0:Linfo/flowersoft/theotown/store/CategoryEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/CategoryEntry;->access$000(Linfo/flowersoft/theotown/store/CategoryEntry;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/store/CategoryEntry$1;->this$0:Linfo/flowersoft/theotown/store/CategoryEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/CategoryEntry;->access$100(Linfo/flowersoft/theotown/store/CategoryEntry;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.store.CategoryEntry.AnonymousClass2 (info.flowersoft.theotown.store.CategoryEntry$2)
.class public Linfo/flowersoft/theotown/store/CategoryEntry$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "CategoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/CategoryEntry;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/CategoryEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/CategoryEntry;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 93
    iput-object p1, p0, Linfo/flowersoft/theotown/store/CategoryEntry$2;->this$0:Linfo/flowersoft/theotown/store/CategoryEntry;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 96
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/store/CategoryEntry$2;->this$0:Linfo/flowersoft/theotown/store/CategoryEntry;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/CategoryEntry;->access$100(Linfo/flowersoft/theotown/store/CategoryEntry;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
