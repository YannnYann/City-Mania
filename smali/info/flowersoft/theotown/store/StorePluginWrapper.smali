###### Class info.flowersoft.theotown.store.StorePluginWrapper (info.flowersoft.theotown.store.StorePluginWrapper)
.class public abstract Linfo/flowersoft/theotown/store/StorePluginWrapper;
.super Ljava/lang/Object;
.source "StorePluginWrapper.java"

# interfaces
.implements Linfo/flowersoft/theotown/store/PluginWrapper;


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public index:I

.field public mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public plugin:Linfo/flowersoft/theotown/store/StorePlugin;


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    .line 22
    iput p1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->index:I

    .line 23
    iput-object p2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 24
    iput-object p3, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public acquireAndDownload()V
    .registers 13

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getRevisionId()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/StorePlugin;->getVersion()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/StorePlugin;->getPrice()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->acquireAndNotifyPlugin(IIII)V

    .line 307
    iget-object v5, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v6

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getRevisionId()I

    move-result v7

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getVersion()I

    move-result v8

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 308
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getTitle()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getSize()J

    move-result-wide v10

    .line 307
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadPlugin(IIILjava/lang/String;J)V

    return-void
.end method

.method public canDelete()Z
    .registers 2

    .line 249
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isDownloaded()Z

    move-result v0

    return v0
.end method

.method public canRate()Z
    .registers 2

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->supportsRatings()Z

    move-result v0

    return v0
.end method

.method public canReport()Z
    .registers 2

    .line 109
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isReported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canVisitAuthor()Z
    .registers 2

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public delete()V
    .registers 3

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->deletePlugin(I)V

    return-void
.end method

.method public downloadOnly()V
    .registers 8

    .line 313
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getRevisionId()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/StorePlugin;->getVersion()I

    move-result v3

    iget-object v4, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 314
    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/StorePlugin;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/StorePlugin;->getSize()J

    move-result-wide v5

    .line 313
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->downloadPlugin(IIILjava/lang/String;J)V

    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Linfo/flowersoft/theotown/store/StoreCategory;
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getCategory()Linfo/flowersoft/theotown/store/StoreCategory;

    move-result-object v0

    return-object v0
.end method

.method public getComments()I
    .registers 2

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getComments()I

    move-result v0

    return v0
.end method

.method public getCommentsStage()Lio/blueflower/stapel2d/gamestack/Stage;
    .registers 5

    .line 211
    new-instance v0, Linfo/flowersoft/theotown/stages/PluginCommentsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    new-instance v3, Linfo/flowersoft/theotown/store/StorePluginWrapper$2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper$2;-><init>(Linfo/flowersoft/theotown/store/StorePluginWrapper;)V

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/PluginCommentsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/store/StorePlugin;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadError()Ljava/lang/String;
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadError(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadProgress()F
    .registers 3

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadProgress(I)F

    move-result v0

    return v0
.end method

.method public getDownloads()I
    .registers 2

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getDownloads()I

    move-result v0

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 3

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 236
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrice()I
    .registers 2

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getPrice()I

    move-result v0

    return v0
.end method

.method public getRatingCount()I
    .registers 2

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingCount()I

    move-result v0

    return v0
.end method

.method public getRatingSum()I
    .registers 2

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingSum()I

    move-result v0

    return v0
.end method

.method public getSize()J
    .registers 3

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserRating()I
    .registers 3

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getUserRating(I)I

    move-result v0

    return v0
.end method

.method public hasCategory()Z
    .registers 2

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getCategory()Linfo/flowersoft/theotown/store/StoreCategory;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public hasNewVersion()Z
    .registers 4

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 298
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getVersion()I

    move-result v2

    if-ge v0, v2, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    return v1
.end method

.method public isAcquired()Z
    .registers 3

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isAcquired(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 3

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 90
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableInStore()Z
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDownloaded()Z
    .registers 3

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloaded(I)Z

    move-result v0

    return v0
.end method

.method public isDownloading()Z
    .registers 3

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloading(I)Z

    move-result v0

    return v0
.end method

.method public isFeatured()Z
    .registers 2

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->isFeatured()Z

    move-result v0

    return v0
.end method

.method public isInternal()Z
    .registers 3

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isInternalPlugin(I)Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .registers 3

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isLoaded(I)Z

    move-result v0

    return v0
.end method

.method public isNewlyInstalledAndWaiting()Z
    .registers 3

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 285
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isLastActive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isPermanent()Z
    .registers 3

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v0

    return v0
.end method

.method public isQualityPluginCertifiedAuthor()Z
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->isCertifiedPluginQuality()Z

    move-result v0

    return v0
.end method

.method public isReported()Z
    .registers 3

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPluginReported(I)Z

    move-result v0

    return v0
.end method

.method public isStorePlugin()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public newVersionIsDownloadedAndWaiting()Z
    .registers 3

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 291
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getLastVersion()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getVersion()I

    move-result v0

    if-ge v1, v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public rate(I)V
    .registers 6

    .line 185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->getUserRating()I

    move-result v0

    if-eqz v0, :cond_27

    .line 187
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratePlugin(II)V

    .line 188
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/store/StorePlugin;->setRatingCount(I)V

    .line 189
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingSum()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/store/StorePlugin;->setRatingSum(I)V

    :cond_27
    if-eqz p1, :cond_49

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->ratePlugin(II)V

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StorePlugin;->setRatingCount(I)V

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getRatingSum()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/StorePlugin;->setRatingSum(I)V

    :cond_49
    return-void
.end method

.method public report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
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

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    new-instance v2, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;

    invoke-direct {v2, p0, p2, p3}, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;-><init>(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->reportPlugin(ILjava/lang/String;Linfo/flowersoft/theotown/backend/ResponseHandler;)V

    return-void
.end method

.method public requiresRestart()Z
    .registers 3

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->requiresRestart(I)Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .registers 4

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 97
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->setActive(Z)V

    .line 98
    iget-object p1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->saveState()V

    :cond_16
    return-void
.end method

.method public supportsComments()Z
    .registers 2

    .line 201
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isAvailableInStore()Z

    move-result v0

    return v0
.end method

.method public supportsRating()Z
    .registers 2

    .line 160
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isAvailableInStore()Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.store.StorePluginWrapper.AnonymousClass1 (info.flowersoft.theotown.store.StorePluginWrapper$1)
.class public Linfo/flowersoft/theotown/store/StorePluginWrapper$1;
.super Ljava/lang/Object;
.source "StorePluginWrapper.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/StorePluginWrapper;->report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 4

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 122
    iget-object p1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 119
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StorePluginWrapper$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StorePluginWrapper.AnonymousClass2 (info.flowersoft.theotown.store.StorePluginWrapper$2)
.class public Linfo/flowersoft/theotown/store/StorePluginWrapper$2;
.super Ljava/lang/Object;
.source "StorePluginWrapper.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/StorePluginWrapper;->getCommentsStage()Lio/blueflower/stapel2d/gamestack/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StorePluginWrapper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$2;->this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$2;->this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StorePluginWrapper$2;->this$0:Linfo/flowersoft/theotown/store/StorePluginWrapper;

    invoke-interface {v0}, Linfo/flowersoft/theotown/store/PluginWrapper;->getFrame()I

    move-result v0

    return v0
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method
