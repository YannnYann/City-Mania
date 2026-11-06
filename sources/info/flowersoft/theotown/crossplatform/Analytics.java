package info.flowersoft.theotown.crossplatform;

import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.RankDraft;
import io.blueflower.stapel2d.gamestack.Stage;

/* JADX INFO: loaded from: classes4.dex */
public interface Analytics {
    long getNumId();

    void lateInit();

    void logEvent(String str, String str2, String str3);

    void logEvent(String str, String[] strArr);

    void logException(Exception exc);

    void logException(String str, Exception exc);

    void logLoadCity(City city);

    void logNewCity(City city);

    void logPurchase(FeatureDraft featureDraft);

    void logRankUpgrade(RankDraft rankDraft);

    void logSaveCity(City city);

    void logSettings();

    void logStage(Stage stage);

    void setConnectedUser(User user);

    void writeToLog(String str);
}
