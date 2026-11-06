package info.flowersoft.theotown.crossplatform;

import info.flowersoft.theotown.util.json.JSONArray;
import io.blueflower.stapel2d.gamestack.Stage;

/* JADX INFO: loaded from: classes4.dex */
public interface GamesService {

    public interface StatusListener {
        void handle(boolean z);

        void handleEvents(JSONArray jSONArray);
    }

    void dispose();

    boolean enforceCake();

    boolean incrementEvent(String str, int i);

    boolean isAvailable();

    boolean isOfflineMode();

    boolean isSignedIn();

    void registerStatusListener(StatusListener statusListener);

    void resetAchievements();

    void runCallbacks();

    void setup(boolean z);

    void showAchievements();

    void showLeaderboards();

    boolean submitScore(String str, long j);

    boolean unlockAchievement(String str);

    boolean unlockAchievement(String str, int i, int i2);

    void visitStage(Stage stage);
}
