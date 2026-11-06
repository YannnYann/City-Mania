package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.util.DraftLocalizer;

/* JADX INFO: loaded from: classes4.dex */
public class ToolAction implements Action {
    public City city;
    public int icon;
    public String text;
    public Tool tool;

    public ToolAction(int i, String str, Tool tool, City city) {
        this.icon = i;
        this.text = new DraftLocalizer(city).getTitle(str);
        this.tool = tool;
        this.city = city;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.Action
    public int getIcon() {
        return this.icon;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.Action
    public String getText() {
        return this.text;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.Action
    public void onClick() {
        this.city.applyComponent(this.tool);
    }
}
