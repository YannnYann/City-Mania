package info.flowersoft.theotown.store;

import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.stages.PluginCommentsStage;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StorePluginWrapper implements PluginWrapper {
    public final Stapel2DGameContext context;
    public int index;
    public ManagedPluginsController mpc = ManagedPluginsController.getInstance();
    public StorePlugin plugin;

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isStorePlugin() {
        return true;
    }

    public StorePluginWrapper(int i, StorePlugin storePlugin, Stapel2DGameContext stapel2DGameContext) {
        this.index = i;
        this.plugin = storePlugin;
        this.context = stapel2DGameContext;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getTitle() {
        return this.plugin.getTitle();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getDescription() {
        return this.plugin.getDescription();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean hasCategory() {
        return this.plugin.getCategory() != null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public StoreCategory getCategory() {
        return this.plugin.getCategory();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isAvailableInStore() {
        return this.plugin.isAvailable();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isInternal() {
        return this.mpc.isInternalPlugin(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isPermanent() {
        return this.mpc.isPermanent(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isFeatured() {
        return this.plugin.isFeatured();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getAuthor() {
        return this.plugin.getAuthor();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isQualityPluginCertifiedAuthor() {
        return this.plugin.isCertifiedPluginQuality();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isActive() {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        return managedPluginFile != null && managedPluginFile.isActive();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void setActive(boolean z) {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        if (managedPluginFile != null) {
            managedPluginFile.setActive(z);
            this.mpc.saveState();
        }
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canVisitAuthor() {
        return this.plugin.getAuthorId() != 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canReport() {
        return !isReported();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isReported() {
        return this.mpc.isPluginReported(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void report(String str, final Runnable runnable, final Setter<String> setter) throws Throwable {
        this.mpc.reportPlugin(this.plugin.getPluginId(), str, new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.store.StorePluginWrapper.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(JSONObject jSONObject) {
                runnable.run();
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                setter.set(exc.toString());
                exc.printStackTrace();
            }
        });
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getDownloads() {
        return this.plugin.getDownloads();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public long getSize() {
        return this.plugin.getSize();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isAcquired() {
        return this.mpc.isAcquired(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getPrice() {
        return this.plugin.getPrice();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean supportsRating() {
        return isAvailableInStore();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canRate() {
        return this.mpc.supportsRatings();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getRatingCount() {
        return this.plugin.getRatingCount();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getRatingSum() {
        return this.plugin.getRatingSum();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getUserRating() {
        return this.mpc.getUserRating(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void rate(int i) throws Throwable {
        int userRating = getUserRating();
        if (userRating != 0) {
            this.mpc.ratePlugin(this.plugin.getPluginId(), 0);
            this.plugin.setRatingCount(r1.getRatingCount() - 1);
            StorePlugin storePlugin = this.plugin;
            storePlugin.setRatingSum(storePlugin.getRatingSum() - userRating);
        }
        if (i != 0) {
            this.mpc.ratePlugin(this.plugin.getPluginId(), i);
            StorePlugin storePlugin2 = this.plugin;
            storePlugin2.setRatingCount(storePlugin2.getRatingCount() + 1);
            StorePlugin storePlugin3 = this.plugin;
            storePlugin3.setRatingSum(storePlugin3.getRatingSum() + i);
        }
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean supportsComments() {
        return isAvailableInStore();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getComments() {
        return this.plugin.getComments();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public Stage getCommentsStage() {
        return new PluginCommentsStage(this.context, this.plugin, new AbstractCommentsStage.ImageProvider() { // from class: info.flowersoft.theotown.store.StorePluginWrapper.2
            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public void prepare() {
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public void release() {
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public Image get() {
                return StorePluginWrapper.this.getImage();
            }

            @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
            public int getFrame() {
                return StorePluginWrapper.this.getFrame();
            }
        });
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getError() {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        if (managedPluginFile != null) {
            return managedPluginFile.getError();
        }
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getDownloadError() {
        return this.mpc.getDownloadError(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canDelete() {
        return isDownloaded();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void delete() {
        this.mpc.deletePlugin(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isDownloaded() {
        return this.mpc.isDownloaded(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isDownloading() {
        return this.mpc.isDownloading(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public float getDownloadProgress() {
        return this.mpc.getDownloadProgress(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isLoaded() {
        return this.mpc.isLoaded(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean requiresRestart() {
        return this.mpc.requiresRestart(this.plugin.getPluginId());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isNewlyInstalledAndWaiting() {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        return (managedPluginFile == null || managedPluginFile.isActive() || !managedPluginFile.isLastActive()) ? false : true;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean newVersionIsDownloadedAndWaiting() {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        return managedPluginFile != null && managedPluginFile.getLastVersion() < managedPluginFile.getVersion();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean hasNewVersion() {
        ManagedPluginFile managedPluginFile = this.mpc.getManagedPluginFile(this.plugin.getPluginId());
        return managedPluginFile != null && managedPluginFile.getVersion() < this.plugin.getVersion();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void acquireAndDownload() throws Throwable {
        this.mpc.acquireAndNotifyPlugin(this.plugin.getPluginId(), this.plugin.getRevisionId(), this.plugin.getVersion(), this.plugin.getPrice());
        this.mpc.downloadPlugin(this.plugin.getPluginId(), this.plugin.getRevisionId(), this.plugin.getVersion(), this.plugin.getTitle(), this.plugin.getSize());
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void downloadOnly() {
        this.mpc.downloadPlugin(this.plugin.getPluginId(), this.plugin.getRevisionId(), this.plugin.getVersion(), this.plugin.getTitle(), this.plugin.getSize());
    }
}
