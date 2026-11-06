package info.flowersoft.theotown.city.objects;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.draft.TreeDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MissingDraftException;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class Tree {
    public boolean burning;
    public TreeDraft draft;
    public int frame;
    public int x;
    public int y;

    public Tree(JsonReader jsonReader) throws MissingDraftException, IOException {
        this.draft = (TreeDraft) Drafts.ALL.get("$tree00");
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "f":
                case "frame":
                    this.frame = jsonReader.nextInt();
                    break;
                case "x":
                    this.x = jsonReader.nextInt();
                    break;
                case "y":
                    this.y = jsonReader.nextInt();
                    break;
                case "id":
                    this.draft = (TreeDraft) Drafts.getOrThrow(jsonReader.nextString(), TreeDraft.class);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        TreeDraft treeDraft = this.draft;
        if (treeDraft != null) {
            this.frame = Math.max(Math.min(this.frame, (treeDraft.frames.length / treeDraft.framesPerTree) - 1), 0);
        }
    }

    public Tree(TreeDraft treeDraft, int i, int i2, int i3) {
        this.draft = treeDraft;
        this.frame = i;
        this.x = i2;
        this.y = i3;
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        if (!this.draft.id.equals("$tree00")) {
            jsonWriter.name(C3670j8.x).value(this.draft.id);
        }
        jsonWriter.name("f").value(this.frame);
        jsonWriter.name("x").value(this.x);
        jsonWriter.name("y").value(this.y);
    }

    public int getX() {
        return this.x;
    }

    public int getY() {
        return this.y;
    }

    public TreeDraft getDraft() {
        return this.draft;
    }

    public boolean isBurning() {
        return this.burning;
    }

    public void setBurning(boolean z) {
        this.burning = z;
    }

    public void draw(Drawer drawer) {
        drawer.engine.setType(11);
        TreeDraft treeDraft = this.draft;
        int i = treeDraft.framesPerTree;
        int i2 = i * 12800;
        drawer.draw(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.terrainHeight) * 12.0f, treeDraft.frames[(i * this.frame) + ((((drawer.time % i2) + ((((this.x * 43467) + (this.y * 37377)) + 7) % i2)) % i2) / 12800)]);
        if (this.burning) {
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, (-drawer.terrainHeight) * 12.0f);
            Drawing.getInstance().drawFire(drawer, (int) Resources.IMAGE_WORLD.getHeight(this.draft.frames[0]), this.x, this.y);
            drawer.addShift(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, drawer.terrainHeight * 12.0f);
        }
    }

    public int getFrame() {
        return this.frame;
    }

    public void setFrame(int i) {
        this.frame = i;
    }
}
