package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.PipeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Pipe {
    public int connectionDir;
    public final AnimationDraft connectionOverlayDraft = (AnimationDraft) Drafts.get("$anim_connection_overlay00", AnimationDraft.class);
    public PipeDraft draft;
    public int frame;
    public int x;
    public int y;

    public Pipe(PipeDraft pipeDraft, int i, int i2, int i3) {
        this.draft = pipeDraft;
        this.x = i;
        this.y = i2;
        this.frame = i3;
    }

    public Pipe(int i, int i2, JsonReader jsonReader) throws IOException {
        this.x = i;
        this.y = i2;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "condir":
                    this.connectionDir = jsonReader.nextInt();
                    break;
                case "f":
                    this.frame = jsonReader.nextInt();
                    break;
                case "id":
                    this.draft = (PipeDraft) Drafts.get(jsonReader.nextString(), PipeDraft.class);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("f").value(this.frame);
        if (this.connectionDir != 0) {
            jsonWriter.name("condir").value(this.connectionDir);
        }
    }

    public PipeDraft getDraft() {
        return this.draft;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public void draw(Drawer drawer) {
        drawer.engine.setType(18);
        drawer.ground.drawFrameOnSlope(drawer, Resources.IMAGE_WORLD, this.draft.frames[Direction.rotateCW(this.frame, drawer.rotation)]);
        int i = this.connectionDir;
        if (i != 0) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[Direction.rotateCW(i | this.frame, drawer.rotation)]);
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.connectionOverlayDraft.frames[Direction.toIndex(Direction.rotateCW(this.connectionDir, drawer.rotation))]);
        }
    }

    public boolean hasConnection() {
        return this.connectionDir != 0;
    }

    public void setConnection(int i) {
        this.connectionDir = i;
    }

    public int getConnectionDir() {
        return this.connectionDir;
    }
}
