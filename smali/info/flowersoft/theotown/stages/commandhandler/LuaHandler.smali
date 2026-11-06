###### Class info.flowersoft.theotown.stages.commandhandler.LuaHandler (info.flowersoft.theotown.stages.commandhandler.LuaHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;
.super Ljava/lang/Object;
.source "LuaHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# static fields
.field public static final generalFunctions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final luaFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->luaFunctions:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->generalFunctions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerLuaCommand(Ljava/lang/String;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 7

    .line 26
    sget-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->luaFunctions:Ljava/util/Map;

    new-instance v1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerLuaCommand(Lvm2/LuaFunction;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 7

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->generalFunctions:Ljava/util/List;

    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    new-instance v2, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const-string v3, "<unnamed cmd condition>"

    invoke-direct {v2, v3, p2, p0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    new-instance p0, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const-string v3, "<unnamed cmd>"

    invoke-direct {p0, v3, p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;Lvm2/LuaFunction;)V

    invoke-direct {v1, v2, p0}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static reset()V
    .registers 1

    .line 37
    sget-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->luaFunctions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    sget-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->generalFunctions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->getMethodForCmd(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final getMethodForCmd(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 7

    .line 49
    sget-object v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->luaFunctions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const/4 v1, 0x0

    .line 51
    :goto_9
    sget-object v2, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->generalFunctions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3d

    if-nez v0, :cond_3d

    .line 52
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 53
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 54
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->toboolean()Z

    move-result v3

    if-eqz v3, :cond_3a

    move-object v0, v2

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3d
    return-object v0
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->getMethodForCmd(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 64
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object p1

    .line 66
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 69
    invoke-virtual {p1}, Lvm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method
