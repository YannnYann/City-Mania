package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.SSP;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
public class InternetTime {
    public static InternetTime instance;
    public boolean connected;
    public long lastCheckTime;
    public long lastInternetTime;
    public long lastLocalTime;
    public boolean lastLookupSuccessful;

    public void update(boolean z) {
        this.lastCheckTime = TimeUtils.millis();
        if (!(this.lastLookupSuccessful && this.connected && Math.abs(TimeUtils.millis() - this.lastLocalTime) < 900000) && z && TheoTown.CHECK_TIME_ONLINE) {
            this.connected = false;
            new Thread() { // from class: info.flowersoft.theotown.resources.InternetTime.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    long serverTime = InternetTime.this.readServerTime();
                    if (serverTime == 0) {
                        return;
                    }
                    int iOptInt = Resources.getSpecificConfig("time").optInt("tolerance seconds", 60) * 1000;
                    InternetTime.this.connected = true;
                    InternetTime.this.lastLocalTime = System.currentTimeMillis();
                    if (Math.abs(InternetTime.this.lastLocalTime - serverTime) >= iOptInt) {
                        InternetTime.this.lastInternetTime = serverTime;
                        TheoTown.analytics.logEvent("InternetTime", "Tampering detected", "" + (InternetTime.this.lastLocalTime - InternetTime.this.lastInternetTime));
                    } else {
                        InternetTime internetTime = InternetTime.this;
                        internetTime.lastInternetTime = internetTime.lastLocalTime;
                    }
                    InternetTime.this.lastLookupSuccessful = true;
                    SSP.Writer writerEdit = new SSP("info.flowersoft.theotown.theotown.time").edit();
                    writerEdit.putLong("last local time", InternetTime.this.lastLocalTime);
                    writerEdit.putLong("last internet time", InternetTime.this.lastInternetTime);
                    writerEdit.apply();
                }
            }.start();
        }
    }

    public boolean isConnected() {
        if (Math.abs(TimeUtils.millis() - this.lastCheckTime) > 1200000) {
            update(true);
        }
        return this.connected;
    }

    public long getTime() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return this.lastLookupSuccessful ? (jCurrentTimeMillis - this.lastLocalTime) + this.lastInternetTime : jCurrentTimeMillis;
    }

    public final long readServerTime() {
        long jMillis = TimeUtils.millis();
        String strOptString = Resources.getSpecificConfig("time").optString("source");
        long j = 0;
        if (strOptString != null && !strOptString.isEmpty()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new URL(strOptString).openStream(), StandardCharsets.UTF_8));
                String line = bufferedReader.readLine();
                bufferedReader.close();
                j = Long.parseLong(line) * 1000;
                Gdx.app.debug("Time", "Reading time took " + (TimeUtils.millis() - jMillis) + "ms, diff is " + (System.currentTimeMillis() - j) + "ms");
                return j;
            } catch (IOException | NumberFormatException e) {
                TheoTown.analytics.logException("Time", e);
            }
        }
        return j;
    }

    public static InternetTime getInstance() {
        if (instance == null) {
            instance = new InternetTime();
        }
        return instance;
    }
}
