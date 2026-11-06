package info.flowersoft.theotown.resources;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.SessionLogger;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public class ExperimentManager {
    public static ExperimentManager instance;
    public final Map<String, Integer> experiments = new HashMap();
    public final Map<String, Integer> finalValues = new HashMap();
    public final Map<String, Integer> extraInfos = new HashMap();
    public boolean initialised = false;

    public void init() {
        if (this.initialised) {
            return;
        }
        this.initialised = true;
        load();
        parseExperiments();
        save();
        int i = Settings.loadCounter;
    }

    public void dispose() {
        instance = null;
    }

    public final void load() {
        Map<String, ?> all = new SSP("info.flowersoft.theotown.theotown.experiments").load().getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                if (entry.getValue() instanceof Integer) {
                    Integer num = (Integer) entry.getValue();
                    num.intValue();
                    this.experiments.put(key, num);
                }
            }
        }
    }

    public final void parseExperiments() {
        JSONArray jSONArrayNames;
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("experiment");
        if (jSONObjectOptJSONObject == null || (jSONArrayNames = jSONObjectOptJSONObject.names()) == null) {
            return;
        }
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            String strOptString = jSONArrayNames.optString(i);
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(strOptString);
            if (jSONObjectOptJSONObject2 != null) {
                considerExperiment(strOptString, jSONObjectOptJSONObject2);
            }
        }
    }

    public final void considerExperiment(String str, JSONObject jSONObject) {
        String str2;
        int i = 0;
        boolean zOptBoolean = jSONObject.optBoolean("running", false);
        int iOptInt = jSONObject.optInt("min version");
        int iOptInt2 = jSONObject.optInt("first version", iOptInt);
        float fOptDouble = (float) jSONObject.optDouble("testers");
        int iOptInt3 = jSONObject.optInt("options");
        int iOptInt4 = jSONObject.optInt("default value");
        int iOptInt5 = jSONObject.optInt("debug value", -1);
        if (TheoTown.DEBUG && iOptInt5 >= 0) {
            this.experiments.remove(str);
            this.finalValues.put(str, Integer.valueOf(iOptInt5));
            return;
        }
        if (Gdx.app.getType() != Application.ApplicationType.Android || !zOptBoolean || iOptInt3 < 1 || iOptInt > TheoTown.VERSION_CODE || iOptInt2 > Settings.firstVersion) {
            this.experiments.remove(str);
            this.finalValues.put(str, Integer.valueOf(iOptInt4));
            return;
        }
        boolean zContainsKey = this.experiments.containsKey(str);
        if (!zContainsKey) {
            Random random = Resources.RND;
            if (random.nextFloat() < fOptDouble) {
                this.experiments.put(str, Integer.valueOf(random.nextInt(iOptInt3)));
            } else {
                this.experiments.put(str, -1);
            }
            i = 1;
        }
        int iIntValue = this.experiments.get(str).intValue();
        if (iIntValue < 0) {
            str2 = "Don't participate (" + iOptInt4 + ")";
        } else {
            i |= 2;
            iOptInt4 = iIntValue;
            str2 = "" + iIntValue;
        }
        if (!zContainsKey) {
            str2 = str2 + "(init)";
        }
        this.finalValues.put(str, Integer.valueOf(iOptInt4));
        this.extraInfos.put(str, Integer.valueOf(i));
        SessionLogger.logGeneric("experiment:" + str + ":" + str2);
        Application application = Gdx.app;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": ");
        sb.append(iOptInt4);
        sb.append(zContainsKey ? "" : " (init)");
        application.debug("Experiment", sb.toString());
    }

    public final void save() {
        SSP.Writer writerEdit = new SSP("info.flowersoft.theotown.theotown.experiments").edit();
        for (Map.Entry<String, Integer> entry : this.experiments.entrySet()) {
            writerEdit.putInt(entry.getKey(), entry.getValue().intValue());
        }
        writerEdit.apply();
    }

    public int getValue(String str) {
        Integer num = this.finalValues.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public void setValue(String str, int i) {
        this.finalValues.put(str, Integer.valueOf(i));
    }

    public static ExperimentManager getInstance() {
        if (instance == null) {
            instance = new ExperimentManager();
        }
        return instance;
    }
}
