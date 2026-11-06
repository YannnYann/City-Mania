package info.flowersoft.theotown.cityfile;

import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.online.VirtualCity;
import info.flowersoft.theotown.online.VirtualRegion;
import info.flowersoft.theotown.online.VirtualUser;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.IdGenerator;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class RegionInformation {
    public String id;
    public String name;
    public final Map<String, CityInformation> nameToInformation = new HashMap();
    public final long time;

    public final String generateSign(String str, String str2) {
        return Resources.INTRINSICS.get("signRegionLegacy").call(LuaValue.valueOf(str), LuaValue.valueOf(this.id), LuaValue.valueOf(str2)).checkjstring();
    }

    public final boolean checkSign(String str, String str2, String str3) {
        return Resources.INTRINSICS.get("checkRegionSign").invoke(LuaValue.varargsOf(new LuaValue[]{LuaValue.valueOf(str), LuaValue.valueOf(this.id), LuaValue.valueOf(str2), LuaValue.valueOf(str3)})).checkboolean(1);
    }

    public RegionInformation(VirtualRegion virtualRegion) {
        this.name = virtualRegion.getName();
        this.id = "" + virtualRegion.getId();
        this.time = virtualRegion.getTime();
        User user = Backend.getInstance().getUser();
        VirtualCity[] cities = virtualRegion.getCities();
        if (cities != null) {
            for (int i = 0; i < cities.length; i++) {
                VirtualCity virtualCity = virtualRegion.getCities()[i];
                CityInformation cityInformation = new CityInformation();
                VirtualUser owner = virtualCity.getOwner();
                cityInformation.name = virtualCity.getName();
                cityInformation.created = (virtualCity.getTime() <= 0 || virtualCity.getOwner() == null || virtualCity.getFile().equals(virtualCity.getFirstFile())) ? false : true;
                cityInformation.waiting = false;
                cityInformation.locked = false;
                cityInformation.prevFreemode = false;
                cityInformation.acquired = owner != null && user.isValid() && user.isForumConnected() && ((long) owner.getId()) == user.getId();
                cityInformation.canBeAcquired = owner == null;
                cityInformation.author = owner != null ? owner.getName() : "";
                cityInformation.downloads = virtualCity.getDownloads();
                this.nameToInformation.put(cityInformation.name, cityInformation);
            }
        }
    }

    public RegionInformation(JSONObject jSONObject, List<CityKeeper> list) throws JSONException {
        String str;
        Iterator<CityKeeper> it;
        String str2;
        String str3;
        String str4;
        String str5;
        this.name = jSONObject.optString("name", "Stuckenborstel");
        String strOptString = jSONObject.optString(C3670j8.x, "");
        this.id = strOptString;
        if (strOptString.isEmpty()) {
            this.id = IdGenerator.generateId(16);
        }
        this.time = jSONObject.optLong("time", TimeUtils.millis());
        JSONObject jSONObject2 = jSONObject.has("cities") ? jSONObject.getJSONObject("cities") : null;
        String str6 = "spf";
        String str7 = "sign waiting";
        String str8 = "waiting start";
        String str9 = "waiting time";
        String str10 = "sign";
        if (list.isEmpty() && jSONObject2 != null && jSONObject2.names() != null) {
            JSONArray jSONArrayNames = jSONObject2.names();
            int i = 0;
            while (i < jSONArrayNames.length()) {
                String string = jSONArrayNames.getString(i);
                JSONArray jSONArray = jSONArrayNames;
                CityInformation cityInformation = new CityInformation();
                cityInformation.name = string;
                int i2 = i;
                cityInformation.acquired = true;
                String str11 = str6;
                JSONObject jSONObject3 = jSONObject2.getJSONObject(string);
                JSONObject jSONObject4 = jSONObject2;
                cityInformation.locked = jSONObject3.optBoolean("locked", true);
                cityInformation.created = jSONObject3.optBoolean("created", false);
                cityInformation.waiting = jSONObject3.optBoolean("waiting", false);
                if (!cityInformation.locked) {
                    cityInformation.locked = !checkSign(string, "locked", jSONObject3.optString(str10, "").replace("\n", ""));
                }
                if (cityInformation.waiting) {
                    cityInformation.waitingTime = jSONObject3.optInt(str9);
                    str4 = str9;
                    str5 = str10;
                    cityInformation.waitingStart = jSONObject3.optLong(str8);
                    String strReplace = jSONObject3.optString(str7, "").replace("\n", "");
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    sb.append(",");
                    str2 = str7;
                    str3 = str8;
                    sb.append(cityInformation.waitingStart);
                    sb.append(",");
                    sb.append(cityInformation.waitingTime);
                    cityInformation.waiting = checkSign(sb.toString(), "waiting", strReplace);
                } else {
                    str2 = str7;
                    str3 = str8;
                    str4 = str9;
                    str5 = str10;
                }
                cityInformation.prevFreemode = jSONObject3.optBoolean(str11, false);
                this.nameToInformation.put(string, cityInformation);
                str9 = str4;
                str6 = str11;
                str10 = str5;
                jSONObject2 = jSONObject4;
                str7 = str2;
                str8 = str3;
                i = i2 + 1;
                jSONArrayNames = jSONArray;
            }
            return;
        }
        JSONObject jSONObject5 = jSONObject2;
        String str12 = "waiting time";
        Iterator<CityKeeper> it2 = list.iterator();
        while (it2.hasNext()) {
            String name = it2.next().getFile().getName();
            CityInformation cityInformation2 = new CityInformation();
            cityInformation2.name = name;
            cityInformation2.acquired = true;
            if (jSONObject5 != null) {
                JSONObject jSONObject6 = jSONObject5;
                if (jSONObject6.has(name)) {
                    JSONObject jSONObject7 = jSONObject6.getJSONObject(name);
                    str = str12;
                    cityInformation2.locked = jSONObject7.optBoolean("locked", true);
                    cityInformation2.created = jSONObject7.optBoolean("created", false);
                    cityInformation2.waiting = jSONObject7.optBoolean("waiting", false);
                    if (!cityInformation2.locked) {
                        cityInformation2.locked = !checkSign(name, "locked", jSONObject7.optString("sign", "").replace("\n", ""));
                    }
                    if (cityInformation2.waiting) {
                        cityInformation2.waitingTime = jSONObject7.optInt(str);
                        it = it2;
                        cityInformation2.waitingStart = jSONObject7.optLong("waiting start");
                        String strOptString2 = jSONObject7.optString("sign waiting", "");
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(name);
                        sb2.append(",");
                        jSONObject5 = jSONObject6;
                        sb2.append(cityInformation2.waitingStart);
                        sb2.append(",");
                        sb2.append(cityInformation2.waitingTime);
                        cityInformation2.waiting = checkSign(sb2.toString(), "waiting", strOptString2);
                    } else {
                        it = it2;
                        jSONObject5 = jSONObject6;
                    }
                    cityInformation2.prevFreemode = jSONObject7.optBoolean("spf", false);
                } else {
                    jSONObject5 = jSONObject6;
                    str = str12;
                    it = it2;
                    cityInformation2.locked = true;
                    cityInformation2.created = false;
                }
            } else {
                str = str12;
                it = it2;
                cityInformation2.locked = true;
                cityInformation2.created = false;
            }
            this.nameToInformation.put(name, cityInformation2);
            it2 = it;
            str12 = str;
        }
    }

    public JSONObject getJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", this.name);
        jSONObject.put(C3670j8.x, this.id);
        jSONObject.put("time", this.time);
        JSONObject jSONObject2 = new JSONObject();
        for (CityInformation cityInformation : this.nameToInformation.values()) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("locked", cityInformation.locked);
            jSONObject3.put("created", cityInformation.created);
            if (!cityInformation.locked) {
                jSONObject3.put("sign", generateSign(cityInformation.name, "locked"));
            }
            if (cityInformation.waiting) {
                jSONObject3.put("waiting", cityInformation.waiting);
                jSONObject3.put("waiting time", cityInformation.waitingTime);
                jSONObject3.put("waiting start", cityInformation.waitingStart);
                jSONObject3.put("sign waiting", generateSign(cityInformation.name + "," + cityInformation.waitingStart + "," + cityInformation.waitingTime, "waiting"));
            }
            if (cityInformation.prevFreemode) {
                jSONObject2.put("spf", cityInformation.prevFreemode);
            }
            jSONObject2.put(cityInformation.name, jSONObject3);
        }
        jSONObject.put("cities", jSONObject2);
        return jSONObject;
    }

    public String getId() {
        return this.id;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }

    public long getTime() {
        return this.time;
    }

    public CityInformation getCityInformation(CityKeeper cityKeeper) {
        File file = cityKeeper.getFile();
        if (file == null) {
            return null;
        }
        return getCityInformation(file.getName());
    }

    public CityInformation getCityInformation(String str) {
        return this.nameToInformation.get(str);
    }

    public static class CityInformation {
        public boolean acquired;
        public String author = "";
        public boolean canBeAcquired;
        public boolean created;
        public int downloads;
        public boolean locked;
        public String name;
        public boolean prevFreemode;
        public boolean waiting;
        public long waitingStart;
        public int waitingTime;

        public boolean isLocked() {
            return this.locked;
        }

        public boolean isWaitingToUnlock() {
            return this.waiting;
        }

        public int timeUntilUnlockInMS() {
            int time = (int) ((this.waitingStart + ((long) this.waitingTime)) - InternetTime.getInstance().getTime());
            if (time < 0) {
                return 0;
            }
            if (time <= this.waitingTime) {
                return time;
            }
            this.waitingStart = InternetTime.getInstance().getTime();
            return this.waitingTime;
        }

        public void setTimeUntilUnlock(int i) {
            this.waiting = true;
            this.waitingStart = InternetTime.getInstance().getTime();
            this.waitingTime = i;
        }

        public void setLocked(boolean z) {
            this.locked = z;
            this.waiting = false;
        }

        public boolean isCreated() {
            return this.created;
        }

        public void setCreated(boolean z) {
            this.created = z;
        }

        public boolean isAcquired() {
            return this.acquired;
        }

        public boolean isCanBeAcquired() {
            return this.canBeAcquired;
        }

        public String getAuthor() {
            return this.author;
        }

        public int getDownloads() {
            return this.downloads;
        }
    }
}
