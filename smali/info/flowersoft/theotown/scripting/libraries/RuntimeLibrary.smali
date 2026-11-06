###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "RuntimeLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$LuajavaLibFixed;
    }
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public gui:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 73
    const-string v0, "libs/Runtime.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 75
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 66
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 66
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Linfo/flowersoft/theotown/scripting/Script;)Ljava/lang/String;
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->getPluginName(Linfo/flowersoft/theotown/scripting/Script;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 1

    .line 66
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/lang/String;)V
    .registers 2

    .line 66
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static readPath(Lvm2/LuaValue;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 5

    .line 666
    invoke-virtual {p0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 667
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 669
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 671
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_38

    .line 672
    :cond_24
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    :cond_38
    if-eqz v1, :cond_40

    .line 675
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_6e

    :cond_40
    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v2, :cond_6e

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    if-eqz v2, :cond_6e

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    instance-of v2, v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v2, :cond_6e

    .line 676
    check-cast v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 677
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/util/vfs/RealFile;->parse(Ljava/io/File;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v1

    .line 679
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v0

    .line 680
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    return-object p0

    :cond_6e
    return-object v1
.end method


# virtual methods
.method public final getPluginName(Linfo/flowersoft/theotown/scripting/Script;)Ljava/lang/String;
    .registers 5

    .line 694
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    if-nez v0, :cond_f

    .line 696
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getParent()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 699
    :cond_f
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v2, ""

    invoke-direct {p1, v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 700
    iget v1, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v1, :cond_31

    .line 702
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v1

    iget v2, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 705
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 709
    :cond_31
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz v1, :cond_3e

    .line 710
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 713
    :cond_3e
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz p1, :cond_47

    .line 714
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 717
    :cond_47
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object p1
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 8

    .line 84
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getName"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 91
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getVersion"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 98
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getVersionCode"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 105
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getId"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 112
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "isDebug"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 119
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getTime"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 126
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getDate"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 143
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "fromJson"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 157
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$9;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "toJson"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 170
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$10;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getUuid"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 177
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "setClipboard"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 185
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$12;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getClipboard"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 193
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$13;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "loadText"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 214
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$14;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "saveText"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 236
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "downloadText"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 282
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "openURL"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 325
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "postpone"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 357
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$18;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getOSVersion"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 364
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$19;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getPlatform"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 386
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$20;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "isPremium"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 393
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$21;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "isPickle"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 400
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$22;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getModel"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 411
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$23;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getStage"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 417
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$24;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "getStageName"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 423
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$25;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "pushStage"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 431
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$26;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "popStage"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 441
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p2

    .line 442
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 443
    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-string v2, "loaded"

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 444
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$LuajavaLibFixed;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$LuajavaLibFixed;-><init>()V

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lvm2/lib/VarArgFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 446
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;

    invoke-direct {v0, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V

    const-string v2, "java"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 461
    const-string v2, "info.flowersoft.theotown.input.KeyAction"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v2, "info.flowersoft.theotown.input.KeyActionManager"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 463
    const-string v2, "info.flowersoft.theotown.ui.selectable.SelectableEyedropper"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v2, "io.blueflower.stapel2d.gui.GUICache"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v2, "info.flowersoft.theotown.resources.MusicBox"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;

    invoke-direct {v2, p0, v0, p2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/util/HashSet;Lvm2/LuaValue;)V

    const-string p2, "javaClass"

    invoke-virtual {p1, p2, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 481
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$29;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "isPrivileged"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 488
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$30;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "precompile"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 496
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$31;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string v0, "runProtected"

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 518
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p2

    .line 519
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;

    invoke-direct {v0, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/Globals;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    .line 556
    invoke-virtual {p3, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, "searchers"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 558
    const-string p2, "require"

    invoke-virtual {p3, p2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 559
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V

    invoke-virtual {p3, p2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 570
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    .line 572
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;

    invoke-direct {v0, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V

    const-string p2, "require_relative"

    invoke-virtual {p3, p2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 587
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$35;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "getEnvPath"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 627
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$36;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "getStackTrace"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 634
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$37;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "throw"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 641
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$38;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "md5"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 648
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$39;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "sha256"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 655
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$40;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$40;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V

    const-string p3, "getToken"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public updateGui(Lio/blueflower/stapel2d/gui/Master;)V
    .registers 2

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$1;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$10;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 173
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$11;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 180
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p1}, Linfo/flowersoft/theotown/util/OSUtil;->pasteIntoClipboard(Ljava/lang/String;)V

    .line 182
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$12;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 188
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-string v0, "getClipboard"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object p1

    invoke-interface {p1}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$13;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 196
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->readPath(Lvm2/LuaValue;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 198
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 201
    :try_start_c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1a
    if-eqz p1, :cond_21

    .line 206
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 210
    :cond_21
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$14;
.super Lvm2/lib/TwoArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 217
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p2

    .line 221
    :try_start_8
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 222
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 223
    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v2, :cond_3b

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    if-eqz v2, :cond_3b

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    instance-of v2, v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v2, :cond_3b

    .line 224
    check-cast v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 225
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/vfs/RealFile;->createDirectory(Ljava/io/File;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v1

    .line 228
    :cond_3b
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->newFile(Ljava/lang/String;Ljava/io/InputStream;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 229
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4b} :catch_4c

    return-object p1

    .line 231
    :catch_4c
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;
.super Lvm2/lib/TwoArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 239
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 240
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    .line 242
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 244
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;

    invoke-direct {v1, p0, p1, p2, v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;Ljava/lang/String;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    .line 275
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 278
    :cond_22
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass15.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;
.super Ljava/lang/Thread;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;

.field public final synthetic val$handler:Lvm2/LuaFunction;

.field public final synthetic val$path:Ljava/lang/String;

.field public final synthetic val$script:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public static synthetic $r8$lambda$8zoVkSMUWiHkz81I26GJVAicPoU(Ljava/io/IOException;Lvm2/LuaFunction;)V
    .registers 3

    .line 269
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :cond_a
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$LZW7ouPxjnCMkdmyPyxi806p9wo(Lvm2/LuaFunction;Ljava/lang/String;)V
    .registers 3

    .line 265
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;Ljava/lang/String;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$handler:Lvm2/LuaFunction;

    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 251
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2fec9aca317d03144a05e2eee909c30b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_29

    .line 260
    :cond_1e
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->downloadTPC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :catch_27
    move-exception v0

    goto :goto_5b

    .line 252
    :cond_29
    :goto_29
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    invoke-static {v0, v1}, Lio/blueflower/stapel2d/util/StreamCopyUtil;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 258
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 264
    :goto_4a
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$handler:Lvm2/LuaFunction;

    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;-><init>(Lvm2/LuaFunction;Ljava/lang/String;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v1, v3, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5a} :catch_27

    return-void

    .line 268
    :goto_5b
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$handler:Lvm2/LuaFunction;

    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;-><init>(Ljava/io/IOException;Lvm2/LuaFunction;)V

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v1, v3, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->$r8$lambda$LZW7ouPxjnCMkdmyPyxi806p9wo(Lvm2/LuaFunction;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$15$1$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/IOException;

.field public final synthetic f$1:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;Lvm2/LuaFunction;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;->f$0:Ljava/io/IOException;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;->f$1:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;->f$0:Ljava/io/IOException;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1$$ExternalSyntheticLambda1;->f$1:Lvm2/LuaFunction;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$15$1;->$r8$lambda$8zoVkSMUWiHkz81I26GJVAicPoU(Ljava/io/IOException;Lvm2/LuaFunction;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;
.super Lvm2/lib/TwoArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public static synthetic $r8$lambda$8_WQeDnLs6V22H9AvBaTDVkIttU(Lvm2/LuaValue;)V
    .registers 1

    .line 296
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$UadznhDF-_1o-1GLncsuLD7O0us(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/String;Lvm2/LuaValue;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 5

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 312
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lvm2/LuaValue;->isfunction()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 314
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p0

    new-instance p1, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda2;-><init>(Lvm2/LuaValue;)V

    .line 315
    invoke-virtual {p0, p1, p3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    :cond_1b
    return-void
.end method

.method public static synthetic $r8$lambda$vxTE1Ug_YDTb44d3oGVaUyYOdig(Lvm2/LuaValue;)V
    .registers 1

    .line 315
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 282
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 10

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    const-string v1, "openURL"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 289
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    if-eqz v1, :cond_b1

    if-nez v0, :cond_1f

    goto/16 :goto_b1

    .line 291
    :cond_1f
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isSuperPrivileged()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 293
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Lvm2/LuaValue;->isfunction()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 295
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda0;-><init>(Lvm2/LuaValue;)V

    .line 296
    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    .line 298
    :cond_40
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 301
    :cond_43
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0x443

    .line 303
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x50a

    .line 305
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    .line 306
    invoke-static {v5, v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Linfo/flowersoft/theotown/scripting/Script;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 304
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v4, Linfo/flowersoft/theotown/ui/Dialog;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICER:I

    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    invoke-direct {v4, v5, v2, v3, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 309
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v3, 0x5c5

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 310
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v3, 0x8f7

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4, p1, p2, v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/String;Lvm2/LuaValue;Linfo/flowersoft/theotown/scripting/Script;)V

    invoke-virtual {v4, v2, v1, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 p2, 0x1

    .line 317
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 318
    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 319
    invoke-virtual {v4, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 321
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 289
    :cond_b1
    :goto_b1
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaValue;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaValue;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->$r8$lambda$8_WQeDnLs6V22H9AvBaTDVkIttU(Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lvm2/LuaValue;

.field public final synthetic f$3:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/String;Lvm2/LuaValue;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$2:Lvm2/LuaValue;

    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$2:Lvm2/LuaValue;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->$r8$lambda$UadznhDF-_1o-1GLncsuLD7O0us(Linfo/flowersoft/theotown/ui/Dialog;Ljava/lang/String;Lvm2/LuaValue;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda2 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$16$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaValue;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaValue;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda2;->f$0:Lvm2/LuaValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16$$ExternalSyntheticLambda2;->f$0:Lvm2/LuaValue;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$16;->$r8$lambda$vxTE1Ug_YDTb44d3oGVaUyYOdig(Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;
.super Lvm2/lib/TwoArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 325
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 328
    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v4

    const-wide/16 v0, 0x0

    .line 329
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optlong(J)J

    move-result-wide p1

    .line 330
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v5

    cmp-long v0, p1, v0

    if-lez v0, :cond_2a

    .line 333
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 334
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;JLvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    .line 344
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1, v0, v5}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    goto :goto_37

    :cond_2a
    move-object v1, p0

    .line 346
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;

    invoke-direct {p2, p0, v4}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;Lvm2/LuaFunction;)V

    invoke-virtual {p1, p2, v5}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    .line 353
    :goto_37
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass17.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$17$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;
.super Ljava/lang/Object;
.source "RuntimeLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;

.field public final synthetic val$foo:Lvm2/LuaFunction;

.field public final synthetic val$script:Linfo/flowersoft/theotown/scripting/Script;

.field public final synthetic val$targetTime:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;JLvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 334
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;

    iput-wide p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$targetTime:J

    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$foo:Lvm2/LuaFunction;

    iput-object p5, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 337
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$targetTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$foo:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void

    .line 340
    :cond_10
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass17.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$17$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;
.super Ljava/lang/Object;
.source "RuntimeLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;

.field public final synthetic val$foo:Lvm2/LuaFunction;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;Lvm2/LuaFunction;)V
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

    .line 346
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;->this$1:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;->val$foo:Lvm2/LuaFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$17$2;->val$foo:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$18;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 360
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$19;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 368
    sget-object v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$41;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    .line 379
    const-string v0, "unknown"

    goto :goto_22

    .line 377
    :cond_1a
    const-string v0, "desktop"

    goto :goto_22

    .line 374
    :cond_1d
    const-string v0, "ios"

    goto :goto_22

    .line 371
    :cond_20
    const-string v0, "android"

    .line 382
    :goto_22
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$2;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 94
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$20;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 389
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$21;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 396
    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$22;
.super Lvm2/lib/VarArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 400
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 403
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MODEL:Ljava/lang/String;

    .line 404
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEVICE_MANUFACTURER:Ljava/lang/String;

    .line 405
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    .line 403
    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$23;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 411
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 414
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$24;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 417
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 420
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->peek()Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$25;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 423
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 426
    const-class v0, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    .line 427
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 428
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$26;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 431
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 434
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 435
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

.field public final synthetic val$env:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V
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

    .line 446
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;->val$env:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 449
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertSuperPrivileged(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "fsdjkjvsxvkdnscvnkjlsncdkly"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2a347e2683c614a109e352d07dd9a542ef68eecdd2dfcec6a2d5a71b47df53d0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 453
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$27;->val$env:Lvm2/LuaValue;

    const-string v0, "luajava"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 455
    :cond_33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

.field public final synthetic val$env:Lvm2/LuaValue;

.field public final synthetic val$whitelist:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/util/HashSet;Lvm2/LuaValue;)V
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

    .line 466
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->val$whitelist:Ljava/util/HashSet;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->val$env:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 469
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    const-string v1, "javaClass"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 472
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->val$whitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 473
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$28;->val$env:Lvm2/LuaValue;

    const-string v1, "luajava"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, "bindClass"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 476
    :cond_2a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$29;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 481
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 484
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$3;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 101
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$30;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 488
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 491
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getPrecompiler()Linfo/flowersoft/theotown/scripting/LuaPrecompiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaPrecompiler;->precompile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$31;
.super Lvm2/lib/VarArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 496
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 499
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x3

    .line 501
    :try_start_6
    invoke-virtual {p1, v2}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception v1

    const/4 v2, 0x2

    .line 504
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    .line 505
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    instance-of v3, v1, Lvm2/LuaError;

    if-eqz v3, :cond_49

    .line 507
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 508
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_49
    invoke-virtual {p1, v2}, Lvm2/LuaValue;->call(Ljava/lang/String;)Lvm2/LuaValue;

    .line 513
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

.field public final synthetic val$globals:Lvm2/Globals;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/Globals;)V
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

    .line 519
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;->val$globals:Lvm2/Globals;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 522
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 523
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 525
    const-string v1, "///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eq v2, v3, :cond_43

    .line 529
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v2, ".lua"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v2, ".luac"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6b
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v4

    if-eqz v4, :cond_6b

    .line 540
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 542
    :try_start_98
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 543
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$32;->val$globals:Lvm2/Globals;

    invoke-virtual {v5, v4, p1}, Lvm2/Globals;->load(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a6} :catch_a7

    return-object p1

    :catch_a7
    move-exception v4

    .line 545
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6b

    .line 551
    :cond_ac
    const-string p1, "Library was not found"

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 553
    :cond_b3
    const-string p1, "No script context"

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

.field public final synthetic val$oldRequire:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V
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

    .line 559
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;->val$oldRequire:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 562
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 564
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$33;->val$oldRequire:Lvm2/LuaValue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getParent()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "///"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {v1, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 566
    :cond_3a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass34 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$34)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;
.super Lvm2/lib/TwoArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

.field public final synthetic val$require:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;Lvm2/LuaValue;)V
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

    .line 572
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;->val$require:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 575
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-virtual {p2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p2

    .line 578
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_26

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    :cond_26
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$34;->val$require:Lvm2/LuaValue;

    invoke-virtual {p2, p1}, Lvm2/LuaValue;->call(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass35 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$35)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$35;
.super Lvm2/lib/VarArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 587
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 590
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "35mCWu9E6U5xwPP7EyRp8mBx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 596
    :cond_15
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v2, "unset"

    if-ne p1, v1, :cond_39

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android"

    goto :goto_a5

    .line 599
    :cond_39
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p1

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v1, :cond_5b

    .line 601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ios"

    goto :goto_a5

    .line 603
    :cond_5b
    const-string p1, "os.name"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 605
    const-string v0, "linux"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    goto :goto_85

    .line 607
    :cond_70
    const-string v0, "mac os"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 608
    const-string v0, "macos"

    goto :goto_85

    .line 609
    :cond_7b
    const-string v0, "windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_85

    :cond_84
    move-object v0, p1

    .line 614
    :goto_85
    :try_start_85
    new-instance v1, Ljava/io/File;

    const-class v3, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-virtual {v3}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_a0
    .catch Ljava/net/URISyntaxException; {:try_start_85 .. :try_end_a0} :catch_a1

    goto :goto_a5

    :catch_a1
    move-exception v1

    .line 616
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 621
    :goto_a5
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v1

    .line 622
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    .line 623
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Lvm2/LuaValue;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 620
    invoke-static {v2}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass36 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$36)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$36;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 627
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 630
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass37 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$37)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$37;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 634
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 637
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass38 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$38)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$38;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 641
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 644
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass39 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$39)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$39;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 648
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 651
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$4;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 108
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APPLICATION_ID:Ljava/lang/String;

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass40 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$40)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$40;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 655
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 658
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 659
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass41 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$41)
.class public synthetic Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$41;
.super Ljava/lang/Object;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 368
    invoke-static {}, Lcom/badlogic/gdx/Application$ApplicationType;->values()[Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$41;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    :try_start_9
    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$41;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$41;->$SwitchMap$com$badlogic$gdx$Application$ApplicationType:[I

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$5;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 115
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$6;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 122
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$7;
.super Lvm2/lib/ZeroArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v1

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "year"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/4 v2, 0x2

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "month"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/4 v2, 0x5

    .line 133
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/4 v2, 0x6

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "dayOfYear"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/16 v2, 0xb

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "hour"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/16 v2, 0xc

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "minute"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/16 v2, 0xd

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string v3, "second"

    invoke-virtual {v1, v3, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    const/16 v2, 0xe

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "millisecond"

    invoke-virtual {v1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    return-object v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$8;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 146
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 149
    :try_start_4
    new-instance v0, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/json/DefaultJsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$9;
.super Lvm2/lib/OneArgFunction;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 160
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 162
    :try_start_4
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1
    :try_end_10
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.RuntimeLibrary.LuajavaLibFixed (info.flowersoft.theotown.scripting.libraries.RuntimeLibrary$LuajavaLibFixed)
.class public Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary$LuajavaLibFixed;
.super Lvm2/lib/jse/LuajavaLib;
.source "RuntimeLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuajavaLibFixed"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 686
    invoke-direct {p0}, Lvm2/lib/jse/LuajavaLib;-><init>()V

    return-void
.end method


# virtual methods
.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 689
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
