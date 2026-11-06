###### Class info.flowersoft.theotown.stages.cityinfo.TSCityInfo (info.flowersoft.theotown.stages.cityinfo.TSCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "TSCityInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 9

    .line 40
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/16 p2, 0x16

    .line 43
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object p1

    .line 45
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lio/blueflower/stapel2d/gui/Gadget;)Lvm2/LuaTable;

    move-result-object p2

    .line 46
    new-instance p3, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;

    invoke-direct {p3, p0, p4}, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 54
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p4

    const/4 v0, 0x0

    .line 56
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 58
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_49

    .line 61
    :cond_32
    invoke-virtual {p4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v2

    .line 63
    :try_start_36
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwner()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v3

    invoke-virtual {p4, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 64
    const-string v3, "buildCityInfoEntry"

    invoke-virtual {v1, v3, p2, p3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->call(Ljava/lang/String;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_4c

    .line 66
    invoke-virtual {p4, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catchall_4c
    move-exception p1

    invoke-virtual {p4, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 67
    throw p1

    :cond_51
    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x309

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 25
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PUBLICTRANSPORT:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "TSCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0xadf

    return p1
.end method

.method public isAvailable(Linfo/flowersoft/theotown/city/City;)Z
    .registers 3

    const/16 v0, 0x16

    .line 74
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 75
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.TSCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.TSCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;
.super Lvm2/lib/ZeroArgFunction;
.source "TSCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;

.field public final synthetic val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;Lio/blueflower/stapel2d/gamestack/GameStack;)V
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

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo$1;->val$gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 50
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method
