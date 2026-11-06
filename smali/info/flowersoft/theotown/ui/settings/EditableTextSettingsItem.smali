###### Class info.flowersoft.theotown.ui.settings.EditableTextSettingsItem (info.flowersoft.theotown.ui.settings.EditableTextSettingsItem)
.class public Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;
.super Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.source "EditableTextSettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final caption:Ljava/lang/String;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 16

    .line 21
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    .line 23
    :try_start_f
    iget-object p1, v1, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p3, p1, p4
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v0

    move-object p1, v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_22
    iput-object p7, v1, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 28
    iput-object p2, v1, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->caption:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$001(Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;II)V
    .registers 3

    .line 15
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->onClick(II)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 33
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 35
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 36
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 39
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v2, p3, 0x5

    rsub-int/lit8 v1, v1, 0x14

    .line 41
    div-int/lit8 v1, v1, 0x2

    add-int v1, p4, v1

    .line 42
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 43
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v2, v2

    int-to-float v12, v1

    invoke-virtual {v8, v9, v3, v2, v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 44
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 45
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0xa4b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    add-int v2, p3, p5

    add-int/lit8 v2, v2, -0x6

    int-to-float v11, v2

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 v1, v1, 0x14

    .line 48
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 49
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    int-to-float v5, v1

    move-object v1, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, v9

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v11

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v8, v1

    .line 51
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 56
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p1, 0x14

    return p1

    :cond_10
    const/16 p1, 0x28

    return p1
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const v0, 0x7fffffff

    return v0
.end method

.method public onChange()V
    .registers 1

    .line 0
    return-void
.end method

.method public onClick(II)V
    .registers 7

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 62
    new-instance v1, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;-><init>(Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;II)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    const/16 p2, 0xd80

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 71
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object p2, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->caption:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, p1, p2, v1, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.EditableTextSettingsItem.AnonymousClass1 (info.flowersoft.theotown.ui.settings.EditableTextSettingsItem$1)
.class Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;
.super Ljava/lang/Object;
.source "EditableTextSettingsItem.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->onClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;II)V
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

    .line 62
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;

    iput p2, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->val$x:I

    iput p3, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 5

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 66
    iget p1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->val$x:I

    iget v1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->val$y:I

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->access$001(Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;II)V

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;->onChange()V

    return-void
.end method
