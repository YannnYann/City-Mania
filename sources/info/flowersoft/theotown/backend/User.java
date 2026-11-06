package info.flowersoft.theotown.backend;

import com.google.android.gms.common.Scopes;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class User {
    public String accessKey;
    public int admin;
    public String email;
    public String forumColor;
    public Color forumColorEvaluated;
    public long forumId;
    public String forumName;
    public String forumPw;
    public long id;
    public long last_active;
    public String name;
    public int permissions;
    public String social_id;
    public String social_token;
    public String social_type;
    public long steamId;
    public String steamName;
    public String steamToken;
    public long time_created;

    public void fromJson(JSONObject jSONObject) {
        this.id = jSONObject.optLong(C3670j8.x, this.id);
        this.name = jSONObject.optString("name", this.name);
        this.email = jSONObject.optString(Scopes.EMAIL, this.email);
        this.social_id = jSONObject.optString("fb_id", this.social_id);
        this.social_token = jSONObject.optString("fb_token", this.social_token);
        this.social_type = jSONObject.optString("social_type", "fb");
        this.last_active = jSONObject.optLong("last_active", this.last_active);
        this.time_created = jSONObject.optLong("time_created", this.time_created);
        this.admin = jSONObject.optInt("admin", this.admin);
        this.permissions = jSONObject.optInt("permissions", this.permissions);
        this.accessKey = jSONObject.optString("access_key", null);
        this.steamId = jSONObject.optLong("steam_id", this.steamId);
        this.steamName = jSONObject.optString("steam_name", this.steamName);
        this.forumId = jSONObject.optLong("forum_id", 0L);
        this.forumName = jSONObject.optString("forum_name", this.forumName);
        String strOptString = jSONObject.optString("forum_pw", this.forumPw);
        this.forumPw = strOptString;
        this.forumColor = jSONObject.optString("forum_color", strOptString);
        this.forumColorEvaluated = null;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(C3670j8.x, this.id);
            jSONObject.put("name", this.name);
            jSONObject.put(Scopes.EMAIL, this.email);
            jSONObject.put("fb_id", this.social_id);
            jSONObject.put("fb_token", this.social_token);
            jSONObject.put("social_type", this.social_type);
            jSONObject.put("last_active", this.last_active);
            jSONObject.put("time_created", this.time_created);
            jSONObject.put("admin", this.admin);
            jSONObject.put("permissions", this.permissions);
            jSONObject.put("access_key", this.accessKey);
            jSONObject.put("steam_id", this.steamId);
            jSONObject.put("steam_name", this.steamName);
            jSONObject.put("steam_token", this.steamToken);
            jSONObject.put("forum_id", this.forumId);
            jSONObject.put("forum_name", this.forumName);
            jSONObject.put("forum_pw", this.forumPw);
            jSONObject.put("forum_color", this.forumColor);
            return jSONObject;
        } catch (JSONException e) {
            e.printStackTrace();
            return jSONObject;
        }
    }

    public int getAdmin() {
        if (isValid() && isSocialConnected()) {
            return this.admin;
        }
        return 0;
    }

    public int getPermissions() {
        if (isValid()) {
            return this.permissions;
        }
        return 0;
    }

    public boolean hasPermissionToUploadScreenshot() {
        return isValid() && (this.permissions & 1) != 0;
    }

    public boolean isValid() {
        return this.id != 0 && isSocialConnected();
    }

    public void invalidateSocialConnection() {
        this.social_id = "";
        this.social_token = "";
        this.steamId = 0L;
        this.steamName = "";
        this.steamToken = "";
        this.forumId = 0L;
        this.forumName = "";
        this.forumPw = "";
        this.forumColor = "";
        this.forumColorEvaluated = null;
    }

    public boolean isSocialConnected() {
        String str;
        String str2;
        String str3 = this.social_id;
        if (str3 != null && this.social_token != null && !str3.isEmpty() && !this.social_token.isEmpty()) {
            return true;
        }
        if (this.steamId <= 0 || (str2 = this.steamName) == null || str2.isEmpty()) {
            return (this.forumId == 0 || (str = this.forumName) == null || str.isEmpty()) ? false : true;
        }
        return true;
    }

    public boolean isSocialConnectable() {
        String str;
        String str2 = this.social_id;
        if (str2 != null && this.social_token != null && !str2.isEmpty() && !this.social_token.isEmpty()) {
            return true;
        }
        if (this.steamId <= 0 || (str = this.steamName) == null || str.isEmpty()) {
            return (this.forumName == null || this.forumPw.isEmpty()) ? false : true;
        }
        return true;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public String getSocial_id() {
        return this.social_id;
    }

    public void setSocial_id(String str) {
        this.social_id = str;
    }

    public String getSocial_type() {
        return this.social_type;
    }

    public void setSocial_type(String str) {
        this.social_type = str;
    }

    public String getAccessKey() {
        return this.accessKey;
    }

    public long getSteamId() {
        return this.steamId;
    }

    public void setSteamId(long j) {
        this.steamId = j;
    }

    public String getSteamName() {
        return this.steamName;
    }

    public void setSteamName(String str) {
        this.steamName = str;
    }

    public String getForumName() {
        return this.forumName;
    }

    public void setForumName(String str) {
        this.forumName = str;
    }

    public String getForumPw() {
        return this.forumPw;
    }

    public void setForumPw(String str) {
        this.forumPw = str;
    }

    public long getForumId() {
        return this.forumId;
    }

    public void setForumId(long j) {
        this.forumId = j;
    }

    public boolean isFBConnected() {
        String str = this.social_id;
        return (str == null || this.social_token == null || str.isEmpty() || this.social_token.isEmpty()) ? false : true;
    }

    public boolean isForumConnected() {
        return this.forumId != 0 && isValid();
    }

    public String getForumColor() {
        return this.forumColor;
    }

    public void setForumColor(String str) {
        this.forumColor = str;
        this.forumColorEvaluated = null;
    }

    public Color getUserColor() {
        if (this.forumColorEvaluated == null) {
            String str = this.forumColor;
            if (str == null || str.isEmpty()) {
                this.forumColorEvaluated = Colors.BLACK;
            } else {
                this.forumColorEvaluated = Color.fromRGB(Integer.parseInt(this.forumColor, 16), new Color());
            }
        }
        return this.forumColorEvaluated;
    }
}
