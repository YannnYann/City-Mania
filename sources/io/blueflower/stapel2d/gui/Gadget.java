package io.blueflower.stapel2d.gui;

import com.google.android.gms.common.api.Api;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.ui.CursorType;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.key.KeyMapper;
import io.blueflower.stapel2d.touch.TouchUpdate;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.ScreenRect;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Gadget {
    public List<Gadget> children;
    public boolean enabled;
    public boolean fillParent;
    public GadgetFilter filter;
    public int height;
    public String id;
    public boolean keySensitiveWhenInactive;
    public Master master;
    public int maxHeight;
    public int maxWidth;
    public int minHeight;
    public int minWidth;
    public int paddingBottom;
    public int paddingLeft;
    public int paddingRight;
    public int paddingTop;
    public Gadget parent;
    public ScreenRect rect;
    public IntList sensitiveKeyModifiers;
    public IntList sensitiveKeys;
    public Skin skin;
    public boolean visible;
    public int width;
    public int x;
    public int y;

    public CursorType getCursor() {
        return null;
    }

    public void onClick() {
    }

    public void onPress() {
    }

    public void onRelease() {
    }

    public void onUpdate() {
    }

    public boolean parentHasToLayout() {
        return true;
    }

    public Gadget(Gadget gadget) {
        this(0, 0, 0, 0, gadget);
        this.fillParent = true;
        layout();
    }

    public Gadget(int i, int i2, int i3, int i4, Gadget gadget) {
        this(i, i2, i3, i4, gadget.skin);
        gadget.addChild(this);
        this.master = (Master) getAbsoluteParent();
        layout();
    }

    public Gadget(int i, int i2, int i3, int i4, Skin skin) {
        this.rect = new ScreenRect(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.sensitiveKeys = new IntList(0);
        this.sensitiveKeyModifiers = new IntList(0);
        this.enabled = true;
        this.keySensitiveWhenInactive = false;
        this.x = i;
        this.y = i2;
        this.width = i3;
        this.height = i4;
        this.skin = skin;
        this.parent = null;
        this.children = new ArrayList();
        this.visible = true;
        this.minWidth = 0;
        this.minHeight = 0;
        this.maxWidth = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.maxHeight = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.paddingLeft = 0;
        this.paddingTop = 0;
        this.paddingRight = 0;
        this.paddingBottom = 0;
        this.fillParent = false;
    }

    public void fillParent() {
        this.fillParent = true;
        layout();
    }

    public void dontFillParent() {
        this.fillParent = false;
        layout();
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public Gadget findChildWithId(String str) {
        if (str.equals(getId())) {
            return this;
        }
        for (int size = this.children.size() - 1; size >= 0; size--) {
            Gadget gadgetFindChildWithId = this.children.get(size).findChildWithId(str);
            if (gadgetFindChildWithId != null) {
                return gadgetFindChildWithId;
            }
        }
        return null;
    }

    public GadgetFilter getFilter() {
        Master master;
        GadgetFilter gadgetFilter = this.filter;
        return (gadgetFilter != null || (master = this.master) == this || master == null) ? gadgetFilter : master.getFilter();
    }

    public void setFilter(GadgetFilter gadgetFilter) {
        this.filter = gadgetFilter;
    }

    public Gadget addSensitiveKey(int i) {
        return addSensitiveKey(i, 0);
    }

    public Gadget addSensitiveKey(int i, int i2) {
        this.sensitiveKeys.add(i);
        this.sensitiveKeyModifiers.add(i2);
        return this;
    }

    public boolean removeSensitiveKey(int i, int i2) {
        for (int i3 = 0; i3 < this.sensitiveKeys.size(); i3++) {
            if (this.sensitiveKeys.get(i3) == i && this.sensitiveKeyModifiers.get(i3) == i2) {
                this.sensitiveKeys.removeAt(i3);
                this.sensitiveKeyModifiers.removeAt(i3);
                return true;
            }
        }
        return false;
    }

    public void clearSensitiveKeys() {
        this.sensitiveKeys.clear();
        this.sensitiveKeyModifiers.clear();
    }

    public void layout() {
        Gadget gadget = this.parent;
        if (gadget != null && this.fillParent) {
            this.x = 0;
            this.y = 0;
            this.width = gadget.getClientWidth();
            this.height = this.parent.getClientHeight();
        }
        this.width = Math.max(Math.min(this.width, this.maxWidth), this.minWidth);
        this.height = Math.max(Math.min(this.height, this.maxHeight), this.minHeight);
        if (this.master == null) {
            Gadget absoluteParent = getAbsoluteParent();
            this.master = absoluteParent instanceof Master ? (Master) absoluteParent : null;
        }
        Master master = this.master;
        float widthRatio = master != null ? master.getWidthRatio() : 1.0f;
        Master master2 = this.master;
        float heightRatio = master2 != null ? master2.getHeightRatio() : 1.0f;
        this.rect.setX(Math.round(getAbsoluteX() / widthRatio));
        this.rect.setY(Math.round(getAbsoluteY() / heightRatio));
        this.rect.setWidth(Math.round(this.width / widthRatio));
        this.rect.setHeight(Math.round(this.height / heightRatio));
        for (int i = 0; i < this.children.size(); i++) {
            this.children.get(i).layout();
        }
    }

    public boolean isFillParent() {
        return this.fillParent;
    }

    public void setFillParent(boolean z) {
        this.fillParent = z;
    }

    public Skin getSkin() {
        return this.skin;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getClientWidth() {
        return (this.width - this.paddingLeft) - this.paddingRight;
    }

    public int getClientHeight() {
        return (this.height - this.paddingTop) - this.paddingBottom;
    }

    public boolean isVisible() {
        return this.visible;
    }

    public void setVisible(boolean z) {
        this.visible = z;
    }

    public void setShape(int i, int i2, int i3, int i4) {
        this.x = i;
        this.y = i2;
        this.width = i3;
        this.height = i4;
        layout();
    }

    public void setX(int i) {
        setShape(i, this.y, this.width, this.height);
    }

    public void setY(int i) {
        setShape(this.x, i, this.width, this.height);
    }

    public void setWidth(int i) {
        setShape(this.x, this.y, i, this.height);
    }

    public void setHeight(int i) {
        setShape(this.x, this.y, this.width, i);
    }

    public void setSize(int i, int i2) {
        setShape(this.x, this.y, i, i2);
    }

    public void setClientWidth(int i) {
        setWidth(i + getPaddingLeft() + getPaddingRight());
    }

    public void setClientHeight(int i) {
        setHeight(i + getPaddingTop() + getPaddingBottom());
    }

    public void setClientSize(int i, int i2) {
        setSize(i + getPaddingLeft() + getPaddingRight(), i2 + getPaddingTop() + getPaddingBottom());
    }

    public void setPosition(int i, int i2) {
        setShape(i, i2, this.width, this.height);
    }

    public void setAbsolutePosition(int i, int i2) {
        setShape((i + getX()) - getAbsoluteX(), (i2 + getY()) - getAbsoluteY(), this.width, this.height);
    }

    public void setMinimumSize(int i, int i2) {
        this.minWidth = i;
        this.minHeight = i2;
        layout();
    }

    public void setMaximumSize(int i, int i2) {
        this.maxWidth = i;
        this.maxHeight = i2;
        layout();
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    public int getMinHeight() {
        return this.minHeight;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public int getMaxHeight() {
        return this.maxHeight;
    }

    public int getAbsoluteX() {
        Gadget gadget = this.parent;
        if (gadget == null) {
            return this.x;
        }
        return gadget.getAbsoluteX() + this.parent.getPaddingLeft() + this.x;
    }

    public int getAbsoluteY() {
        Gadget gadget = this.parent;
        if (gadget == null) {
            return this.y;
        }
        return gadget.getAbsoluteY() + this.parent.getPaddingTop() + this.y;
    }

    public void setPadding(int i) {
        setPadding(i, i);
    }

    public void setPadding(int i, int i2) {
        setPadding(i, i2, i, i2);
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        if (i == this.paddingLeft && i2 == this.paddingTop && i3 == this.paddingRight && i4 == this.paddingBottom) {
            return;
        }
        this.paddingLeft = i;
        this.paddingTop = i2;
        this.paddingRight = i3;
        this.paddingBottom = i4;
        layout();
    }

    public final int getPaddingLeft() {
        return this.paddingLeft;
    }

    public final int getPaddingTop() {
        return this.paddingTop;
    }

    public final int getPaddingRight() {
        return this.paddingRight;
    }

    public final int getPaddingBottom() {
        return this.paddingBottom;
    }

    public Gadget getParent() {
        return this.parent;
    }

    public Gadget getAbsoluteParent() {
        Gadget gadget = this.parent;
        return gadget != null ? gadget.getAbsoluteParent() : this;
    }

    public void addChild(Gadget gadget) {
        Gadget gadget2 = gadget.parent;
        if (gadget2 != null) {
            gadget2.children.remove(gadget);
        }
        this.children.add(gadget);
        gadget.parent = this;
        if (gadget.parentHasToLayout()) {
            layout();
        }
    }

    public void removeChild(Gadget gadget) {
        this.children.remove(gadget);
        gadget.parent = null;
        gadget.layout();
        layout();
    }

    public boolean isChildOf(Gadget gadget) {
        if (getParent() == gadget) {
            return true;
        }
        return getParent() != null && getParent().isChildOf(gadget);
    }

    public int countChildren() {
        return this.children.size();
    }

    public Gadget getChild(int i) {
        return this.children.get(i);
    }

    public void removeAllChildren() {
        while (!this.children.isEmpty()) {
            removeChild(this.children.get(0));
        }
    }

    public void pushChild(Gadget gadget) {
        if (this.children.contains(gadget)) {
            if (this.children.get(r0.size() - 1) != gadget) {
                this.children.remove(gadget);
                this.children.add(gadget);
            }
        }
    }

    public void pushChildToBack(Gadget gadget) {
        if (!this.children.contains(gadget) || this.children.get(0) == gadget) {
            return;
        }
        this.children.remove(gadget);
        this.children.add(0, gadget);
    }

    public void setChildIndex(int i) {
        Gadget gadget = this.parent;
        if (gadget == null || !gadget.children.contains(this)) {
            return;
        }
        this.parent.children.remove(this);
        this.parent.children.add(i, this);
        this.parent.layout();
    }

    public int getChildIndex() {
        Gadget gadget = this.parent;
        if (gadget != null) {
            return gadget.children.indexOf(this);
        }
        return -1;
    }

    public void push() {
        Gadget gadget = this.parent;
        if (gadget != null) {
            gadget.pushChild(this);
            this.parent.push();
        }
    }

    public void pushToBack() {
        Gadget gadget = this.parent;
        if (gadget != null) {
            gadget.pushChildToBack(this);
        }
    }

    public CursorType updateTouchInput(TouchUpdate touchUpdate) {
        CursorType cursorTypeUpdateTouchInput;
        int size = this.children.size() - 1;
        CursorType cursorType = null;
        while (size >= 0) {
            Gadget gadget = this.children.get(size);
            if (gadget.isVisible() && (cursorTypeUpdateTouchInput = gadget.updateTouchInput(touchUpdate)) != null) {
                cursorType = cursorTypeUpdateTouchInput;
            }
            size = Math.min(size, this.children.size()) - 1;
        }
        return cursorType;
    }

    public void setKeySensitiveWhenInactive(boolean z) {
        this.keySensitiveWhenInactive = z;
    }

    public void updateKeyInput(KeyMapper keyMapper) {
        if (!this.keySensitiveWhenInactive) {
            if (!isVisible()) {
                return;
            }
            Gadget gadget = this.parent;
            if (gadget != null && !gadget.visible) {
                return;
            }
        }
        for (int size = this.children.size() - 1; size >= 0 && size < this.children.size(); size--) {
            this.children.get(size).updateKeyInput(keyMapper);
        }
        if (this.sensitiveKeys.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.sensitiveKeys.size(); i++) {
            if (keyMapper.keyHit(this.sensitiveKeys.get(i), this.sensitiveKeyModifiers.get(i))) {
                performOnClick();
                return;
            }
        }
    }

    public void performOnClick() {
        GadgetFilter filter = getFilter();
        if (isEnabled()) {
            if (filter == null || filter.allowClick(this)) {
                if (filter != null) {
                    filter.onClick(this);
                }
                onPress();
                onClick();
                onRelease();
            }
        }
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public boolean isClickable() {
        GadgetFilter filter = getFilter();
        return filter == null || filter.allowClick(this);
    }

    public void flush() {
        for (int i = 0; i < this.children.size(); i++) {
            this.children.get(i).flush();
        }
    }

    public void draw(int i, int i2) {
        drawChildren(i, i2);
    }

    public void drawChildren(int i, int i2) {
        int paddingLeft = getPaddingLeft() + getX() + i;
        int paddingTop = getPaddingTop() + getY() + i2;
        Engine engine = this.skin.engine;
        int transparency = engine.getTransparency();
        int red = engine.getRed();
        int green = engine.getGreen();
        int blue = engine.getBlue();
        for (int i3 = 0; i3 < this.children.size(); i3++) {
            Gadget gadget = this.children.get(i3);
            if (gadget.isVisible()) {
                GadgetFilter filter = gadget.getFilter();
                gadget.onUpdate();
                engine.setColor(red, green, blue);
                engine.setTransparency(transparency);
                if (filter != null) {
                    filter.beforeDrawing(gadget, paddingLeft, paddingTop);
                }
                gadget.draw(paddingLeft, paddingTop);
                if (filter != null) {
                    filter.afterDrawing(gadget, paddingLeft, paddingTop);
                }
            }
        }
    }

    public final void update() {
        onUpdate();
    }

    public void drawNinePatch(int i, int i2, int i3) {
        drawNinePatch(i, i2, this.width, this.height, i3);
    }

    public void drawNinePatch(int i, int i2, int i3, int i4, int i5) {
        Skin skin = this.skin;
        skin.engine.drawNinePatch(skin.img, this.x + i, this.y + i2, i3, i4, i5);
    }

    public void reset() {
        resetChildren();
    }

    public void resetChildren() {
        Iterator<Gadget> it = this.children.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
    }

    public void fitChildren() {
        int iMax = 0;
        int iMax2 = 0;
        for (Gadget gadget : this.children) {
            iMax = Math.max(iMax, gadget.getX() + gadget.getWidth());
            iMax2 = Math.max(iMax2, gadget.getY() + gadget.getHeight());
        }
        setSize(iMax + this.paddingLeft + this.paddingRight, iMax2 + this.paddingTop + this.paddingBottom);
    }

    public void free() {
        for (int i = 0; i < this.children.size(); i++) {
            this.children.get(i).free();
        }
        this.children.clear();
    }
}
