package info.flowersoft.theotown.android;

import com.badlogic.gdx.backends.android.AndroidApplication;
import com.google.firebase.analytics.FirebaseAnalytics;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.CustomAnalytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.draft.RankDraft;
import io.blueflower.stapel2d.gamestack.Stage;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidAnalytics extends CustomAnalytics {
    public FirebaseAnalytics firebase;

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void lateInit() {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logEvent(String str, String str2, String str3) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logEvent(String str, String[] strArr) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logLoadCity(City city) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logNewCity(City city) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logPurchase(FeatureDraft featureDraft) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logRankUpgrade(RankDraft rankDraft) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logSaveCity(City city) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logSettings() {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void logStage(Stage stage) {
    }

    @Override // info.flowersoft.theotown.crossplatform.Analytics
    public void setConnectedUser(User user) {
    }

    public AndroidAnalytics(AndroidApplication androidApplication, File file, File file2) {
        super(file, file2);
        if (TheoTown.DEBUG) {
            return;
        }
        this.firebase = FirebaseAnalytics.getInstance(androidApplication);
    }
}
