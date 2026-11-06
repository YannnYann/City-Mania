###### Class info.flowersoft.theotown.resources.GlobalTransitionVariables (info.flowersoft.theotown.resources.GlobalTransitionVariables)
.class public Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;
.super Ljava/lang/Object;
.source "GlobalTransitionVariables.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# instance fields
.field public final lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

.field public luaFileStorage:Lvm2/LuaTable;

.field public luaFileStorageProxy:Lvm2/LuaTable;

.field public luaStorage:Lvm2/LuaTable;

.field public luaStorageProxy:Lvm2/LuaTable;

.field public final mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final ssp:Linfo/flowersoft/theotown/util/SSP;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;-><init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    .line 52
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    .line 53
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorageProxy:Lvm2/LuaTable;

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorageProxy:Lvm2/LuaTable;

    .line 58
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "global_transition_variables"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->load()V

    return-void
.end method

.method public static dispose()V
    .registers 2

    .line 223
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->removeLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    const/4 v0, 0x0

    .line 224
    sput-object v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;
    .registers 1

    .line 228
    sget-object v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-object v0
.end method

.method public static init()V
    .registers 2

    .line 214
    sget-object v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    if-eqz v0, :cond_7

    .line 215
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->dispose()V

    .line 217
    :cond_7
    new-instance v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->instance:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    .line 219
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->lifecycleListener:Lcom/badlogic/gdx/LifecycleListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Application;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;JJ)J
    .registers 6

    .line 161
    invoke-virtual {p0, p1, p4, p5}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide p4

    add-long/2addr p4, p2

    .line 163
    invoke-virtual {p0, p1, p4, p5}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->set(Ljava/lang/String;J)V

    return-wide p4
.end method

.method public clear()V
    .registers 1

    .line 181
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearMapping()V

    .line 182
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearLuaStorage()V

    .line 183
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearLuaFileStorage()V

    return-void
.end method

.method public clearLuaFileStorage()V
    .registers 2

    .line 196
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    .line 197
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorageProxy:Lvm2/LuaTable;

    return-void
.end method

.method public clearLuaStorage()V
    .registers 2

    .line 191
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    .line 192
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorageProxy:Lvm2/LuaTable;

    return-void
.end method

.method public clearMapping()V
    .registers 2

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;J)J
    .registers 5

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_f

    .line 174
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public getLuaFileStorage()Lvm2/LuaTable;
    .registers 2

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorageProxy:Lvm2/LuaTable;

    return-object v0
.end method

.method public getLuaStorage()Lvm2/LuaTable;
    .registers 2

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorageProxy:Lvm2/LuaTable;

    return-object v0
.end method

.method public declared-synchronized getMapping()Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5

    monitor-enter p0

    .line 108
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    .line 110
    :try_start_6
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_29
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_6 .. :try_end_29} :catch_2c
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    goto :goto_10

    :catchall_2a
    move-exception v0

    goto :goto_32

    :catch_2c
    move-exception v1

    .line 114
    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2a

    .line 116
    :cond_30
    monitor-exit p0

    return-object v0

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2a

    throw v0
.end method

.method public getNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRawLuaFileStorage()Lvm2/LuaTable;
    .registers 2

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getRawLuaStorage()Lvm2/LuaTable;
    .registers 2

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    return-object v0
.end method

.method public final declared-synchronized load()V
    .registers 10

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 64
    const-string v1, "mapping"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    if-nez v3, :cond_42

    .line 67
    :try_start_16
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v4, 0x0

    .line 70
    :goto_22
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_42

    .line 71
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 73
    iget-object v8, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_16 .. :try_end_39} :catch_3e
    .catchall {:try_start_16 .. :try_end_39} :catchall_3c

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :catchall_3c
    move-exception v0

    goto :goto_ad

    :catch_3e
    move-exception v1

    .line 77
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    :cond_42
    const-string v1, "lua"

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_3c

    if-eqz v0, :cond_60

    .line 84
    :try_start_4a
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    .line 85
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorageProxy:Lvm2/LuaTable;
    :try_end_5b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4a .. :try_end_5b} :catch_5c
    .catchall {:try_start_4a .. :try_end_5b} :catchall_3c

    goto :goto_60

    :catch_5c
    move-exception v0

    .line 87
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    :cond_60
    :goto_60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".pmodext"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 93
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ab

    const/16 v1, 0x23

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_ab

    add-int/lit8 v1, v1, 0x1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_95
    .catchall {:try_start_5d .. :try_end_95} :catchall_3c

    .line 98
    :try_start_95
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    .line 99
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorageProxy:Lvm2/LuaTable;
    :try_end_a6
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_95 .. :try_end_a6} :catch_a7
    .catchall {:try_start_95 .. :try_end_a6} :catchall_3c

    goto :goto_ab

    :catch_a7
    move-exception v0

    .line 101
    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_3c

    .line 105
    :cond_ab
    :goto_ab
    monitor-exit p0

    return-void

    :goto_ad
    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_3c

    throw v0
.end method

.method public declared-synchronized save()V
    .registers 6

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_24

    .line 123
    :try_start_7
    const-string v1, "mapping"

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getMapping()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "lua"

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaStorage:Lvm2/LuaTable;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_7 .. :try_end_23} :catch_27
    .catchall {:try_start_7 .. :try_end_23} :catchall_24

    goto :goto_2b

    :catchall_24
    move-exception v0

    goto/16 :goto_ad

    :catch_27
    move-exception v1

    .line 126
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :goto_2b
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".pmodext"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_24

    .line 133
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last played: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_7c
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_8a

    .line 136
    const-string v3, "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :catch_88
    move-exception v0

    goto :goto_a8

    .line 138
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->luaFileStorage:Lvm2/LuaTable;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Files;->writeTextFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_a7
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_39 .. :try_end_a7} :catch_88
    .catchall {:try_start_39 .. :try_end_a7} :catchall_24

    goto :goto_ab

    .line 140
    :goto_a8
    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_24

    .line 142
    :goto_ab
    monitor-exit p0

    return-void

    :goto_ad
    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_24

    throw v0
.end method

.method public set(Ljava/lang/String;J)V
    .registers 5

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->mapping:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class info.flowersoft.theotown.resources.GlobalTransitionVariables.AnonymousClass1 (info.flowersoft.theotown.resources.GlobalTransitionVariables$1)
.class public Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;
.super Ljava/lang/Object;
.source "GlobalTransitionVariables.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;->this$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;->this$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->save()V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables$1;->this$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->save()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 0
    return-void
.end method
