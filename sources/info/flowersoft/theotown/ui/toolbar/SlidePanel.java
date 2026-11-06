package info.flowersoft.theotown.ui.toolbar;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.TouchPane;
import info.flowersoft.theotown.ui.selectable.SelectableCategory;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.ScreenRect;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class SlidePanel extends Panel {
    public final AnimationDraft SHOW_INFO;
    public final Map<Selectable, String> cachedTitles;
    public final Stapel2DGameContext context;
    public float draggedDX;
    public float draggedDY;
    public Selectable draggedSelectable;
    public float draggedTX;
    public float draggedTY;
    public Selectable hoveredSelectable;
    public final ToolBar toolBar;
    public final TouchPane touchPane;

    public SlidePanel(final ToolBar toolBar, Stapel2DGameContext stapel2DGameContext, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.SHOW_INFO = (AnimationDraft) Drafts.get("$anim_toolbar_showinfo00", AnimationDraft.class);
        this.cachedTitles = new HashMap();
        this.toolBar = toolBar;
        this.context = stapel2DGameContext;
        TouchPane touchPane = new TouchPane(1, this) { // from class: info.flowersoft.theotown.ui.toolbar.SlidePanel.1
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i5, int i6, TouchPoint touchPoint) {
                toolBar.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                Selectable selectableAt = SlidePanel.this.getSelectableAt(i5, i6);
                if (selectableAt != null) {
                    Set<Selectable> set = toolBar.markedSelectables;
                    if (set == null || set.contains(selectableAt)) {
                        if (selectableAt instanceof SelectableCategory) {
                            if (((SelectableCategory) selectableAt).isUnlocked()) {
                                toolBar.select(selectableAt);
                                return;
                            } else {
                                toolBar.showInfo(selectableAt);
                                return;
                            }
                        }
                        SlidePanel slidePanel = SlidePanel.this;
                        slidePanel.clickAt(selectableAt, i5 - slidePanel.getXOfSelectable(selectableAt), i6 - SlidePanel.this.getYOfSelectable(selectableAt));
                    }
                }
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void layout() {
                if (this.x != (-this.parent.getPaddingLeft()) || this.y != (-this.parent.getPaddingTop()) || this.width != this.parent.getWidth() || this.height != this.parent.getHeight()) {
                    setShape(-this.parent.getPaddingLeft(), -this.parent.getPaddingTop(), this.parent.getWidth(), this.parent.getHeight());
                } else {
                    super.layout();
                }
            }
        };
        this.touchPane = touchPane;
        touchPane.dontFillParent();
    }

    public final int getHeightOfVisItem() {
        ToolBar toolBar = this.toolBar;
        int i = toolBar.ROW_HEIGHT;
        if (toolBar.showName) {
            i -= toolBar.TEXT_LINE_HEIGHT;
        }
        return toolBar.showPrice ? i - toolBar.TEXT_LINE_HEIGHT : i;
    }

    public final void clickAt(Selectable selectable, int i, int i2) {
        int i3 = this.toolBar.WIDTH_PER_ITEM;
        int heightOfVisItem = getHeightOfVisItem();
        if (selectable.countFrames() > 1 && selectable.isSelectable() && i2 >= heightOfVisItem - 10 && i2 <= heightOfVisItem + 10) {
            if (i <= 15) {
                selectable.prevFrame();
                return;
            } else if (i >= i3 - 15) {
                selectable.nextFrame();
                return;
            }
        }
        if (!selectable.isSelectable() || (i >= i3 - 18 && i2 <= 20)) {
            this.toolBar.showInfo(selectable);
        } else {
            this.toolBar.select(selectable);
        }
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public CursorType updateTouchInput(TouchUpdate touchUpdate) {
        CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(touchUpdate);
        if (this.toolBar.vertical) {
            float scrollChange = touchUpdate.getScrollChange();
            touchUpdate.clearScrollChange();
            this.toolBar.moveY -= (r5.ROW_HEIGHT / 2) * scrollChange;
        }
        return cursorTypeUpdateTouchInput;
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void onUpdate() {
        super.onUpdate();
        List<TouchPoint> touchPoints = this.touchPane.getTouchPoints();
        float widthRatio = this.master.getWidthRatio();
        float heightRatio = this.master.getHeightRatio();
        int i = this.width - 60;
        ToolBar toolBar = this.toolBar;
        int i2 = toolBar.currentActiveCount;
        float f = i - (toolBar.WIDTH_PER_ITEM * i2);
        int i3 = this.height;
        int i4 = toolBar.currentColumnCount;
        float fMax = i3 - ((((i2 + i4) - 1) / Math.max(i4, 1)) * this.toolBar.ROW_HEIGHT);
        float fMin = Math.min(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        float fMin2 = Math.min(fMax, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        if (touchPoints.size() == 1) {
            TouchPoint touchPoint = touchPoints.get(0);
            if (this.draggedSelectable == null) {
                this.hoveredSelectable = getSelectableAt((int) ((touchPoint.getX() * widthRatio) - getAbsoluteX()), (int) ((touchPoint.getY() * widthRatio) - getAbsoluteY()));
                this.draggedTX = touchPoint.getFirstX() * widthRatio;
                this.draggedTY = touchPoint.getFirstY() * heightRatio;
                if (this.hoveredSelectable != null && (((touchPoint.getY() * heightRatio > this.draggedTY + 10.0f && !this.toolBar.atBottom) || (touchPoint.getY() * heightRatio < this.draggedTY - 10.0f && this.toolBar.atBottom)) && Math.abs((touchPoint.getX() * widthRatio) - this.draggedTX) < 10.0f && this.toolBar.isDragable(this.hoveredSelectable))) {
                    this.draggedSelectable = this.hoveredSelectable;
                    this.draggedDX = (getAbsoluteX() + getXOfSelectable(this.draggedSelectable)) - this.draggedTX;
                    this.draggedDY = getAbsoluteY() - this.draggedTY;
                }
                ToolBar toolBar2 = this.toolBar;
                if (toolBar2.vertical) {
                    toolBar2.moveYSpeed = touchPoint.getYSpeed() * widthRatio;
                    ToolBar toolBar3 = this.toolBar;
                    toolBar3.moveY += toolBar3.moveYSpeed;
                    toolBar3.moveX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    return;
                }
                toolBar2.moveXSpeed = touchPoint.getXSpeed() * widthRatio;
                ToolBar toolBar4 = this.toolBar;
                toolBar4.moveX += toolBar4.moveXSpeed;
                toolBar4.moveY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                return;
            }
            this.draggedTX = touchPoint.getX() * widthRatio;
            this.draggedTY = touchPoint.getY() * heightRatio;
            return;
        }
        if (touchPoints.isEmpty()) {
            this.hoveredSelectable = null;
            if (this.draggedSelectable != null) {
                if (this.draggedTY > getAbsoluteY() + this.height || this.draggedTY < getAbsoluteY()) {
                    this.toolBar.selectViaDragging(this.draggedSelectable);
                }
                this.draggedSelectable = null;
                this.toolBar.moveXSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            }
            ToolBar toolBar5 = this.toolBar;
            if (toolBar5.vertical) {
                float f2 = toolBar5.moveYSpeed * 0.9f;
                toolBar5.moveYSpeed = f2;
                toolBar5.moveY += f2;
            } else {
                float f3 = toolBar5.moveXSpeed * 0.9f;
                toolBar5.moveXSpeed = f3;
                toolBar5.moveX += f3;
            }
            float f4 = toolBar5.moveX;
            float fMax2 = Math.max(1.0f - (10.0f / Math.max(f4, fMin - f4)), 0.4f);
            ToolBar toolBar6 = this.toolBar;
            float f5 = toolBar6.moveX;
            if (f5 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                toolBar6.moveX = f5 * (1.0f - fMax2);
            }
            float f6 = toolBar6.moveX;
            if (f6 < fMin) {
                toolBar6.moveX = f6 + (fMax2 * (fMin - f6));
            }
            float f7 = toolBar6.moveY;
            float fMax3 = Math.max(1.0f - (10.0f / Math.max(f7, fMin2 - f7)), 0.4f);
            ToolBar toolBar7 = this.toolBar;
            float f8 = toolBar7.moveY;
            if (f8 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                toolBar7.moveY = f8 * (1.0f - fMax3);
            }
            float f9 = toolBar7.moveY;
            if (f9 < fMin2) {
                toolBar7.moveY = f9 + (fMax3 * (fMin2 - f9));
            }
            if (!this.context.getTouch().isMouse() || !touchPoints.isEmpty() || this.toolBar.isDialogOpen() || this.toolBar.vertical) {
                return;
            }
            int mouseX = this.context.getTouch().getMouseX();
            int mouseY = this.context.getTouch().getMouseY();
            ScreenRect screenRect = this.rect;
            if (screenRect.contains(screenRect.getX(), mouseY)) {
                float widthRatio2 = (mouseX * this.skin.engine.getWidthRatio()) - getAbsoluteX();
                this.skin.engine.getHeightRatio();
                getAbsoluteY();
                float deltaTime = this.context.getDeltaTime() * 20.0f;
                float f10 = -widthRatio2;
                float width = (widthRatio2 - getWidth()) + 20.0f;
                if (f10 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    ToolBar toolBar8 = this.toolBar;
                    toolBar8.moveX = Math.min(toolBar8.moveX + (f10 * deltaTime), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
                if (width > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    ToolBar toolBar9 = this.toolBar;
                    toolBar9.moveX = Math.max(toolBar9.moveX - (width * deltaTime), fMin);
                }
            }
        }
    }

    public final Selectable getSelectableAt(int i, int i2) {
        ToolBar toolBar = this.toolBar;
        if (toolBar.vertical) {
            int i3 = (int) toolBar.moveY;
            int i4 = 0;
            for (int i5 = 0; i5 < this.toolBar.current.size(); i5++) {
                Selectable selectable = this.toolBar.current.get(i5);
                if (this.toolBar.isSelectableActive(selectable)) {
                    if (i4 <= i) {
                        ToolBar toolBar2 = this.toolBar;
                        if (i < toolBar2.WIDTH_PER_ITEM + i4 && i3 <= i2 && i2 < toolBar2.ROW_HEIGHT + i3) {
                            return selectable;
                        }
                    }
                    int i6 = this.toolBar.WIDTH_PER_ITEM;
                    i4 += i6;
                    if (i6 + i4 > getClientWidth()) {
                        i3 += this.toolBar.ROW_HEIGHT;
                        i4 = 0;
                    }
                }
            }
            return null;
        }
        int i7 = (int) toolBar.moveX;
        for (int i8 = 0; i8 < this.toolBar.current.size(); i8++) {
            Selectable selectable2 = this.toolBar.current.get(i8);
            if (this.toolBar.isSelectableActive(selectable2)) {
                if (i7 <= i && i < this.toolBar.WIDTH_PER_ITEM + i7) {
                    return selectable2;
                }
                i7 += this.toolBar.WIDTH_PER_ITEM;
            }
        }
        return null;
    }

    public final int getXOfSelectable(Selectable selectable) {
        int i = 0;
        for (int i2 = 0; i2 < this.toolBar.current.size(); i2++) {
            Selectable selectable2 = this.toolBar.current.get(i2);
            if (this.toolBar.isSelectableActive(selectable2)) {
                if (selectable2 == selectable) {
                    return i + ((int) this.toolBar.moveX);
                }
                int i3 = this.toolBar.WIDTH_PER_ITEM;
                i += i3;
                if (i3 + i > getClientWidth()) {
                    int i4 = this.toolBar.ROW_HEIGHT;
                    i = 0;
                }
            }
        }
        return 0;
    }

    public final int getYOfSelectable(Selectable selectable) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.toolBar.current.size(); i3++) {
            Selectable selectable2 = this.toolBar.current.get(i3);
            if (this.toolBar.isSelectableActive(selectable2)) {
                if (selectable2 == selectable) {
                    return i2 + ((int) this.toolBar.moveY);
                }
                int i4 = this.toolBar.WIDTH_PER_ITEM;
                i += i4;
                if (i4 + i > getClientWidth()) {
                    i2 += this.toolBar.ROW_HEIGHT;
                    i = 0;
                }
            }
        }
        return 0;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void updateKeyInput(KeyMapper keyMapper) {
        if (this.toolBar.isDialogOpen() || !isVisible()) {
            return;
        }
        super.updateKeyInput(keyMapper);
        if (keyMapper.keyRepeatedHit(61)) {
            int iCountSelectables = countSelectables();
            if (iCountSelectables > 0) {
                if (keyMapper.getActiveModifier() == 1) {
                    ToolBar toolBar = this.toolBar;
                    if (toolBar.selectedIndex == -1) {
                        toolBar.selectedIndex = 0;
                    }
                    toolBar.selectedIndex = ((toolBar.selectedIndex + iCountSelectables) - 1) % iCountSelectables;
                } else {
                    ToolBar toolBar2 = this.toolBar;
                    toolBar2.selectedIndex = (toolBar2.selectedIndex + 1) % iCountSelectables;
                }
            } else {
                this.toolBar.selectedIndex = -1;
            }
        }
        if (this.toolBar.selectedIndex >= 0 && keyMapper.keyHit(66) && countSelectables() > 0) {
            ToolBar toolBar3 = this.toolBar;
            toolBar3.select(getSelectable(Math.max(toolBar3.selectedIndex, 0)));
            this.toolBar.selectedIndex = -1;
        } else if (this.toolBar.selectedIndex >= 0 && keyMapper.keyHit(62) && countSelectables() > 0) {
            ToolBar toolBar4 = this.toolBar;
            toolBar4.showInfo(getSelectable(Math.max(toolBar4.selectedIndex, 0)));
        }
        if (keyMapper.keyHit(67)) {
            this.toolBar.back();
        }
        int i = this.toolBar.selectedIndex;
        if (i > -1) {
            float xOfSelectable = getXOfSelectable(getSelectable(i));
            ToolBar toolBar5 = this.toolBar;
            float f = toolBar5.moveX;
            float f2 = xOfSelectable - f;
            toolBar5.moveX = Math.min(Math.max(f, -f2), (getClientWidth() - (f2 + this.toolBar.WIDTH_PER_ITEM)) - 40.0f);
        }
    }

    public final int countSelectables() {
        int i = 0;
        for (int i2 = 0; i2 < this.toolBar.current.size(); i2++) {
            if (this.toolBar.isSelectableActive(this.toolBar.current.get(i2))) {
                i++;
            }
        }
        return i;
    }

    private Selectable getSelectable(int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.toolBar.current.size(); i3++) {
            Selectable selectable = this.toolBar.current.get(i3);
            if (this.toolBar.isSelectableActive(selectable)) {
                if (i == i2) {
                    return selectable;
                }
                i2++;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x022d  */
    @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(int r33, int r34) {
        /*
            Method dump skipped, instruction units count: 1155
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.ui.toolbar.SlidePanel.draw(int, int):void");
    }

    public final void drawText(int i, Font font, String str, int i2, int i3, int i4, int i5) {
        String str2;
        Engine engine = this.skin.engine;
        float width = font.getWidth(str);
        int i6 = (i4 * 3) / 2;
        if (i != 0) {
            i6 = ((i4 - i5) * 3) / 2;
        }
        float f = i6;
        if (width > f) {
            String strSubstring = str;
            while (true) {
                if (font.getWidth(strSubstring + "...") <= f) {
                    break;
                }
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                while (!strSubstring.isEmpty() && Character.isWhitespace(strSubstring.charAt(strSubstring.length() - 1))) {
                    strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                }
            }
            str2 = strSubstring + "...";
        } else {
            str2 = str;
        }
        float width2 = font.getWidth(str2);
        float fMax = 1.0f / Math.max(width2 / (i != 0 ? i4 - i5 : i4), 1.4f);
        engine.setScale(fMax, 1.0f);
        float f2 = i3;
        float f3 = i4;
        float f4 = i5;
        engine.drawText(font, str2, i != 0 ? (i5 / 2) + i2 : i2, f2, f3, f4, 0.5f, 0.5f);
        engine.setTransparency(255);
        engine.setColor(Colors.WHITE);
        engine.setScale(1.0f, 1.0f);
        if (i != 0) {
            engine.drawImage(Resources.IMAGE_WORLD, i2 + (((f3 - (width2 * fMax)) - f4) / 2.0f), f2, f4, f4, i);
        }
    }

    public final float getScaleForSelectable(Selectable selectable) {
        return 1.0f / Math.max(Math.max(selectable.getPreviewWidth() / this.toolBar.WIDTH_PER_ITEM, selectable.getPreviewHeight() / getHeightOfVisItem()), 1.0f);
    }
}
