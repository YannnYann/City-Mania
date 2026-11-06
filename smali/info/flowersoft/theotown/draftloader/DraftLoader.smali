###### Class info.flowersoft.theotown.draftloader.DraftLoader (info.flowersoft.theotown.draftloader.DraftLoader)
.class public abstract Linfo/flowersoft/theotown/draftloader/DraftLoader;
.super Ljava/lang/Object;
.source "DraftLoader.java"


# instance fields
.field public oldDraft:Linfo/flowersoft/theotown/draft/Draft;

.field public roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

.field public src:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectScripts(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/Draft;",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/vfs/AbstractFile;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 440
    const-string v0, "scripts"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, "script"

    .line 441
    :goto_b
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 443
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 444
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_1d
    const/4 p1, 0x0

    .line 447
    :goto_1e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_125

    .line 448
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8f

    const/4 v2, 0x1

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Linfo/flowersoft/theotown/resources/ScriptingManager;->getInstance()Linfo/flowersoft/theotown/resources/ScriptingManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/resources/ScriptingManager;->get(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 458
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->isBinary()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 461
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10a

    .line 464
    :cond_67
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/ScriptingManager$ScriptEntry;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10a

    .line 455
    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Script #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be resolved"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 468
    :cond_8f
    const-string v3, ".lua"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 469
    iget-object v3, p0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v2

    if-eqz v2, :cond_be

    .line 470
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 472
    :try_start_a5
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b6} :catch_b7

    goto :goto_10a

    :catch_b7
    move-exception p0

    .line 477
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 480
    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t find script "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 482
    :cond_d5
    const-string v3, ".luac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10e

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createDirectory(Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1e

    .line 483
    :cond_10e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Loading binary scripts is not supported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_125
    return-void
.end method


# virtual methods
.method public afterLoading()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforeLoading()V
    .registers 1

    .line 0
    return-void
.end method

.method public extendArray([II)[I
    .registers 6

    .line 980
    array-length v0, p1

    if-lt v0, p2, :cond_4

    return-object p1

    .line 983
    :cond_4
    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p2, :cond_13

    .line 985
    array-length v2, p1

    rem-int v2, v1, v2

    aget v2, p1, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-object v0
.end method

.method public getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 202
    const-string v0, "inherit"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 203
    const-string p3, "id"

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    if-eqz p2, :cond_20

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p2, Linfo/flowersoft/theotown/draft/Draft;->inherited:Z

    .line 208
    iget-boolean p3, p2, Linfo/flowersoft/theotown/draft/Draft;->inheritedFromNonPlugin:Z

    iget-boolean v0, p2, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    xor-int/2addr p1, v0

    or-int/2addr p1, p3

    iput-boolean p1, p2, Linfo/flowersoft/theotown/draft/Draft;->inheritedFromNonPlugin:Z

    return-object p2

    .line 205
    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 213
    :cond_3b
    :try_start_3b
    invoke-interface {p3}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_42

    return-object p1

    :catch_42
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getLoadingTags()[Ljava/lang/String;
.end method

.method public final getPluginTrustLevel(I)I
    .registers 5

    .line 194
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 196
    :cond_c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isPermanent()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x2

    return p1

    .line 197
    :cond_14
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthorId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/TPCModule;->getUserTrustLevel(J)I

    move-result p1

    return p1
.end method

.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;ZLinfo/flowersoft/theotown/draft/requirement/DraftRequirement;)Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 507
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_16

    const-string v0, "premium requirement"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 508
    new-instance p4, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {p4, p1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)V

    return-object p4

    .line 509
    :cond_16
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_2c

    const-string v0, "premium requirements"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 510
    new-instance p4, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    invoke-direct {p4, p1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;Z)V

    return-object p4

    .line 511
    :cond_2c
    const-string v0, "requirement"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 512
    new-instance p4, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-direct {p4, p1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)V

    return-object p4

    .line 513
    :cond_3e
    const-string v0, "requirements"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 514
    new-instance p4, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    invoke-direct {p4, p1, p2, p3}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/String;Z)V

    :cond_4f
    return-object p4
.end method

.method public abstract load()Linfo/flowersoft/theotown/draft/Draft;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation
.end method

.method public final loadAliases(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 1069
    const-string v0, "aliases"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v0, "alias"

    .line 1070
    :cond_a
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 1072
    const-string v2, ""

    if-nez v1, :cond_24

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1073
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 1074
    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_24
    if-eqz v1, :cond_62

    .line 1078
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    .line 1079
    :goto_2d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_52

    .line 1080
    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 1081
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4f

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 1082
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1086
    :cond_52
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 1087
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p1, Linfo/flowersoft/theotown/draft/Draft;->aliases:[Ljava/lang/String;

    :cond_62
    return-void
.end method

.method public loadAnimations(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadAnimations(ILjava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 868
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 869
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " night light probability"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move v6, v5

    .line 872
    :goto_22
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_170

    .line 873
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v7

    .line 874
    const-string v8, "id"

    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 875
    const-string v9, "x"

    invoke-virtual {v7, v9, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 876
    const-string v9, "y"

    invoke-virtual {v7, v9, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 877
    const-string v9, "shift"

    invoke-virtual {v7, v9, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 880
    const-string v9, "on fire"

    invoke-virtual {v7, v9, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 881
    const-string v10, "on crime"

    invoke-virtual {v7, v10, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_54

    or-int/lit8 v9, v9, 0x2

    .line 882
    :cond_54
    const-string v10, "is burning"

    invoke-virtual {v7, v10, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5e

    or-int/lit8 v9, v9, 0x4

    .line 883
    :cond_5e
    const-string v10, "in winter"

    invoke-virtual {v7, v10, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_68

    or-int/lit8 v9, v9, 0x10

    .line 884
    :cond_68
    const-string v10, "in summer"

    invoke-virtual {v7, v10, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_72

    or-int/lit8 v9, v9, 0x8

    :cond_72
    move v15, v9

    .line 890
    const-string v9, "date"

    invoke-virtual {v7, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v9

    const/4 v11, 0x1

    if-eqz v9, :cond_f2

    .line 892
    const-string v10, "start day"

    invoke-virtual {v9, v10, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    sub-int/2addr v10, v11

    .line 893
    const-string v5, "start month"

    invoke-virtual {v9, v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    sub-int/2addr v5, v11

    const/16 v16, 0x1e

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v10, v5

    .line 894
    const-string v5, "days"

    invoke-virtual {v9, v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 896
    const-string v11, "repeat"

    move-object/from16 v18, v4

    const-string v4, "yearly"

    invoke-virtual {v9, v11, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v19, v5

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v11

    move/from16 v20, v10

    const v10, -0x2f307f7f

    if-eq v11, v10, :cond_cf

    const v10, -0x2bc88576

    if-eq v11, v10, :cond_c7

    const v4, 0x49b5900d

    if-eq v11, v4, :cond_bd

    goto :goto_d9

    :cond_bd
    const-string v4, "monthly"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    const/4 v4, 0x0

    goto :goto_da

    :cond_c7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    const/4 v4, 0x2

    goto :goto_da

    :cond_cf
    const-string v4, "weekly"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    const/4 v4, 0x1

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v4, -0x1

    :goto_da
    if-eqz v4, :cond_e4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e2

    const/16 v10, 0x168

    goto :goto_e7

    :cond_e2
    const/4 v10, 0x7

    goto :goto_e7

    :cond_e4
    const/4 v5, 0x1

    move/from16 v10, v16

    .line 909
    :goto_e7
    const-string v4, "days total"

    invoke-virtual {v9, v4, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move/from16 v10, v19

    move/from16 v9, v20

    goto :goto_f9

    :cond_f2
    move-object/from16 v18, v4

    move v5, v11

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x168

    .line 912
    :goto_f9
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTargetFrames(Linfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object v16

    mul-int/lit16 v11, v6, 0xf33

    add-int v11, p1, v11

    .line 913
    const-string v5, "seed"

    invoke-virtual {v7, v5, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 915
    const-class v11, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v8, v11}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v11, :cond_154

    move/from16 v19, v10

    .line 920
    new-instance v10, Linfo/flowersoft/theotown/draft/AnimationSpot;

    move/from16 v17, v5

    move/from16 v8, v19

    const/4 v5, 0x1

    invoke-direct/range {v10 .. v17}, Linfo/flowersoft/theotown/draft/AnimationSpot;-><init>(Linfo/flowersoft/theotown/draft/AnimationDraft;IIII[II)V

    .line 921
    iput v9, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->startDay:I

    .line 922
    iput v8, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->days:I

    .line 923
    iput v4, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->daysTotal:I

    .line 924
    const-string v4, "color"

    invoke-virtual {v0, v4, v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v4

    iput-object v4, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 926
    invoke-virtual {v2, v1, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 925
    const-string v4, "night light probability"

    invoke-virtual {v7, v4, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v4, v8

    iput v4, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->nightLightProbability:F

    .line 927
    const-string v4, "frame shift"

    invoke-virtual {v7, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->frameShift:I

    .line 928
    const-string v4, "rotation aware"

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v10, Linfo/flowersoft/theotown/draft/AnimationSpot;->rotationAware:Z

    .line 929
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v18

    goto/16 :goto_22

    .line 917
    :cond_154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find an animation draft of id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_170
    return-object v3
.end method

.method public loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public loadColor(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 556
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 557
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 558
    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromString(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1

    .line 560
    :cond_19
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 578
    const-string v0, "id"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "type"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 579
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 580
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ColorDraft;

    if-eqz v0, :cond_21

    .line 583
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/ColorDraft;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1

    .line 582
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No color of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_3d
    const-string v0, "hex"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xff

    if-eqz v1, :cond_eb

    .line 589
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 591
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    const/16 v4, 0x10

    if-lt v1, v3, :cond_94

    add-int/lit8 v1, v0, -0x6

    add-int/lit8 v3, v0, -0x4

    .line 592
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v0, -0x2

    .line 593
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 594
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x8

    if-lt v0, v7, :cond_c9

    sub-int/2addr v0, v7

    .line 596
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c9

    :cond_94
    const/4 v1, 0x3

    if-lt v0, v1, :cond_cf

    add-int/lit8 v1, v0, -0x3

    .line 599
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    mul-int/lit8 v5, v1, 0x11

    add-int/lit8 v1, v0, -0x2

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    mul-int/lit8 v3, v1, 0x11

    add-int/lit8 v1, v0, -0x1

    .line 601
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    mul-int/lit8 v6, v1, 0x11

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c9

    sub-int/2addr v0, v1

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    mul-int/lit8 v2, p1, 0x11

    .line 608
    :cond_c9
    :goto_c9
    new-instance p1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p1, v5, v3, v6, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    return-object p1

    .line 606
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color hex string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have length >=3"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_eb
    const-string v0, "r"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 611
    const-string v1, "g"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 612
    const-string v3, "b"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 613
    const-string v4, "a"

    invoke-virtual {p1, v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 614
    new-instance v2, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v2, v0, v1, v3, p1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    return-object v2
.end method

.method public loadColorFromString(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 568
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 569
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 570
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hex"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    goto :goto_1d

    .line 572
    :cond_18
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 574
    :goto_1d
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public loadColors(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)[Lio/blueflower/stapel2d/drawing/Color;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 534
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    .line 535
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_19

    .line 537
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 538
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 540
    :cond_19
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_20

    return-object v1

    .line 541
    :cond_20
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    new-array p2, p1, [Lio/blueflower/stapel2d/drawing/Color;

    const/4 v1, 0x0

    :goto_27
    if-ge v1, p1, :cond_49

    .line 543
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_3c

    .line 544
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromString(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_46

    .line 546
    :cond_3c
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColorFromObject(Linfo/flowersoft/theotown/util/json/JSONObject;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    aput-object v2, p2, v1

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_49
    return-object p2

    :cond_4a
    return-object v1
.end method

.method public loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public loadDefaults(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 222
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->isPlugin()Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    .line 223
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->MANIFEST:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 224
    const-string v0, "id"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 226
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v0, :cond_32

    .line 227
    sget-boolean v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    .line 228
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 229
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PARENT_FILE:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 230
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->EXTERNAL_PLUGIN_DATA:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    .line 231
    sget-object v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PATH:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 232
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    iput v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    .line 233
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadPrivileged(Linfo/flowersoft/theotown/draft/Draft;)V

    goto :goto_39

    .line 235
    :cond_32
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    sget-object v1, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Internal:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    .line 238
    :goto_39
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    iput-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8c

    .line 240
    const-string v0, "inherit"

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_153

    .line 243
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not be inherited from because it\'s final!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 241
    :cond_73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already in use. Use another id or add \"override\":true to your plugin."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 245
    :cond_8c
    const-string v2, "override"

    if-eqz v0, :cond_14d

    .line 246
    invoke-virtual {p2, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_10f

    .line 249
    iget-object p2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/Draft;->isExternalPlugin()Z

    move-result p2

    if-nez p2, :cond_e6

    .line 251
    iget-object p2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget p2, p2, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz p2, :cond_e3

    .line 252
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p2

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p2

    if-nez p2, :cond_c8

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown plugin "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_ee

    .line 258
    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "`"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_ee

    .line 261
    :cond_e3
    const-string p2, "the game"

    goto :goto_ee

    .line 250
    :cond_e6
    iget-object p2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object p2

    .line 264
    :goto_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already in use by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Use another id or add \"override\":true to your plugin."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_10f
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v0

    if-nez v0, :cond_134

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v2, :cond_120

    .line 272
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/draft/CategoryDraft;->removeChild(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 274
    :cond_120
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->aliases:[Ljava/lang/String;

    if-eqz v0, :cond_153

    .line 275
    array-length v2, v0

    move v3, v1

    :goto_128
    if-ge v3, v2, :cond_153

    aget-object v4, v0, v3

    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_128

    .line 269
    :cond_134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not be overridden because it\'s final!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 277
    :cond_14d
    invoke-virtual {p2, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_52d

    .line 281
    :cond_153
    :goto_153
    const-string v0, "min version"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " but got "

    const-string v4, ""

    if-eqz v2, :cond_18f

    .line 282
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    sget v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-gt v0, v2, :cond_168

    goto :goto_18f

    .line 284
    :cond_168
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires at least version "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 287
    :cond_18f
    :goto_18f
    const-string v0, "max version"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 288
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    sget v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-lt v0, v2, :cond_1a0

    goto :goto_1c7

    .line 290
    :cond_1a0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires at max version "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 294
    :cond_1c7
    :goto_1c7
    const-string v0, "template prefix"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v2, "template"

    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    goto :goto_1d8

    :cond_1d6
    const-string v2, "templates"

    .line 296
    :goto_1d8
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_266

    .line 297
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_1f0

    .line 299
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 300
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_1f0
    move v2, v1

    .line 302
    :goto_1f1
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_266

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 304
    const-class v6, Linfo/flowersoft/theotown/draft/TemplateDraft;

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/TemplateDraft;

    if-eqz v6, :cond_24f

    .line 308
    iget-object v5, v6, Linfo/flowersoft/theotown/draft/TemplateDraft;->content:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 309
    const-string v7, "template parameters"

    invoke-virtual {p2, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v8

    .line 310
    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v9

    if-eqz v8, :cond_228

    if-eqz v9, :cond_228

    .line 312
    invoke-static {v8, v9, v1, v1}, Linfo/flowersoft/theotown/util/JSONUtil;->mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V

    goto :goto_230

    :cond_228
    if-nez v8, :cond_230

    if-eqz v9, :cond_230

    .line 314
    invoke-static {v9}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopy(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v8

    :cond_230
    :goto_230
    if-eqz v8, :cond_23d

    .line 316
    instance-of v9, p1, Linfo/flowersoft/theotown/draft/TemplateDraft;

    if-nez v9, :cond_23d

    .line 317
    invoke-static {v5}, Linfo/flowersoft/theotown/util/JSONUtil;->deepCopy(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v5

    .line 318
    invoke-static {v5, v8}, Linfo/flowersoft/theotown/util/JSONUtil;->applyParameters(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    :cond_23d
    if-eqz v8, :cond_242

    .line 321
    invoke-virtual {p2, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    :cond_242
    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/TemplateDraft;->additive:Z

    invoke-static {p2, v5, v1, v6}, Linfo/flowersoft/theotown/util/JSONUtil;->mergeJSONObjects(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/util/json/JSONObject;ZZ)V

    if-eqz v8, :cond_24c

    .line 325
    invoke-virtual {p2, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    :cond_24c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f1

    .line 306
    :cond_24f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find template "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_266
    const-string v0, "type"

    const-string v2, "none"

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    .line 331
    const-string v0, "title"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->title:Ljava/lang/String;

    .line 332
    const-string v0, "text"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->text:Ljava/lang/String;

    .line 333
    const-string v0, "hidden"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    .line 334
    const-string v0, "author"

    const-string v2, "Lobby & theotheoderich"

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->author:Ljava/lang/String;

    .line 335
    const-string v0, "dev"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->dev:Z

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->dev:Z

    .line 336
    const-string v0, "final"

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    .line 337
    :cond_2b1
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2c0

    .line 338
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_2c6

    sget-boolean v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PRIVATE:Z

    if-nez v0, :cond_2c6

    :cond_2c0
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_2c8

    :cond_2c6
    move v0, v2

    goto :goto_2c9

    :cond_2c8
    move v0, v1

    .line 337
    :goto_2c9
    const-string v3, "hide id"

    invoke-virtual {p2, v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->hideId:Z

    .line 339
    const-string v0, "mute lua"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/Draft;->muteLua:Z

    invoke-virtual {p2, v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->muteLua:Z

    .line 340
    const-string v0, "strict lua"

    iget-boolean v3, p1, Linfo/flowersoft/theotown/draft/Draft;->strictLua:Z

    invoke-virtual {p2, v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->strictLua:Z

    .line 343
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    xor-int/2addr v0, v2

    const-string v3, "index"

    invoke-virtual {p2, v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    .line 348
    const-string v0, "not implemented"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2fe

    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->mustBeInherited:Z

    if-eqz v0, :cond_2fd

    goto :goto_2fe

    :cond_2fd
    move v2, v1

    :cond_2fe
    :goto_2fe
    iput-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->mustBeInherited:Z

    .line 350
    const-string v0, "sound click"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_338

    .line 351
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_321

    .line 352
    const-string v2, "file"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_321

    .line 353
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->loadSound(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    goto :goto_338

    :cond_321
    if-eqz v0, :cond_336

    .line 354
    const-string v2, "res"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_336

    .line 355
    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Resources;->resolve(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    goto :goto_338

    .line 357
    :cond_336
    iput v1, p1, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    .line 361
    :cond_338
    :goto_338
    const-string v0, "ordinal"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 362
    const-string v0, "ordinal from"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "May not find "

    if-eqz v3, :cond_388

    .line 363
    iget v3, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-eq v3, v2, :cond_380

    .line 366
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v2, :cond_366

    .line 371
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    add-int/2addr v0, v2

    iput v0, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    goto :goto_388

    .line 369
    :cond_366
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to get ordinal from"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_380
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ordinal from can only be used in combination with ordinal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_388
    :goto_388
    const-string v0, "meta"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_392

    .line 375
    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 377
    :cond_392
    const-string v0, "title id"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->titleId:Ljava/lang/String;

    .line 378
    const-string v0, "text id"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->textId:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->textId:Ljava/lang/String;

    .line 379
    const-string v0, "separator"

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->separator:Z

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/Draft;->separator:Z

    .line 381
    const-string v7, "preview frame"

    iget-object v10, p1, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const-string v6, "preview frames"

    move-object v5, p0

    move-object v9, p1

    move-object v8, p2

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v9, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    .line 382
    const-string v7, "icon frame"

    iget-object v10, v9, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    const-string v6, "icon frames"

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    iput-object p1, v9, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    .line 383
    const-string p1, "show new marker"

    iget-boolean p2, v9, Linfo/flowersoft/theotown/draft/Draft;->showNewMarker:Z

    invoke-virtual {v8, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v9, Linfo/flowersoft/theotown/draft/Draft;->showNewMarker:Z

    .line 384
    const-string p1, "searchable"

    iget-boolean p2, v9, Linfo/flowersoft/theotown/draft/Draft;->searchable:Z

    invoke-virtual {v8, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v9, Linfo/flowersoft/theotown/draft/Draft;->searchable:Z

    .line 386
    iget-object p1, v9, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    const/4 p2, 0x0

    if-eqz p1, :cond_3e7

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    goto :goto_3e8

    :cond_3e7
    move-object p1, p2

    :goto_3e8
    const-string v0, "category"

    invoke-virtual {v8, v0, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_421

    .line 387
    iget-object v0, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_421

    .line 388
    const-class v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v0, v9, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz v0, :cond_405

    goto :goto_421

    .line 389
    :cond_405
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No category "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could be found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 392
    :cond_421
    :goto_421
    const-string p1, "category from"

    invoke-virtual {v8, p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_452

    .line 394
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz p2, :cond_438

    .line 398
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object p1, v9, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    goto :goto_452

    .line 396
    :cond_438
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to get category from"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 401
    :cond_452
    :goto_452
    invoke-virtual {p0, v9, v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAliases(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 403
    iget-object p1, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result p2

    invoke-virtual {v9}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    invoke-virtual {p0, v8, p1, p2, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;ZLinfo/flowersoft/theotown/draft/requirement/DraftRequirement;)Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object p1

    invoke-virtual {v9, p1}, Linfo/flowersoft/theotown/draft/Draft;->setRequirement(Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;)V

    .line 405
    iget-object p1, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->oldDraft:Linfo/flowersoft/theotown/draft/Draft;

    if-eq p1, v9, :cond_471

    .line 406
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1, v9}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->registerDraft(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 409
    :cond_471
    const-string p1, "script"

    invoke-virtual {v8, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_481

    const-string p1, "scripts"

    invoke-virtual {v8, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4fc

    .line 410
    :cond_481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-static {v9, v8, p1, p2, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->collectScripts(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4fc

    sget-object v2, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->INSTANCE:Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->isAllowedToLoadScripts(Linfo/flowersoft/theotown/draft/Draft;)Z

    move-result v2

    if-eqz v2, :cond_4fc

    .line 417
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 418
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v4

    invoke-virtual {v4, v9, p2, p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->registerScripts(Linfo/flowersoft/theotown/draft/Draft;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 419
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    const-wide/16 v2, 0xa

    cmp-long v0, p1, v2

    if-ltz v0, :cond_4fc

    .line 420
    iget-object v0, v9, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v0, :cond_4fc

    iget v0, v9, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz v0, :cond_4cb

    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget v2, v9, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isInternalPlugin(I)Z

    move-result v0

    if-nez v0, :cond_4fc

    .line 421
    :cond_4cb
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Linfo/flowersoft/theotown/draft/Draft;->pluginFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms to initiate scripts"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DraftLoader"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_4fc
    const-string p1, "require scenario"

    invoke-static {v8, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_52c

    .line 428
    invoke-virtual {v9}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result p2

    if-eqz p2, :cond_522

    .line 430
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 431
    :goto_510
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_51f

    .line 432
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_510

    .line 434
    :cond_51f
    iput-object p2, v9, Linfo/flowersoft/theotown/draft/Draft;->scenarioIds:[Ljava/lang/String;

    return-void

    .line 428
    :cond_522
    new-instance p1, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;

    iget-object p2, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v0, "Permissions required to define \"require scenario\""

    invoke-direct {p1, p2, v0}, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_52c
    return-void

    :cond_52d
    move-object v5, p0

    move-object v9, p1

    .line 278
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be overridden as no prior definition has been found!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;
    .registers 8

    .line 1093
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1094
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1095
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 1096
    const-string v1, ""

    invoke-virtual {p1, p2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_1a
    if-eqz v0, :cond_6c

    .line 1099
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move p4, p2

    .line 1100
    :goto_23
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge p4, v1, :cond_63

    .line 1101
    invoke-virtual {v0, p4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 1102
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    .line 1103
    const-class v2, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1105
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1104
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Did not find "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " references as price draft in "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    add-int/lit8 p4, p4, 0x1

    goto :goto_23

    .line 1108
    :cond_63
    new-array p2, p2, [Linfo/flowersoft/theotown/draft/Draft;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linfo/flowersoft/theotown/draft/Draft;

    return-object p1

    :cond_6c
    return-object p4
.end method

.method public loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 950
    invoke-virtual {p5, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 951
    invoke-virtual {p5, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p5

    .line 952
    invoke-virtual {p5}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [[I

    const/4 v2, 0x0

    move v3, v2

    .line 953
    :goto_12
    invoke-virtual {p5}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 954
    invoke-virtual {p5, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    .line 955
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    move v6, v2

    .line 956
    :goto_23
    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_58

    .line 957
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v7

    if-ltz v7, :cond_36

    if-ge v7, p4, :cond_36

    .line 962
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 959
    :cond_36
    new-instance p3, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " index "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid, must be in 0..<"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    .line 964
    :cond_58
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_5d
    if-lt v0, p3, :cond_60

    return-object v1

    .line 967
    :cond_60
    new-instance p1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "You have to provide at least "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " index lists instead of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 619
    sget-object v3, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v4, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 623
    iget-object v4, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 631
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFramesRaw(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p6

    if-eqz p6, :cond_90

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " winter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 634
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFramesRaw(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p2

    .line 635
    array-length p3, p2

    array-length p4, p6

    if-ne p3, p4, :cond_67

    .line 636
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object p1

    array-length p3, p6

    invoke-virtual {p1, p6, p2, p3}, Linfo/flowersoft/theotown/resources/WinterManager;->registerWinterFrames([I[II)V

    return-object p6

    .line 638
    :cond_67
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Winter frames for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " have length "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p6

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_90
    return-object p6
.end method

.method public loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 627
    sget-object v3, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->DEFAULT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    return-object p1
.end method

.method public final loadFramesRaw(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p4

    .line 647
    const-string v9, "frames"

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz p2, :cond_10

    move-object/from16 v1, p2

    .line 648
    :cond_10
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    return-object p6

    .line 651
    :cond_17
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v2, :cond_25

    .line 652
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    move-object v12, v0

    goto :goto_32

    .line 654
    :cond_25
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 655
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-object v12, v2

    .line 657
    :goto_32
    new-instance v13, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v13, v0}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 660
    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x0

    .line 662
    :goto_40
    invoke-virtual {v12}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3ed

    .line 663
    invoke-virtual {v12, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 664
    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    move v5, v0

    move/from16 p6, v1

    move-object/from16 v27, v2

    move-object/from16 v26, v9

    move-object/from16 v25, v12

    move-object v0, v13

    :goto_59
    const/16 v23, -0x1

    :goto_5b
    const/16 v24, 0x1

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3e1

    .line 666
    :cond_61
    invoke-virtual {v12, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 667
    const-string v3, "silent frames"

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 668
    const-string v2, "silent frame"

    const/4 v6, 0x0

    move v3, v1

    const-string v1, "silent frames"

    move-object/from16 v5, p5

    move v7, v0

    move v8, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFramesRaw(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    move-object v2, v1

    move v5, v7

    move/from16 p6, v8

    move-object/from16 v26, v9

    move-object/from16 v25, v12

    move-object v0, v13

    const/16 v23, -0x1

    const/16 v24, 0x1

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_3e3

    :cond_90
    move-object/from16 v3, p3

    move v7, v0

    move v8, v1

    .line 669
    const-string v0, "steal"

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "share"

    const-string v6, "handle y"

    const-string v15, "handle x"

    const-string v10, "move y"

    const-string v11, "move x"

    const-string v7, "count"

    if-eqz v1, :cond_1bf

    .line 670
    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v1, :cond_1a3

    .line 677
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result v16

    if-eqz v16, :cond_c2

    invoke-virtual/range {p5 .. p5}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v16

    if-eqz v16, :cond_c5

    :cond_c2
    move/from16 p6, v8

    goto :goto_dc

    .line 678
    :cond_c5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot steal frames from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 683
    :goto_dc
    const-string v8, "type"

    move-object/from16 v25, v12

    invoke-virtual {v4, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11a

    move-object/from16 v26, v9

    const-string v9, "preview frames"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fa

    .line 689
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    goto :goto_120

    .line 692
    :cond_fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steal type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11a
    move-object/from16 v26, v9

    .line 685
    check-cast v1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    .line 686
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    :goto_120
    if-eqz v1, :cond_18c

    .line 699
    const-string v0, "frame"

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x1

    .line 700
    invoke-virtual {v4, v7, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 701
    invoke-virtual {v4, v11, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 702
    invoke-virtual {v4, v10, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 703
    invoke-virtual {v4, v15, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 704
    invoke-virtual {v4, v6, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    sub-int/2addr v9, v11

    sub-int/2addr v10, v6

    const/4 v6, -0x1

    if-ne v7, v6, :cond_147

    const v6, 0x7fffffff

    goto :goto_148

    :cond_147
    move v6, v7

    :goto_148
    if-lez v6, :cond_186

    .line 712
    array-length v7, v1

    if-ge v0, v7, :cond_186

    .line 713
    aget v7, v1, v0

    if-nez v9, :cond_160

    if-nez v10, :cond_160

    const/4 v8, 0x1

    .line 714
    invoke-virtual {v4, v5, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_160

    .line 715
    invoke-virtual {v13, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_15d
    const/16 v23, -0x1

    goto :goto_17f

    .line 717
    :cond_160
    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v8

    int-to-float v11, v9

    sub-float/2addr v8, v11

    .line 718
    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v11

    int-to-float v12, v10

    sub-float/2addr v11, v12

    .line 719
    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Image;->getTextureId(I)I

    move-result v12

    invoke-virtual {v14, v12}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 720
    invoke-virtual {v14, v7, v8, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(IFF)I

    move-result v7

    invoke-virtual {v13, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 v7, 0x0

    .line 721
    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    goto :goto_15d

    :goto_17f
    add-int/lit8 v6, v6, -0x1

    const/16 v24, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_148

    :cond_186
    move-object/from16 v27, v2

    move-object v0, v13

    const/4 v5, 0x0

    goto/16 :goto_59

    .line 696
    :cond_18c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not steal any frames from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_1a3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "May not find draft "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to steal frames from"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1bf
    move/from16 p6, v8

    move-object/from16 v26, v9

    move-object/from16 v25, v12

    .line 726
    const-string v0, "ref"

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_234

    .line 727
    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x0

    .line 728
    invoke-virtual {v4, v11, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 729
    invoke-virtual {v4, v10, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x1

    .line 730
    invoke-virtual {v4, v7, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 731
    const-string v9, "silent"

    invoke-virtual {v4, v9, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1eb

    const v7, 0x7fffffff

    :cond_1eb
    :goto_1eb
    if-lez v7, :cond_22c

    if-eqz v9, :cond_1f1

    .line 737
    array-length v8, v2

    goto :goto_1f5

    :cond_1f1
    invoke-virtual {v13}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v8

    :goto_1f5
    if-ge v0, v8, :cond_22c

    if-eqz v9, :cond_1fc

    .line 738
    aget v8, v2, v0

    goto :goto_200

    :cond_1fc
    invoke-virtual {v13, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v8

    :goto_200
    if-nez v1, :cond_211

    if-nez v6, :cond_211

    const/4 v10, 0x1

    .line 739
    invoke-virtual {v4, v5, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_211

    .line 740
    invoke-virtual {v13, v8}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_20e
    const/16 v23, -0x1

    goto :goto_225

    .line 742
    :cond_211
    invoke-virtual {v14, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v10

    int-to-float v11, v1

    sub-float/2addr v10, v11

    .line 743
    invoke-virtual {v14, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v11

    int-to-float v12, v6

    sub-float/2addr v11, v12

    .line 744
    invoke-virtual {v14, v8, v10, v11}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(IFF)I

    move-result v8

    invoke-virtual {v13, v8}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_20e

    :goto_225
    add-int/lit8 v7, v7, -0x1

    const/16 v24, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1eb

    :cond_22c
    const/16 v23, -0x1

    move-object/from16 v27, v2

    move-object v0, v13

    const/4 v5, 0x0

    goto/16 :goto_5b

    :cond_234
    const/16 v23, -0x1

    .line 757
    const-string v0, "bmp"

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "h"

    const-string v8, "w"

    const-string v9, "y"

    const-string v10, "x"

    if-eqz v1, :cond_2b9

    .line 760
    const-string v1, "place x"

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "place y"

    if-nez v11, :cond_25a

    invoke-virtual {v4, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_257

    goto :goto_25a

    :cond_257
    const/4 v1, 0x0

    const/4 v11, 0x0

    goto :goto_274

    .line 761
    :cond_25a
    :goto_25a
    invoke-virtual/range {p5 .. p5}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_2b1

    const/4 v11, 0x2

    .line 762
    new-array v11, v11, [I

    .line 763
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const/4 v1, 0x0

    aput p1, v11, v1

    .line 764
    invoke-virtual {v4, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const/16 v24, 0x1

    aput v12, v11, v24

    .line 767
    :goto_274
    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v12, v0, v11}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->addBitmapFrame(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Ljava/lang/String;[I)Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;

    move-result-object v0

    .line 769
    invoke-virtual {v4, v10, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget v11, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->x:I

    add-int/2addr v10, v11

    .line 770
    invoke-virtual {v4, v9, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iget v1, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->y:I

    add-int/2addr v9, v1

    .line 771
    iget v1, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->w:I

    invoke-virtual {v4, v8, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 772
    iget v8, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->h:I

    invoke-virtual {v4, v5, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 773
    iget v8, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->w:I

    const/4 v11, 0x1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v16

    div-int v8, v8, v16

    const-string v11, "rowlen"

    invoke-virtual {v4, v11, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 774
    iget v0, v0, Linfo/flowersoft/theotown/draftloader/PluginHelper$Parcel;->textureId:I

    invoke-virtual {v14, v0}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    move v0, v9

    move v9, v1

    move v1, v5

    move v5, v0

    move v0, v8

    goto :goto_2de

    .line 761
    :cond_2b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown attribute `place x/y`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b9
    const/4 v12, 0x0

    .line 776
    const-string v0, "offset x"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 777
    const-string v11, "offset y"

    invoke-virtual {v4, v11, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 778
    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int v10, v1, v0

    .line 779
    invoke-virtual {v4, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int v9, v0, v11

    .line 780
    invoke-virtual {v4, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 781
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v5, v9

    move v9, v0

    const/4 v0, 0x0

    .line 784
    :goto_2de
    const-string v8, "target w"

    invoke-virtual {v4, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 785
    const-string v11, "target h"

    invoke-virtual {v4, v11, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 786
    const-string v12, "scale"

    move/from16 v17, v5

    move-object/from16 v21, v6

    move-object/from16 p1, v13

    move-object/from16 v16, v14

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v12, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    move-wide/from16 v18, v13

    float-to-double v13, v5

    cmpl-double v6, v13, v18

    if-eqz v6, :cond_30e

    int-to-float v6, v8

    mul-float/2addr v6, v5

    .line 788
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v6, v11

    mul-float/2addr v5, v6

    .line 789
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v11

    :cond_30e
    const/4 v5, 0x1

    .line 791
    invoke-virtual {v4, v7, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 792
    const-string v7, "skip width factor"

    invoke-virtual {v4, v7, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 793
    const-string v5, "skip height factor"

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v9, :cond_324

    move v12, v9

    goto :goto_325

    :cond_324
    const/4 v12, 0x1

    :goto_325
    if-eqz v1, :cond_329

    move v13, v1

    goto :goto_32a

    :cond_329
    const/4 v13, 0x1

    :goto_32a
    move/from16 v22, v0

    move-object/from16 v27, v2

    move v2, v10

    move/from16 v0, v17

    const/4 v14, 0x0

    :goto_332
    if-ge v14, v6, :cond_3ae

    move/from16 v28, v5

    .line 800
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    move/from16 v29, v6

    .line 801
    invoke-interface {v3, v9, v1, v5}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->getHandleX(III)I

    move-result v6

    .line 802
    invoke-interface {v3, v9, v1, v5}, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->getHandleY(III)I

    move-result v5

    .line 803
    invoke-virtual {v4, v15, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v3, v21

    .line 804
    invoke-virtual {v4, v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v17, v15

    int-to-float v15, v2

    move/from16 v21, v2

    int-to-float v2, v0

    move/from16 v30, v0

    int-to-float v0, v9

    move/from16 v20, v0

    int-to-float v0, v1

    int-to-float v6, v6

    int-to-float v5, v5

    move-object/from16 v31, v16

    move/from16 v16, v2

    move-object/from16 v2, v17

    move/from16 v17, v20

    move/from16 v20, v5

    move v5, v14

    move-object/from16 v14, v31

    move-wide/from16 v31, v18

    move/from16 v18, v0

    move/from16 v19, v6

    const/4 v0, 0x0

    .line 806
    invoke-virtual/range {v14 .. v20}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFFFF)I

    move-result v6

    int-to-float v15, v8

    int-to-float v0, v12

    div-float/2addr v15, v0

    int-to-float v0, v11

    move/from16 v16, v0

    int-to-float v0, v13

    div-float v0, v16, v0

    .line 807
    invoke-virtual {v14, v6, v15, v0}, Lio/blueflower/stapel2d/drawing/Image;->scale(IFF)V

    move-object/from16 v0, p1

    .line 808
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    mul-int v6, v7, v9

    add-int v6, v21, v6

    mul-int v15, v28, v1

    add-int v15, v30, v15

    const/16 v24, 0x1

    if-lez v22, :cond_399

    add-int/lit8 v16, v5, 0x1

    .line 813
    rem-int v16, v16, v22

    if-nez v16, :cond_399

    add-int/2addr v15, v1

    move v6, v10

    :cond_399
    add-int/lit8 v5, v5, 0x1

    move-object/from16 p1, v0

    move-object/from16 v21, v3

    move-object/from16 v16, v14

    move v0, v15

    move-wide/from16 v18, v31

    move-object/from16 v3, p3

    move-object v15, v2

    move v14, v5

    move v2, v6

    move/from16 v5, v28

    move/from16 v6, v29

    goto :goto_332

    :cond_3ae
    move-object/from16 v0, p1

    move/from16 v29, v6

    move-object/from16 v14, v16

    move-wide/from16 v31, v18

    const/4 v5, 0x0

    const/16 v24, 0x1

    .line 818
    invoke-virtual {v14, v5}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 820
    const-string v1, "copies"

    invoke-virtual {v4, v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 821
    const-string v2, "n"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v5

    :goto_3cd
    mul-int v6, v1, v29

    if-ge v2, v6, :cond_3e1

    .line 823
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    sub-int v3, v3, v29

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3cd

    :cond_3e1
    :goto_3e1
    move-object/from16 v2, v27

    :goto_3e3
    add-int/lit8 v1, p6, 0x1

    move-object v13, v0

    move v0, v5

    move-object/from16 v12, v25

    move-object/from16 v9, v26

    goto/16 :goto_40

    :cond_3ed
    move-object/from16 v25, v12

    move-object v0, v13

    .line 829
    invoke-virtual/range {v25 .. v25}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_3fe

    const/4 v1, 0x0

    .line 830
    invoke-virtual {v14, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 833
    :cond_3fe
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    move-result-object v0

    return-object v0
.end method

.method public final loadInBiomeSpawner(Ljava/lang/Object;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 1053
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1054
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    goto :goto_28

    .line 1055
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/util/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_d

    goto :goto_28

    .line 1058
    :cond_d
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 1059
    const-string p3, "biome"

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const-string p3, "id"

    :goto_1a
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1060
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    iput-object v0, p2, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 1061
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadSpawnDefinition(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V

    .line 1064
    :goto_28
    const-class p1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object p1, p2, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    return-void
.end method

.method public loadInBiomeSpawners(Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/draft/SpawnDefinition;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1037
    iget-object p1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    :cond_e
    if-nez p1, :cond_11

    return-object p3

    .line 1040
    :cond_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p2

    new-array p3, p2, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p2, :cond_33

    .line 1042
    new-instance v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 1043
    invoke-interface {p4}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 1044
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInBiomeSpawner(Ljava/lang/Object;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)V

    .line 1045
    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_33
    return-object p3
.end method

.method public loadInfluences()[I
    .registers 3

    const/4 v0, 0x0

    .line 837
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([ILinfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object v0

    return-object v0
.end method

.method public loadInfluences(Linfo/flowersoft/theotown/util/json/JSONObject;)[I
    .registers 3

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([ILinfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object p1

    return-object p1
.end method

.method public loadInfluences([I)[I
    .registers 3

    .line 845
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([ILinfo/flowersoft/theotown/util/json/JSONObject;)[I

    move-result-object p1

    return-object p1
.end method

.method public loadInfluences([ILinfo/flowersoft/theotown/util/json/JSONObject;)[I
    .registers 9

    .line 849
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    .line 852
    array-length v3, p1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    :cond_12
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p1

    array-length v0, p1

    :goto_17
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    .line 856
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 857
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getTag()Ljava/lang/String;

    move-result-object v3

    aget v5, v1, v4

    invoke-virtual {p2, v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2e
    return-object v1
.end method

.method public loadLegacySpawn(Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 995
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-object p2

    .line 998
    :cond_9
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    const/4 v0, 0x0

    .line 999
    :goto_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 1000
    new-instance v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 1001
    new-instance v2, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 1002
    const-class v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {p3, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 1003
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadLegacySpawner(Ljava/lang/Object;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V

    .line 1004
    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3a
    return-object p2
.end method

.method public loadLegacySpawner(Ljava/lang/Object;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V
    .registers 7

    .line 1011
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, "Spawn by filter id is not supported anymore"

    if-nez v0, :cond_51

    .line 1014
    instance-of v0, p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v0, :cond_3a

    .line 1015
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 1016
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1020
    const-string v0, "p"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1021
    const-string v1, "height"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1022
    const-string v2, "radius"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p1, v2

    .line 1023
    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightFactor:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    .line 1024
    iput v1, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightCenter:F

    mul-float/2addr p1, v0

    .line 1025
    iput p1, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightRadius:F

    return-void

    .line 1017
    :cond_34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1028
    :cond_3a
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load spawner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1012
    :cond_51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final loadPrivileged(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 7

    .line 110
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    if-lez v0, :cond_17

    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget v2, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isInternalPlugin(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 111
    sget-object v0, Linfo/flowersoft/theotown/draft/PrivilegedMode;->Internal:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    .line 115
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "privileged"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/resources/TPCModule;->isTrusted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 119
    sget-object v2, Linfo/flowersoft/theotown/draft/PrivilegedMode;->PrivilegedKey:Linfo/flowersoft/theotown/draft/PrivilegedMode;

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    .line 120
    iget v2, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-nez v2, :cond_57

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->plugin:Z

    if-eqz v2, :cond_57

    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    if-nez v2, :cond_57

    .line 122
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/blueflower/stapel2d/util/SessionLogger;->logPriv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 128
    :cond_4e
    sget v0, Linfo/flowersoft/theotown/draftloader/PluginHelper;->PLUGIN_ID:I

    if-nez v0, :cond_57

    const-wide/16 v2, 0x64

    .line 131
    :try_start_54
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_57

    .line 139
    :catch_57
    :cond_57
    :goto_57
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "require privileges"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    goto :goto_6f

    .line 141
    :cond_64
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "require super privileges"

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_112

    const/4 v0, 0x2

    .line 147
    :goto_6f
    iget v2, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-lez v2, :cond_82

    .line 149
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getPluginTrustLevel(I)I

    move-result v2

    if-lt v2, v0, :cond_112

    .line 150
    invoke-static {v0}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->forStore(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    goto/16 :goto_112

    .line 153
    :cond_82
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    if-eqz v2, :cond_a5

    .line 155
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->getPrivilegeLevel()I

    move-result v2

    if-lt v2, v0, :cond_112

    .line 156
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v2

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/Draft;->externalPluginData:Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/ExternalPluginImporter$ExternalPluginData;->getUserId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/resources/TPCModule;->getUserTrustLevel(J)I

    move-result v2

    if-lt v2, v0, :cond_112

    .line 157
    invoke-static {v0}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->forVerifiedExternalPlugin(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    goto :goto_112

    .line 160
    :cond_a5
    iget-boolean v2, p1, Linfo/flowersoft/theotown/draft/Draft;->protectedPlugin:Z

    if-nez v2, :cond_10a

    .line 166
    invoke-static {}, Linfo/flowersoft/theotown/resources/TPCModule;->getInstance()Linfo/flowersoft/theotown/resources/TPCModule;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/TPCModule;->getCurrentUserTrustLevel()I

    move-result v2

    if-lt v2, v0, :cond_bb

    .line 167
    invoke-static {v0}, Linfo/flowersoft/theotown/draft/PrivilegedMode;->forLocal(I)Linfo/flowersoft/theotown/draft/PrivilegedMode;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/draft/Draft;->setPrivileged(Ljava/lang/Class;Linfo/flowersoft/theotown/draft/PrivilegedMode;)V

    goto :goto_112

    .line 169
    :cond_bb
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v1

    if-eqz v1, :cond_db

    .line 171
    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 173
    invoke-virtual {v1}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_d8

    .line 174
    const-string v1, "No forum account"

    goto :goto_dd

    .line 176
    :cond_d8
    const-string v1, "Insufficient permissions"

    goto :goto_dd

    .line 172
    :cond_db
    const-string v1, "Not logged in"

    .line 178
    :goto_dd
    new-instance v2, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not grant privileged status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {v0}, Linfo/flowersoft/theotown/draft/PrivilegeLevel;->localize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure that you are logged in and have sufficient permissions. More info: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_10a
    new-instance p1, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;

    const-string v0, "\"requires privileges\" is not supported in *.plugin or *.zip files"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/draftloader/NotPrivilegedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_112
    :goto_112
    return-void
.end method

.method public loadRoadDirs(Linfo/flowersoft/theotown/util/json/JSONArray;Z)[I
    .registers 19

    move-object/from16 v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v4, 0xa

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    if-eqz p2, :cond_8b

    .line 1128
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ne v1, v3, :cond_70

    const/16 v1, 0x100

    .line 1130
    new-array v1, v1, [I

    move v4, v2

    .line 1132
    :goto_1b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_29

    .line 1133
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v7

    aput v7, v1, v4

    add-int/2addr v4, v6

    goto :goto_1b

    :cond_29
    move v0, v6

    :goto_2a
    if-ge v0, v5, :cond_6f

    move v4, v2

    :goto_2d
    const/16 v7, 0x10

    if-ge v4, v7, :cond_6d

    mul-int/lit8 v7, v0, 0x40

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v7, v8

    .line 1139
    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v8

    add-int/lit8 v9, v0, -0x1

    mul-int/2addr v9, v3

    mul-int/2addr v8, v5

    add-int/2addr v9, v8

    add-int/lit8 v8, v7, 0x2

    add-int/lit8 v10, v9, 0x3

    .line 1141
    aget v10, v1, v10

    invoke-static {v10, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v7, 0x3

    add-int/lit8 v10, v9, 0x1

    .line 1142
    aget v10, v1, v10

    invoke-static {v10, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v7, 0x1

    .line 1143
    aget v10, v1, v9

    invoke-static {v10, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v9, v9, 0x2

    .line 1144
    aget v8, v1, v9

    invoke-static {v8, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v8

    aput v8, v1, v7

    add-int/2addr v4, v6

    goto :goto_2d

    :cond_6d
    add-int/2addr v0, v6

    goto :goto_2a

    :cond_6f
    return-object v1

    .line 1129
    :cond_70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dirs length must be 64 but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1148
    :cond_8b
    new-array v3, v3, [I

    .line 1149
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_106

    .line 1151
    new-array v1, v1, [I

    fill-array-data v1, :array_122

    move v7, v2

    .line 1152
    :goto_9b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_b1

    .line 1153
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v8

    .line 1154
    div-int/lit8 v9, v7, 0x4

    aget v9, v1, v9

    mul-int/2addr v9, v5

    rem-int/lit8 v10, v7, 0x4

    add-int/2addr v9, v10

    .line 1155
    aput v8, v3, v9

    add-int/2addr v7, v6

    goto :goto_9b

    .line 1158
    :cond_b1
    new-array v0, v4, [I

    fill-array-data v0, :array_132

    .line 1159
    new-array v1, v4, [I

    fill-array-data v1, :array_14a

    .line 1160
    new-array v7, v4, [I

    fill-array-data v7, :array_162

    move v8, v2

    :goto_c1
    if-ge v8, v4, :cond_105

    .line 1162
    aget v9, v0, v8

    .line 1163
    aget v10, v1, v8

    .line 1164
    aget v11, v7, v8

    mul-int/2addr v9, v5

    mul-int/2addr v10, v5

    move v12, v2

    :goto_cc
    if-ge v12, v5, :cond_d8

    add-int v13, v9, v12

    add-int v14, v10, v12

    .line 1168
    aget v14, v3, v14

    aput v14, v3, v13

    add-int/2addr v12, v6

    goto :goto_cc

    :cond_d8
    move v10, v2

    :goto_d9
    if-ge v10, v11, :cond_103

    add-int/lit8 v12, v9, 0x2

    .line 1171
    aget v13, v3, v12

    add-int/lit8 v14, v9, 0x3

    .line 1172
    aget v15, v3, v14

    invoke-static {v15, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v15

    aput v15, v3, v12

    add-int/lit8 v12, v9, 0x1

    .line 1173
    aget v15, v3, v12

    invoke-static {v15, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v15

    aput v15, v3, v14

    .line 1174
    aget v14, v3, v9

    invoke-static {v14, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v14

    aput v14, v3, v12

    .line 1175
    invoke-static {v13, v6}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v12

    aput v12, v3, v9

    add-int/2addr v10, v6

    goto :goto_d9

    :cond_103
    add-int/2addr v8, v6

    goto :goto_c1

    :cond_105
    return-object v3

    .line 1150
    :cond_106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dirs length must be 24 but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_122
    .array-data 4
        0x0
        0x1
        0x3
        0x5
        0x7
        0xf
    .end array-data

    :array_132
    .array-data 4
        0x2
        0x4
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data

    :array_14a
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
        0x5
        0x7
        0x3
        0x7
        0x7
    .end array-data

    :array_162
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x3
        0x1
        0x3
        0x2
        0x2
        0x1
    .end array-data
.end method

.method public loadSpawnDefinition(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 1186
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseSeed:I

    const-string v1, "noise seed"

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseSeed:I

    .line 1188
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseScale:F

    float-to-double v0, v0

    const-string v2, "noise scale"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseScale:F

    .line 1189
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseOffset:F

    float-to-double v0, v0

    const-string v2, "noise offset"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseOffset:F

    .line 1190
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    float-to-double v0, v0

    const-string v2, "noise factor"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    .line 1191
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseVariance:F

    float-to-double v0, v0

    const-string v2, "noise variance"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseVariance:F

    .line 1193
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightCenter:F

    float-to-double v0, v0

    const-string v2, "height center"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightCenter:F

    .line 1194
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightRadius:F

    float-to-double v0, v0

    const-string v2, "height radius"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightRadius:F

    .line 1195
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightOffset:F

    float-to-double v0, v0

    const-string v2, "height offset"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightOffset:F

    .line 1196
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightFactor:F

    float-to-double v0, v0

    const-string v2, "height factor"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightFactor:F

    .line 1198
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivCenter:F

    float-to-double v0, v0

    const-string v2, "deriv center"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivCenter:F

    .line 1199
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivRadius:F

    float-to-double v0, v0

    const-string v2, "deriv radius"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivRadius:F

    .line 1200
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivOffset:F

    float-to-double v0, v0

    const-string v2, "deriv offset"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivOffset:F

    .line 1201
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivFactor:F

    float-to-double v0, v0

    const-string v2, "deriv factor"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivFactor:F

    .line 1203
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->offset:F

    float-to-double v0, v0

    const-string v2, "offset"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->offset:F

    .line 1204
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->coverage:F

    float-to-double v0, v0

    const-string v2, "coverage"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->coverage:F

    .line 1205
    iget v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->precedence:F

    float-to-double v0, v0

    const-string v2, "precedence"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->precedence:F

    .line 1207
    const-string v0, "allowed ground"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_e8

    .line 1209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->allowedGroundSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 1210
    :goto_ce
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_e8

    .line 1211
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1212
    const-class v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 1213
    iget-object v2, p2, Linfo/flowersoft/theotown/draft/SpawnDefinition;->allowedGroundSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_ce

    :cond_e8
    return-void
.end method

.method public loadTargetFrames(Linfo/flowersoft/theotown/util/json/JSONObject;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 935
    const-string v0, "frames"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_e

    .line 936
    const-string v0, "frame"

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_27

    .line 940
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 941
    :goto_17
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 942
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 975
    new-instance v0, Linfo/flowersoft/theotown/draftloader/TransitionLoader;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;-><init>()V

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/draftloader/TransitionLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    return-object p1

    :cond_c
    return-object p3
.end method

.method public optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 521
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    if-nez p1, :cond_7

    return-object p2

    :cond_7
    return-object p1
.end method

.method public positivePrice(I)I
    .registers 3

    const/4 v0, 0x0

    .line 1115
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x77359400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public readFileOrString(Linfo/flowersoft/theotown/util/vfs/AbstractFile;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 493
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 494
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 495
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result p3

    if-eqz p3, :cond_19

    .line 497
    :try_start_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    :cond_19
    return-object p2
.end method

.method public setSource(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public setup(Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;)V
    .registers 2

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    return-void
.end method

.method public signedPrice(I)I
    .registers 3

    const v0, -0x77359400

    .line 1119
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const v0, 0x77359400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
