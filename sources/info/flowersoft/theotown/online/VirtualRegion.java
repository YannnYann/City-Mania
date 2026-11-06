package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualRegion {
    public boolean allowComments;
    public final boolean allowPlugins;
    public final boolean allowSandbox;
    public VirtualCity[] cities;
    public final int comments;
    public final boolean enforcePassword;
    public JSONObject extra;
    public final int freeCities;
    public final String headersFile;
    public final String icon;
    public final int id;
    public final Map<Integer, VirtualCity> idToCity = new HashMap();
    public final String infos;
    public final String name;
    public final int newGifts;
    public VirtualUser owner;
    public final boolean passwordProtected;
    public final int reports;
    public final String rules;
    public final long rulesTime;
    public int[] tags;
    public final long time;
    public final int totalCities;
    public final int userCities;
    public boolean valid;
    public final int winter;

    public VirtualRegion(JSONObject jSONObject) throws JSONException {
        this.id = jSONObject.getInt(C3670j8.x);
        this.icon = jSONObject.optString(C3522b4.i.H0, "");
        this.name = jSONObject.getString("name");
        this.headersFile = jSONObject.optString("headers_file");
        this.time = jSONObject.getLong("time");
        boolean zOptBoolean = jSONObject.optBoolean("password", false);
        this.passwordProtected = zOptBoolean;
        this.comments = jSONObject.optInt("comments", 0);
        this.totalCities = jSONObject.optInt("total cities");
        this.freeCities = jSONObject.optInt("free cities");
        this.userCities = jSONObject.optInt("user cities", 0);
        this.allowPlugins = jSONObject.optInt("allow_plugins", 1) != 0;
        this.allowSandbox = jSONObject.optInt("allow_sandbox", 1) != 0;
        this.rules = jSONObject.optString("rules", "");
        this.infos = jSONObject.optString("infos", "");
        this.rulesTime = jSONObject.optLong("rules_time", 0L);
        this.enforcePassword = jSONObject.optInt("enforce_password", 1) != 0 && zOptBoolean;
        this.reports = jSONObject.optInt("reports", 0);
        this.winter = jSONObject.optInt("winter", 0);
        try {
            this.extra = new JSONObject(jSONObject.optString("extra", "{}"));
        } catch (JSONException unused) {
            this.extra = new JSONObject();
        }
        this.newGifts = jSONObject.optInt("new_gifts", 0);
        this.allowComments = jSONObject.getInt("allow_comments") != 0;
        if (jSONObject.has("tags")) {
            JSONArray jSONArray = jSONObject.getJSONArray("tags");
            this.tags = new int[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                this.tags[i] = jSONArray.getInt(i);
            }
        } else {
            this.tags = new int[0];
        }
        if (jSONObject.has("cities")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("cities");
            this.cities = new VirtualCity[jSONArray2.length()];
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                this.cities[i2] = new VirtualCity(jSONArray2.getJSONObject(i2));
                this.idToCity.put(Integer.valueOf(this.cities[i2].getId()), this.cities[i2]);
            }
        }
        if (jSONObject.has("owner")) {
            this.owner = new VirtualUser(jSONObject.getJSONObject("owner"));
        }
        this.valid = true;
    }

    public void invalidate() {
        this.valid = false;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getIcon() {
        return this.icon;
    }

    public String getHeadersFile() {
        return this.headersFile;
    }

    public long getTime() {
        return this.time;
    }

    public VirtualCity[] getCities() {
        return this.cities;
    }

    public Map<Integer, VirtualCity> getIdToCity() {
        return this.idToCity;
    }

    public VirtualCity getCity(int i) {
        return this.idToCity.get(Integer.valueOf(i));
    }

    public VirtualCity getCity(Integer num) {
        if (num != null) {
            return getCity(num.intValue());
        }
        return null;
    }

    public VirtualUser getOwner() {
        return this.owner;
    }

    public boolean isValid() {
        return this.valid;
    }

    public boolean isPasswordProtected() {
        return this.passwordProtected && this.enforcePassword;
    }

    public boolean hasPasswordDefined() {
        return this.passwordProtected;
    }

    public boolean isPasswordEnforced() {
        return this.enforcePassword;
    }

    public int getComments() {
        return this.comments;
    }

    public int getTotalCities() {
        return this.totalCities;
    }

    public int getFreeCities() {
        return this.freeCities;
    }

    public int getUserCities() {
        return this.userCities;
    }

    public boolean isAllowPlugins() {
        return this.allowPlugins;
    }

    public boolean isAllowSandbox() {
        return this.allowSandbox;
    }

    public boolean allowsComments() {
        return this.allowComments;
    }

    public void setAllowComments(boolean z) {
        this.allowComments = z;
    }

    public int[] getTags() {
        return this.tags;
    }

    public String getRules() {
        return this.rules;
    }

    public String getInfos() {
        return this.infos;
    }

    public long getRulesTime() {
        return this.rulesTime;
    }

    public int getReports() {
        return this.reports;
    }

    public int getWinter() {
        return this.winter;
    }

    public JSONObject getExtra() {
        return this.extra;
    }

    public int getNewGifts() {
        return this.newGifts;
    }
}
