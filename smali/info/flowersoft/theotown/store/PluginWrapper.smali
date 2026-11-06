###### Class info.flowersoft.theotown.store.PluginWrapper (info.flowersoft.theotown.store.PluginWrapper)
.class public interface abstract Linfo/flowersoft/theotown/store/PluginWrapper;
.super Ljava/lang/Object;
.source "PluginWrapper.java"


# virtual methods
.method public abstract acquireAndDownload()V
.end method

.method public abstract canDelete()Z
.end method

.method public abstract canRate()Z
.end method

.method public abstract canReport()Z
.end method

.method public abstract canVisitAuthor()Z
.end method

.method public abstract delete()V
.end method

.method public abstract downloadOnly()V
.end method

.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getCategory()Linfo/flowersoft/theotown/store/StoreCategory;
.end method

.method public abstract getComments()I
.end method

.method public abstract getCommentsStage()Lio/blueflower/stapel2d/gamestack/Stage;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDownloadError()Ljava/lang/String;
.end method

.method public abstract getDownloadProgress()F
.end method

.method public abstract getDownloads()I
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getFrame()I
.end method

.method public abstract getImage()Lio/blueflower/stapel2d/drawing/Image;
.end method

.method public abstract getPrice()I
.end method

.method public abstract getRatingCount()I
.end method

.method public abstract getRatingSum()I
.end method

.method public abstract getSize()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserRating()I
.end method

.method public abstract hasCategory()Z
.end method

.method public abstract hasNewVersion()Z
.end method

.method public abstract isAcquired()Z
.end method

.method public abstract isActive()Z
.end method

.method public abstract isAvailableInStore()Z
.end method

.method public abstract isDownloaded()Z
.end method

.method public abstract isDownloading()Z
.end method

.method public abstract isFeatured()Z
.end method

.method public abstract isInternal()Z
.end method

.method public abstract isLoaded()Z
.end method

.method public abstract isNewlyInstalledAndWaiting()Z
.end method

.method public abstract isPermanent()Z
.end method

.method public abstract isQualityPluginCertifiedAuthor()Z
.end method

.method public abstract isReported()Z
.end method

.method public abstract isStorePlugin()Z
.end method

.method public abstract newVersionIsDownloadedAndWaiting()Z
.end method

.method public abstract rate(I)V
.end method

.method public abstract report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
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
.end method

.method public abstract requiresRestart()Z
.end method

.method public abstract setActive(Z)V
.end method

.method public abstract supportsComments()Z
.end method

.method public abstract supportsRating()Z
.end method

.method public abstract visitAuthor()V
.end method
