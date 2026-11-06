package io.blueflower.stapel2d.util;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.R6;
import com.ironsource.mediationsdk.metadata.a;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.Analytics;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.scripting.libraries.RuntimeLibrary;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class SessionLogger {
    public static long getClientId() {
        User user;
        if (Backend.getInstance() != null && (user = Backend.getInstance().getUser()) != null && user.isValid()) {
            return user.getId();
        }
        Analytics analytics = TheoTown.analytics;
        if (analytics != null) {
            return -analytics.getNumId();
        }
        return 0L;
    }

    public static void logSession() {
        String str;
        SSP ssp = new SSP("session");
        SSP.Reader readerLoad = ssp.load();
        int i = readerLoad.getInt("num", 0);
        long j = readerLoad.getLong(R6.W0, TimeUtils.millis());
        SSP.Writer writerEdit = ssp.edit();
        writerEdit.putInt("num", i + 1);
        writerEdit.putLong(R6.W0, j);
        writerEdit.apply();
        if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
            try {
                str = " " + new File(RuntimeLibrary.class.getProtectionDomain().getCodeSource().getLocation().toURI()).getAbsolutePath();
            } catch (URISyntaxException e) {
                e.printStackTrace();
                str = "";
            }
        } else {
            str = "";
        }
        getAsync(Resources.getSpecificConfig("session").optString("log url", "https://store.theotown.com/log?t=n") + "&id=" + getClientId() + "&model=" + enc(TheoTown.DEVICE_MODEL) + "&p=" + enc(Gdx.app.getType().name()) + "&v=" + TheoTown.VERSION_CODE + "&vi=" + enc(TheoTown.VERSIONI) + "&vn=" + enc(TheoTown.VERSION_NAME) + "&o=" + Gdx.app.getVersion() + "&a=" + enc(TheoTown.PREMIUM + str) + "&n=" + i + "&fs=" + j + "&l=" + enc(Locale.getDefault().toString()));
    }

    public static void logPriv(String str, String str2) {
        String strOptString = Resources.getSpecificConfig("session").optString("priv url", "");
        if (strOptString == null || strOptString.isEmpty()) {
            return;
        }
        long clientId = getClientId();
        Application application = Gdx.app;
        String strName = application != null ? application.getType().name() : "ios".equals(TheoTown.STORE_NAME) ? "iOS" : "unknown";
        Application application2 = Gdx.app;
        int version = application2 != null ? application2.getVersion() : 0;
        User user = Backend.getInstance().getUser();
        getAsync(strOptString + "&model=" + enc(TheoTown.DEVICE_MODEL) + "&p=" + enc(strName) + "&v=" + TheoTown.VERSION_CODE + "&vi=" + enc(TheoTown.VERSIONI) + "&vn=" + enc(TheoTown.VERSION_NAME) + "&o=" + version + "&a=" + enc(String.valueOf(TheoTown.PREMIUM)) + "&n=" + enc(str) + "&s=" + enc(str2) + "&b=" + ((user == null || !user.isValid()) ? 0L : user.getId()) + "&l=" + enc(Locale.getDefault().toString()) + "&i=" + clientId);
    }

    public static void logException(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String strLimit = limit(stringWriter.toString());
        String strLimit2 = limit(th.getMessage());
        JSONObject specificConfig = Resources.getSpecificConfig("session");
        long clientId = getClientId();
        Application application = Gdx.app;
        String strName = application != null ? application.getType().name() : "ios".equals(TheoTown.STORE_NAME) ? "iOS" : "unknown";
        Application application2 = Gdx.app;
        getAsync(specificConfig.optString("exception url", "http://bd.theotown.com/log?t=e") + "&model=" + enc(TheoTown.DEVICE_MODEL) + "&p=" + enc(strName) + "&v=" + TheoTown.VERSION_CODE + "&vi=" + enc(TheoTown.VERSIONI) + "&vn=" + enc(TheoTown.VERSION_NAME) + "&o=" + (application2 != null ? application2.getVersion() : 0) + "&a=" + enc(String.valueOf(TheoTown.PREMIUM)) + "&n=" + enc(strLimit2) + "&s=" + enc(strLimit) + "&l=" + enc(Locale.getDefault().toString()) + "&i=" + clientId);
        if (TheoTown.APP_DIR != null) {
            String str = "";
            if (Gdx.app != null) {
                str = "" + TheoTown.DEVICE_MODEL + ", v: " + Gdx.app.getVersion() + " (" + Gdx.app.getType().name() + ")\n";
            }
            Files.writeTextFile(new File(TheoTown.APP_DIR, "crash.txt"), ((str + TheoTown.VERSION_NAME + " (" + TheoTown.VERSION_CODE + "), p:" + TheoTown.PREMIUM + "\n\n") + th + "\n\n") + stringWriter.toString());
        }
    }

    public static void logGeneric(String str) {
        JSONObject specificConfig = Resources.getSpecificConfig("session");
        long clientId = getClientId();
        String strName = Gdx.app.getType().name();
        Application application = Gdx.app;
        getAsync(specificConfig.optString("generic url", "https://api.theotown.com/events/log?t=g") + "&model=" + enc(TheoTown.DEVICE_MODEL) + "&p=" + enc(strName) + "&v=" + TheoTown.VERSION_CODE + "&vi=" + enc(TheoTown.VERSIONI) + "&vn=" + enc(TheoTown.VERSION_NAME) + "&o=" + (application != null ? application.getVersion() : 0) + "&a=" + enc(String.valueOf(TheoTown.PREMIUM)) + "&s=" + enc(str) + "&l=" + enc(Locale.getDefault().toString()) + "&i=" + clientId);
    }

    public static void logAd(String str, int i) {
        JSONObject specificConfig = Resources.getSpecificConfig("session");
        long clientId = getClientId();
        String strName = Gdx.app.getType().name();
        Application application = Gdx.app;
        getAsync(specificConfig.optString("ad url", "https://api.theotown.com/events/log?t=a") + "&model=" + enc(TheoTown.DEVICE_MODEL) + "&p=" + enc(strName) + "&v=" + TheoTown.VERSION_CODE + "&vi=" + enc(TheoTown.VERSIONI) + "&vn=" + enc(TheoTown.VERSION_NAME) + "&o=" + (application != null ? application.getVersion() : 0) + "&a=" + enc(String.valueOf(TheoTown.PREMIUM)) + "&d=" + i + "&s=" + enc(str) + "&l=" + enc(Locale.getDefault().toString()) + "&i=" + clientId);
    }

    public static String limit(String str) {
        if (str == null) {
            return "";
        }
        return str.length() > 2048 ? str.substring(0, a.o) : str;
    }

    public static String enc(String str) {
        if (str == null) {
            return "null";
        }
        try {
            return URLEncoder.encode(str, "UTF8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void getAsync(final String str) {
        new Thread(new Runnable() { // from class: io.blueflower.stapel2d.util.SessionLogger$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SessionLogger.$r8$lambda$rIPXQ6i0ODOAoKaQfVSx3IUa_bk(str);
            }
        }).start();
    }

    public static /* synthetic */ void $r8$lambda$rIPXQ6i0ODOAoKaQfVSx3IUa_bk(String str) {
        try {
            get(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void get(String str) {
        try {
            long jMillis = TimeUtils.millis();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(str).openStream(), StandardCharsets.UTF_8));
            String line = bufferedReader.readLine();
            bufferedReader.close();
            Application application = Gdx.app;
            if (application != null) {
                application.debug("SessionLogger", "Took " + (TimeUtils.millis() - jMillis) + "ms " + line);
            }
        } catch (IOException unused) {
        }
    }
}
