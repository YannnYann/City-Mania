###### Class info.flowersoft.theotown.stages.commandhandler.PluginMetaCommandsHandler (info.flowersoft.theotown.stages.commandhandler.PluginMetaCommandsHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;
.super Ljava/lang/Object;
.source "PluginMetaCommandsHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final commandSender:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;>;"
        }
    .end annotation
.end field

.field public runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 11

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commands:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commandSender:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->city:Linfo/flowersoft/theotown/city/City;

    .line 32
    new-instance p1, Linfo/flowersoft/theotown/draftloader/TransitionLoader;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;-><init>()V

    .line 34
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    const-string v1, "console"

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    .line 35
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 37
    const-string v4, "commands"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 39
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v5, 0x0

    .line 41
    :goto_45
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_24

    .line 42
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_71

    .line 43
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_71

    .line 45
    :try_start_57
    invoke-virtual {p1, v3, v6}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_71

    .line 47
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commands:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v7, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commandSender:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_57 .. :try_end_67} :catch_68

    goto :goto_71

    :catch_68
    move-exception v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    sget-object v7, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v7, v6}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    :cond_71
    :goto_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_74
    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_e

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commands:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
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

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->city:Linfo/flowersoft/theotown/city/City;

    if-nez p1, :cond_5

    goto :goto_56

    .line 70
    :cond_5
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-nez p1, :cond_12

    new-instance p1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 72
    :cond_12
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commandSender:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->commands:Ljava/util/Map;

    .line 75
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "console "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3a

    .line 77
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-eqz p1, :cond_42

    .line 78
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    .line 74
    :goto_43
    invoke-virtual {v0, v1, p2, v2, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->acceptRandom(Ljava/util/List;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 79
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 81
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;->runner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->getLastFeedback()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 82
    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_56
    :goto_56
    return-void
.end method
