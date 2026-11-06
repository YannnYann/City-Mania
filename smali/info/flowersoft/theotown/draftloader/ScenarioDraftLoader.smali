###### Class info.flowersoft.theotown.draftloader.ScenarioDraftLoader (info.flowersoft.theotown.draftloader.ScenarioDraftLoader)
.class public final Linfo/flowersoft/theotown/draftloader/ScenarioDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ScenarioDraftLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenarioDraftLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenarioDraftLoader.kt\ninfo/flowersoft/theotown/draftloader/ScenarioDraftLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 11
    const-string v0, "scenario"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 5

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/ScenarioDraft;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 18
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 22
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "city file"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    .line 23
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->setCityFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    goto :goto_37

    .line 25
    :cond_1d
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->setCityFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 26
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getCityFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 29
    :goto_37
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "discord url"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->setDiscordUrl(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "completed var"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->setCompletedVarName(Ljava/lang/String;)V

    .line 33
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-class v2, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    if-nez v1, :cond_6d

    .line 36
    iget v1, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_67

    .line 38
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SCENARIOS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 41
    :cond_67
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SCENARIOS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 34
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate definition of scenario "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid city file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot define scenario without permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
