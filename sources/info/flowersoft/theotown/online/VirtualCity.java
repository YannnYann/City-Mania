package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualCity {
    public boolean allowComments;
    public final String cityName;
    public final int comments;
    public final int downloads;
    public final String file;
    public final String firstFile;
    public final int id;
    public final String name;
    public final int newGifts;
    public VirtualUser owner;
    public final boolean prtc;
    public final int reports;
    public final long time;

    public VirtualCity(JSONObject jSONObject) throws JSONException {
        this.id = jSONObject.getInt(C3670j8.x);
        this.name = jSONObject.getString("name");
        this.cityName = jSONObject.getString("city_name");
        this.file = jSONObject.getString(C3522b4.i.b);
        this.firstFile = jSONObject.getString("first_file");
        this.time = jSONObject.getLong("time");
        this.comments = jSONObject.optInt("comments");
        this.reports = jSONObject.optInt("reports", 0);
        this.prtc = jSONObject.optInt("protected", 0) != 0;
        this.newGifts = jSONObject.optInt("new_gifts", 0);
        this.downloads = jSONObject.optInt("downloads", 0);
        this.allowComments = jSONObject.getInt("allow_comments") != 0;
        if (jSONObject.has("owner")) {
            this.owner = new VirtualUser(jSONObject.getJSONObject("owner"));
        }
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getFile() {
        return this.file;
    }

    public String getFirstFile() {
        return this.firstFile;
    }

    public long getTime() {
        return this.time;
    }

    public VirtualUser getOwner() {
        return this.owner;
    }

    public int getComments() {
        return this.comments;
    }

    public int getReports() {
        return this.reports;
    }

    public boolean isProtected() {
        return this.prtc;
    }

    public int getNewGifts() {
        return this.newGifts;
    }

    public int getDownloads() {
        return this.downloads;
    }

    public boolean allowsComments() {
        return this.allowComments;
    }

    public void setAllowComments(boolean z) {
        this.allowComments = z;
    }
}
