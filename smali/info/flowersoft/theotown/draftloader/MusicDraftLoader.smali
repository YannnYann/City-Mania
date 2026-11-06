###### Class info.flowersoft.theotown.draftloader.MusicDraftLoader (info.flowersoft.theotown.draftloader.MusicDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/MusicDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "MusicDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "music"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/draft/MusicDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/MusicDraft;-><init>()V

    .line 30
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    sget-object v2, Linfo/flowersoft/theotown/resources/MusicBox$Type;->GAME:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    iget v2, v2, Linfo/flowersoft/theotown/resources/MusicBox$Type;->legacyIndex:I

    .line 33
    const-string v3, "music type"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 32
    invoke-static {v1}, Linfo/flowersoft/theotown/resources/MusicBox$Type;->resolveLegacy(I)Linfo/flowersoft/theotown/resources/MusicBox$Type;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/MusicDraft;->musicType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 35
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getMusicPath(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/MusicDraft;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v1, :cond_ad

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "clear previous"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 44
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/MusicDraft;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    instance-of v2, v1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v2, :cond_4c

    .line 45
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    check-cast v1, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    goto :goto_6c

    .line 47
    :cond_4c
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Resources;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 49
    :try_start_5e
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/MusicDraft;->file:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->write(Ljava/io/InputStream;Z)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :goto_6c
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (plugin)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/MusicDraft;->musicType:Linfo/flowersoft/theotown/resources/MusicBox$Type;

    .line 54
    invoke-virtual {v2, v3, v4, v5, v1}, Linfo/flowersoft/theotown/resources/MusicBox;->addMusic(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/resources/MusicBox$Type;Lcom/badlogic/gdx/files/FileHandle;)V

    return-object v0

    .line 39
    :cond_a5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Music draft option `clear previous` was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_ad
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
