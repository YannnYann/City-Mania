package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.ShipDraft;
import info.flowersoft.theotown.resources.Drafts;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Ship {
    public int controller;
    public long data;
    public int dir;
    public ShipDraft draft;
    public int frame;
    public boolean invalid;
    public float p;
    public int x;
    public int y;

    public void draw(Drawer drawer) {
    }

    public Ship(ShipDraft shipDraft, int i, int i2, int i3, int i4) {
        this.draft = shipDraft;
        this.x = i;
        this.y = i2;
        this.controller = i3;
        this.frame = i4;
    }

    public Ship(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "p":
                    this.p = jsonReader.nextInt() / 100.0f;
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "id":
                    String strNextString = jsonReader.nextString();
                    ShipDraft shipDraft = (ShipDraft) Drafts.ALL.get(strNextString);
                    this.draft = shipDraft;
                    if (shipDraft == null) {
                        throw new IllegalArgumentException("Found no ship of id " + strNextString);
                    }
                    break;
                    break;
                case "dir":
                    this.dir = jsonReader.nextInt();
                    break;
                case "data":
                    this.data = jsonReader.nextLong();
                    break;
                case "frame":
                    this.frame = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.frame %= this.draft.frames.length / 4;
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("frame").value(this.frame);
        jsonWriter.name("dir").value(this.dir);
        jsonWriter.name("p").value((int) (this.p * 100.0f));
        jsonWriter.name("data").value(this.data);
    }

    public ShipDraft getDraft() {
        return this.draft;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getController() {
        return this.controller;
    }

    public void setController(int i) {
        this.controller = i;
    }

    public int getFrame() {
        return this.frame;
    }

    public int getDir() {
        return this.dir;
    }

    public float getP() {
        return this.p;
    }

    public void setP(float f) {
        this.p = f;
    }

    public void setTarget(int i) {
        this.x += Direction.differenceX(this.dir);
        this.y += Direction.differenceY(this.dir);
        this.dir = i;
        this.p = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public void setInvalid() {
        this.invalid = true;
    }

    public boolean isInvalid() {
        return this.invalid;
    }

    public long getData() {
        return this.data;
    }

    public void setData(long j) {
        this.data = j;
    }
}
