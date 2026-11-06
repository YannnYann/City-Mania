package info.flowersoft.theotown.store;

import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public interface PluginWrapper {
    void acquireAndDownload();

    boolean canDelete();

    boolean canRate();

    boolean canReport();

    boolean canVisitAuthor();

    void delete();

    void downloadOnly();

    String getAuthor();

    StoreCategory getCategory();

    int getComments();

    Stage getCommentsStage();

    String getDescription();

    String getDownloadError();

    float getDownloadProgress();

    int getDownloads();

    String getError();

    int getFrame();

    Image getImage();

    int getPrice();

    int getRatingCount();

    int getRatingSum();

    long getSize();

    String getTitle();

    int getUserRating();

    boolean hasCategory();

    boolean hasNewVersion();

    boolean isAcquired();

    boolean isActive();

    boolean isAvailableInStore();

    boolean isDownloaded();

    boolean isDownloading();

    boolean isFeatured();

    boolean isInternal();

    boolean isLoaded();

    boolean isNewlyInstalledAndWaiting();

    boolean isPermanent();

    boolean isQualityPluginCertifiedAuthor();

    boolean isReported();

    boolean isStorePlugin();

    boolean newVersionIsDownloadedAndWaiting();

    void rate(int i);

    void report(String str, Runnable runnable, Setter<String> setter);

    boolean requiresRestart();

    void setActive(boolean z);

    boolean supportsComments();

    boolean supportsRating();

    void visitAuthor();
}
