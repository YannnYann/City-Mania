package info.flowersoft.theotown.crossplatform;

import com.badlogic.gdx.pay.PurchaseManager;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import java.io.File;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes4.dex */
public final class TheoTown {
    public static String APPLICATION_ID = null;
    public static File APP_CACHE_DIR = null;
    public static File APP_DIR = null;
    public static File APP_PREFS_DIR = null;
    public static File APP_PRIVATE_DIR = null;
    public static File APP_SCREENSHOTS_DIR = null;
    public static boolean CHECK_TIME_ONLINE = false;
    public static boolean DEBUG = false;
    public static String DEVICE_MANUFACTURER = null;
    public static String DEVICE_MODEL = null;
    public static boolean NOT_CHILD_DIRECTED = false;
    public static boolean PREMIUM = false;
    public static boolean SHOW_FILES_EXPLORER = false;
    public static String STORE_NAME = null;
    public static String VERSIONH = null;
    public static String VERSIONI = null;
    public static int VERSION_CODE = 0;
    public static String VERSION_NAME = null;
    public static Analytics analytics = null;
    public static boolean checkedJaBirthday = false;
    public static GameSetup gameSetup = null;
    public static GamesService gamesService = null;
    public static boolean jaHasBirthday = false;
    public static Notifications notifications;
    public static PurchaseManager purchaseManager;
    public static RuntimeFeatures runtimeFeatures;
    public static SocialManager socialManager;
    public static VideoAdStage.VideoAdStageFactory videoAdStageFactory;

    public static boolean isPickleMode() {
        User user = Backend.getInstance().getUser();
        return user.isValid() && user.getId() == 70;
    }

    public static boolean isPickleBirthday() {
        if (!checkedJaBirthday) {
            checkedJaBirthday = true;
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            jaHasBirthday = gregorianCalendar.get(2) == 11 && gregorianCalendar.get(5) == 26;
        }
        return jaHasBirthday;
    }
}
