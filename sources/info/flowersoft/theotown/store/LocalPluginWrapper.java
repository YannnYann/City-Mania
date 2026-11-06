package info.flowersoft.theotown.store;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.draft.CategoryDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import info.flowersoft.theotown.util.vfs.RealFile;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class LocalPluginWrapper implements PluginWrapper {
    public int frame;
    public PluginUnloader lpc = PluginUnloader.getInstance();
    public final LocalPluginManifest manifest;

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void acquireAndDownload() {
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canDelete() {
        return true;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canRate() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canReport() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean canVisitAuthor() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void downloadOnly() {
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public StoreCategory getCategory() {
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getComments() {
        return 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public Stage getCommentsStage() {
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getDownloadError() {
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public float getDownloadProgress() {
        return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getDownloads() {
        return -1;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getError() {
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getPrice() {
        return 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getRatingCount() {
        return 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getRatingSum() {
        return 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getUserRating() {
        return 0;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean hasCategory() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean hasNewVersion() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isAcquired() {
        return true;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isAvailableInStore() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isDownloaded() {
        return true;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isDownloading() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isFeatured() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isInternal() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isNewlyInstalledAndWaiting() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isPermanent() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isQualityPluginCertifiedAuthor() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isReported() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isStorePlugin() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean newVersionIsDownloadedAndWaiting() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void rate(int i) {
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void report(String str, Runnable runnable, Setter<String> setter) {
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean supportsComments() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean supportsRating() {
        return false;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void visitAuthor() {
    }

    public LocalPluginWrapper(int i, LocalPluginManifest localPluginManifest) {
        this.manifest = localPluginManifest;
        CategoryDraft categoryDraft = (CategoryDraft) Drafts.get("$lpf_cat_" + localPluginManifest.getId() + ":" + localPluginManifest.getVersion(), CategoryDraft.class);
        if (categoryDraft != null) {
            this.frame = categoryDraft.frames[0];
        }
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getTitle() {
        return this.manifest.getTitle();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getDescription() {
        return this.manifest.getText();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public String getAuthor() {
        return this.manifest.getAuthor();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isActive() {
        return this.manifest.isActive();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void setActive(boolean z) {
        this.manifest.setActive(z);
        this.lpc.saveState();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public long getSize() {
        return this.manifest.getSize();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public void delete() {
        AbstractFile pluginPath = this.manifest.getPluginPath();
        if ((pluginPath instanceof RealFile) && Files.deleteFile(((RealFile) pluginPath).getRealFile())) {
            Drafts.LOCAL_PLUGIN_MANIFESTS.remove(this.manifest);
        }
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean isLoaded() {
        return this.manifest.isLoaded();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public boolean requiresRestart() {
        return this.manifest.requiresRestart();
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public Image getImage() {
        if (this.frame != 0) {
            return Resources.IMAGE_WORLD;
        }
        return null;
    }

    @Override // info.flowersoft.theotown.store.PluginWrapper
    public int getFrame() {
        return this.frame;
    }
}
