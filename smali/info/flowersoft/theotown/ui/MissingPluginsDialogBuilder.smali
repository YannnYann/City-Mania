###### Class info.flowersoft.theotown.ui.MissingPluginsDialogBuilder (info.flowersoft.theotown.ui.MissingPluginsDialogBuilder)
.class public Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;
.super Ljava/lang/Object;
.source "MissingPluginsDialogBuilder.java"


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 31
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 32
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 33
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method


# virtual methods
.method public showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    new-instance v2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x383

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v4, v3

    .line 43
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v4, v5, :cond_55

    .line 44
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    if-lez v4, :cond_33

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_33
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0x214

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getAuthor()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 46
    invoke-static {v6, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 49
    :cond_55
    :goto_55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_88

    .line 50
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-lez v3, :cond_66

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_66
    iget-object v7, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0xbc0

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getAuthor()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 52
    invoke-static {v7, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 57
    :cond_88
    new-instance v9, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x539

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v9, v2, v3, v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x7b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;-><init>(Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/util/List;)V

    const/16 v2, 0x42

    .line 66
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    :cond_cc
    if-eqz p3, :cond_f2

    .line 70
    new-instance v0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x1b6

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;-><init>(Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V

    .line 80
    :cond_f2
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 81
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public showPluginsWindow(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 86
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    if-eqz p2, :cond_13

    .line 88
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x539

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1b

    .line 89
    :cond_13
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x90e

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 87
    :goto_1b
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/store/StoreStage;->planToShowMissingPlugins(Ljava/util/List;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MissingPluginsDialogBuilder.AnonymousClass1 (info.flowersoft.theotown.ui.MissingPluginsDialogBuilder$1)
.class public Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "MissingPluginsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$missingPlugins:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/util/List;)V
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

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->val$missingPlugins:Ljava/util/List;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 62
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->this$0:Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$1;->val$missingPlugins:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showPluginsWindow(Ljava/util/List;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.MissingPluginsDialogBuilder.AnonymousClass2 (info.flowersoft.theotown.ui.MissingPluginsDialogBuilder$2)
.class public Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "MissingPluginsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showMissingPluginsDialog(Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$onIgnore:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Runnable;)V
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

    .line 70
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;->this$0:Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;->val$onIgnore:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 73
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder$2;->val$onIgnore:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
