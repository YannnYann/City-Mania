###### Class info.flowersoft.theotown.stages.PluginErrorStage (info.flowersoft.theotown.stages.PluginErrorStage)
.class public Linfo/flowersoft/theotown/stages/PluginErrorStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "PluginErrorStage.java"


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/PluginErrorStage;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/PluginErrorStage;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .registers 3

    .line 159
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 13

    .line 49
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 51
    new-instance v8, Lio/blueflower/stapel2d/gui/Panel;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v0, 0x2

    .line 52
    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 54
    new-instance v2, Lio/blueflower/stapel2d/gui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin Error (T_T) in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 58
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 60
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v3, "Plugin Error"

    const-string v4, "Report"

    invoke-interface {v2, v3, v4, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorSource()Ljava/lang/String;

    move-result-object v10

    .line 68
    sget-object v2, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    const-string v3, "Unfortunately an error occurred while loading your plugins. Update or remove the plugin mentioned below in order to start TheoTown again. If you\'re a plugin creator you may have a deep look into your code (@.@).\n"

    if-nez v2, :cond_68

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "A side note: You should add a plugin.manifest file to your plugin so that it can be identified when used by others.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_68
    new-instance v2, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v7, v0, -0x34

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 74
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 76
    new-instance v2, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 77
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v6, v0, -0x1e

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v7

    move-object v9, v8

    const/16 v8, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v9, v2

    .line 79
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorParentFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    .line 80
    instance-of v2, v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v2, :cond_bb

    check-cast v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v0

    :goto_b9
    move-object v11, v0

    goto :goto_bd

    :cond_bb
    const/4 v0, 0x0

    goto :goto_b9

    .line 82
    :goto_bd
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginErrorStage$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x5c5

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/PluginErrorStage$1;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    move-object v9, v10

    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public onBack()V
    .registers 2

    .line 167
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->popAll()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 2

    .line 40
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 42
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->errorOccured()Z

    move-result v0

    if-nez v0, :cond_10

    .line 43
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 172
    const-string v0, "PluginErrorStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage.AnonymousClass1 (info.flowersoft.theotown.stages.PluginErrorStage$1)
.class public Linfo/flowersoft/theotown/stages/PluginErrorStage$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginErrorStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginErrorStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 82
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$1;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 85
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 86
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage.AnonymousClass2 (info.flowersoft.theotown.stages.PluginErrorStage$2)
.class public Linfo/flowersoft/theotown/stages/PluginErrorStage$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "PluginErrorStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/PluginErrorStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

.field public final synthetic val$parentFile:Ljava/io/File;

.field public final synthetic val$sourceCode:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3yIjLjAJjGCPJHNoyLGhKVhvl-M(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V
    .registers 5

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 137
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->popAll()V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Linfo/flowersoft/theotown/stages/FilesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/io/File;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$77rFikAwpZ83MXnV25RFtj0oBFI(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 3

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 133
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J2nIfQq2hFKlWQJOe_LdwHtIAFs(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 5

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 110
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ZZ)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JC0fgMba0oScYgaP7W9PvJE3QMY(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 1

    .line 151
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 151
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$VGnBIB_r9y3Gqji-Df1j3xNxZAQ(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 145
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$_y0ZOVizxs7Z2kEtDdFgxybbSzk(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 7

    .line 113
    const-string v0, "%20"

    const-string v1, "+"

    const-string v2, "UTF-8"

    .line 113
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 113
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->popAll()V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Asked]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Plugin crash ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorSourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hi, I got the following error with a plugin ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorSourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "):\n[code]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[/code]\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Device: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "OS version: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Thank you in advance."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    :try_start_ae
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://theotown.com/forum/posting.php?mode=post&f=49&subject="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage;->access$000(Linfo/flowersoft/theotown/stages/PluginErrorStage;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ae .. :try_end_dc} :catch_dd

    return-void

    :catch_dd
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$geZULnA4aVb9gzuQFKLZCw1Q7mU(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 5

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    .line 98
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->popAll()V

    .line 100
    :try_start_9
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://jsonlint.com/?json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getErrorSource()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage;->access$000(Linfo/flowersoft/theotown/stages/PluginErrorStage;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Ljava/io/File;)V
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

    .line 90
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$sourceCode:Ljava/lang/String;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$parentFile:Ljava/io/File;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 93
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 94
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 96
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$sourceCode:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 97
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x14

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 109
    :cond_20
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLICE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x739

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 112
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MEDIC:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc91

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 132
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa2b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 135
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$parentFile:Ljava/io/File;

    if-eqz v1, :cond_76

    .line 136
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb09

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$parentFile:Ljava/io/File;

    new-instance v4, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v3}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 142
    :cond_76
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$parentFile:Ljava/io/File;

    if-eqz v1, :cond_90

    .line 143
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x435

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->val$parentFile:Ljava/io/File;

    new-instance v4, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v3}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 149
    :cond_90
    const-string v1, "$anim_store_restart00"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 150
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->this$0:Linfo/flowersoft/theotown/stages/PluginErrorStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x809

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 153
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$geZULnA4aVb9gzuQFKLZCw1Q7mU(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$J2nIfQq2hFKlWQJOe_LdwHtIAFs(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$_y0ZOVizxs7Z2kEtDdFgxybbSzk(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$77rFikAwpZ83MXnV25RFtj0oBFI(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda4;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$3yIjLjAJjGCPJHNoyLGhKVhvl-M(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda5;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$VGnBIB_r9y3Gqji-Df1j3xNxZAQ(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.PluginErrorStage$2$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/PluginErrorStage$2$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/PluginErrorStage$2;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/PluginErrorStage$2;->$r8$lambda$JC0fgMba0oScYgaP7W9PvJE3QMY(Linfo/flowersoft/theotown/stages/PluginErrorStage$2;)V

    return-void
.end method
