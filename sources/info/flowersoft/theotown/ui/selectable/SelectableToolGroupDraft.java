package info.flowersoft.theotown.ui.selectable;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.draft.ToolGroupDraft;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Panel;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class SelectableToolGroupDraft extends SelectableDraft {
    public int currentFrame;
    public int currentSelectableIndex;
    public int frameCount;
    public ToolGroupDraft groupDraft;
    public final SelectableDraft[] selectableDrafts;
    public final int[] selectableIndexForFrame;
    public final int[] selectableStartFrames;

    public SelectableToolGroupDraft(City city, ToolGroupDraft toolGroupDraft, SelectableDraft[] selectableDraftArr) {
        super(city);
        this.currentFrame = 0;
        this.groupDraft = toolGroupDraft;
        this.selectableDrafts = selectableDraftArr;
        if (selectableDraftArr.length < 1) {
            throw new IllegalStateException("Cannot create selectable tool group draft without selectables.");
        }
        this.currentSelectableIndex = 0;
        this.selectableStartFrames = new int[selectableDraftArr.length];
        for (int i = 0; i < selectableDraftArr.length; i++) {
            int[] iArr = this.selectableStartFrames;
            int i2 = this.frameCount;
            iArr[i] = i2;
            this.frameCount = i2 + selectableDraftArr[i].countFrames();
        }
        this.selectableIndexForFrame = new int[this.frameCount];
        int i3 = 0;
        for (int i4 = 0; i4 < this.frameCount; i4++) {
            if (selectableDraftArr[i3].countFrames() <= i4 - this.selectableStartFrames[i3]) {
                i3++;
            }
            this.selectableIndexForFrame[i4] = i3;
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int hashCode() {
        return this.groupDraft.hashCode();
    }

    public List<SelectableDraft> getSelectables() {
        return Arrays.asList(this.selectableDrafts);
    }

    public final SelectableDraft getSelectable() {
        return this.selectableDrafts[this.currentSelectableIndex];
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void select() {
        super.select();
        getSelectable().select();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void setOnSelect(Runnable runnable) {
        super.setOnSelect(runnable);
        for (SelectableDraft selectableDraft : this.selectableDrafts) {
            selectableDraft.setOnSelect(runnable);
        }
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewWidth() {
        return getSelectable().getPreviewWidth();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getPreviewHeight() {
        return getSelectable().getPreviewHeight();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void drawPreview(Engine engine, int i, int i2) {
        getSelectable().drawPreview(engine, i, i2);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getMonthlyPrice() {
        return getSelectable().getMonthlyPrice();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getDiamondPrice() {
        return getSelectable().getDiamondPrice();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public boolean chargeDiamondsImmediately() {
        return getSelectable().chargeDiamondsImmediately();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getWater() {
        return getSelectable().getWater();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPower() {
        return getSelectable().getPower();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getUpgrades() {
        return getSelectable().getUpgrades();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getMaxCount() {
        return getSelectable().getMaxCount();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public int getActualCount() {
        return getSelectable().getActualCount();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.Selectable
    public String getTitle() {
        return getSelectable().getTitle();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getText() {
        return getSelectable().getText();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public boolean isSelectable() {
        return getSelectable().isSelectable();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectText() {
        return getSelectable().getSelectText();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public int getSelectIcon() {
        return getSelectable().getSelectIcon();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable
    public String getSelectId() {
        return getSelectable().getSelectId();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public void buildLabels() {
        getSelectable().buildLabels();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft, info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void build(Panel panel) {
        getSelectable().build(panel);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Object getReqContext() {
        return getSelectable().getReqContext();
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int countFrames() {
        return this.frameCount;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public int getFrame() {
        return this.currentFrame;
    }

    @Override // info.flowersoft.theotown.ui.selectable.DefaultSelectable, info.flowersoft.theotown.ui.Selectable
    public void setFrame(int i) {
        this.currentFrame = i;
        int i2 = this.selectableIndexForFrame[i];
        this.currentSelectableIndex = i2;
        this.selectableDrafts[i2].setFrame(i - this.selectableStartFrames[i2]);
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public long getPrice() {
        return this.selectableDrafts[this.currentSelectableIndex].getPrice();
    }

    @Override // info.flowersoft.theotown.ui.selectable.SelectableDraft
    public Draft getDraft() {
        return this.selectableDrafts[this.currentSelectableIndex].getDraft();
    }
}
