###### Class info.flowersoft.theotown.ui.settings.HotkeySettingsItem (info.flowersoft.theotown.ui.settings.HotkeySettingsItem)
.class public Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "HotkeySettingsItem.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;


# instance fields
.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public keyAction:Linfo/flowersoft/theotown/input/KeyAction;

.field public onChange:Ljava/lang/Runnable;

.field public final settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;


# direct methods
.method public static synthetic $r8$lambda$7-E6HJxzwllHh7uO32DdmJXx4VM(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V
    .registers 2

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    .line 85
    invoke-virtual {v0}, Linfo/flowersoft/theotown/input/KeyAction;->reset()V

    .line 86
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {p0}, Linfo/flowersoft/theotown/input/KeyActionManager;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yN8Njrqt28wkGRY35EH9yiZRmLM(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V
    .registers 2

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    .line 80
    invoke-virtual {v0}, Linfo/flowersoft/theotown/input/KeyAction;->unassign()V

    .line 81
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {p0}, Linfo/flowersoft/theotown/input/KeyActionManager;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Linfo/flowersoft/theotown/input/KeyAction;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 6

    .line 26
    invoke-virtual {p2}, Linfo/flowersoft/theotown/input/KeyAction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 28
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    .line 29
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->onChange:Ljava/lang/Runnable;

    .line 30
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

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

    .line 35
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 37
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 38
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 39
    iget-object v9, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/lit8 v1, p3, 0x5

    int-to-float v11, v1

    int-to-float v12, v4

    int-to-float v13, v5

    int-to-float v14, v6

    const/4 v15, 0x0

    const/high16 v16, 0x3f000000    # 0.5f

    invoke-virtual/range {v8 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 41
    iget-object v1, v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/input/KeyAction;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_36

    :cond_34
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    :goto_36
    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 42
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/input/KeyAction;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, p3, -0x5

    int-to-float v4, v1

    move-object v1, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v8, v1

    .line 44
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method

.method public getWidth()I
    .registers 3

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public onClick(II)V
    .registers 11

    .line 54
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 56
    new-instance v7, Linfo/flowersoft/theotown/ui/Dialog;

    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/input/KeyAction;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 57
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    .line 58
    invoke-virtual {v1}, Linfo/flowersoft/theotown/input/KeyAction;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    .line 59
    invoke-virtual {v2}, Linfo/flowersoft/theotown/input/KeyAction;->defaultToString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 60
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v7, p1, p2, v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 62
    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;

    const/4 v5, 0x0

    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;-><init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 79
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    iget-object p2, v1, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 v0, 0xd5a

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V

    invoke-virtual {v7, p1, p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 84
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    iget-object p2, v1, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    const/16 v0, 0xd6f

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V

    invoke-virtual {v7, p1, p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 p1, 0x1

    .line 89
    invoke-virtual {v7, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.HotkeySettingsItem.AnonymousClass1 (info.flowersoft.theotown.ui.settings.HotkeySettingsItem$1)
.class Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "HotkeySettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->onClick(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 67
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/16 v2, 0x100

    if-ge v1, v2, :cond_30

    .line 69
    invoke-static {v1}, Linfo/flowersoft/theotown/input/KeyAction;->isValidKey(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 70
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->keyAction:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->getActiveModifier()I

    move-result p1

    invoke-virtual {v2, v1, p1}, Linfo/flowersoft/theotown/input/KeyAction;->set(II)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 72
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {p1}, Linfo/flowersoft/theotown/input/KeyActionManager;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_30
    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->$r8$lambda$yN8Njrqt28wkGRY35EH9yiZRmLM(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;->$r8$lambda$7-E6HJxzwllHh7uO32DdmJXx4VM(Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;)V

    return-void
.end method
