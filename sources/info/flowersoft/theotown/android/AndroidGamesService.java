package info.flowersoft.theotown.android;

import android.content.Intent;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidEventListener;
import com.google.android.gms.games.AnnotatedData;
import com.google.android.gms.games.AuthenticationResult;
import com.google.android.gms.games.GamesSignInClient;
import com.google.android.gms.games.PlayGames;
import com.google.android.gms.games.PlayGamesSdk;
import com.google.android.gms.games.event.Event;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.crossplatform.GamesService;
import info.flowersoft.theotown.draft.DataDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidGamesService implements GamesService, OnCompleteListener<AuthenticationResult>, OnFailureListener, AndroidEventListener, LifecycleListener {
    public final AndroidApplication application;
    public GamesSignInClient client;
    public JSONObject steamIdMapping;
    public final List<GamesService.StatusListener> listeners = new ArrayList();
    public final Map<String, Boolean> unlockedAchievements = new HashMap();

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean enforceCake() {
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean isAvailable() {
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean isOfflineMode() {
        return false;
    }

    @Override // com.badlogic.gdx.backends.android.AndroidEventListener
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // com.badlogic.gdx.LifecycleListener
    public void pause() {
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void resetAchievements() {
    }

    @Override // com.badlogic.gdx.LifecycleListener
    public void resume() {
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void runCallbacks() {
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void visitStage(Stage stage) {
    }

    public AndroidGamesService(AndroidApplication androidApplication) {
        this.application = androidApplication;
        PlayGamesSdk.initialize(androidApplication);
        androidApplication.addAndroidEventListener(this);
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void setup(boolean z) {
        if (z) {
            GamesSignInClient gamesSignInClient = PlayGames.getGamesSignInClient(this.application);
            this.client = gamesSignInClient;
            gamesSignInClient.isAuthenticated().addOnCompleteListener(this);
        }
        GamesSignInClient gamesSignInClient2 = this.client;
        if (gamesSignInClient2 != null) {
            gamesSignInClient2.signIn();
        }
        synchronized (this.listeners) {
            for (int i = 0; i < this.listeners.size(); i++) {
                try {
                    this.listeners.get(i).handle(z);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task<AuthenticationResult> task) {
        if (task.isSuccessful() && task.getResult().isAuthenticated()) {
            synchronized (this.listeners) {
                for (int i = 0; i < this.listeners.size(); i++) {
                    try {
                        this.listeners.get(i).handle(true);
                    } finally {
                    }
                }
            }
            fetchEvents();
            return;
        }
        synchronized (this.listeners) {
            for (int i2 = 0; i2 < this.listeners.size(); i2++) {
                try {
                    this.listeners.get(i2).handle(false);
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        exc.printStackTrace();
    }

    public void signIn() {
        if (this.client == null) {
            setup(true);
        }
        GamesSignInClient gamesSignInClient = this.client;
        if (gamesSignInClient == null || gamesSignInClient.isAuthenticated().isSuccessful()) {
            return;
        }
        this.client.signIn();
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean isSignedIn() {
        GamesSignInClient gamesSignInClient = this.client;
        return gamesSignInClient != null && gamesSignInClient.isAuthenticated().isSuccessful();
    }

    public void fetchEvents() {
        if (isSignedIn()) {
            PlayGames.getEventsClient(this.application).load(true).addOnCompleteListener(new OnCompleteListener() { // from class: info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    AndroidGamesService.m2112$r8$lambda$dW6kNQCdkv5uj5wDljNAn1DY5g(this.f$0, task);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$dW6kNQCdkv5uj5wDljNAn-1DY5g, reason: not valid java name */
    public static /* synthetic */ void m2112$r8$lambda$dW6kNQCdkv5uj5wDljNAn1DY5g(AndroidGamesService androidGamesService, Task task) {
        androidGamesService.getClass();
        if (task.isSuccessful()) {
            EventBuffer eventBuffer = (EventBuffer) ((AnnotatedData) task.getResult()).get();
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < eventBuffer.getCount(); i++) {
                Event event = eventBuffer.get(i);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(C3670j8.x, event.getEventId());
                    jSONObject.put(C3522b4.i.X, event.getValue());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                jSONArray.put(jSONObject);
            }
            eventBuffer.release();
            synchronized (androidGamesService.listeners) {
                for (int i2 = 0; i2 < androidGamesService.listeners.size(); i2++) {
                    try {
                        androidGamesService.listeners.get(i2).handleEvents(jSONArray);
                    } finally {
                    }
                }
            }
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService, com.badlogic.gdx.LifecycleListener
    public void dispose() {
        synchronized (this.listeners) {
            this.listeners.clear();
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void showLeaderboards() {
        signIn();
        if (isSignedIn()) {
            PlayGames.getLeaderboardsClient(this.application).getAllLeaderboardsIntent().addOnSuccessListener(new OnSuccessListener() { // from class: info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    this.f$0.application.startActivityForResult((Intent) obj, 9002);
                }
            });
        }
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void showAchievements() {
        signIn();
        if (isSignedIn()) {
            PlayGames.getAchievementsClient(this.application).getAchievementsIntent().addOnSuccessListener(new OnSuccessListener() { // from class: info.flowersoft.theotown.android.AndroidGamesService$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    this.f$0.application.startActivityForResult((Intent) obj, 9003);
                }
            });
        }
    }

    public final String resolveSteamId(String str) {
        if (this.steamIdMapping == null) {
            DataDraft dataDraft = (DataDraft) Drafts.get("$data_android_achievementmapping00", DataDraft.class);
            if (dataDraft == null) {
                Gdx.app.error("Achievements", "Could not load mapping");
            } else {
                this.steamIdMapping = dataDraft.content.optJSONObject("mapping");
                Gdx.app.log("Achievements", "Loaded " + this.steamIdMapping.length() + " achievement id mappings");
            }
        }
        JSONObject jSONObject = this.steamIdMapping;
        return jSONObject != null ? jSONObject.optString(str, str) : str;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean unlockAchievement(String str) {
        if (!isSignedIn()) {
            return false;
        }
        if (str.equals("region_upload")) {
            unlockAchievement(str, 10, 10);
            return true;
        }
        if (this.unlockedAchievements.containsKey(str)) {
            return Boolean.TRUE.equals(this.unlockedAchievements.get(str));
        }
        this.unlockedAchievements.put(str, Boolean.TRUE);
        PlayGames.getAchievementsClient(this.application).unlock(resolveSteamId(str));
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean unlockAchievement(String str, int i, int i2) {
        if (!isSignedIn()) {
            return false;
        }
        PlayGames.getAchievementsClient(this.application).setSteps(resolveSteamId(str), i);
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean submitScore(final String str, final long j) {
        if (!isSignedIn()) {
            return false;
        }
        new Thread() { // from class: info.flowersoft.theotown.android.AndroidGamesService.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    PlayGames.getLeaderboardsClient(AndroidGamesService.this.application).submitScore(str, j);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public boolean incrementEvent(String str, int i) {
        if (!isSignedIn()) {
            return false;
        }
        PlayGames.getEventsClient(this.application).increment(str, i);
        return true;
    }

    @Override // info.flowersoft.theotown.crossplatform.GamesService
    public void registerStatusListener(GamesService.StatusListener statusListener) {
        Objects.requireNonNull(statusListener);
        this.listeners.add(statusListener);
    }
}
