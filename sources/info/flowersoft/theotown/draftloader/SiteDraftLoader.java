package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import info.flowersoft.theotown.draft.SiteDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;

/* JADX INFO: loaded from: classes4.dex */
public class SiteDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"site"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public SiteDraft load() throws JSONException {
        SiteDraft siteDraft = new SiteDraft();
        loadDefaults(siteDraft);
        siteDraft.frames = loadFrames("frames", "frame", siteDraft, siteDraft.frames);
        Color colorLoadColor = loadColor(C3522b4.i.S);
        siteDraft.color = colorLoadColor;
        if (colorLoadColor == null) {
            siteDraft.color = Colors.WHITE;
        }
        siteDraft.framesFG = loadFrames("frames fg", "frames fg", siteDraft, siteDraft.framesFG);
        Color colorLoadColor2 = loadColor("color fg");
        siteDraft.colorFG = colorLoadColor2;
        if (colorLoadColor2 == null) {
            siteDraft.colorFG = Colors.WHITE;
        }
        siteDraft.heightPerFloor = this.src.optInt("height per floor", siteDraft.heightPerFloor);
        siteDraft.framesPerFloor = this.src.optInt("frames per floor", siteDraft.framesPerFloor);
        siteDraft.framesPerProgress = this.src.optInt("frames per progress", siteDraft.framesPerProgress);
        Drafts.SITES.add(siteDraft);
        return siteDraft;
    }
}
