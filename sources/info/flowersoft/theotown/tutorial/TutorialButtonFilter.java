package info.flowersoft.theotown.tutorial;

import com.badlogic.gdx.utils.TimeUtils;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.Selectable;
import info.flowersoft.theotown.ui.Selector;
import info.flowersoft.theotown.ui.selectable.DefaultSelectable;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.GadgetFilter;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class TutorialButtonFilter implements GadgetFilter {
    public final HashMap<String, Runnable> actions;
    public final Set<String> clickableButtonIds;
    public final Set<String> ignoredButtonIds;
    public final Set<String> markedButtonIds;
    public final Set<String> neverMarkedButtonids;

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public void beforeDrawing(Gadget gadget, int i, int i2) {
    }

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public void beforeDrawingItem(Gadget gadget, boolean z, int i, ListItem listItem, int i2, int i3) {
    }

    public TutorialButtonFilter() {
        HashSet hashSet = new HashSet();
        this.clickableButtonIds = hashSet;
        HashSet hashSet2 = new HashSet();
        this.neverMarkedButtonids = hashSet2;
        this.markedButtonIds = new HashSet();
        this.ignoredButtonIds = new HashSet();
        this.actions = new HashMap<>();
        addButton("cmdMenu", false);
        addButton("cmdRegion", false);
        addButton("cmdMinimap", false);
        addButton("cmdCloseTool", false);
        addButton("roottoolbar", false);
        hashSet.add("pnlNotification");
        hashSet2.add("pnlNotification");
        addButton("cmdNextNotification");
    }

    public Set<String> getClickableButtonIds() {
        return this.clickableButtonIds;
    }

    public void addButton(String str) {
        addButton(str, true);
    }

    public void addButton(String str, boolean z) {
        addButton(str, z, null);
    }

    public void addButton(String str, boolean z, Runnable runnable) {
        this.ignoredButtonIds.remove(str);
        this.clickableButtonIds.add(str);
        if (z) {
            this.markedButtonIds.add(str);
        }
        if (runnable != null) {
            this.actions.put(str, runnable);
        }
    }

    public void removeButton(String str) {
        this.clickableButtonIds.remove(str);
        this.markedButtonIds.remove(str);
        this.ignoredButtonIds.add(str);
        this.actions.remove(str);
    }

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public void afterDrawing(Gadget gadget, int i, int i2) {
        Engine engine = gadget.getSkin().engine;
        int x = i + gadget.getX();
        int y = i2 + gadget.getY();
        int width = gadget.getWidth();
        int height = gadget.getHeight();
        int iExamineClickable = examineClickable(gadget);
        drawClickable(engine, iExamineClickable, x, y, width, height);
        if (iExamineClickable == 2) {
            Drawing.getInstance().drawArrow(i, i2, gadget, (gadget.getY() + i2) + gadget.getHeight() > engine.getVirtualHeight() + (-100) ? 0 : 2);
        }
        if (gadget.getId() == null || !Settings.debugMode) {
            return;
        }
        engine.setColor(Colors.BLACK);
        engine.setScale(0.5f, 0.5f);
        engine.drawText(gadget.getSkin().fontSmall, gadget.getId(), i + gadget.getX(), i2 + gadget.getY());
        engine.setColor(Colors.WHITE);
        engine.setScale(1.0f, 1.0f);
    }

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public void afterDrawingItem(Gadget gadget, boolean z, int i, ListItem listItem, int i2, int i3) {
        Selector.SelectableItemWrapper selectableItemWrapper;
        DefaultSelectable defaultSelectable;
        Engine engine = gadget.getSkin().engine;
        if (gadget instanceof ListBox) {
            ListBox listBox = (ListBox) gadget;
            if ((listItem instanceof Selector.SelectableItemWrapper) && (selectableItemWrapper = (Selector.SelectableItemWrapper) listItem) != null && (selectableItemWrapper.getInnerItem() instanceof Selector.SelectableItem)) {
                Selectable selectable = ((Selector.SelectableItem) selectableItemWrapper.getInnerItem()).getSelectable();
                if (!(selectable instanceof DefaultSelectable) || (defaultSelectable = (DefaultSelectable) selectable) == null) {
                    return;
                }
                drawClickable(engine, examineClickable(defaultSelectable.getSelectId()), i2, i3, listBox.getClientWidth(), listItem.getHeight(z));
            }
        }
    }

    public final void drawClickable(Engine engine, int i, int i2, int i3, int i4, int i5) {
        if (i != 0) {
            if (i != 2) {
                return;
            }
            drawMarked(engine, i2, i3, i4, i5);
        } else {
            engine.setColor(Colors.BLACK);
            engine.drawNinePatch(Resources.IMAGE_WORLD, i2, i3, i4, i5, Resources.NP_TUTORIAL_UNMARK);
            engine.setColor(Colors.WHITE);
        }
    }

    public static void drawMarked(Engine engine, int i, int i2, int i3, int i4) {
        engine.setTransparency(Math.round(((((float) Math.sin((TimeUtils.millis() * 6.283185307179586d) / 1000.0d)) * 0.3f) + 0.7f) * 255.0f));
        engine.setColor(Colors.WHITE);
        engine.drawNinePatch(Resources.IMAGE_WORLD, i, i2, i3, i4, Resources.NP_TUTORIAL_MARK);
        float f = (r11 % 1000) / 1000.0f;
        float f2 = f * f;
        int i5 = (int) ((1.0f - f2) * 100.0f);
        engine.setTransparency((int) (f2 * 255.0f));
        float f3 = i - i5;
        float f4 = i2 - i5;
        int i6 = i5 * 2;
        engine.drawNinePatch(Resources.IMAGE_WORLD, f3, f4, i3 + i6, i6 + i4, Resources.NP_TUTORIAL_MARK);
        engine.setTransparency(255);
    }

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public boolean allowClick(Gadget gadget) {
        return examineClickable(gadget) != 0;
    }

    @Override // io.blueflower.stapel2d.gui.GadgetFilter
    public void onClick(Gadget gadget) {
        String id = gadget.getId();
        if (id == null || !this.actions.containsKey(id)) {
            return;
        }
        this.actions.get(id).run();
    }

    public final int examineClickable(String str) {
        boolean z;
        boolean z2;
        if (str == null) {
            z2 = true;
            z = false;
        } else if (!this.ignoredButtonIds.contains(str) && this.clickableButtonIds.contains(str)) {
            z = this.markedButtonIds.contains(str) && !this.neverMarkedButtonids.contains(str);
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        if (z2) {
            return z ? 2 : 1;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int examineClickable(io.blueflower.stapel2d.gui.Gadget r9) {
        /*
            r8 = this;
            io.blueflower.stapel2d.gui.Gadget r0 = r9.getAbsoluteParent()
            java.lang.String r1 = r9.getId()
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L10
        Lc:
            r5 = r2
            r4 = r3
            goto L8c
        L10:
            java.util.Set<java.lang.String> r4 = r8.ignoredButtonIds
            boolean r4 = r4.contains(r1)
            if (r4 == 0) goto L1c
            r4 = r3
            r5 = r4
            goto L8c
        L1c:
            java.util.Set<java.lang.String> r4 = r8.clickableButtonIds
            boolean r4 = r4.contains(r1)
            if (r4 == 0) goto L5c
            java.util.Set<java.lang.String> r4 = r8.markedButtonIds
            boolean r4 = r4.contains(r1)
            if (r4 != 0) goto L5a
            java.util.Set<java.lang.String> r5 = r8.neverMarkedButtonids
            boolean r1 = r5.contains(r1)
            if (r1 != 0) goto L5a
            java.util.Set<java.lang.String> r1 = r8.clickableButtonIds
            java.util.Iterator r1 = r1.iterator()
        L3a:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L5a
            java.lang.Object r5 = r1.next()
            java.lang.String r5 = (java.lang.String) r5
            io.blueflower.stapel2d.gui.Gadget r6 = r0.findChildWithId(r5)
            if (r6 == 0) goto L3a
            boolean r6 = r6.isChildOf(r9)
            if (r6 == 0) goto L3a
            java.util.Set<java.lang.String> r4 = r8.markedButtonIds
            boolean r4 = r4.contains(r5)
            if (r4 == 0) goto L3a
        L5a:
            r5 = r2
            goto L8c
        L5c:
            boolean r1 = r9 instanceof io.blueflower.stapel2d.gui.SensitiveGadget
            if (r1 != 0) goto L61
            goto Lc
        L61:
            java.util.Set<java.lang.String> r1 = r8.clickableButtonIds
            java.util.Iterator r1 = r1.iterator()
            r4 = r3
            r5 = r4
        L69:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L8c
            java.lang.Object r6 = r1.next()
            java.lang.String r6 = (java.lang.String) r6
            io.blueflower.stapel2d.gui.Gadget r7 = r0.findChildWithId(r6)
            if (r7 == 0) goto L69
            boolean r7 = r7.isChildOf(r9)
            if (r7 == 0) goto L69
            java.util.Set<java.lang.String> r4 = r8.markedButtonIds
            boolean r4 = r4.contains(r6)
            if (r4 == 0) goto L8a
            goto L5a
        L8a:
            r5 = r2
            goto L69
        L8c:
            boolean r0 = r9 instanceof io.blueflower.stapel2d.gui.ToggleButton
            if (r0 == 0) goto L99
            io.blueflower.stapel2d.gui.ToggleButton r9 = (io.blueflower.stapel2d.gui.ToggleButton) r9
            boolean r9 = r9.isPressed()
            if (r9 == 0) goto L99
            r4 = r3
        L99:
            if (r5 == 0) goto La0
            if (r4 == 0) goto L9f
            r9 = 2
            return r9
        L9f:
            return r2
        La0:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.tutorial.TutorialButtonFilter.examineClickable(io.blueflower.stapel2d.gui.Gadget):int");
    }
}
