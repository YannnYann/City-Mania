###### Class info.flowersoft.theotown.ui.selectable.SelectableSign (info.flowersoft.theotown.ui.selectable.SelectableSign)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableSign;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableSign.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 42
    new-instance p1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 43
    const-string v0, "sign_tool"

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->getOptionBuilder(Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)Ljava/lang/String;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->getSignText(Linfo/flowersoft/theotown/city/objects/Sign;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->applySignText(Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->buildOptions(Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method


# virtual methods
.method public final applySignText(Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V
    .registers 8

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3b

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3b

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_3b

    const/4 v3, 0x1

    .line 139
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/util/Hex;->hex2bin(Ljava/lang/String;)[B

    move-result-object v2

    .line 140
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v0, v3, v2}, Linfo/flowersoft/theotown/city/objects/Sign;->setColor(III)V

    .line 141
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Sign;->setText(Ljava/lang/String;)V

    return-void

    .line 143
    :cond_3b
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Sign;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public final buildOptions(Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 28

    .line 157
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    .line 158
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 160
    new-instance v14, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$3;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    .line 161
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    sub-int v5, v1, v0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$3;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 168
    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 169
    new-instance v7, Lio/blueflower/stapel2d/gui/ElementLine;

    const/4 v11, 0x0

    .line 170
    invoke-virtual {v14}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v12

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v13, v19

    invoke-direct/range {v7 .. v14}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 172
    sget-object v0, Linfo/flowersoft/theotown/resources/SignStyleProvider;->FONTS:[Lio/blueflower/stapel2d/drawing/Font;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move/from16 v23, v0

    :goto_54
    if-ltz v23, :cond_7c

    .line 173
    sget-object v0, Linfo/flowersoft/theotown/resources/SignStyleProvider;->FONTS:[Lio/blueflower/stapel2d/drawing/Font;

    aget-object v0, v0, v23

    .line 175
    new-instance v15, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;

    const/16 v18, 0x0

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v21

    const/16 v17, 0x0

    move/from16 v20, v19

    move-object/from16 v16, p0

    move-object/from16 v22, p1

    invoke-direct/range {v15 .. v23}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;I)V

    .line 187
    const-string v1, "A"

    invoke-virtual {v15, v1}, Lio/blueflower/stapel2d/gui/Button;->setText(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Button;->getTextLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    add-int/lit8 v23, v23, -0x1

    goto :goto_54

    :cond_7c
    const/4 v0, 0x0

    .line 191
    :goto_7d
    sget-object v1, Linfo/flowersoft/theotown/resources/SignStyleProvider;->COLORS:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v2, v1

    if-ge v0, v2, :cond_9c

    .line 192
    aget-object v24, v1, v0

    .line 194
    new-instance v15, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;

    const/16 v18, 0x0

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v21

    const/16 v17, 0x0

    move/from16 v20, v19

    move-object/from16 v16, p0

    move-object/from16 v22, p1

    move/from16 v23, v0

    invoke-direct/range {v15 .. v24}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;ILio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v0, v23, 0x1

    goto :goto_7d

    :cond_9c
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public final getOptionBuilder(Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/objects/Sign;",
            ")",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)V

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 232
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 237
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    return v0
.end method

.method public final getSignText(Linfo/flowersoft/theotown/city/objects/Sign;)Ljava/lang/String;
    .registers 8

    .line 126
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Sign;->getText()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Sign;->getColorIndex()I

    move-result v1

    if-gez v1, :cond_47

    .line 128
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Sign;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    int-to-byte v2, v2

    .line 131
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    int-to-byte v3, v3

    .line 132
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v2, v4, v5

    const/4 v2, 0x1

    aput-byte v3, v4, v2

    const/4 v2, 0x2

    aput-byte p1, v4, v2

    .line 129
    invoke-static {v4}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_47
    return-object v0
.end method

.method public select()V
    .registers 5

    .line 48
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 52
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/tools/SignTool;

    new-instance v3, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Lio/blueflower/stapel2d/gamestack/Translator;)V

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/tools/SignTool;-><init>(Linfo/flowersoft/theotown/tools/SignTool$SignEditor;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableSign$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;
.super Ljava/lang/Object;
.source "SelectableSign.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/SignTool$SignEditor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->select()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$WfVzKw4JH3VEgbINw7RtbENXh7U(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V
    .registers 4

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    .line 75
    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$200(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0x12

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultSigns;->addSign(Linfo/flowersoft/theotown/city/objects/Sign;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g6EvB4BdOoJXyjbv-EFAkhM68_0(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V
    .registers 3

    .line 93
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    .line 93
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$200(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Lio/blueflower/stapel2d/gamestack/Translator;)V
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

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public editSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
    .registers 14

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    sget-object v4, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/16 v2, 0x154

    .line 91
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setWidth(I)V

    .line 92
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->getFilter()Lio/blueflower/stapel2d/util/Predicate;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 93
    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 94
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$000(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnBuild(Lio/blueflower/stapel2d/util/Setter;)V

    .line 96
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd00

    .line 97
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x58

    .line 98
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    .line 99
    invoke-static {v5, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$100(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v0, v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v10

    .line 102
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v11, 0x0

    move v0, v11

    .line 103
    :goto_58
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v2

    if-ge v0, v2, :cond_68

    .line 104
    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    invoke-virtual {v2, v11}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 107
    :cond_68
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xfd

    .line 108
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 109
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 117
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->setChildIndex(I)V

    .line 119
    invoke-virtual {v10}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    const/4 v0, 0x1

    .line 120
    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final getFilter()Lio/blueflower/stapel2d/util/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;)V

    return-object v0
.end method

.method public final getMaster()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    return-object v0
.end method

.method public newSign(FF)V
    .registers 9

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/city/objects/Sign;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/city/objects/Sign;-><init>(Ljava/lang/String;FFII)V

    .line 71
    new-instance p1, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p2

    sget-object v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/16 p2, 0x154

    .line 72
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setWidth(I)V

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->getFilter()Lio/blueflower/stapel2d/util/Predicate;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 74
    new-instance p2, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 78
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    invoke-static {p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$000(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnBuild(Lio/blueflower/stapel2d/util/Setter;)V

    .line 80
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_SIGN:I

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x1bf

    .line 81
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xb43

    .line 82
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p1, p2, v0, v1, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 85
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass1.C10981 (info.flowersoft.theotown.ui.selectable.SelectableSign$1$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$1;
.super Ljava/lang/Object;
.source "SelectableSign.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->getFilter()Lio/blueflower/stapel2d/util/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Predicate<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$1;->this$1:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 59
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$1;->apply(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/lang/String;)Z
    .registers 2

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass1.AnonymousClass2 (info.flowersoft.theotown.ui.selectable.SelectableSign$1$2)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "SelectableSign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->editSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$sign:Linfo/flowersoft/theotown/city/objects/Sign;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->this$1:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 113
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->this$1:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSigns;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultSigns;->removeSign(Linfo/flowersoft/theotown/city/objects/Sign;)V

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/objects/Sign;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/objects/Sign;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/objects/Sign;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->$r8$lambda$WfVzKw4JH3VEgbINw7RtbENXh7U(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.selectable.SelectableSign$1$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/objects/Sign;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/objects/Sign;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/objects/Sign;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;->$r8$lambda$g6EvB4BdOoJXyjbv-EFAkhM68_0(Linfo/flowersoft/theotown/ui/selectable/SelectableSign$1;Linfo/flowersoft/theotown/city/objects/Sign;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass2 (info.flowersoft.theotown.ui.selectable.SelectableSign$2)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;
.super Ljava/lang/Object;
.source "SelectableSign.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->getOptionBuilder(Linfo/flowersoft/theotown/city/objects/Sign;)Lio/blueflower/stapel2d/util/Setter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Linfo/flowersoft/theotown/ui/Dialog;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

.field public final synthetic val$sign:Linfo/flowersoft/theotown/city/objects/Sign;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;)V
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

    .line 148
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->access$300(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V

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

    .line 148
    check-cast p1, Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$2;->set(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass3 (info.flowersoft.theotown.ui.selectable.SelectableSign$3)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableSign$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "SelectableSign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->buildOptions(Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 164
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass4 (info.flowersoft.theotown.ui.selectable.SelectableSign$4)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SelectableSign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->buildOptions(Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

.field public final synthetic val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

.field public final synthetic val$size:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;I)V
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

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    iput p8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$size:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 3

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Sign;->getSize()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$size:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 183
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$4;->val$size:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Sign;->setSize(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableSign.AnonymousClass5 (info.flowersoft.theotown.ui.selectable.SelectableSign$5)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;
.super Lio/blueflower/stapel2d/gui/Button;
.source "SelectableSign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableSign;->buildOptions(Linfo/flowersoft/theotown/city/objects/Sign;Linfo/flowersoft/theotown/ui/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

.field public final synthetic val$color:Lio/blueflower/stapel2d/drawing/Color;

.field public final synthetic val$colorIndex:I

.field public final synthetic val$sign:Linfo/flowersoft/theotown/city/objects/Sign;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableSign;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/city/objects/Sign;ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableSign;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    iput p8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$colorIndex:I

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$color:Lio/blueflower/stapel2d/drawing/Color;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 208
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->draw(II)V

    .line 210
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 212
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x4

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 p1, p1, -0x8

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 p1, p1, -0x8

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 213
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public isPressed()Z
    .registers 3

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Sign;->getColorIndex()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$colorIndex:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 202
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 203
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$sign:Linfo/flowersoft/theotown/city/objects/Sign;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableSign$5;->val$colorIndex:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Sign;->setColor(I)V

    return-void
.end method
