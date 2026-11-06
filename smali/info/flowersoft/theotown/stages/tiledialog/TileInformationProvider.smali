###### Class info.flowersoft.theotown.stages.tiledialog.TileInformationProvider (info.flowersoft.theotown.stages.tiledialog.TileInformationProvider)
.class public abstract Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.super Ljava/lang/Object;
.source "TileInformationProvider.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public level:I

.field public tileX:I

.field public tileY:I

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->level:I

    return-void
.end method


# virtual methods
.method public abstract canHandle()Z
.end method

.method public finish(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/Dialog;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public finishImmediately(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public finishLast(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getActions()[Linfo/flowersoft/theotown/stages/tiledialog/Action;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCityInfos()[Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getInfluenceVector()[I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getSound()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, ""

    return-object v0
.end method

.method public abstract isMutualExclusive()Z
.end method

.method public resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;)Lvm2/LuaValue;
    .registers 4

    .line 77
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public resolveScriptValue(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 81
    :goto_3
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 82
    iget-object v3, p1, Linfo/flowersoft/theotown/draft/Draft;->luaScripts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/Script;

    .line 83
    invoke-virtual {v3, p2}, Linfo/flowersoft/theotown/scripting/Script;->getMethod(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 86
    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/Script;->getScript()Lvm2/LuaValue;

    move-result-object v3

    iget v5, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileX:I

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    iget v6, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileY:I

    .line 87
    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    iget v7, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->level:I

    invoke-static {v7}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Lvm2/LuaValue;

    aput-object v3, v8, v1

    aput-object v5, v8, v0

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v7, v8, v3

    const/4 v3, 0x4

    aput-object p3, v8, v3

    .line 85
    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 89
    sget-object v4, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    if-eq v3, v4, :cond_4e

    return-object v3

    :cond_4e
    add-int/2addr v2, v0

    goto :goto_3

    .line 92
    :cond_50
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 30
    iput p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileX:I

    .line 31
    iput p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->tileY:I

    return-void
.end method
