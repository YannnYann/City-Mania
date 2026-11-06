###### Class info.flowersoft.theotown.scripting.LuaCache (info.flowersoft.theotown.scripting.LuaCache)
.class public Linfo/flowersoft/theotown/scripting/LuaCache;
.super Ljava/lang/Object;
.source "LuaCache.java"


# instance fields
.field public final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field public final untouchedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/LuaCache;->load()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)[B
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final getSSP()Linfo/flowersoft/theotown/util/SSP;
    .registers 5

    .line 99
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "lua_cache"

    invoke-direct {v0, v3, v1, v1, v2}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public final load()V
    .registers 9

    .line 33
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/LuaCache;->getSSP()Linfo/flowersoft/theotown/util/SSP;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v2

    const-string v3, "data"

    invoke-interface {v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_19

    .line 37
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 40
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_43

    const/4 v4, 0x0

    .line 42
    :goto_20
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_43

    .line 43
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_19 .. :try_end_3c} :catch_3f

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :catch_3f
    move-exception v2

    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_43
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 54
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LuaCache"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save()V
    .registers 8

    .line 68
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 70
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 73
    :cond_1c
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->untouchedKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 75
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 76
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/LuaCache;->data:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 78
    :try_start_3c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([B)[C

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_54
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_3c .. :try_end_54} :catch_55

    goto :goto_30

    :catch_55
    move-exception v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30

    .line 84
    :cond_5a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/LuaCache;->getSSP()Linfo/flowersoft/theotown/util/SSP;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v3

    .line 86
    const-string v4, "data"

    invoke-interface {v3, v4, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putObject(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 87
    invoke-interface {v3}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 89
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 90
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LuaCache"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
