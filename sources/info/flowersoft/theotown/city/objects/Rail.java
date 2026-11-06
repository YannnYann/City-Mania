package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.RailDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Rail implements Saveable {
    public int connectionDir;
    public AnimationDraft connectionOverlayDraft;
    public RailDraft draft;
    public int frame;
    public boolean pile;
    public int x;
    public int y;

    public Rail(RailDraft railDraft, int i, int i2) {
        this.connectionOverlayDraft = (AnimationDraft) Drafts.get("$anim_connection_overlay00", AnimationDraft.class);
        this.draft = railDraft;
        this.x = i;
        this.y = i2;
    }

    public Rail(JsonReader jsonReader) throws IOException {
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_connection_overlay00", AnimationDraft.class);
        this.connectionOverlayDraft = animationDraft;
        if (animationDraft == null) {
            this.connectionOverlayDraft = (AnimationDraft) Drafts.ALL.get("$anim_connection_overlay00");
        }
        load(jsonReader);
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "f":
                    this.frame = jsonReader.nextInt();
                    break;
                case "p":
                    this.pile = jsonReader.nextBoolean();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "id":
                    this.draft = (RailDraft) Drafts.ALL.get(jsonReader.nextString());
                    break;
                case "connection dir":
                    this.connectionDir = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.draft.id);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
        jsonWriter.name("f").value(this.frame);
        jsonWriter.name("p").value(this.pile);
        if (this.connectionDir != 0) {
            jsonWriter.name("connection dir").value(this.connectionDir);
        }
    }

    public void draw(Drawer drawer) {
        drawer.engine.setType(19);
        int i = drawer.baseTerrainHeight * (-12);
        if (this.pile) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i, this.draft.pileFrames[0]);
        }
        int iRotateCW = Direction.rotateCW(this.frame | this.connectionDir, drawer.rotation);
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-r3.pileHeight) + i, this.draft.frames[iRotateCW]);
        int i2 = this.connectionDir;
        if (i2 != 0) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i, this.connectionOverlayDraft.frames[Direction.toIndex(Direction.rotateCW(i2, drawer.rotation))]);
        }
        RailDraft railDraft = this.draft;
        if (railDraft.animationSpots != null) {
            int i3 = i - railDraft.pileHeight;
            boolean zLightsOn = lightsOn(drawer);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, i3);
            Drawing drawing = Drawing.getInstance();
            RailDraft railDraft2 = this.draft;
            drawing.drawAnimations(drawer, railDraft2.animationSpots, railDraft2.animationSpotIndices, iRotateCW, iRotateCW, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -i3);
        }
    }

    public void drawForeground(Drawer drawer) {
        int iRotateCW = Direction.rotateCW(this.frame, drawer.rotation) + 16;
        int i = drawer.baseTerrainHeight * (-12);
        RailDraft railDraft = this.draft;
        float f = i - railDraft.pileHeight;
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, railDraft.frames[iRotateCW]);
        if (this.draft.animationFGSpots != null) {
            boolean zLightsOn = lightsOn(drawer);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f);
            int i2 = iRotateCW % 16;
            Drawing drawing = Drawing.getInstance();
            RailDraft railDraft2 = this.draft;
            drawing.drawAnimations(drawer, railDraft2.animationFGSpots, railDraft2.animationFGSpotIndices, i2, i2, drawer.time / 200.0f, drawer.animationSpotFlags, zLightsOn);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, -r9);
        }
    }

    private boolean lightsOn(Drawer drawer) {
        return 1.0f - Math.abs(1.0f - ((((drawer.daytime + 0.1f) + (((float) (((((this.x * 23) + (this.y * 3591)) + this.draft.id.hashCode()) % 10) + (-5))) / 50.0f)) % 1.0f) * 2.0f)) < 0.5f;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public boolean isPile() {
        return this.pile;
    }

    public void setPile(boolean z) {
        this.pile = z;
    }

    public RailDraft getDraft() {
        return this.draft;
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public int getAlign() {
        return this.frame % 16;
    }

    public void setAlign(int i) {
        this.frame = i;
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
