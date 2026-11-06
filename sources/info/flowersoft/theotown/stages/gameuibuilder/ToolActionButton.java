package info.flowersoft.theotown.stages.gameuibuilder;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.city.toolaction.ToolActionGroup;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.ToolSelector;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;

/* JADX INFO: loaded from: classes4.dex */
public class ToolActionButton extends ToolSelector {
    public City city;
    public boolean grouped;
    public int myGroup;
    public int myIndex;
    public boolean showLabel;
    public int targetGroupSize;

    public ToolActionButton(City city, int i, int i2, boolean z, int i3, boolean z2, Gadget gadget) {
        super(Resources.ICON_CANCEL, 4, gadget);
        this.city = city;
        this.myIndex = i;
        this.myGroup = i2;
        this.grouped = z;
        this.targetGroupSize = i3;
        this.showLabel = z2;
    }

    public final ToolAction getAction() {
        City city = this.city;
        if (city == null) {
            return null;
        }
        ToolActionGroup actions = ((Tool) city.getComponent(13)).getActions();
        if (!this.grouped) {
            int size = actions.size();
            int i = this.myIndex;
            if (size > i) {
                return actions.get(i);
            }
        }
        if (this.grouped) {
            int iGroups = actions.groups();
            int i2 = this.myGroup;
            if (iGroups > i2 && actions.groupSize(i2) == this.targetGroupSize) {
                int iGroupSize = actions.groupSize(this.myGroup);
                int i3 = this.myIndex;
                if (iGroupSize > i3) {
                    return actions.get(this.myGroup, i3);
                }
            }
        }
        return null;
    }

    public final String getLabel() {
        City city = this.city;
        if (city == null) {
            return "";
        }
        ToolActionGroup actions = ((Tool) city.getComponent(13)).getActions();
        if (!this.grouped) {
            int size = actions.size();
            int i = this.myIndex;
            if (size > i) {
                return actions.get(i).getName();
            }
        }
        if (this.grouped) {
            int iGroups = actions.groups();
            int i2 = this.myGroup;
            if (iGroups > i2) {
                int iGroupSize = actions.groupSize(i2);
                int i3 = this.targetGroupSize;
                if (iGroupSize == i3) {
                    if (i3 == 1) {
                        return actions.get(this.myGroup, this.myIndex).getName();
                    }
                    StringBuilder sb = new StringBuilder();
                    int iGroupSize2 = actions.groupSize(this.myGroup);
                    for (int i4 = 0; i4 < iGroupSize2; i4++) {
                        if (i4 > 0) {
                            sb.append(" | ");
                        }
                        sb.append(actions.get(this.myGroup, i4).getName());
                    }
                    return sb.toString();
                }
            }
        }
        return "";
    }

    @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        ToolAction action = getAction();
        if (action == null || !action.isVisible()) {
            return;
        }
        super.onClick();
        action.onClick();
    }

    @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        ToolAction action = getAction();
        return action != null && action.isVisible();
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        ToolAction action = getAction();
        if (action != null) {
            setIcon(action.getIcon());
            setId(action.getId());
            setPressed(action.isPressed());
        }
    }

    @Override // info.flowersoft.theotown.ui.ToolSelector, io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        String label;
        Engine engine = this.skin.engine;
        Color color = Colors.WHITE;
        engine.setColor(color);
        drawNinePatch(i, i2, isPressed() ^ isOver() ? this.skin.npButtonDown : this.skin.npButton);
        engine.setColor(color);
        drawChildren(i, (isPressed() ^ isOver() ? 2 : 0) + i2);
        if (this.showLabel && (label = getLabel()) != null && !label.isEmpty()) {
            engine.setColor(isPressed() ? Colors.TURQUOISE : color);
            Drawing.getInstance().drawOutlinedText(label, (i + getX()) - 1, i2 + getY() + (getHeight() / 2), this.skin.fontSmall, Colors.BLACK, engine, 1.0f, 0.5f);
        }
        engine.setColor(color);
    }
}
