package info.flowersoft.theotown.online;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualUser {
    public Color color;
    public int id;
    public String name;

    public VirtualUser(JSONObject jSONObject) throws JSONException {
        this.id = jSONObject.getInt(C3670j8.x);
        this.name = jSONObject.getString("name");
        try {
            this.color = Color.fromHexRGB(jSONObject.optString(C3522b4.i.S, "0"));
        } catch (NumberFormatException unused) {
            this.color = Colors.GRAY;
        }
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Color getColor() {
        return this.color;
    }
}
