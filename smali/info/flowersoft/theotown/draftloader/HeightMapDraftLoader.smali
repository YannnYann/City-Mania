###### Class info.flowersoft.theotown.draftloader.HeightMapDraftLoader (info.flowersoft.theotown.draftloader.HeightMapDraftLoader)
.class public final Linfo/flowersoft/theotown/draftloader/HeightMapDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "HeightMapDraftLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeightMapDraftLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeightMapDraftLoader.kt\ninfo/flowersoft/theotown/draftloader/HeightMapDraftLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 9
    const-string v0, "heightmap"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 5

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/draft/HeightMapDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/HeightMapDraft;-><init>()V

    .line 14
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 16
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->resolveFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/HeightMapDraft;->setFile(Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 17
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/HeightMapDraft;->getFile()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 19
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-class v2, Linfo/flowersoft/theotown/draft/HeightMapDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/HeightMapDraft;

    if-nez v1, :cond_3d

    .line 22
    iget v1, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_37

    .line 24
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->HEIGHTMAPS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 27
    :cond_37
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->HEIGHTMAPS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 20
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate definition of heightmap "

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

    .line 17
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
