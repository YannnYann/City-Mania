package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Wire {
    public int connectionDir;
    public final AnimationDraft connectionOverlayDraft;
    public WireDraft draft;
    public int frame;
    public boolean isPunch;
    public int x;
    public int y;

    public Wire(WireDraft wireDraft, int i, int i2, int i3) {
        this.connectionOverlayDraft = (AnimationDraft) Drafts.get("$anim_connection_overlay00", AnimationDraft.class);
        this.draft = wireDraft;
        this.x = i;
        this.y = i2;
        this.frame = i3;
        this.isPunch = false;
    }

    public Wire(int i, int i2, JsonReader jsonReader) throws IOException {
        this.connectionOverlayDraft = (AnimationDraft) Drafts.get("$anim_connection_overlay00", AnimationDraft.class);
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
                    this.draft = (WireDraft) Drafts.get(jsonReader.nextString(), WireDraft.class);
                    break;
                case "punch":
                    this.isPunch = jsonReader.nextBoolean();
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
        if (this.isPunch) {
            jsonWriter.name("punch").value(this.isPunch);
        }
        if (this.connectionDir != 0) {
            jsonWriter.name("condir").value(this.connectionDir);
        }
    }

    public WireDraft getDraft() {
        return this.draft;
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public int getLevel() {
        return this.draft.level;
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }

    public void draw(Drawer drawer) {
        int iRotateCW = Direction.rotateCW(this.frame | this.connectionDir, drawer.rotation);
        drawer.engine.setType(17);
        WireDraft wireDraft = this.draft;
        if (wireDraft.level >= 0) {
            if (drawer.flat) {
                if (!this.isPunch) {
                    iRotateCW += 16;
                }
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, wireDraft.frames[iRotateCW]);
            } else {
                int i = (~Direction.rotateCW(drawer.upDirs, drawer.rotation)) & iRotateCW;
                if (!this.isPunch) {
                    i += 16;
                }
                drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.baseTerrainHeight) * 12, this.draft.frames[i]);
                int iRotateCW2 = iRotateCW & Direction.rotateCW(drawer.upDirs, drawer.rotation);
                if (iRotateCW2 != 0) {
                    int[] iArr = this.draft.frames;
                    if (iArr.length >= 48) {
                        iRotateCW2 += 32;
                    }
                    drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-(drawer.baseTerrainHeight + 1)) * 12, iArr[iRotateCW2]);
                }
            }
        } else {
            drawer.ground.drawFrameOnSlope(drawer, Resources.IMAGE_WORLD, wireDraft.frames[iRotateCW]);
        }
        int i2 = this.connectionDir;
        if (i2 != 0) {
            drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-(drawer.baseTerrainHeight + 1)) * 12, this.connectionOverlayDraft.frames[Direction.toIndex(Direction.rotateCW(i2, drawer.rotation))]);
        }
    }

    public boolean isPunch() {
        return this.isPunch;
    }

    public void setPunch(boolean z) {
        this.isPunch = z && this.draft.level >= 0;
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
