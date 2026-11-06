package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualNotification {
    public Action action;
    public int cityId;
    public int id;
    public int regionId;
    public long seen_time;
    public String text;
    public long time;

    public VirtualNotification(JSONObject jSONObject) throws JSONException {
        this.id = jSONObject.getInt(C3670j8.x);
        this.text = jSONObject.getString(C3522b4.i.K0);
        this.time = jSONObject.getLong("time");
        this.seen_time = jSONObject.getLong("seen_time");
        this.cityId = jSONObject.optInt("city_id");
        this.regionId = jSONObject.optInt("region_id");
        this.action = Action.resolve(jSONObject.getString("action"));
    }

    public int getId() {
        return this.id;
    }

    public String getText() {
        return this.text;
    }

    public long getTime() {
        return this.time;
    }

    public long getSeenTime() {
        return this.seen_time;
    }

    public void setSeenTime(long j) {
        this.seen_time = j;
    }

    public int getRegionId() {
        return this.regionId;
    }

    public int getCityId() {
        return this.cityId;
    }

    public Action getAction() {
        return this.action;
    }

    public enum Action {
        RESET_CITY("reset city"),
        STEAL_CITY("steal city"),
        GIFT_CITY("gift city"),
        STEAL_REGION("steal region"),
        GIFT_REGION("gift region"),
        DELETE_REGION("delete region"),
        CITY_COMMENT("city comment"),
        CITY_PRESENT("city gift");

        public static Map<String, Action> actionsByTag;
        public String tag;

        Action(String str) {
            this.tag = str;
        }

        public static Action resolve(String str) {
            if (actionsByTag == null) {
                HashMap map = new HashMap();
                for (Action action : values()) {
                    map.put(action.tag, action);
                }
                actionsByTag = map;
            }
            return actionsByTag.get(str);
        }
    }
}
