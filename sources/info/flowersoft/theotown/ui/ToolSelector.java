package info.flowersoft.theotown.ui;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.ToggleButton;

/* JADX INFO: loaded from: classes4.dex */
public class ToolSelector extends ToggleButton {
    public boolean activeZebra;
    public final int openTo;
    public final FlowPanel panel;
    public ToolSelector selectorParent;
    public boolean visibleState;

    public boolean examineVisibility() {
        return true;
    }

    public ToolSelector(int i, int i2, Gadget gadget) {
        this(0, 0, i, i2, gadget);
    }

    public ToolSelector(int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, 30, 30, gadget);
        this.visibleState = true;
        this.openTo = i4;
        setIcon(i3);
        FlowPanel flowPanel = new FlowPanel() { // from class: info.flowersoft.theotown.ui.ToolSelector.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                drawNinePatch(i5 - 9, i6 - 9, getWidth() + 20, getHeight() + 20, this.skin.npRectShadow);
                drawNinePatch(i5, i6, this.skin.npPanel);
                drawChildren(i5, i6);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isChildOf(Gadget gadget2) {
                ToolSelector toolSelector = ToolSelector.this;
                if (gadget2 == toolSelector) {
                    return true;
                }
                return toolSelector.isChildOf(gadget2);
            }
        };
        this.panel = flowPanel;
        flowPanel.setVisible(false);
        flowPanel.setPadding(2);
        gadget.layout();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public Gadget findChildWithId(String str) {
        if (str.equals(getId())) {
            return this;
        }
        FlowPanel flowPanel = this.panel;
        if (flowPanel != null) {
            return flowPanel.findChildWithId(str);
        }
        return null;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        if (this.panel != null) {
            Gadget absoluteParent = getAbsoluteParent();
            int width = absoluteParent.getWidth();
            absoluteParent.getHeight();
            int i = this.openTo;
            if (i == 0) {
                this.panel.setPosition((getAbsoluteX() + getWidth()) - absoluteParent.getPaddingLeft(), (getAbsoluteY() - this.panel.getPaddingTop()) - absoluteParent.getPaddingTop());
            } else if (i == 1) {
                this.panel.setPosition(Math.min(width - this.panel.getWidth(), Math.max(0, getAbsoluteX() - this.panel.getPaddingLeft())) - absoluteParent.getPaddingLeft(), (getAbsoluteY() + getHeight()) - absoluteParent.getPaddingTop());
            } else if (i == 2) {
                this.panel.setPosition((getAbsoluteX() - this.panel.getPaddingLeft()) - absoluteParent.getPaddingLeft(), (getAbsoluteY() + getHeight()) - absoluteParent.getPaddingTop());
            } else if (i == 5) {
                this.panel.setPosition((getAbsoluteX() - this.panel.getWidth()) - absoluteParent.getPaddingLeft(), (getAbsoluteY() - this.panel.getPaddingTop()) - absoluteParent.getPaddingTop());
            }
        }
        super.layout();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void addChild(Gadget gadget) {
        FlowPanel flowPanel = this.panel;
        if (flowPanel != null) {
            flowPanel.addChild(gadget);
            if (gadget instanceof ToolSelector) {
                ((ToolSelector) gadget).selectorParent = this;
                return;
            }
            return;
        }
        super.addChild(gadget);
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isEnabled() {
        return isVisible();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public boolean isVisible() {
        return this.visibleState && super.isVisible();
    }

    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        if (!isPressed()) {
            this.parent.reset();
        }
        super.onClick();
        this.panel.reset();
        if (this.openTo == 4) {
            setPressed(!isPressed());
        } else {
            if (this.selectorParent == null || !isPressed()) {
                return;
            }
            this.selectorParent.reset();
            this.selectorParent.setPressed(true);
            setPressed(true);
        }
    }

    public void collapse() {
        this.panel.reset();
        resetParent();
    }

    @Override // io.blueflower.stapel2d.gui.ToggleButton
    public void setPressed(boolean z) {
        super.setPressed(z);
        boolean z2 = this.openTo != 4 && isPressed();
        if (z2) {
            this.panel.push();
        }
        this.panel.setVisible(z2);
    }

    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Gadget
    public void reset() {
        super.reset();
        this.panel.reset();
    }

    public void resetParent() {
        ToolSelector toolSelector = this;
        while (true) {
            ToolSelector toolSelector2 = toolSelector.selectorParent;
            if (toolSelector2 == null) {
                toolSelector.reset();
                return;
            }
            toolSelector = toolSelector2;
        }
    }

    @Override // io.blueflower.stapel2d.gui.ToggleButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        Engine engine = this.skin.engine;
        Color color = Colors.WHITE;
        engine.setColor(color);
        if (isMouseHovered()) {
            engine.setColor(Colors.LIGHT_LIGHT_GRAY);
        }
        int i3 = ((isPressed() ^ isOver()) || isMarked()) ? this.skin.npButtonBlueDown : this.skin.npButtonBlue;
        drawNinePatch(i, i2, i3);
        engine.setColor(color);
        drawChildren(i, i2 + (isPressed() ^ isOver() ? 2 : 0));
    }

    public void setActiveZebra(boolean z) {
        this.activeZebra = z;
    }

    public class FlowPanel extends Panel {
        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean parentHasToLayout() {
            return false;
        }

        public FlowPanel() {
            super(0, 0, 0, 0, ToolSelector.this.getAbsoluteParent());
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void layout() {
            int i = this.width;
            this.width = 0;
            this.height = 0;
            int i2 = ToolSelector.this.openTo;
            if (i2 == 0) {
                int width = 0;
                int i3 = 0;
                int iMax = 0;
                for (int i4 = 0; i4 < this.children.size(); i4++) {
                    Gadget gadget = this.children.get(i4);
                    if (gadget.isVisible()) {
                        if (gadget.getWidth() + width + 1 + getAbsoluteX() + getPaddingLeft() >= getAbsoluteParent().getClientWidth()) {
                            i3 += iMax + 1;
                            width = 0;
                            iMax = 0;
                        }
                        gadget.setPosition(width, i3);
                        width += gadget.getWidth() + 1;
                        iMax = Math.max(iMax, gadget.getHeight());
                        this.width = Math.max(this.width, width);
                        this.height = Math.max(this.height, i3 + iMax);
                    }
                }
                this.width--;
            } else if (i2 == 1) {
                for (int i5 = 0; i5 < this.children.size(); i5++) {
                    Gadget gadget2 = this.children.get(i5);
                    gadget2.setPosition(0, this.height);
                    this.width = Math.max(this.width, gadget2.getWidth());
                    this.height += gadget2.getHeight() + 1;
                }
                this.height--;
            } else if (i2 == 2) {
                int width2 = 0;
                int iMax2 = 0;
                for (int i6 = 0; i6 < this.children.size(); i6++) {
                    Gadget gadget3 = this.children.get(i6);
                    if (gadget3.getWidth() + width2 >= 300) {
                        this.width = Math.max(this.width, width2);
                        this.height += iMax2 + 1;
                        width2 = 0;
                        iMax2 = 0;
                    }
                    gadget3.setPosition(width2, this.height);
                    width2 += gadget3.getWidth() + 1;
                    iMax2 = Math.max(iMax2, gadget3.getHeight());
                }
                this.width = Math.max(this.width, width2);
                this.height += iMax2;
            } else if (i2 == 5) {
                this.x += i;
                int width3 = 0;
                int i7 = 0;
                int iMax3 = 0;
                for (int i8 = 0; i8 < this.children.size(); i8++) {
                    Gadget gadget4 = this.children.get(i8);
                    if (gadget4.isVisible()) {
                        if (((((-width3) - gadget4.getWidth()) - 1) + getAbsoluteX()) - getPaddingRight() < 0) {
                            i7 += iMax3 + 1;
                            width3 = 0;
                            iMax3 = 0;
                        }
                        gadget4.setPosition(width3, i7);
                        width3 += gadget4.getWidth() + 1;
                        iMax3 = Math.max(iMax3, gadget4.getHeight());
                        this.width = Math.max(this.width, width3);
                        this.height = Math.max(this.height, i7 + iMax3);
                    }
                }
                int i9 = this.width - 1;
                this.width = i9;
                this.x -= (i9 + this.paddingLeft) + this.paddingRight;
            }
            this.width += this.paddingLeft + this.paddingRight;
            this.height += this.paddingTop + this.paddingBottom;
            Gadget gadget5 = this.parent;
            if (gadget5 != null) {
                this.y = Math.min(this.y, gadget5.getClientHeight() - this.height);
            }
            super.layout();
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void setVisible(boolean z) {
            super.setVisible(z);
            for (int i = 0; i < this.children.size(); i++) {
                Gadget gadget = this.children.get(i);
                if (gadget instanceof ToolSelector) {
                    ToolSelector toolSelector = (ToolSelector) gadget;
                    toolSelector.visibleState = toolSelector.examineVisibility();
                }
            }
            if (z) {
                layout();
            }
        }
    }
}
