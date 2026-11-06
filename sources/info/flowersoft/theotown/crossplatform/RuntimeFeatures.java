package info.flowersoft.theotown.crossplatform;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import info.flowersoft.theotown.creation.HeightMap;
import info.flowersoft.theotown.stages.commandhandler.CommandHandler;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface RuntimeFeatures {

    public interface TextEditor {
        void dispose();

        String getText();

        void markAsAutoFill(boolean z);

        void setHint(String str);

        void setPassword(boolean z);

        void setShape(int i, int i2, int i3, int i4);

        void setText(String str);

        void setVisible(boolean z);
    }

    void applyDarkTheme(boolean z);

    void applyOrientation(int i);

    boolean canImportAndExportFolder();

    void closeApp();

    TextEditor createTextEditor(String str, int i, int i2, int i3, int i4);

    String downloadTPC(String str);

    void exportFile(FileHandle fileHandle, String str, Runnable runnable);

    List<CommandHandler> getCommandHandlers();

    float getCornerRadius();

    String getDeviceModel();

    int[][] getFullscreenResolutions();

    float[] getInsetsTRBL();

    int getLogicalWidth();

    long getRemainingStorage(File file);

    String getToken();

    void importFile(File file, boolean z, Runnable runnable);

    void importImageFile(File file, Setter<File> setter);

    void importMusicFile(File file, Setter<File> setter);

    void informAboutNewImage(File file);

    boolean isFullscreen();

    boolean isWifiConnected();

    HeightMap loadHeightMap(FileHandle fileHandle, int i);

    String normalizeShaderCode(String str);

    boolean openURI(String str);

    void openURL(String str);

    void openURLInApp(String str);

    boolean prefersDarkMode();

    void rateGame();

    void rateGameLight();

    void restartAppSlowly();

    String saveImageToGallery(String str, Pixmap pixmap, String str2);

    void setFullscreen(boolean z, int i, int i2);

    void shareImage(File file);

    void shareText(String str, String str2);

    void showFile(File file);

    void showImage(File file);

    void showToast(String str);

    boolean supportsFullscreen();

    boolean supportsOrientation();

    boolean supportsShareImage();

    boolean supportsShareText();

    boolean waitingForPermissions();
}
