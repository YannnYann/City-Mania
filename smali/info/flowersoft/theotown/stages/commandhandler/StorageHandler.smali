###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler (info.flowersoft.theotown.stages.commandhandler.StorageHandler)
.class public Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;
.super Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;
.source "StorageHandler.java"


# direct methods
.method public static synthetic $r8$lambda$7x9jbYUBUR7WeWlEPW25qNE51cc(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 72
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->getCityMapping(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "city_mapping.dump"

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpString(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CYidpGO_3O1IWrXi7u5wZxB735k(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 65
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->setLuaStorage(Lvm2/LuaTable;)V

    .line 66
    const-string p0, "done"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ec3---ckjfS2IbXio8fINkGTjP4(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->showStorageStats(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V68T-EnzDf7m-bH7eSmNaxz80Ek(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearMapping()V

    .line 55
    const-string p0, "done"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WEKxPTBPDWSStjZR5Hx0n3V4YSI(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string v0, "global_lua_file_storage.dump"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getRawLuaFileStorage()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpStorageTable(Ljava/lang/String;Lvm2/LuaTable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cS-uRvcK57NcFNJYJlGO22NttLM(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const-string v0, "city_lua_storage.dump"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpStorageTable(Ljava/lang/String;Lvm2/LuaTable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbqUA8WBl0dBGEeJG5a966iXS5g(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 76
    const-string p0, "done"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZZVr80FauwO-4t23ABXe8UeSu4(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string v0, "global_lua_storage.dump"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpStorageTable(Ljava/lang/String;Lvm2/LuaTable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGZxL4SUWjOEB2toIdX9FL2eg2k(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearLuaStorage()V

    .line 35
    const-string p0, "done"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rgkQiKiXuLlrarl2V6vDae438NI(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getMapping()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mapping.dump"

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpString(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zeZMui4uZBwwtOv2xCGpIlaZjfE(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->clearLuaFileStorage()V

    .line 45
    const-string p0, "done"

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;-><init>()V

    .line 24
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    .line 26
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V

    const-string v2, "storage stats"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 30
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v2, "dump global lua storage"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 33
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v2, "clear global lua storage"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 40
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v2, "dump global lua file storage"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 43
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v2, "clear global lua file storage"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 50
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v2, "dump mapping"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 53
    new-instance v1, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V

    const-string v0, "clear mapping"

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    if-eqz p1, :cond_77

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "dump city lua storage"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "clear city lua storage"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "dump city mapping"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const-string p1, "clear city mapping"

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler;->addCommand(Ljava/lang/String;Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;)V

    :cond_77
    return-void
.end method


# virtual methods
.method public final dumpStorageTable(Ljava/lang/String;Lvm2/LuaTable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lvm2/LuaTable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->dumpString(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    :try_end_b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Lua table serialization failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final dumpString(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    :try_start_9
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 141
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 143
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 144
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 145
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write(I)V

    .line 148
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dumped to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_68} :catch_69

    return-void

    :catch_69
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final getCityMapping(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 5

    .line 107
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 109
    :try_start_5
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;
    :try_end_2a
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_11

    :catch_2b
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    return-object v0
.end method

.method public final getStorageTableSize(Lvm2/LuaTable;)I
    .registers 2

    .line 120
    :try_start_0
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public final showStorageStats(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lua storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 84
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object v3

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->getStorageTableSize(Lvm2/LuaTable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%,d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lua file storage: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getRawLuaFileStorage()Lvm2/LuaTable;

    move-result-object v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->getStorageTableSize(Lvm2/LuaTable;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapping: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getMapping()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_eb

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city lua storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->getStorageTableSize(Lvm2/LuaTable;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city mapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->getCityMapping(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_eb
    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$Ec3---ckjfS2IbXio8fINkGTjP4(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$mbqUA8WBl0dBGEeJG5a966iXS5g(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda10;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$7x9jbYUBUR7WeWlEPW25qNE51cc(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$nZZVr80FauwO-4t23ABXe8UeSu4(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$rGZxL4SUWjOEB2toIdX9FL2eg2k(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda4;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$WEKxPTBPDWSStjZR5Hx0n3V4YSI(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$zeZMui4uZBwwtOv2xCGpIlaZjfE(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda6;->f$1:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$rgkQiKiXuLlrarl2V6vDae438NI(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$V68T-EnzDf7m-bH7eSmNaxz80Ek(Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda8;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$cS-uRvcK57NcFNJYJlGO22NttLM(Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.commandhandler.StorageHandler$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandBasedHandler$Command;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final handle(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;->$r8$lambda$CYidpGO_3O1IWrXi7u5wZxB735k(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
