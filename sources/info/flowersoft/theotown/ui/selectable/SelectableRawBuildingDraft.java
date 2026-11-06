package info.flowersoft.theotown.ui.selectable;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableRawBuildingDraft extends SelectableBuildingDraft {
    public String text;

    public SelectableRawBuildingDraft(City city, BuildingDraft buildingDraft) {
        super(city, buildingDraft);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        Translator translator = this.city.getTranslator();
        clearText();
        addText(StringFormatter.format(translator.translate(2772), Integer.valueOf(this.draft.level)));
        if (this.draft.habitants > 0) {
            addText(StringFormatter.format(translator.translate(184), Integer.valueOf(this.draft.habitants)));
        }
        if (this.draft.workers > 0) {
            addText(StringFormatter.format(translator.translate(3156), Integer.valueOf(this.draft.workers)));
        }
        addText(StringFormatter.format(translator.translate(1992), Integer.valueOf(this.draft.width), Integer.valueOf(this.draft.height)));
        if (Settings.debugMode) {
            int area = this.draft.getArea();
            int iMax = Math.max(this.draft.buildHeight, 1) * area;
            addText("type", this.draft.type);
            addText("build height", this.draft.buildHeight);
            addText("build time", this.draft.buildTime);
            addText("water/power", this.draft.water + "/" + this.draft.power);
            addText("habitants/workers", this.draft.habitants + "/" + this.draft.workers);
            addText("level/density", this.draft.level);
            addText("frames", this.draft.frames.length);
            StringBuilder sb = new StringBuilder();
            BuildingDraft buildingDraft = this.draft;
            sb.append((buildingDraft.habitants + buildingDraft.workers) / area);
            sb.append("/");
            BuildingDraft buildingDraft2 = this.draft;
            sb.append((buildingDraft2.habitants + buildingDraft2.workers) / iMax);
            addText("ppa/ppaph", sb.toString());
            if (Settings.debugMode) {
                addText(C3670j8.x, this.draft.id);
            }
        }
        return this.text;
    }

    public void addText(String str, int i) {
        addText(str, "" + i);
    }

    public void addText(String str, String str2) {
        this.text += str + ": " + str2 + "\n";
    }

    public void addText(String str) {
        this.text += str + "\n";
    }

    public void clearText() {
        this.text = "";
    }
}
