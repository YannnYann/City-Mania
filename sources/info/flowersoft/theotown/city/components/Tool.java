package info.flowersoft.theotown.city.components;

import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.miniatureview.MiniatureViewColoring;
import info.flowersoft.theotown.city.toolaction.ToolActionGroup;
import info.flowersoft.theotown.ui.CursorType;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Tool extends CityComponent implements MiniatureViewColoring {
    public ResourceNeededListener diamondNeededListener;
    public ResourceNeededListener moneyNeededListener;
    public QuestionListener questionListener;
    public ToolActionGroup actions = new ToolActionGroup();
    public final List<ClickListener> listeners = new ArrayList();

    public interface ClickListener {
        void onClick(Tool tool, int i, int i2, int i3, int i4);
    }

    public boolean allowMapMovement() {
        return true;
    }

    public void beginMove(int i, int i2, float f, float f2) {
    }

    public boolean canBeginMove(float f, float f2, int i, int i2, float f3, float f4) {
        return false;
    }

    public abstract void cancelMouse();

    public void cancelMove() {
    }

    public boolean close() {
        return false;
    }

    public abstract void draw(int i, int i2, Drawer drawer);

    public abstract void drawEdge(int i, int i2, Drawer drawer, int i3);

    public void endMove() {
    }

    public boolean ensureValidPosition() {
        return true;
    }

    public void finishMove() {
    }

    public CursorType getCursorType() {
        return null;
    }

    public abstract int getIcon();

    public abstract String getId();

    public abstract String getName();

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 13;
    }

    public abstract void mouseMove(int i, int i2, float f, float f2, float f3, float f4, boolean z);

    public boolean moveImmediate() {
        return false;
    }

    public abstract void onClick(int i, int i2, float f, float f2, int i3, int i4);

    public boolean reversedMovement() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public abstract void update();

    public boolean updateMove(float f, float f2, float f3, float f4, int i, int i2, float f5, float f6) {
        return false;
    }

    public void registerClickListener(ClickListener clickListener) {
        this.listeners.add(clickListener);
    }

    public void unregisterClickListener(ClickListener clickListener) {
        this.listeners.remove(clickListener);
    }

    public final void click(int i, int i2, float f, float f2, int i3, int i4) {
        for (int i5 = 0; i5 < this.listeners.size(); i5++) {
            this.listeners.get(i5).onClick(this, i, i2, i3, i4);
        }
        onClick(i, i2, f, f2, i3, i4);
    }

    public ToolActionGroup getActions() {
        return this.actions;
    }

    public void setQuestionListener(QuestionListener questionListener) {
        this.questionListener = questionListener;
    }

    public void setMoneyNeededListener(ResourceNeededListener resourceNeededListener) {
        this.moneyNeededListener = resourceNeededListener;
    }

    public void setDiamondNeededListener(ResourceNeededListener resourceNeededListener) {
        this.diamondNeededListener = resourceNeededListener;
    }
}
