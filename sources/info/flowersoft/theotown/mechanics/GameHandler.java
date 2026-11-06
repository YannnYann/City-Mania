package info.flowersoft.theotown.mechanics;

import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.LongMap;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.EventsService;
import info.flowersoft.theotown.backend.PurchasesService;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.GamesService;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.FeatureDraft;
import info.flowersoft.theotown.online.Multiplayer;
import info.flowersoft.theotown.resources.BuildingPeopleCounter;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.MethodCluster;
import info.flowersoft.theotown.scripting.ScriptingEnvironment;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.SpecialInt;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.Tuple;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class GameHandler {
    public static String EVENT_EARNED_DIAMONDS = null;
    public static String EVENT_SPEND_DIAMONDS = null;
    public static int MAX_LOG_LENGTH = 1024;
    public static GameHandler instance;
    public static boolean useServices;
    public Stapel2DGameContext context;
    public boolean isSaving;
    public long lastSaveTime;
    public SSP ssp;
    public final SpecialInt earnedDiamonds = new SpecialInt();
    public final SpecialInt spendDiamonds = new SpecialInt();
    public final SpecialInt notGSSyncedEarnedDiamonds = new SpecialInt();
    public final SpecialInt notGSSyncedSpendDiamonds = new SpecialInt();
    public final SpecialInt onlineEarnedDiamonds = new SpecialInt();
    public final SpecialInt onlineSpendDiamonds = new SpecialInt();
    public final JSONObject config = Resources.getSpecificConfig("game handler");
    public final RewardManager rewardManager = new RewardManager();
    public final TimedEffectManager timedEffectManager = new TimedEffectManager();
    public final LastCityManager lastCityManager = new LastCityManager();
    public final Set<String> unlockedFeatureEvents = new HashSet();
    public final Set<String> redeemedEvents = new HashSet();
    public final String EVENT_EARNED_REGION_COINS = "TJT0GyPYv8";
    public final String EVENT_SPENT_REGION_COINS = "Pwqqs9QtPt";
    public final String EVENT_LAST_TIME_EARNED_REGION_COINS = "OMJuWs7PF7";
    public int earnedRegionCoins = -1;
    public int spentRegionCoins = -1;
    public int lastTimeEarnedRegionCoins = -1;
    public final Map<Integer, Long> lastSeenRegionRules = new HashMap();
    public final List<LogEntry> log = new ArrayList();
    public final List<LogEntry> pendingLog = new ArrayList();
    public boolean pendingLogPending = false;
    public final LongMap<Boolean> userIds = new LongMap<>();
    public final Map<Integer, Long> regionUnlockTime = new HashMap();
    public final Map<Integer, Long> regionUnlockTimeLastFetched = new HashMap();

    public void dispose() {
        instance = null;
    }

    public void init(Stapel2DGameContext stapel2DGameContext) {
        this.ssp = new SSP("info.flowersoft.theotown.theotown.game");
        this.context = stapel2DGameContext;
        TranslationManager translator = stapel2DGameContext.getTranslator();
        EVENT_EARNED_DIAMONDS = translator.translate(378);
        EVENT_SPEND_DIAMONDS = translator.translate(3137);
        loadData();
        TheoTown.gamesService.setup(useServices);
        TheoTown.socialManager.setup();
        TheoTown.gamesService.registerStatusListener(new GamesService.StatusListener() { // from class: info.flowersoft.theotown.mechanics.GameHandler.1
            @Override // info.flowersoft.theotown.crossplatform.GamesService.StatusListener
            public void handle(boolean z) {
                GameHandler.useServices = z;
                GameHandler.this.saveData();
                TheoTown.gamesService.isSignedIn();
            }

            @Override // info.flowersoft.theotown.crossplatform.GamesService.StatusListener
            public void handleEvents(JSONArray jSONArray) {
                synchronized (GameHandler.this) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                            String strOptString = jSONObjectOptJSONObject.optString(C3670j8.x);
                            long jOptLong = jSONObjectOptJSONObject.optLong(C3522b4.i.X);
                            if (strOptString.equals(GameHandler.EVENT_EARNED_DIAMONDS)) {
                                GameHandler.this.earnedDiamonds.set(Math.max((int) jOptLong, GameHandler.this.earnedDiamonds.get()));
                            } else if (strOptString.equals(GameHandler.EVENT_SPEND_DIAMONDS)) {
                                GameHandler.this.spendDiamonds.set(Math.max((int) jOptLong, GameHandler.this.spendDiamonds.get()));
                            } else if (jOptLong > 0) {
                                GameHandler.this.unlockedFeatureEvents.add(strOptString);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    GameHandler.this.saveData();
                }
            }
        });
        setUpBackendEvents();
        setUpBackendPurchases();
        logDiamonds();
        updateLog();
    }

    public Translator getTranslator() {
        return this.context.getTranslator();
    }

    public final void setUpBackendEvents() {
        int iOptInt = this.config.optInt("refresh interval seconds", 600);
        final EventsService eventsService = new EventsService();
        if (!TheoTown.PREMIUM) {
            Backend.getInstance().addScheduledTask(eventsService.getEvent(EVENT_EARNED_DIAMONDS, 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.2
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Tuple<Integer, Long> tuple) {
                    int iIntValue = tuple.getFirst().intValue();
                    if (iIntValue >= 0) {
                        GameHandler.this.onlineEarnedDiamonds.set(Math.max(iIntValue, Math.max(GameHandler.this.getEarnedDiamonds(), GameHandler.this.getSpendDiamonds())));
                        GameHandler.this.saveData();
                        int earnedDiamonds = GameHandler.this.getEarnedDiamonds();
                        if (iIntValue < earnedDiamonds) {
                            Backend.getInstance().addTask(eventsService.maxEvent(GameHandler.EVENT_EARNED_DIAMONDS, earnedDiamonds, null));
                        }
                        GameHandler.this.updateLog();
                    }
                }
            }), iOptInt);
            Backend.getInstance().addScheduledTask(eventsService.getEvent(EVENT_SPEND_DIAMONDS, 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.3
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Tuple<Integer, Long> tuple) {
                    int iIntValue = tuple.getFirst().intValue();
                    if (iIntValue >= 0) {
                        GameHandler.this.onlineSpendDiamonds.set(Math.max(iIntValue, GameHandler.this.getSpendDiamonds()));
                        GameHandler.this.saveData();
                        int spendDiamonds = GameHandler.this.getSpendDiamonds();
                        if (iIntValue < spendDiamonds) {
                            Backend.getInstance().addTask(eventsService.maxEvent(GameHandler.EVENT_SPEND_DIAMONDS, spendDiamonds, null));
                        }
                    }
                }
            }), iOptInt);
        }
        if (TheoTown.PREMIUM) {
            Backend.getInstance().addScheduledTask(eventsService.getEvent("TJT0GyPYv8", 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.4
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Tuple<Integer, Long> tuple) {
                    int iIntValue = tuple.getFirst().intValue();
                    if (iIntValue >= 0) {
                        if (iIntValue < GameHandler.this.earnedRegionCoins) {
                            Backend.getInstance().addTask(eventsService.maxEvent("TJT0GyPYv8", GameHandler.this.earnedRegionCoins, null));
                        }
                        GameHandler gameHandler = GameHandler.this;
                        gameHandler.earnedRegionCoins = Math.max(iIntValue, gameHandler.earnedRegionCoins);
                    }
                }
            }), iOptInt);
            Backend.getInstance().addScheduledTask(eventsService.getEvent("Pwqqs9QtPt", 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.5
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Tuple<Integer, Long> tuple) {
                    int iIntValue = tuple.getFirst().intValue();
                    if (iIntValue >= 0) {
                        if (iIntValue < GameHandler.this.spentRegionCoins) {
                            Backend.getInstance().addTask(eventsService.maxEvent("Pwqqs9QtPt", GameHandler.this.spentRegionCoins, null));
                        }
                        GameHandler gameHandler = GameHandler.this;
                        gameHandler.spentRegionCoins = Math.max(iIntValue, gameHandler.spentRegionCoins);
                    }
                }
            }), iOptInt);
            Backend.getInstance().addScheduledTask(eventsService.getEvent("OMJuWs7PF7", 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.6
                @Override // io.blueflower.stapel2d.util.Setter
                public void set(Tuple<Integer, Long> tuple) {
                    if (InternetTime.getInstance().isConnected()) {
                        int time = (int) (((InternetTime.getInstance().getTime() / 1000) / 60) / 60);
                        GameHandler.this.lastTimeEarnedRegionCoins = Math.max(tuple.getFirst().intValue(), GameHandler.this.lastTimeEarnedRegionCoins);
                        int regionCoinsPerDay = Multiplayer.getRegionCoinsPerDay();
                        int regionCoinsDayDelay = Multiplayer.getRegionCoinsDayDelay();
                        if (GameHandler.this.earnedRegionCoins == -1) {
                            regionCoinsPerDay = Multiplayer.getRegionCoinsInit();
                        }
                        if (GameHandler.this.getRegionCoins() + regionCoinsPerDay > Multiplayer.getRegionCoinsLimit()) {
                            regionCoinsPerDay = Multiplayer.getRegionCoinsLimit() - GameHandler.this.getRegionCoins();
                        }
                        if (regionCoinsPerDay <= 0 || time - GameHandler.this.lastTimeEarnedRegionCoins < regionCoinsDayDelay) {
                            return;
                        }
                        if (tuple.getFirst().intValue() > 0 || tuple.getFirst().intValue() == 0) {
                            GameHandler.this.earnRegionCoins(regionCoinsPerDay);
                        }
                        GameHandler.this.lastTimeEarnedRegionCoins = time;
                        Backend.getInstance().addTask(eventsService.maxEvent("OMJuWs7PF7", GameHandler.this.lastTimeEarnedRegionCoins, null));
                    }
                }
            }), iOptInt);
        }
    }

    public long getLastSaveTime() {
        return this.lastSaveTime;
    }

    public void setLastSaveTime(long j) {
        this.lastSaveTime = j;
    }

    public int getRegionCoins() {
        return this.earnedRegionCoins - this.spentRegionCoins;
    }

    public void earnRegionCoins(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Amount must be positive");
        }
        this.earnedRegionCoins += i;
        Backend.getInstance().addTask(new EventsService().maxEvent("TJT0GyPYv8", this.earnedRegionCoins, null));
    }

    public void spendRegionCoins(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Amount must be positive");
        }
        this.spentRegionCoins += i;
        Backend.getInstance().addTask(new EventsService().maxEvent("Pwqqs9QtPt", this.spentRegionCoins, null));
    }

    public void setRegionUnlockTime(int i) {
        long time = InternetTime.getInstance().getTime();
        synchronized (this.regionUnlockTime) {
            this.regionUnlockTime.put(Integer.valueOf(i), Long.valueOf(time));
        }
        Backend.getInstance().addTask(new EventsService().maxEvent("VSFHjo2N6f:" + i, (int) ((time / 1000) / 60), null));
    }

    public long getRegionUnlockTime(final int i) {
        synchronized (this.regionUnlockTimeLastFetched) {
            synchronized (this.regionUnlockTime) {
                try {
                    if (this.regionUnlockTimeLastFetched.containsKey(Integer.valueOf(i))) {
                        if (InternetTime.getInstance().getTime() - this.regionUnlockTimeLastFetched.get(Integer.valueOf(i)).longValue() >= (this.regionUnlockTime.containsKey(Integer.valueOf(i)) ? UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS : 5000)) {
                            Backend.getInstance().addTask(new EventsService().getEvent("VSFHjo2N6f:" + i, 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.7
                                @Override // io.blueflower.stapel2d.util.Setter
                                public void set(Tuple<Integer, Long> tuple) {
                                    if (tuple.getFirst().intValue() == -1) {
                                        return;
                                    }
                                    long jIntValue = ((long) tuple.getFirst().intValue()) * 60000;
                                    synchronized (GameHandler.this.regionUnlockTime) {
                                        try {
                                            Long l = (Long) GameHandler.this.regionUnlockTime.get(Integer.valueOf(i));
                                            if (l == null) {
                                                l = 0L;
                                            }
                                            GameHandler.this.regionUnlockTime.put(Integer.valueOf(i), Long.valueOf(Math.max(jIntValue, l.longValue())));
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                            }));
                            this.regionUnlockTimeLastFetched.put(Integer.valueOf(i), Long.valueOf(InternetTime.getInstance().getTime()));
                        }
                    } else {
                        Backend.getInstance().addTask(new EventsService().getEvent("VSFHjo2N6f:" + i, 0, -1, new Setter<Tuple<Integer, Long>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.7
                            @Override // io.blueflower.stapel2d.util.Setter
                            public void set(Tuple<Integer, Long> tuple) {
                                if (tuple.getFirst().intValue() == -1) {
                                    return;
                                }
                                long jIntValue = ((long) tuple.getFirst().intValue()) * 60000;
                                synchronized (GameHandler.this.regionUnlockTime) {
                                    try {
                                        Long l = (Long) GameHandler.this.regionUnlockTime.get(Integer.valueOf(i));
                                        if (l == null) {
                                            l = 0L;
                                        }
                                        GameHandler.this.regionUnlockTime.put(Integer.valueOf(i), Long.valueOf(Math.max(jIntValue, l.longValue())));
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }));
                        this.regionUnlockTimeLastFetched.put(Integer.valueOf(i), Long.valueOf(InternetTime.getInstance().getTime()));
                    }
                } finally {
                }
            }
        }
        synchronized (this.regionUnlockTime) {
            try {
                Long l = this.regionUnlockTime.get(Integer.valueOf(i));
                if (l != null) {
                    return l.longValue();
                }
                return -1L;
            } finally {
            }
        }
    }

    public final void setUpBackendPurchases() {
        final PurchasesService purchasesService = new PurchasesService();
        Backend.getInstance().addScheduledTask(purchasesService.getPurchases(new Setter<List<Tuple<String, Integer>>>() { // from class: info.flowersoft.theotown.mechanics.GameHandler.8
            @Override // io.blueflower.stapel2d.util.Setter
            public void set(List<Tuple<String, Integer>> list) {
                if (list != null) {
                    HashSet hashSet = new HashSet();
                    for (int i = 0; i < list.size(); i++) {
                        hashSet.add(list.get(i).getFirst());
                    }
                    synchronized (GameHandler.this) {
                        try {
                            for (String str : GameHandler.this.unlockedFeatureEvents) {
                                if (!hashSet.contains(str)) {
                                    Backend.getInstance().addTask(purchasesService.maxPurchase(str, 1, null));
                                }
                            }
                            int size = GameHandler.this.unlockedFeatureEvents.size();
                            GameHandler.this.unlockedFeatureEvents.addAll(hashSet);
                            if (size < GameHandler.this.unlockedFeatureEvents.size()) {
                                GameHandler.this.saveData();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }), 60);
    }

    public synchronized void loadData() {
        try {
            SSP.Reader readerLoad = this.ssp.load();
            this.rewardManager.loadData(readerLoad);
            this.timedEffectManager.loadData(readerLoad);
            this.lastCityManager.loadData(readerLoad);
            this.earnedDiamonds.set(readerLoad.getInt(EVENT_EARNED_DIAMONDS, 0));
            this.spendDiamonds.set(readerLoad.getInt(EVENT_SPEND_DIAMONDS, 0));
            this.notGSSyncedEarnedDiamonds.set(readerLoad.getInt("not synced earned diamonds", 0));
            this.notGSSyncedSpendDiamonds.set(readerLoad.getInt("not synced spend diamonds", 0));
            useServices = readerLoad.getBoolean("google game services", true);
            Set<String> set = this.unlockedFeatureEvents;
            set.addAll(readerLoad.getStringSet("feature events", set));
            this.onlineEarnedDiamonds.set(readerLoad.getInt("online earned diamonds", 0));
            this.onlineSpendDiamonds.set(readerLoad.getInt("online spend diamonds", 0));
            this.lastSaveTime = readerLoad.getLong("last save time", 0L);
            Set<String> set2 = this.redeemedEvents;
            set2.addAll(readerLoad.getStringSet("redeemed events", set2));
            this.earnedRegionCoins = readerLoad.getInt("TJT0GyPYv8", -1);
            this.spentRegionCoins = readerLoad.getInt("Pwqqs9QtPt", -1);
            this.lastTimeEarnedRegionCoins = readerLoad.getInt("OMJuWs7PF7", -1);
            try {
                JSONObject jSONObject = new JSONObject(readerLoad.getString("last seen region rules time", "{}"));
                JSONArray jSONArrayNames = jSONObject.names();
                if (jSONArrayNames != null) {
                    for (int i = 0; i < jSONArrayNames.length(); i++) {
                        String strOptString = jSONArrayNames.optString(i);
                        this.lastSeenRegionRules.put(Integer.valueOf(Integer.parseInt(strOptString)), Long.valueOf(jSONObject.getLong(strOptString)));
                    }
                }
                this.log.clear();
                JSONArray jSONArray = new JSONArray(readerLoad.getString("change log", "[]"));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    this.log.add(new LogEntry(jSONArray.getJSONObject(i2)));
                }
                this.pendingLog.clear();
                JSONArray jSONArray2 = new JSONArray(readerLoad.getString("log", "[]"));
                for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                    this.pendingLog.add(new LogEntry(jSONArray2.getJSONObject(i3)));
                }
                this.userIds.clear();
                JSONArray jSONArray3 = new JSONArray(readerLoad.getString("user", "[]"));
                for (int i4 = 0; i4 < jSONArray3.length(); i4++) {
                    this.userIds.put(jSONArray3.getLong(i4), Boolean.TRUE);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void saveData() {
        final SSP.Writer writerEdit;
        try {
            writerEdit = this.ssp.edit();
            this.rewardManager.saveData(writerEdit);
            this.timedEffectManager.saveData(writerEdit);
            this.lastCityManager.saveData(writerEdit);
            writerEdit.putInt(EVENT_EARNED_DIAMONDS, this.earnedDiamonds.get());
            writerEdit.putInt(EVENT_SPEND_DIAMONDS, this.spendDiamonds.get());
            writerEdit.putInt("not synced earned diamonds", this.notGSSyncedEarnedDiamonds.get());
            writerEdit.putInt("not synced spend diamonds", this.notGSSyncedSpendDiamonds.get());
            writerEdit.putBoolean("google game services", useServices);
            writerEdit.putStringSet("feature events", this.unlockedFeatureEvents);
            writerEdit.putInt("online earned diamonds", this.onlineEarnedDiamonds.get());
            writerEdit.putInt("online spend diamonds", this.onlineSpendDiamonds.get());
            writerEdit.putLong("last save time", Math.max(this.lastSaveTime, InternetTime.getInstance().getTime()));
            writerEdit.putStringSet("redeemed events", this.redeemedEvents);
            writerEdit.putInt("TJT0GyPYv8", this.earnedRegionCoins);
            writerEdit.putInt("Pwqqs9QtPt", this.spentRegionCoins);
            writerEdit.putInt("OMJuWs7PF7", this.lastTimeEarnedRegionCoins);
            JSONObject jSONObject = new JSONObject();
            for (Integer num : this.lastSeenRegionRules.keySet()) {
                jSONObject.put("" + num.intValue(), this.lastSeenRegionRules.get(num));
            }
            writerEdit.putString("last seen region rules time", jSONObject.toString());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.log.size(); i++) {
                JSONObject jSONObject2 = new JSONObject();
                this.log.get(i).save(jSONObject2);
                jSONArray.put(jSONObject2);
            }
            writerEdit.putString("change log", jSONArray.toString());
            JSONArray jSONArray2 = new JSONArray();
            for (int i2 = 0; i2 < this.pendingLog.size(); i2++) {
                JSONObject jSONObject3 = new JSONObject();
                this.pendingLog.get(i2).save(jSONObject3);
                jSONArray2.put(jSONObject3);
            }
            writerEdit.putString("log", jSONArray2.toString());
            JSONArray jSONArray3 = new JSONArray();
            Iterator<LongMap.Entry<Boolean>> it = this.userIds.entries().iterator();
            while (it.hasNext()) {
                jSONArray3.put(it.next().key);
            }
            writerEdit.putString("user", jSONArray3.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        } finally {
        }
        if (this.isSaving) {
            synchronized (this) {
                writerEdit.apply();
            }
        } else {
            this.isSaving = true;
            new Thread(new Runnable() { // from class: info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GameHandler.m2140$r8$lambda$Igiu9aaftqj7jPcww8SL8Ge1tc(this.f$0, writerEdit);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Igiu-9aaftqj7jPcww8SL8Ge1tc, reason: not valid java name */
    public static /* synthetic */ void m2140$r8$lambda$Igiu9aaftqj7jPcww8SL8Ge1tc(GameHandler gameHandler, SSP.Writer writer) {
        gameHandler.getClass();
        try {
            synchronized (gameHandler) {
                writer.apply();
            }
        } finally {
            gameHandler.isSaving = false;
        }
    }

    public synchronized void notifyLogin(long j) {
        if (this.userIds.containsKey(j)) {
            return;
        }
        if (j <= 0) {
            return;
        }
        this.userIds.put(j, Boolean.TRUE);
        saveData();
    }

    public synchronized long[] getUserIds() {
        long[] jArr;
        LongMap<Boolean> longMap = this.userIds;
        jArr = new long[longMap.size];
        Iterator<LongMap.Entry<Boolean>> it = longMap.entries().iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            jArr[i] = it.next().key;
            i = i2;
        }
        return jArr;
    }

    public long getLastSeenRegionRulesTime(int i) {
        Long l = this.lastSeenRegionRules.get(Integer.valueOf(i));
        if (l != null) {
            return l.longValue();
        }
        return -1L;
    }

    public void setLastSeenRegionRulesTime(int i, long j) {
        this.lastSeenRegionRules.put(Integer.valueOf(i), Long.valueOf(j));
        saveData();
    }

    public final int getEarnedDiamonds() {
        return Math.max(this.earnedDiamonds.get() + this.notGSSyncedEarnedDiamonds.get(), this.onlineEarnedDiamonds.get());
    }

    public final int getSpendDiamonds() {
        return Math.max(this.spendDiamonds.get() + this.notGSSyncedSpendDiamonds.get(), this.onlineSpendDiamonds.get());
    }

    public synchronized int getDiamonds() {
        if (TheoTown.PREMIUM) {
            return 0;
        }
        int earnedDiamonds = getEarnedDiamonds() - getSpendDiamonds();
        if (earnedDiamonds > 100000) {
            try {
                byte[] bArrDecode = Base64Coder.decode("VkVSRMOEQ0hUSUc=");
                Charset charset = StandardCharsets.UTF_8;
                getClass().getClassLoader().loadClass(new String(Base64Coder.decode("aW5mby5mbG93ZXJzb2Z0LnRoZW90b3duLnJlc291cmNlcy5Db25zdGFudHM="), charset)).getDeclaredField(new String(bArrDecode, charset)).set(null, 1);
            } catch (Exception e) {
                TheoTown.analytics.writeToLog(e.toString());
                System.exit(1);
            }
        }
        return earnedDiamonds;
    }

    public synchronized void earnDiamonds(int i, boolean z, String str) {
        if (i <= 0) {
            return;
        }
        SpecialInt specialInt = this.onlineEarnedDiamonds;
        specialInt.set(specialInt.get() + i);
        SpecialInt specialInt2 = this.notGSSyncedEarnedDiamonds;
        specialInt2.set(specialInt2.get() + i);
        logChange(i, str);
        saveData();
        Backend.getInstance().addTask(new EventsService().maxEvent(EVENT_EARNED_DIAMONDS, getEarnedDiamonds(), null));
        logDiamonds();
        if (z) {
            SuccessOverlay.getInstance().addEvent(0, i);
        }
    }

    public synchronized void earnDiamondsEvent(int i, String str, String str2, boolean z) {
        if (!isEventRedeemed(str)) {
            int diamonds = getDiamonds();
            earnDiamonds(i, z, str2);
            if (getDiamonds() >= diamonds + i) {
                redeemEvent(str);
                saveData();
            }
        }
    }

    public synchronized void spendDiamonds(int i, String str) {
        if (i <= 0) {
            return;
        }
        SpecialInt specialInt = this.onlineSpendDiamonds;
        specialInt.set(specialInt.get() + i);
        SpecialInt specialInt2 = this.notGSSyncedSpendDiamonds;
        specialInt2.set(specialInt2.get() + i);
        logChange(-i, str);
        saveData();
        Backend.getInstance().addTask(new EventsService().maxEvent(EVENT_SPEND_DIAMONDS, getSpendDiamonds(), null));
        logDiamonds();
    }

    public synchronized void redeemEvent(String str) {
        this.redeemedEvents.add(str);
    }

    public synchronized boolean isEventRedeemed(String str) {
        return this.redeemedEvents.contains(str);
    }

    public synchronized boolean buyFeature(FeatureDraft featureDraft) {
        try {
            TheoTown.analytics.logEvent("Feature", "Bought " + featureDraft.id, "");
            LinkedList linkedList = new LinkedList();
            linkedList.add(featureDraft);
            while (!linkedList.isEmpty() && linkedList.size() <= 1000) {
                FeatureDraft featureDraft2 = (FeatureDraft) linkedList.poll();
                if (!featureDraft2.consumable) {
                    setFeaturePurchased(featureDraft2);
                } else {
                    String str = featureDraft2.event;
                    if (str != null && !str.isEmpty()) {
                        TheoTown.gamesService.incrementEvent(featureDraft2.event, 1);
                    }
                }
                if (featureDraft2.time > 0) {
                    TimedEffectManager timedEffectManager = this.timedEffectManager;
                    timedEffectManager.setFastForwardDays(timedEffectManager.getFastForwardDays() + (featureDraft2.time / 500));
                    SuccessOverlay.getInstance().addEvent(4, featureDraft2.time / 500);
                }
                int i = featureDraft2.shortBuildTimeMin;
                if (i > 0) {
                    this.timedEffectManager.addShortBuildTime(((long) i) * 60000);
                    SuccessOverlay.getInstance().addEvent(5, featureDraft2.shortBuildTimeMin);
                }
                if (featureDraft2.diamonds.get() > 0) {
                    earnDiamonds(featureDraft2.diamonds.get(), true, "bought " + featureDraft2.id + " " + featureDraft2.token);
                }
                int i2 = featureDraft2.doubledIncomeTimeMin;
                if (i2 > 0) {
                    this.timedEffectManager.addDoubledIncomeMS(((long) i2) * 60000);
                    SuccessOverlay.getInstance().addEvent(1, featureDraft2.doubledIncomeTimeMin);
                }
                int i3 = featureDraft2.freeTunnels;
                if (i3 > 0) {
                    this.timedEffectManager.addFreeTunnels(i3);
                }
                FeatureDraft[] featureDraftArr = featureDraft2.unlocks;
                if (featureDraftArr != null) {
                    linkedList.addAll(Arrays.asList(featureDraftArr));
                }
            }
            saveData();
        } catch (Throwable th) {
            throw th;
        }
        return true;
    }

    public synchronized void purchaseRaw(String str) {
        this.unlockedFeatureEvents.add(str);
        TheoTown.gamesService.incrementEvent(str, 1);
        Backend.getInstance().addTask(new PurchasesService().addPurchase(str, 1, null));
    }

    public synchronized List<String> getRawPurchases() {
        return new ArrayList(this.unlockedFeatureEvents);
    }

    public final synchronized boolean setFeaturePurchased(FeatureDraft featureDraft) {
        if (featureDraft.consumable) {
            throw new IllegalArgumentException("No consumables allowed");
        }
        String str = featureDraft.event;
        if (str == null || this.unlockedFeatureEvents.contains(str)) {
            return false;
        }
        purchaseRaw(featureDraft.event);
        if (Drafts.BUILDING_PEOPLE_COUNTER != null) {
            Drafts.BUILDING_PEOPLE_COUNTER = new BuildingPeopleCounter();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isFeatureBought(info.flowersoft.theotown.draft.FeatureDraft r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.String r0 = r2.event     // Catch: java.lang.Throwable -> L13
            if (r0 == 0) goto L15
            boolean r2 = r2.consumable     // Catch: java.lang.Throwable -> L13
            if (r2 != 0) goto L15
            java.util.Set<java.lang.String> r2 = r1.unlockedFeatureEvents     // Catch: java.lang.Throwable -> L13
            boolean r2 = r2.contains(r0)     // Catch: java.lang.Throwable -> L13
            if (r2 == 0) goto L15
            r2 = 1
            goto L16
        L13:
            r2 = move-exception
            goto L18
        L15:
            r2 = 0
        L16:
            monitor-exit(r1)
            return r2
        L18:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.mechanics.GameHandler.isFeatureBought(info.flowersoft.theotown.draft.FeatureDraft):boolean");
    }

    public static GameHandler getInstance() {
        if (instance == null) {
            instance = new GameHandler();
        }
        return instance;
    }

    public final void logDiamonds() {
        int diamonds = getDiamonds();
        Analytics analytics = TheoTown.analytics;
        StringBuilder sb = new StringBuilder();
        sb.append("instance ");
        sb.append(Base64Coder.encodeString("" + diamonds));
        analytics.writeToLog(sb.toString());
        TheoTown.analytics.logEvent("Diamonds", "Have", "" + diamonds);
    }

    public synchronized boolean canEarnDiamonds() {
        return getDiamonds() + UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS < 100000;
    }

    public final synchronized void logChange(int i, String str) {
        try {
            MethodCluster methodClusterOrNull = ScriptingEnvironment.getInstance().getMethodClusterOrNull("964fe22f8");
            if (methodClusterOrNull != null && methodClusterOrNull.isNotEmpty()) {
                methodClusterOrNull.invoke(LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(i), LuaValue.valueOf(str), LuaValue.valueOf(this.earnedDiamonds.get())}));
            } else {
                Constants.f3913VERDCHTIG = 12345;
            }
            if (Hashing.sha(str).equals("e7f6e577e92a006b8325f9ab0d85917d5c8373816f88ff161adad835011af796")) {
                return;
            }
            LogEntry logEntry = new LogEntry(i, getDiamonds(), str, InternetTime.getInstance().getTime());
            while (this.log.size() >= MAX_LOG_LENGTH) {
                this.log.remove(0);
            }
            while (this.pendingLog.size() >= MAX_LOG_LENGTH) {
                this.pendingLog.remove(0);
            }
            this.log.add(logEntry);
            this.pendingLog.add(logEntry);
            updateLog();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void updateLog() {
        if (!this.pendingLogPending && !this.pendingLog.isEmpty()) {
            this.pendingLogPending = true;
            final ArrayList arrayList = new ArrayList(this.pendingLog);
            Backend.getInstance().addTask(new EventsService().logs(arrayList, new Runnable() { // from class: info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GameHandler.m2141$r8$lambda$ZMmLYWBm9rad6aPNytgzV2xdi4(this.f$0, arrayList);
                }
            }, new Runnable() { // from class: info.flowersoft.theotown.mechanics.GameHandler$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.pendingLogPending = false;
                }
            }));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ZMmLYWBm9-rad6aPNytgzV2xdi4, reason: not valid java name */
    public static /* synthetic */ void m2141$r8$lambda$ZMmLYWBm9rad6aPNytgzV2xdi4(GameHandler gameHandler, List list) {
        synchronized (gameHandler) {
            gameHandler.pendingLog.removeAll(list);
            gameHandler.pendingLogPending = false;
            gameHandler.saveData();
        }
    }

    public List<LogEntry> getLog() {
        return this.log;
    }

    public RewardManager getRewardManager() {
        return this.rewardManager;
    }

    public TimedEffectManager getTimedEffectManager() {
        return this.timedEffectManager;
    }

    public LastCityManager getLastCityManager() {
        return this.lastCityManager;
    }
}
