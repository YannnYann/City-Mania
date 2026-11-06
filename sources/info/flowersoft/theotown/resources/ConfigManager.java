package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.TimeUtils;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.LegacySignatureVerifier;
import info.flowersoft.theotown.util.PackedUtils;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigManager {
    public static ConfigManager instance;
    public long lastOnflineFetchMS;
    public boolean upToDate;
    public final String PREF_NAME = "dynamic_config_file";
    public final String DEFAULT_URL = "https://api.theotown.com/magic/get_config?";
    public JSONObject config = new JSONObject();

    public ConfigManager() {
        Resources.CONFIG = new JSONObject();
    }

    public synchronized void fetchLocal() {
        try {
            String string = new SSP("dynamic_config_file").load().getString("config.json", null);
            JSONObject jSONObjectResolveConfig = resolveConfig(string);
            String resConfig = getResConfig();
            JSONObject jSONObjectResolveConfig2 = resolveConfig(resConfig);
            if (jSONObjectResolveConfig2 != null && (jSONObjectResolveConfig == null || jSONObjectResolveConfig2.optInt("version") > jSONObjectResolveConfig.optInt("version"))) {
                setConfig(resConfig);
                saveConfig();
            } else if (jSONObjectResolveConfig != null) {
                setConfig(string);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean isUpToDate() {
        return this.upToDate;
    }

    public final JSONObject resolveConfig(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                return new JSONObject(str);
            } catch (Exception e) {
                TheoTown.analytics.logException("Resolve", e);
            }
        }
        return null;
    }

    public final String getResConfig() {
        try {
            return PackedUtils.INSTANCE.readInternalText("config.lby");
        } catch (GdxRuntimeException unused) {
            throw new RuntimeException("Missing config file, did you forget to execute `:download` ?");
        }
    }

    public void fetchOnline() {
        if (TimeUtils.millis() - this.lastOnflineFetchMS < ((long) Resources.CONFIG.optInt("refresh seconds", 60)) * 1000) {
            return;
        }
        this.lastOnflineFetchMS = TimeUtils.millis();
        new Thread(new Runnable() { // from class: info.flowersoft.theotown.resources.ConfigManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                ConfigManager.m2172$r8$lambda$BavDNhyjCfleHqLlKt1bBVWSlk(this.f$0);
            }
        }).start();
    }

    /* JADX INFO: renamed from: $r8$lambda$Bav-DNhyjCfleHqLlKt1bBVWSlk, reason: not valid java name */
    public static /* synthetic */ void m2172$r8$lambda$BavDNhyjCfleHqLlKt1bBVWSlk(ConfigManager configManager) throws Throwable {
        JSONObject jSONObjectResolveConfig;
        configManager.getClass();
        String strOptString = Resources.CONFIG.optString("config url", null);
        if (strOptString == null || strOptString.isEmpty()) {
            strOptString = "https://api.theotown.com/magic/get_config?";
        }
        TimeUtils.millis();
        String strDownload = configManager.download(strOptString + "version=" + TheoTown.VERSION_CODE + "&vi=" + TheoTown.VERSIONI + "&config=" + Resources.CONFIG.optInt("version") + "&p=" + Gdx.app.getType().name().substring(0, 1).toLowerCase(Locale.ENGLISH), true);
        if (strDownload != null && !strDownload.isEmpty()) {
            int iLastIndexOf = strDownload.lastIndexOf(Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE) + 1;
            String strSubstring = strDownload.substring(0, iLastIndexOf);
            try {
                if (new LegacySignatureVerifier(Base64Coder.decode(Resources.KEYS.optString("static files private key2"))).verifySign(Hashing.md5(strSubstring.getBytes(StandardCharsets.UTF_8)), Base64Coder.decode(strDownload.substring(iLastIndexOf))) && (jSONObjectResolveConfig = configManager.resolveConfig(strSubstring)) != null && jSONObjectResolveConfig.optInt("min compat version") <= TheoTown.VERSION_CODE && jSONObjectResolveConfig.has("version")) {
                    synchronized (configManager) {
                        configManager.setConfig(strSubstring);
                        configManager.saveConfig();
                        configManager.upToDate = true;
                    }
                    return;
                }
            } catch (Exception e) {
                TheoTown.analytics.logException("Verify", e);
            }
            configManager.upToDate = false;
            return;
        }
        configManager.upToDate = strDownload != null;
        try {
            Resources.CONFIG.put("config url", "");
            configManager.saveConfig();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public final synchronized void saveConfig() {
        SSP.Writer writerEdit = new SSP("dynamic_config_file").edit();
        writerEdit.putString("config.json", this.config.toString());
        writerEdit.apply();
    }

    public final synchronized void setConfig(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.config = jSONObject;
            Resources.CONFIG = jSONObject;
        } catch (Exception e) {
            TheoTown.analytics.logException("Set", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b1 A[Catch: IOException -> 0x00b4, TRY_LEAVE, TryCatch #4 {IOException -> 0x00b4, blocks: (B:46:0x00ac, B:48:0x00b1), top: B:76:0x00ac }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c6 A[Catch: IOException -> 0x00c9, TRY_LEAVE, TryCatch #8 {IOException -> 0x00c9, blocks: (B:56:0x00c1, B:58:0x00c6), top: B:80:0x00c1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d6 A[Catch: IOException -> 0x00d9, TRY_LEAVE, TryCatch #0 {IOException -> 0x00d9, blocks: (B:63:0x00d1, B:65:0x00d6), top: B:74:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String download(java.lang.String r9, boolean r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.resources.ConfigManager.download(java.lang.String, boolean):java.lang.String");
    }

    public static ConfigManager getInstance() {
        if (instance == null) {
            instance = new ConfigManager();
        }
        return instance;
    }
}
