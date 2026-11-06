###### Class info.flowersoft.theotown.store.LocalPluginWrapper (info.flowersoft.theotown.store.LocalPluginWrapper)
.class public Linfo/flowersoft/theotown/store/LocalPluginWrapper;
.super Ljava/lang/Object;
.source "LocalPluginWrapper.java"

# interfaces
.implements Linfo/flowersoft/theotown/store/PluginWrapper;


# instance fields
.field public frame:I

.field public lpc:Linfo/flowersoft/theotown/store/PluginUnloader;

.field public final manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/cityloader/LocalPluginManifest;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->lpc:Linfo/flowersoft/theotown/store/PluginUnloader;

    .line 25
    iput-object p2, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "$lpf_cat_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getVersion()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-eqz p1, :cond_3d

    .line 29
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->frame:I

    :cond_3d
    return-void
.end method


# virtual methods
.method public acquireAndDownload()V
    .registers 1

    .line 0
    return-void
.end method

.method public canDelete()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public canRate()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public canReport()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public canVisitAuthor()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public delete()V
    .registers 3

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getPluginPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    .line 214
    instance-of v1, v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    if-eqz v1, :cond_1d

    check-cast v0, Linfo/flowersoft/theotown/util/vfs/RealFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/RealFile;->getRealFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 215
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public downloadOnly()V
    .registers 1

    .line 0
    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Linfo/flowersoft/theotown/store/StoreCategory;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComments()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getCommentsStage()Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadError()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadProgress()F
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloads()I
    .registers 2

    .line 0
    const/4 v0, -0x1

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 274
    iget v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->frame:I

    return v0
.end method

.method public getImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 269
    iget v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->frame:I

    if-eqz v0, :cond_7

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getRatingCount()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getRatingSum()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .registers 3

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserRating()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCategory()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNewVersion()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isAcquired()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isActive()Z

    move-result v0

    return v0
.end method

.method public isAvailableInStore()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloaded()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isDownloading()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatured()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isInternal()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isNewlyInstalledAndWaiting()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanent()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isQualityPluginCertifiedAuthor()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isReported()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isStorePlugin()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public newVersionIsDownloadedAndWaiting()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public rate(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public requiresRestart()Z
    .registers 2

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->requiresRestart()Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .registers 3

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->manifest:Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setActive(Z)V

    .line 101
    iget-object p1, p0, Linfo/flowersoft/theotown/store/LocalPluginWrapper;->lpc:Linfo/flowersoft/theotown/store/PluginUnloader;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/PluginUnloader;->saveState()V

    return-void
.end method

.method public supportsComments()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsRating()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public visitAuthor()V
    .registers 1

    .line 0
    return-void
.end method
