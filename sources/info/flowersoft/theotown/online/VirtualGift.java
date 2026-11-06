package info.flowersoft.theotown.online;

import com.ironsource.C3670j8;
import com.ironsource.C3844t;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualGift {
    public double amount;
    public String content;
    public long creation_time;
    public int id;
    public int priv;
    public long receive_time;
    public VirtualUser receiver;
    public int receiver_id;
    public VirtualUser sender;
    public int sender_id;
    public GiftType type;
    public String[] typeParts;

    public VirtualGift(JSONObject jSONObject) throws JSONException {
        this.id = jSONObject.getInt(C3670j8.x);
        this.sender_id = jSONObject.getInt("sender_id");
        this.receiver_id = jSONObject.getInt("receiver_id");
        this.creation_time = jSONObject.getLong("creation_time");
        this.receive_time = jSONObject.optLong("receive_time", 0L);
        String[] strArrSplit = jSONObject.getString("type").split(":");
        this.typeParts = strArrSplit;
        this.type = GiftType.getGiftType(strArrSplit[0]);
        this.amount = jSONObject.getDouble(C3844t.l);
        this.content = jSONObject.getString(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT);
        this.priv = jSONObject.getInt("private");
        if (jSONObject.has("sender")) {
            this.sender = new VirtualUser(jSONObject.getJSONObject("sender"));
        }
        if (jSONObject.has("receiver")) {
            this.receiver = new VirtualUser(jSONObject.getJSONObject("receiver"));
        }
    }

    public int getId() {
        return this.id;
    }

    public int getSenderId() {
        return this.sender_id;
    }

    public long getCreationTime() {
        return this.creation_time;
    }

    public long getReceiveTime() {
        return this.receive_time;
    }

    public void setReceiveTime(long j) {
        this.receive_time = j;
    }

    public GiftType getType() {
        return this.type;
    }

    public double getAmount() {
        return this.amount;
    }

    public String getContent() {
        return this.content;
    }

    public int getPriv() {
        return this.priv;
    }

    public VirtualUser getSender() {
        return this.sender;
    }

    public String toString() {
        return this.type + ": " + this.content;
    }
}
