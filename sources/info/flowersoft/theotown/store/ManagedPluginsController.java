package info.flowersoft.theotown.store;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.IntSet;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import com.ironsource.Cc;
import com.ironsource.G5;
import com.ironsource.R6;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.BackendConnector;
import info.flowersoft.theotown.backend.ResponseHandler;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.mechanics.GameHandler;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.Parallel;
import info.flowersoft.theotown.util.RandomUtil;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class ManagedPluginsController {
    public static final ResponseHandler<byte[]> EMPTY_HANDLER = new ResponseHandler<byte[]>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.1
        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void handle(byte[] bArr) {
        }

        @Override // info.flowersoft.theotown.backend.ResponseHandler
        public void error(Exception exc) {
            TheoTown.analytics.logException(exc);
        }
    };
    public static ManagedPluginsController instance;
    public String GET_FILE_URL;
    public String GET_PLUGIN_URL;
    public final String GET_RATINGS_URL;
    public final String PLUGIN_KEY;
    public final String PREF_KEY;
    public final String STORE_URL;
    public final IntList acquiredPlugins;
    public final IntSet acquiredPluginsSet;
    public Application application;
    public final JSONObject config;
    public final IntList deletedPlugins;
    public final List<ManagedPluginFile> downloadedPlugins;
    public final IntMap<ManagedPluginFile> downloadedPluginsMap;
    public final IntList extractedPlugins;
    public final List<Thread> fetchWorkers;
    public final IntSet internalPlugins;
    public long lastUpdateCheckMs;
    public final LifecycleListener lifecycleListener;
    public final List<Thread> notificationWorkers;
    public final IntMap<PendingDownload> pendingDownloads;
    public final List<Thread> ratingWorkers;
    public final IntIntMap ratings;
    public final IntList reportedComments;
    public final IntList reportedPlugins;
    public final SSP ssp;
    public final List<Thread> updateWorkers;

    public static class PendingDownload {
        public String error;
        public int pluginId;
        public float progress;
        public int revisionId;
        public int version;
    }

    public static int toInt(boolean z) {
        return z ? 1 : 0;
    }

    public ManagedPluginsController() {
        JSONObject specificConfig = Resources.getSpecificConfig(C3522b4.i.U);
        this.config = specificConfig;
        this.PREF_KEY = "info.flowersoft.theotown.theotown.store";
        this.PLUGIN_KEY = TheoTown.PREMIUM ? "8k40uUprem_" : "8k40uUNL1G_";
        this.STORE_URL = specificConfig.optString("base url", "https://api.theotown.com/store/store?");
        this.GET_RATINGS_URL = specificConfig.optString("get ratings url", "https://api.theotown.com/store/get_ratings?");
        this.GET_FILE_URL = specificConfig.optString("get file url", "https://data.theotown.com/get_file?t=pf&");
        this.GET_PLUGIN_URL = specificConfig.optString("get plugin url", "https://api.theotown.com/store/get_plugin?");
        this.lastUpdateCheckMs = 0L;
        this.ssp = new SSP("info.flowersoft.theotown.theotown.store");
        this.acquiredPlugins = new IntList();
        this.acquiredPluginsSet = new IntSet();
        this.reportedPlugins = new IntList();
        this.reportedComments = new IntList();
        this.downloadedPlugins = new ArrayList();
        this.downloadedPluginsMap = new IntMap<>();
        this.pendingDownloads = new IntMap<>();
        this.deletedPlugins = new IntList();
        this.ratings = new IntIntMap();
        this.extractedPlugins = new IntList();
        this.internalPlugins = new IntSet();
        this.updateWorkers = new ArrayList();
        this.fetchWorkers = new ArrayList();
        this.notificationWorkers = new ArrayList();
        this.ratingWorkers = new ArrayList();
        this.lifecycleListener = new LifecycleListener() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.4
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                ManagedPluginsController.this.onPause();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                ManagedPluginsController.this.onResume();
            }
        };
    }

    public final ResponseHandler<byte[]> getJSONHandler(final ResponseHandler<JSONObject> responseHandler) {
        return new ResponseHandler<byte[]>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.2
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(byte[] bArr) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr, StandardCharsets.UTF_8));
                    if (jSONObject.has("file url")) {
                        ManagedPluginsController managedPluginsController = ManagedPluginsController.this;
                        managedPluginsController.GET_FILE_URL = jSONObject.optString("file url", managedPluginsController.GET_FILE_URL);
                    }
                    if (jSONObject.has("plugin url")) {
                        ManagedPluginsController managedPluginsController2 = ManagedPluginsController.this;
                        managedPluginsController2.GET_PLUGIN_URL = jSONObject.optString("plugin url", managedPluginsController2.GET_PLUGIN_URL);
                    }
                    if (jSONObject.optString("status", "").equals(Cc.a.g)) {
                        error(new IllegalStateException(jSONObject.optString("hint", "Unknown")));
                    } else {
                        responseHandler.handle(jSONObject);
                    }
                } catch (JSONException e) {
                    error(e);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                responseHandler.error(exc);
            }
        };
    }

    public static ResponseHandler<byte[]> getSuccessJSONHandler(final ResponseHandler<JSONObject> responseHandler, final Runnable runnable) {
        return new ResponseHandler<byte[]>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.3
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(byte[] bArr) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr, StandardCharsets.UTF_8));
                    if ("success".equals(jSONObject.optString("status"))) {
                        runnable.run();
                        responseHandler.handle(jSONObject);
                    } else {
                        error(new IllegalStateException(jSONObject.optString("status", "none")));
                    }
                } catch (JSONException e) {
                    error(e);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                responseHandler.error(exc);
            }
        };
    }

    public void init(Application application) throws Throwable {
        this.application = application;
        loadState();
        extractInternalPlugins();
        loadLocalPlugins();
        checkForUpdates();
        fetchRatings();
        application.addLifecycleListener(this.lifecycleListener);
    }

    public void dispose() {
        this.application.removeLifecycleListener(this.lifecycleListener);
        instance = null;
    }

    public final String getDefaultParameters() {
        Locale locale = Settings.locale;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return "&minv=" + TheoTown.VERSION_CODE + "&vi=" + urlEncode(TheoTown.VERSIONI) + "&pt=" + urlEncode(Gdx.app.getType().name()) + "&lc=" + urlEncode(locale.toString()) + "&ck=" + urlEncode(Backend.getInstance().getCake()) + "&pd=" + ((toInt(TheoTown.PREMIUM) * 2) + toInt(TheoTown.DEBUG)) + "&compress=1";
    }

    public String getFileUrl(String str) {
        return this.GET_FILE_URL + "name=" + str;
    }

    public final String urlEncode(String str) {
        try {
            return URLEncoder.encode(str, G5.O);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public synchronized List<LightManagedPluginInfo> getMissingPlugins(List<LightManagedPluginInfo> list) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            LightManagedPluginInfo lightManagedPluginInfo = list.get(i);
            if (!isLoaded(lightManagedPluginInfo.getId())) {
                arrayList.add(lightManagedPluginInfo);
            }
        }
        return arrayList;
    }

    public synchronized boolean isAcquired(int i) {
        return this.acquiredPluginsSet.contains(i);
    }

    public synchronized boolean isDownloaded(int i) {
        return getManagedPluginFile(i) != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isLoaded(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            info.flowersoft.theotown.store.ManagedPluginFile r2 = r1.getManagedPluginFile(r2)     // Catch: java.lang.Throwable -> L15
            if (r2 == 0) goto L17
            int r0 = r2.getLastVersion()     // Catch: java.lang.Throwable -> L15
            if (r0 <= 0) goto L17
            boolean r2 = r2.isLastActive()     // Catch: java.lang.Throwable -> L15
            if (r2 == 0) goto L17
            r2 = 1
            goto L18
        L15:
            r2 = move-exception
            goto L1a
        L17:
            r2 = 0
        L18:
            monitor-exit(r1)
            return r2
        L1a:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L15
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.isLoaded(int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isPermanent(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.badlogic.gdx.utils.IntSet r0 = r2.internalPlugins     // Catch: java.lang.Throwable -> L19
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L19
            r1 = 1
            if (r0 == 0) goto Lc
            monitor-exit(r2)
            return r1
        Lc:
            info.flowersoft.theotown.store.ManagedPluginFile r3 = r2.getManagedPluginFile(r3)     // Catch: java.lang.Throwable -> L19
            if (r3 == 0) goto L1b
            boolean r3 = r3.isPermanent()     // Catch: java.lang.Throwable -> L19
            if (r3 == 0) goto L1b
            goto L1c
        L19:
            r3 = move-exception
            goto L1e
        L1b:
            r1 = 0
        L1c:
            monitor-exit(r2)
            return r1
        L1e:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L19
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.isPermanent(int):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isDownloading(int r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            com.badlogic.gdx.utils.IntMap<info.flowersoft.theotown.store.ManagedPluginsController$PendingDownload> r0 = r1.pendingDownloads     // Catch: java.lang.Throwable -> L11
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L11
            info.flowersoft.theotown.store.ManagedPluginsController$PendingDownload r2 = (info.flowersoft.theotown.store.ManagedPluginsController.PendingDownload) r2     // Catch: java.lang.Throwable -> L11
            if (r2 == 0) goto L13
            java.lang.String r2 = r2.error     // Catch: java.lang.Throwable -> L11
            if (r2 != 0) goto L13
            r2 = 1
            goto L14
        L11:
            r2 = move-exception
            goto L16
        L13:
            r2 = 0
        L14:
            monitor-exit(r1)
            return r2
        L16:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L11
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.isDownloading(int):boolean");
    }

    public synchronized float getDownloadProgress(int i) {
        PendingDownload pendingDownload;
        pendingDownload = this.pendingDownloads.get(i);
        return pendingDownload != null ? pendingDownload.progress : 1.0f;
    }

    public synchronized String getDownloadError(int i) {
        PendingDownload pendingDownload;
        pendingDownload = this.pendingDownloads.get(i);
        return pendingDownload != null ? pendingDownload.error : null;
    }

    public synchronized boolean isInternalPlugin(int i) {
        return this.internalPlugins.contains(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean requiresRestart(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            info.flowersoft.theotown.store.ManagedPluginFile r3 = r2.getManagedPluginFile(r3)     // Catch: java.lang.Throwable -> L1c
            if (r3 == 0) goto L20
            int r0 = r3.getLastVersion()     // Catch: java.lang.Throwable -> L1c
            int r1 = r3.getVersion()     // Catch: java.lang.Throwable -> L1c
            if (r0 < r1) goto L1e
            boolean r0 = r3.isLastActive()     // Catch: java.lang.Throwable -> L1c
            boolean r3 = r3.isActive()     // Catch: java.lang.Throwable -> L1c
            if (r0 == r3) goto L20
            goto L1e
        L1c:
            r3 = move-exception
            goto L23
        L1e:
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            monitor-exit(r2)
            return r3
        L23:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.requiresRestart(int):boolean");
    }

    public synchronized boolean requiresRestart() {
        for (int i = 0; i < this.downloadedPlugins.size(); i++) {
            if (requiresRestart(this.downloadedPlugins.get(i).getPluginId())) {
                return true;
            }
        }
        return !this.deletedPlugins.isEmpty();
    }

    public synchronized boolean isPluginReported(int i) {
        return this.reportedPlugins.contains(i);
    }

    public synchronized void clearReportedPlugins() {
        this.reportedPlugins.clear();
    }

    public synchronized boolean isCommentReported(int i) {
        return this.reportedComments.contains(i);
    }

    public synchronized void deletePlugin(int i) {
        ManagedPluginFile managedPluginFile = getManagedPluginFile(i);
        if (managedPluginFile != null && !isDownloading(i)) {
            this.downloadedPlugins.remove(managedPluginFile);
            this.downloadedPluginsMap.remove(i);
            this.deletedPlugins.add(i);
            this.acquiredPlugins.removeValue(i);
            this.acquiredPlugins.add(i);
            this.acquiredPluginsSet.add(i);
            managedPluginFile.getFile().delete();
        }
    }

    public synchronized void acquirePlugin(int i) {
        if (!this.acquiredPluginsSet.contains(i)) {
            this.acquiredPlugins.add(i);
            this.acquiredPluginsSet.add(i);
            GameHandler.getInstance().purchaseRaw(this.PLUGIN_KEY + i);
            GameHandler.getInstance().saveData();
            saveState();
        }
    }

    public synchronized void acquireAndNotifyPlugin(int i, int i2, int i3, int i4) throws Throwable {
        try {
            try {
                if (!this.acquiredPluginsSet.contains(i)) {
                    this.acquiredPlugins.add(i);
                    this.acquiredPluginsSet.add(i);
                    GameHandler.getInstance().purchaseRaw(this.PLUGIN_KEY + i);
                    GameHandler.getInstance().saveData();
                    saveState();
                    download(this.STORE_URL + "mode=acquire&id=" + i + "&p=" + i4 + "&key=" + generateKey() + "&access=" + getAccessKey() + "&d=" + GameHandler.getInstance().getDiamonds() + getDefaultParameters(), EMPTY_HANDLER, null, this.notificationWorkers, false, true, true);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void reportPlugin(final int r10, java.lang.String r11, info.flowersoft.theotown.backend.ResponseHandler<info.flowersoft.theotown.util.json.JSONObject> r12) throws java.lang.Throwable {
        /*
            r9 = this;
            monitor-enter(r9)
            if (r10 <= 0) goto L8e
            io.blueflower.stapel2d.util.IntList r0 = r9.reportedPlugins     // Catch: java.lang.Throwable -> L8b
            boolean r0 = r0.contains(r10)     // Catch: java.lang.Throwable -> L8b
            if (r0 != 0) goto L8e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r0.<init>()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = r9.STORE_URL     // Catch: java.lang.Throwable -> L8b
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "mode=report&id="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            r0.append(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "&key="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = r9.generateKey()     // Catch: java.lang.Throwable -> L8b
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "&msg="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = r9.urlEncode(r11)     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = "&access="
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = r9.getAccessKey()     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = "&d="
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.mechanics.GameHandler r11 = info.flowersoft.theotown.mechanics.GameHandler.getInstance()     // Catch: java.lang.Throwable -> L8b
            int r11 = r11.getDiamonds()     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = "&ac="
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            boolean r11 = r9.isAcquired(r10)     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = "&dl="
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            boolean r11 = r9.isDownloaded(r10)     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r11 = r9.getDefaultParameters()     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = r0.toString()     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda3 r11 = new info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda3     // Catch: java.lang.Throwable -> L8b
            r11.<init>()     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.backend.ResponseHandler r3 = getSuccessJSONHandler(r12, r11)     // Catch: java.lang.Throwable -> L8b
            java.util.List<java.lang.Thread> r5 = r9.notificationWorkers     // Catch: java.lang.Throwable -> L8b
            r7 = 1
            r8 = 0
            r4 = 0
            r6 = 0
            r1 = r9
            r1.download(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L88
            goto L92
        L88:
            r0 = move-exception
        L89:
            r10 = r0
            goto L90
        L8b:
            r0 = move-exception
            r1 = r9
            goto L89
        L8e:
            r1 = r9
            goto L92
        L90:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L88
            throw r10
        L92:
            monitor-exit(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.reportPlugin(int, java.lang.String, info.flowersoft.theotown.backend.ResponseHandler):void");
    }

    public static /* synthetic */ void $r8$lambda$H9MchlbXEkPLGLyY0oc9cmcAbBI(ManagedPluginsController managedPluginsController, int i) {
        managedPluginsController.reportedPlugins.add(i);
        managedPluginsController.saveState();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void reportComment(int r10, final int r11, java.lang.String r12, info.flowersoft.theotown.backend.ResponseHandler<info.flowersoft.theotown.util.json.JSONObject> r13) throws java.lang.Throwable {
        /*
            r9 = this;
            monitor-enter(r9)
            if (r11 <= 0) goto L8e
            io.blueflower.stapel2d.util.IntList r0 = r9.reportedComments     // Catch: java.lang.Throwable -> L8b
            boolean r0 = r0.contains(r11)     // Catch: java.lang.Throwable -> L8b
            if (r0 != 0) goto L8e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8b
            r0.<init>()     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = r9.STORE_URL     // Catch: java.lang.Throwable -> L8b
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "mode=reportcomment&id="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            r0.append(r11)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "&key="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = r9.generateKey()     // Catch: java.lang.Throwable -> L8b
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r1 = "&msg="
            r0.append(r1)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = r9.urlEncode(r12)     // Catch: java.lang.Throwable -> L8b
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = "&access="
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = r9.getAccessKey()     // Catch: java.lang.Throwable -> L8b
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = "&d="
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.mechanics.GameHandler r12 = info.flowersoft.theotown.mechanics.GameHandler.getInstance()     // Catch: java.lang.Throwable -> L8b
            int r12 = r12.getDiamonds()     // Catch: java.lang.Throwable -> L8b
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = "&ac="
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            boolean r12 = r9.isAcquired(r10)     // Catch: java.lang.Throwable -> L8b
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r12 = "&dl="
            r0.append(r12)     // Catch: java.lang.Throwable -> L8b
            boolean r10 = r9.isDownloaded(r10)     // Catch: java.lang.Throwable -> L8b
            r0.append(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r10 = r9.getDefaultParameters()     // Catch: java.lang.Throwable -> L8b
            r0.append(r10)     // Catch: java.lang.Throwable -> L8b
            java.lang.String r2 = r0.toString()     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda1 r10 = new info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda1     // Catch: java.lang.Throwable -> L8b
            r10.<init>()     // Catch: java.lang.Throwable -> L8b
            info.flowersoft.theotown.backend.ResponseHandler r3 = getSuccessJSONHandler(r13, r10)     // Catch: java.lang.Throwable -> L8b
            java.util.List<java.lang.Thread> r5 = r9.notificationWorkers     // Catch: java.lang.Throwable -> L8b
            r7 = 1
            r8 = 0
            r4 = 0
            r6 = 0
            r1 = r9
            r1.download(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L88
            goto L92
        L88:
            r0 = move-exception
        L89:
            r10 = r0
            goto L90
        L8b:
            r0 = move-exception
            r1 = r9
            goto L89
        L8e:
            r1 = r9
            goto L92
        L90:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L88
            throw r10
        L92:
            monitor-exit(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.reportComment(int, int, java.lang.String, info.flowersoft.theotown.backend.ResponseHandler):void");
    }

    /* JADX INFO: renamed from: $r8$lambda$VBl7VKyWf9jJ4oOjUN9u5UC-vh8, reason: not valid java name */
    public static /* synthetic */ void m2335$r8$lambda$VBl7VKyWf9jJ4oOjUN9u5UCvh8(ManagedPluginsController managedPluginsController, int i) {
        managedPluginsController.reportedComments.add(i);
        managedPluginsController.saveState();
    }

    public synchronized int getUserRating(int i) {
        return this.ratings.get(i, 0);
    }

    public boolean supportsRatings() {
        User user = Backend.getInstance().getUser();
        return user.isSocialConnected() && user.getPermissions() != 0;
    }

    public final String getAccessKey() {
        String accessKey = Backend.getInstance().getUser().getAccessKey();
        return accessKey != null ? accessKey : "";
    }

    public synchronized void ratePlugin(int i, int i2) throws Throwable {
        try {
            try {
                String accessKey = getAccessKey();
                if (accessKey.length() > 0) {
                    this.ratings.put(i, i2);
                    download(this.GET_RATINGS_URL + "mode=rate&access=" + accessKey + "&key=" + generateKey() + "&plugin=" + i + "&rating=" + i2 + getDefaultParameters(), EMPTY_HANDLER, null, this.ratingWorkers, false, true, false);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public synchronized void fetchRatings() throws Throwable {
        try {
            try {
                String accessKey = getAccessKey();
                if (accessKey.length() > 0) {
                    download(this.GET_RATINGS_URL + "mode=ratings&access=" + accessKey + "&key=" + generateKey() + getDefaultParameters(), getJSONHandler(new ResponseHandler<JSONObject>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.5
                        @Override // info.flowersoft.theotown.backend.ResponseHandler
                        public void handle(JSONObject jSONObject) {
                            ManagedPluginsController.this.handleRatingsResult(jSONObject);
                        }

                        @Override // info.flowersoft.theotown.backend.ResponseHandler
                        public void error(Exception exc) {
                            exc.printStackTrace();
                        }
                    }), null, this.ratingWorkers, false, true, false);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final String buildIdListArg(IntList intList, boolean z) {
        if (intList == null || intList.size() <= 0) {
            return "";
        }
        if (z) {
            IntList intList2 = new IntList(intList);
            intList2.sort();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(new GZIPOutputStream(byteArrayOutputStream));
                int i = 0;
                while (i < intList2.size()) {
                    dataOutputStream.writeInt(intList2.get(i) - (i > 0 ? intList2.get(i - 1) : 0));
                    i++;
                }
                dataOutputStream.close();
                return "&ids=" + urlEncode(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray()))) + "&idsv=1";
            } catch (IOException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "&ids=" + intList.join(",");
    }

    public synchronized void fetchStore(ResponseHandler<JSONObject> responseHandler, StoreMode storeMode, IntList intList, String str, boolean z, int i, int i2) {
        try {
            String strBuildIdListArg = buildIdListArg(intList, z);
            StringBuilder sb = new StringBuilder();
            sb.append(this.STORE_URL);
            sb.append("mode=");
            sb.append(storeMode.getTag());
            sb.append("&access=");
            sb.append(getAccessKey());
            sb.append("&d=");
            sb.append(GameHandler.getInstance().getDiamonds());
            sb.append(getDefaultParameters());
            sb.append("&e=");
            sb.append(urlEncode(str));
            sb.append("&limit=");
            sb.append(i2);
            sb.append("&offset=");
            sb.append(i);
            sb.append("&tr=");
            sb.append(Settings.translatePlugins ? "true" : "false");
            sb.append(strBuildIdListArg);
            download(sb.toString(), getJSONHandler(responseHandler), null, this.fetchWorkers, true, true, false);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void fetchComments(ResponseHandler<JSONObject> responseHandler, int i, String str) throws Throwable {
        try {
            try {
                download(this.STORE_URL + "mode=comments&id=" + i + "&access=" + getAccessKey() + "&d=" + GameHandler.getInstance().getDiamonds() + getDefaultParameters() + "&e=" + urlEncode(str), getJSONHandler(responseHandler), null, this.fetchWorkers, true, true, false);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void loadState() {
        try {
            String string = this.ssp.load().getString("json", "{}");
            this.acquiredPlugins.clear();
            this.acquiredPluginsSet.clear();
            this.downloadedPlugins.clear();
            this.downloadedPluginsMap.clear();
            this.extractedPlugins.clear();
            try {
                JSONObject jSONObject = new JSONObject(string);
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ratings");
                if (jSONArrayOptJSONArray != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        if (i2 >= jSONArrayOptJSONArray.length()) {
                            break;
                        }
                        this.ratings.put(jSONArrayOptJSONArray.getInt(i), jSONArrayOptJSONArray.getInt(i2));
                        i += 2;
                    }
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("acquired");
                if (jSONArrayOptJSONArray2 != null) {
                    for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                        int i4 = jSONArrayOptJSONArray2.getInt(i3);
                        if (!this.acquiredPluginsSet.contains(i4)) {
                            this.acquiredPlugins.add(i4);
                            this.acquiredPluginsSet.add(i4);
                        }
                    }
                }
                JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("reported");
                if (jSONArrayOptJSONArray3 != null) {
                    for (int i5 = 0; i5 < jSONArrayOptJSONArray3.length(); i5++) {
                        this.reportedPlugins.add(jSONArrayOptJSONArray3.getInt(i5));
                    }
                }
                JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray("reported comments");
                if (jSONArrayOptJSONArray4 != null) {
                    for (int i6 = 0; i6 < jSONArrayOptJSONArray4.length(); i6++) {
                        this.reportedComments.add(jSONArrayOptJSONArray4.optInt(i6));
                    }
                }
                JSONArray jSONArrayOptJSONArray5 = jSONObject.optJSONArray("downloaded");
                if (jSONArrayOptJSONArray5 != null) {
                    loadPlugins(jSONArrayOptJSONArray5);
                }
                JSONArray jSONArrayOptJSONArray6 = jSONObject.optJSONArray("extracted");
                if (jSONArrayOptJSONArray6 != null) {
                    for (int i7 = 0; i7 < jSONArrayOptJSONArray6.length(); i7++) {
                        int i8 = jSONArrayOptJSONArray6.getInt(i7);
                        if (!this.extractedPlugins.contains(i8)) {
                            this.extractedPlugins.add(i8);
                        }
                    }
                }
                List<String> rawPurchases = GameHandler.getInstance().getRawPurchases();
                for (int i9 = 0; i9 < rawPurchases.size(); i9++) {
                    String str = rawPurchases.get(i9);
                    if (str.startsWith(this.PLUGIN_KEY)) {
                        int i10 = Integer.parseInt(str.substring(this.PLUGIN_KEY.length()));
                        if (!this.acquiredPluginsSet.contains(i10)) {
                            this.acquiredPlugins.add(i10);
                            this.acquiredPluginsSet.add(i10);
                        }
                    }
                }
            } catch (JSONException e) {
                TheoTown.analytics.logException(e);
            }
            saveState();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void loadPlugins(final JSONArray jSONArray) throws JSONException {
        final JSONException[] jSONExceptionArr = {null};
        Parallel.computeParallel(Parallel.autoThreadCount(), jSONArray.length(), new Parallel.Worker() { // from class: info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.util.Parallel.Worker
            public final void work(int i, int i2, int i3) {
                ManagedPluginsController.$r8$lambda$ojhmaxr99_QLGZWpI6op3bIr7vA(this.f$0, jSONArray, jSONExceptionArr, i, i2, i3);
            }
        });
        JSONException jSONException = jSONExceptionArr[0];
        if (jSONException != null) {
            throw jSONException;
        }
    }

    public static /* synthetic */ void $r8$lambda$ojhmaxr99_QLGZWpI6op3bIr7vA(ManagedPluginsController managedPluginsController, JSONArray jSONArray, JSONException[] jSONExceptionArr, int i, int i2, int i3) {
        boolean zContainsKey;
        managedPluginsController.getClass();
        while (i2 < i3) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                String string = jSONObject.getString(C3522b4.i.b);
                int i4 = jSONObject.getInt("plugin id");
                int i5 = jSONObject.getInt("revision id");
                int i6 = jSONObject.getInt("version");
                String string2 = jSONObject.getString("hash");
                int i7 = jSONObject.getInt("size");
                boolean z = jSONObject.getBoolean("active");
                long jOptLong = jSONObject.optLong("first downloaded", 0L);
                synchronized (managedPluginsController.downloadedPluginsMap) {
                    zContainsKey = managedPluginsController.downloadedPluginsMap.containsKey(i4);
                }
                if (!zContainsKey) {
                    try {
                        File file = new File(Resources.getManagedPluginsDir(), string);
                        if (file.exists()) {
                            ManagedPluginFile managedPluginFile = new ManagedPluginFile(file);
                            if (managedPluginFile.getPluginId() == i4 && managedPluginFile.getRevisionId() == i5 && managedPluginFile.getVersion() == i6 && managedPluginFile.getHash().equals(string2) && managedPluginFile.getFileSize() == i7 && managedPluginFile.isValid()) {
                                managedPluginFile.setActive(z);
                                managedPluginFile.setLastVersion(managedPluginFile.getVersion());
                                managedPluginFile.setLastActive(z);
                                managedPluginFile.setFirstDownloaded(jOptLong);
                                synchronized (managedPluginsController.downloadedPluginsMap) {
                                    managedPluginsController.downloadedPlugins.add(managedPluginFile);
                                    managedPluginsController.downloadedPluginsMap.put(managedPluginFile.getPluginId(), managedPluginFile);
                                }
                            }
                        } else {
                            continue;
                        }
                    } catch (IOException e) {
                        TheoTown.analytics.logException(e);
                    }
                } else {
                    TheoTown.analytics.logEvent("Plugin Store", "Duplicate plugin", "" + i4);
                }
                i2++;
            } catch (JSONException e2) {
                jSONExceptionArr[0] = e2;
                return;
            }
        }
    }

    public final void extractInternalPlugins() {
        ManagedPluginFile managedPluginFile;
        try {
            JSONArray jSONArray = new JSONArray(PackedUtils.INSTANCE.readInternalText("plugins.lby"));
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("permanent", false);
                int i2 = jSONObjectOptJSONObject.getInt(C3670j8.x);
                this.internalPlugins.add(i2);
                String name = new File(jSONObjectOptJSONObject.getString("target")).getName();
                File file = new File(Resources.getManagedPluginsDir(), jSONObjectOptJSONObject.getString("final target"));
                file.getParentFile().mkdirs();
                if (!isAcquired(i2)) {
                    acquirePlugin(i2);
                }
                if (!this.extractedPlugins.contains(i2) || zOptBoolean) {
                    if (!isDownloaded(i2) && !isDownloading(i2)) {
                        Files.copyFile(Gdx.files.internal(Hashing.internalName(name, "ae6bb9dcccb3ee65a2a5e1964c8ca37b")), file);
                        if (file.isFile() && file.exists()) {
                            addPluginFromFile(file, false, false, false);
                        }
                    }
                    if (!this.extractedPlugins.contains(i2)) {
                        this.extractedPlugins.add(i2);
                    }
                }
                if (zOptBoolean && (managedPluginFile = getManagedPluginFile(i2)) != null) {
                    managedPluginFile.setActive(true);
                    managedPluginFile.setPermanent(true);
                }
            }
            saveState();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final synchronized void loadLocalPlugins() {
        boolean z = false;
        if (!this.config.optBoolean("add local mpf", false)) {
            Gdx.app.debug("ManagedPluginController", "Skip local only plugins");
            return;
        }
        boolean zOptBoolean = this.config.optBoolean("acquire local mpf", true);
        if (this.config.optBoolean("only load if acquired", true) && !TheoTown.PREMIUM) {
            z = true;
        }
        addLocalPlugins(zOptBoolean, z, true);
    }

    public final boolean addPluginFromFile(File file, boolean z, boolean z2, boolean z3) {
        if (getManagedPluginFile(file) == null) {
            try {
                ManagedPluginFile managedPluginFile = new ManagedPluginFile(file);
                if (managedPluginFile.isValid() && getManagedPluginFile(managedPluginFile.getPluginId()) == null) {
                    if (!isAcquired(managedPluginFile.getPluginId()) && z) {
                        acquirePlugin(managedPluginFile.getPluginId());
                    }
                    if (isAcquired(managedPluginFile.getPluginId()) || !z2) {
                        managedPluginFile.setActive(true);
                        managedPluginFile.setLastVersion(managedPluginFile.getVersion());
                        managedPluginFile.setLastActive(true);
                        managedPluginFile.setFirstDownloaded(InternetTime.getInstance().getTime());
                        this.downloadedPlugins.add(managedPluginFile);
                        this.downloadedPluginsMap.put(managedPluginFile.getPluginId(), managedPluginFile);
                        return true;
                    }
                } else if ((managedPluginFile.isValid() || (!managedPluginFile.isValid() && getManagedPluginFile(managedPluginFile.getPluginId()) != null)) && z3) {
                    file.delete();
                    return false;
                }
            } catch (IOException e) {
                if (z3) {
                    file.delete();
                }
                TheoTown.analytics.logException(e);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0084 A[Catch: all -> 0x0057, TRY_LEAVE, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0024, B:7:0x002a, B:9:0x0030, B:12:0x0034, B:14:0x003c, B:16:0x0042, B:18:0x004e, B:28:0x0062, B:29:0x0065, B:31:0x0084), top: B:38:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void addLocalPlugins(boolean r8, boolean r9, boolean r10) {
        /*
            r7 = this;
            monitor-enter(r7)
            com.badlogic.gdx.Application r0 = com.badlogic.gdx.Gdx.app     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "ManagedPluginController"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L57
            r2.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = "Add local plugins, acquisition="
            r2.append(r3)     // Catch: java.lang.Throwable -> L57
            r2.append(r8)     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L57
            r0.debug(r1, r2)     // Catch: java.lang.Throwable -> L57
            java.io.File r0 = info.flowersoft.theotown.resources.Resources.getManagedPluginsDir()     // Catch: java.lang.Throwable -> L57
            boolean r1 = r0.exists()     // Catch: java.lang.Throwable -> L57
            r2 = 0
            if (r1 == 0) goto L65
            boolean r1 = r0.canRead()     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L65
            java.io.File[] r0 = r0.listFiles()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L61
            if (r0 == 0) goto L65
            int r1 = r0.length     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L61
            r3 = r2
        L32:
            if (r2 >= r1) goto L5f
            r4 = r0[r2]     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            boolean r5 = r4.isFile()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            if (r5 == 0) goto L5c
            boolean r5 = r4.exists()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            if (r5 == 0) goto L5c
            java.lang.String r5 = r4.getName()     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            java.lang.String r6 = ".mpf"
            boolean r5 = r5.endsWith(r6)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            if (r5 == 0) goto L5c
            boolean r4 = r7.addPluginFromFile(r4, r8, r9, r10)     // Catch: java.lang.Throwable -> L57 java.lang.Exception -> L59
            if (r4 == 0) goto L5c
            int r3 = r3 + 1
            goto L5c
        L57:
            r8 = move-exception
            goto L89
        L59:
            r8 = move-exception
            r2 = r3
            goto L62
        L5c:
            int r2 = r2 + 1
            goto L32
        L5f:
            r2 = r3
            goto L65
        L61:
            r8 = move-exception
        L62:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L57
        L65:
            com.badlogic.gdx.Application r8 = com.badlogic.gdx.Gdx.app     // Catch: java.lang.Throwable -> L57
            java.lang.String r9 = "ManagedPluginController"
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L57
            r10.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = "Added "
            r10.append(r0)     // Catch: java.lang.Throwable -> L57
            r10.append(r2)     // Catch: java.lang.Throwable -> L57
            java.lang.String r0 = " local plugins"
            r10.append(r0)     // Catch: java.lang.Throwable -> L57
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L57
            r8.debug(r9, r10)     // Catch: java.lang.Throwable -> L57
            if (r2 <= 0) goto L87
            r7.saveState()     // Catch: java.lang.Throwable -> L57
        L87:
            monitor-exit(r7)
            return
        L89:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L57
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.addLocalPlugins(boolean, boolean, boolean):void");
    }

    public synchronized void saveState() {
        try {
            SSP.Writer writerEdit = this.ssp.edit();
            try {
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                for (IntIntMap.Entry entry : this.ratings.entries()) {
                    int i = entry.key;
                    int i2 = entry.value;
                    if (i2 != 0) {
                        jSONArray.put(i);
                        jSONArray.put(i2);
                    }
                }
                jSONObject.put("ratings", jSONArray);
                JSONArray jSONArray2 = new JSONArray();
                for (int i3 = 0; i3 < this.acquiredPlugins.size(); i3++) {
                    jSONArray2.put(this.acquiredPlugins.get(i3));
                }
                jSONObject.put("acquired", jSONArray2);
                JSONArray jSONArray3 = new JSONArray();
                for (int i4 = 0; i4 < this.reportedPlugins.size(); i4++) {
                    jSONArray3.put(this.reportedPlugins.get(i4));
                }
                jSONObject.put("reported", jSONArray3);
                JSONArray jSONArray4 = new JSONArray();
                for (int i5 = 0; i5 < this.reportedComments.size(); i5++) {
                    jSONArray4.put(this.reportedComments.get(i5));
                }
                jSONObject.put("reported comments", jSONArray4);
                JSONArray jSONArray5 = new JSONArray();
                for (int i6 = 0; i6 < this.downloadedPlugins.size(); i6++) {
                    ManagedPluginFile managedPluginFile = this.downloadedPlugins.get(i6);
                    if (managedPluginFile.isValid()) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(C3522b4.i.b, managedPluginFile.getFile().getName());
                        jSONObject2.put("plugin id", managedPluginFile.getPluginId());
                        jSONObject2.put("revision id", managedPluginFile.getRevisionId());
                        jSONObject2.put("version", managedPluginFile.getVersion());
                        jSONObject2.put("hash", managedPluginFile.getHash());
                        jSONObject2.put("size", managedPluginFile.getFileSize());
                        jSONObject2.put("active", managedPluginFile.isActive());
                        jSONObject2.put("first downloaded", managedPluginFile.getFirstDownloaded());
                        jSONArray5.put(jSONObject2);
                    }
                }
                jSONObject.put("downloaded", jSONArray5);
                JSONArray jSONArray6 = new JSONArray();
                for (int i7 = 0; i7 < this.extractedPlugins.size(); i7++) {
                    jSONArray6.put(this.extractedPlugins.get(i7));
                }
                jSONObject.put("extracted", jSONArray6);
                writerEdit.putString("json", jSONObject.toString());
            } catch (JSONException e) {
                TheoTown.analytics.logException(e);
            }
            writerEdit.apply();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized List<ManagedPluginFile> getDownloadedPlugins() {
        return new ArrayList(this.downloadedPlugins);
    }

    public synchronized int countActivePlugins() {
        int i;
        i = 0;
        for (int i2 = 0; i2 < this.downloadedPlugins.size(); i2++) {
            if (this.downloadedPlugins.get(i2).isActive()) {
                i++;
            }
        }
        return i;
    }

    public synchronized int countDownloadedPlugins() {
        return this.downloadedPlugins.size();
    }

    public synchronized int countInternalPlugins() {
        return this.internalPlugins.size;
    }

    public synchronized int countAcquiredPlugins() {
        return this.acquiredPlugins.size();
    }

    public synchronized IntList getAcquiredPluginIds() {
        return new IntList(this.acquiredPlugins);
    }

    public synchronized ManagedPluginFile getManagedPluginFile(File file) {
        for (int i = 0; i < this.downloadedPlugins.size(); i++) {
            ManagedPluginFile managedPluginFile = this.downloadedPlugins.get(i);
            if (file.equals(managedPluginFile.getFile())) {
                return managedPluginFile;
            }
        }
        return null;
    }

    public synchronized ManagedPluginFile getManagedPluginFile(int i) {
        return this.downloadedPluginsMap.get(i);
    }

    public synchronized void onPause() {
    }

    public synchronized void onResume() {
        if (this.updateWorkers.isEmpty() && TimeUtils.millis() - this.lastUpdateCheckMs > 3600000) {
            checkForUpdates();
        }
    }

    public final synchronized void handleRatingsResult(JSONObject jSONObject) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("plugins");
            this.ratings.clear();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    this.ratings.put(jSONObjectOptJSONObject.optInt("plugin_id"), jSONObjectOptJSONObject.optInt("rating"));
                }
            }
            saveState();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void checkForUpdates() throws Throwable {
        try {
            try {
                this.lastUpdateCheckMs = TimeUtils.millis();
                IntList intList = new IntList();
                for (int i = 0; i < this.downloadedPlugins.size(); i++) {
                    intList.add(this.downloadedPlugins.get(i).getPluginId());
                }
                download(this.STORE_URL + "mode=updates" + buildIdListArg(intList, true) + "&d=" + GameHandler.getInstance().getDiamonds() + getDefaultParameters(), new ResponseHandler<byte[]>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.6
                    @Override // info.flowersoft.theotown.backend.ResponseHandler
                    public void handle(byte[] bArr) throws Throwable {
                        try {
                            ManagedPluginsController.this.checkNewVersions(new JSONArray(new String(bArr, StandardCharsets.UTF_8)));
                        } catch (JSONException e) {
                            error(e);
                        }
                    }

                    @Override // info.flowersoft.theotown.backend.ResponseHandler
                    public void error(Exception exc) {
                        TheoTown.analytics.logException(exc);
                    }
                }, null, this.updateWorkers, false, true, false);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:? -> B:23:0x008a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void checkNewVersions(info.flowersoft.theotown.util.json.JSONArray r12) throws java.lang.Throwable {
        /*
            r11 = this;
            monitor-enter(r11)
            r0 = 0
        L2:
            int r1 = r12.length()     // Catch: java.lang.Throwable -> L8f
            if (r0 >= r1) goto L96
            info.flowersoft.theotown.util.json.JSONObject r1 = r12.optJSONObject(r0)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L8d
            java.lang.String r2 = "plugin_id"
            int r4 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L8f
            java.lang.String r2 = "revision_id"
            int r5 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L8f
            java.lang.String r2 = "version"
            int r6 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L8f
            java.lang.String r2 = "title"
            java.lang.String r7 = r1.optString(r2)     // Catch: java.lang.Throwable -> L8f
            java.lang.String r2 = "size"
            int r1 = r1.optInt(r2)     // Catch: java.lang.Throwable -> L8f
            info.flowersoft.theotown.store.ManagedPluginFile r2 = r11.getManagedPluginFile(r4)     // Catch: java.lang.Throwable -> L8f
            if (r2 == 0) goto L7c
            com.badlogic.gdx.Application r3 = com.badlogic.gdx.Gdx.app     // Catch: java.lang.Throwable -> L6c
            java.lang.String r8 = "MPC"
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6c
            r9.<init>()     // Catch: java.lang.Throwable -> L6c
            java.lang.String r10 = r2.getTitle()     // Catch: java.lang.Throwable -> L6c
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r10 = " ("
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            r9.append(r4)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r10 = "): "
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            int r10 = r2.getVersion()     // Catch: java.lang.Throwable -> L6c
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r10 = " - "
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            r9.append(r6)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r10 = " "
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            int r10 = r2.getVersion()     // Catch: java.lang.Throwable -> L6c
            if (r10 >= r6) goto L70
            java.lang.String r10 = "NEW VERSION AVAILABLE"
            goto L72
        L6c:
            r0 = move-exception
            r12 = r0
            r3 = r11
            goto L99
        L70:
            java.lang.String r10 = ""
        L72:
            r9.append(r10)     // Catch: java.lang.Throwable -> L6c
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L6c
            r3.debug(r8, r9)     // Catch: java.lang.Throwable -> L6c
        L7c:
            if (r2 == 0) goto L8d
            int r2 = r2.getVersion()     // Catch: java.lang.Throwable -> L8f
            if (r2 >= r6) goto L8d
            long r8 = (long) r1
            r3 = r11
            r3.downloadPlugin(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L8a
            goto L92
        L8a:
            r0 = move-exception
        L8b:
            r12 = r0
            goto L99
        L8d:
            r3 = r11
            goto L92
        L8f:
            r0 = move-exception
            r3 = r11
            goto L8b
        L92:
            int r0 = r0 + 1
            goto L2
        L96:
            r3 = r11
            monitor-exit(r11)
            return
        L99:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L8a
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.store.ManagedPluginsController.checkNewVersions(info.flowersoft.theotown.util.json.JSONArray):void");
    }

    public static String sanitizeFilename(String str) {
        return str.replaceAll("[^a-zA-Z0-9-_]", "_");
    }

    public synchronized void downloadPlugin(final int i, final int i2, final int i3, final String str, final long j) {
        if (isDownloading(i)) {
            return;
        }
        ManagedPluginFile managedPluginFile = getManagedPluginFile(i);
        if (managedPluginFile == null || managedPluginFile.getVersion() < i3) {
            setUpdateProgress(i, i2, i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, null);
            download(this.GET_PLUGIN_URL + "id=" + i + "&revision=" + i2 + "&d=" + GameHandler.getInstance().getDiamonds() + getDefaultParameters(), new ResponseHandler<byte[]>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.7
                @Override // info.flowersoft.theotown.backend.ResponseHandler
                public void handle(byte[] bArr) throws Throwable {
                    try {
                        ManagedPluginsController.this.handleDownloadedPlugin(bArr, i, i2, i3, str, j);
                    } catch (IOException e) {
                        error(e);
                    }
                }

                @Override // info.flowersoft.theotown.backend.ResponseHandler
                public void error(Exception exc) {
                    ManagedPluginsController.this.setUpdateProgress(i, i2, i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, exc.toString());
                }
            }, new Setter() { // from class: info.flowersoft.theotown.store.ManagedPluginsController$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Setter
                public final void set(Object obj) {
                    ManagedPluginsController.$r8$lambda$feycE7lf1pBpGpgHN1UXWtDTGDk(this.f$0, i, i2, i3, j, (Integer) obj);
                }
            }, this.updateWorkers, false, false, true);
        }
    }

    public static /* synthetic */ void $r8$lambda$feycE7lf1pBpGpgHN1UXWtDTGDk(ManagedPluginsController managedPluginsController, int i, int i2, int i3, long j, Integer num) {
        managedPluginsController.getClass();
        managedPluginsController.setUpdateProgress(i, i2, i3, num.intValue() / Math.max(j, 1L), null);
    }

    public final File getPluginTargetFile(String str, int i) {
        if (str == null || str.isEmpty()) {
            str = R6.L + i;
        } else if (str.indexOf(91) >= 0) {
            str = str.substring(0, str.indexOf(91));
        }
        return new File(Resources.getManagedPluginsDir(), sanitizeFilename(str) + "_" + RandomUtil.generateRandomString(16) + ".mpf");
    }

    public final synchronized void handleDownloadedPlugin(byte[] bArr, int i, int i2, int i3, String str, long j) throws Throwable {
        Throwable th;
        IOException iOException;
        try {
            try {
                File pluginTargetFile = getPluginTargetFile(str, i);
                pluginTargetFile.getParentFile().mkdirs();
                try {
                    if (!Files.writeBinaryFile(pluginTargetFile, bArr)) {
                        throw new IOException("Couldn't save file");
                    }
                    try {
                        ManagedPluginFile managedPluginFile = new ManagedPluginFile(pluginTargetFile);
                        managedPluginFile.setActive(true);
                        managedPluginFile.setLastActive(false);
                        managedPluginFile.setLastVersion(0);
                        managedPluginFile.setFirstDownloaded(InternetTime.getInstance().getTime());
                        if (!managedPluginFile.isValid()) {
                            try {
                                throw new IOException("Invalid file");
                            } catch (IOException e) {
                                e = e;
                                IOException iOException2 = e;
                                pluginTargetFile.delete();
                                throw iOException2;
                            }
                        }
                        try {
                            ManagedPluginFile managedPluginFile2 = getManagedPluginFile(i);
                            if (managedPluginFile2 != null) {
                                try {
                                    managedPluginFile.setLastVersion(managedPluginFile2.getLastVersion());
                                    managedPluginFile.setActive(managedPluginFile2.isActive());
                                    managedPluginFile.setLastActive(managedPluginFile2.isLastActive());
                                    managedPluginFile.setFirstDownloaded(managedPluginFile2.getFirstDownloaded());
                                    managedPluginFile.setPermanent(managedPluginFile2.isPermanent());
                                    managedPluginFile2.getFile().delete();
                                    this.downloadedPlugins.remove(managedPluginFile2);
                                    this.downloadedPluginsMap.remove(managedPluginFile2.getPluginId());
                                } catch (IOException e2) {
                                    iOException = e2;
                                    pluginTargetFile.delete();
                                    throw iOException;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            this.deletedPlugins.removeValue(i);
                            this.downloadedPlugins.add(managedPluginFile);
                            this.downloadedPluginsMap.put(managedPluginFile.getPluginId(), managedPluginFile);
                            setUpdateProgress(i, i2, i3, -2.0f, null);
                            saveState();
                            return;
                        } catch (IOException e3) {
                            e = e3;
                            iOException = e;
                            pluginTargetFile.delete();
                            throw iOException;
                        }
                    } catch (IOException e4) {
                        e = e4;
                    }
                } catch (IOException e5) {
                    e = e5;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        throw th;
    }

    public synchronized int disableRecentPlugins() {
        int iMin;
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.downloadedPlugins.size(); i++) {
                ManagedPluginFile managedPluginFile = this.downloadedPlugins.get(i);
                if (managedPluginFile.isActive() && !managedPluginFile.isPermanent()) {
                    arrayList.add(managedPluginFile);
                }
            }
            Collections.sort(arrayList, new Comparator<ManagedPluginFile>() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.8
                @Override // java.util.Comparator
                public int compare(ManagedPluginFile managedPluginFile2, ManagedPluginFile managedPluginFile3) {
                    return -Long.compare(managedPluginFile2.getFirstDownloaded(), managedPluginFile3.getFirstDownloaded());
                }
            });
            iMin = Math.min(10, arrayList.size());
            for (int i2 = 0; i2 < iMin; i2++) {
                ((ManagedPluginFile) arrayList.get(i2)).setActive(false);
            }
            saveState();
        } catch (Throwable th) {
            throw th;
        }
        return iMin;
    }

    public final synchronized void setUpdateProgress(int i, int i2, int i3, float f, String str) {
        try {
            PendingDownload pendingDownload = this.pendingDownloads.get(i);
            if (pendingDownload == null) {
                pendingDownload = new PendingDownload();
                pendingDownload.pluginId = i;
                this.pendingDownloads.put(i, pendingDownload);
            }
            if (f == -2.0f) {
                this.pendingDownloads.remove(i);
            }
            pendingDownload.revisionId = i2;
            pendingDownload.version = i3;
            pendingDownload.progress = MathUtils.clamp(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
            pendingDownload.error = str;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void duringUpdates(Runnable runnable) {
        boolean zIsEmpty;
        synchronized (this) {
            zIsEmpty = this.updateWorkers.isEmpty();
        }
        if (!zIsEmpty) {
            try {
                Thread.sleep(WebViewScreenCapture.CACHE_TTL_MS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        synchronized (this) {
            runnable.run();
        }
    }

    public static ManagedPluginsController getInstance() {
        if (instance == null) {
            instance = new ManagedPluginsController();
        }
        return instance;
    }

    public final synchronized void download(final String str, final ResponseHandler<byte[]> responseHandler, final Setter<Integer> setter, final List<Thread> list, boolean z, final boolean z2, final boolean z3) throws Throwable {
        try {
            try {
                Thread thread = new Thread() { // from class: info.flowersoft.theotown.store.ManagedPluginsController.9
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        InputStream inputStream;
                        int i = 3;
                        Exception exc = null;
                        Exception e = null;
                        loop0: while (true) {
                            if (i <= 0) {
                                exc = e;
                                break;
                            }
                            i--;
                            try {
                                URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
                                BackendConnector.applyHeaders(uRLConnectionOpenConnection);
                                uRLConnectionOpenConnection.setConnectTimeout(20000);
                                uRLConnectionOpenConnection.setReadTimeout(20000);
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                if (z2) {
                                    inputStream = new GZIPInputStream(uRLConnectionOpenConnection.getInputStream());
                                } else {
                                    inputStream = uRLConnectionOpenConnection.getInputStream();
                                }
                                try {
                                    byte[] buffer = StreamCopyUtil.getBuffer();
                                    int i2 = 0;
                                    while (true) {
                                        if (Thread.interrupted() && !z3) {
                                            throw new InterruptedException();
                                        }
                                        int i3 = inputStream.read(buffer);
                                        if (i3 >= 0) {
                                            byteArrayOutputStream.write(buffer, 0, i3);
                                            i2 += i3;
                                            Setter setter2 = setter;
                                            if (setter2 != null) {
                                                setter2.set(Integer.valueOf(i2));
                                            }
                                        } else {
                                            inputStream.close();
                                            responseHandler.handle(byteArrayOutputStream.toByteArray());
                                            break loop0;
                                        }
                                    }
                                } finally {
                                    if (inputStream == null) {
                                        break;
                                    } else {
                                        try {
                                            break;
                                        } catch (Throwable th) {
                                        }
                                    }
                                }
                            } catch (InterruptedException e2) {
                                exc = e2;
                            } catch (Exception e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                        }
                        if (exc != null) {
                            responseHandler.error(exc);
                        }
                        synchronized (ManagedPluginsController.this) {
                            list.remove(this);
                            ManagedPluginsController.this.updateWorkers(list);
                        }
                    }
                };
                if (z) {
                    for (int i = 0; i < list.size(); i++) {
                        list.get(i).interrupt();
                    }
                    list.clear();
                }
                list.add(thread);
                updateWorkers(list);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized void updateWorkers(List<Thread> list) {
        int i;
        while (true) {
            try {
                if (list.isEmpty() || list.get(0).getState() != Thread.State.TERMINATED) {
                    break;
                } else {
                    list.remove(0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (i = 0; i < Math.min(list.size(), 2); i++) {
            if (list.get(i).getState() == Thread.State.NEW) {
                list.get(i).start();
            }
        }
    }

    public final String generateKey() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return Hex.bin2hex(bArr) + Hex.bin2hex(Hashing.md5(Hex.hex2bin(Hex.bin2hex(bArr) + Resources.KEYS.optString("store key"))));
    }
}
