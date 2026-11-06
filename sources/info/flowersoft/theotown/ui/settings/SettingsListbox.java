package info.flowersoft.theotown.ui.settings;

import com.badlogic.gdx.utils.BooleanArray;
import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.ui.settings.CategoryItem;
import info.flowersoft.theotown.ui.settings.ValueSettingsItem;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Property;
import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class SettingsListbox extends ListBox {
    public Runnable rebuildRunner;
    public final boolean rtl;
    public Object targetObject;

    public SettingsListbox(boolean z, int i, int i2, int i3, int i4, Gadget gadget) {
        super(i, i2, i3, i4, gadget);
        this.rtl = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void mergeItems() {
        int clientWidth = getClientWidth();
        int i = 0;
        while (i < countItems()) {
            ListItem item = getItem(i);
            int i2 = i + 1;
            ListItem item2 = i2 < countItems() ? getItem(i2) : null;
            if (item instanceof CategoryItem.CollapsableSettingsItem) {
                CategoryItem.CollapsableSettingsItem collapsableSettingsItem = (CategoryItem.CollapsableSettingsItem) item;
                CategoryItem.CollapsableSettingsItem collapsableSettingsItem2 = item2 instanceof CategoryItem.CollapsableSettingsItem ? (CategoryItem.CollapsableSettingsItem) item2 : null;
                int i3 = clientWidth / 2;
                if ((collapsableSettingsItem.getWidth() <= i3 && collapsableSettingsItem2 == null) || (collapsableSettingsItem.getWidth() <= i3 && collapsableSettingsItem2 != null && (collapsableSettingsItem2.getWidth() / 2 > clientWidth || item.getHeight(false) != item2.getHeight(false)))) {
                    removeItemIndex(i);
                    super.addItem(new MergedItem(item, null), i);
                } else if (collapsableSettingsItem.getWidth() <= i3 && collapsableSettingsItem2 != null && collapsableSettingsItem2.getWidth() <= i3 && item.getHeight(false) == item2.getHeight(false)) {
                    removeItemIndex(i);
                    removeItemIndex(i);
                    super.addItem(new MergedItem(item, item2), i);
                }
            }
            i = i2;
        }
        int i4 = -1;
        int i5 = 0;
        while (i5 < countItems()) {
            if (getItem(i5) instanceof CategoryItem) {
                if (i4 > -1) {
                    int i6 = i5 + 1;
                    addItem(new EmptyListItem(10), i5);
                    if (i4 % 2 == i6 % 2) {
                        i5 += 2;
                        addItem(new EmptyListItem(0), i6);
                    } else {
                        i5 = i6;
                    }
                }
                i4 = i5;
            }
            i5++;
        }
    }

    public static class MergedItem extends ListItem implements CategoryItem.CollapsableSettingsItem {
        public ListItem item0;
        public ListItem item1;
        public int lastWidth;

        @Override // info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
        public int getWidth() {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }

        public MergedItem(ListItem listItem, ListItem listItem2) {
            super("");
            this.item0 = listItem;
            this.item1 = listItem2;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            this.lastWidth = i4;
            int i6 = i4 / 2;
            this.item0.draw(z, i, i2, i3, (i4 - i6) - 5, i5, skin);
            int i7 = (i2 + i4) - i6;
            drawBackground(false, i + 1, i7 - 5, i3, 5, i5, skin);
            ListItem listItem = this.item1;
            if (listItem != null) {
                listItem.draw(z, i, i7, i3, i6, i5, skin);
            } else {
                drawBackground(false, i, i7, i3, i6, i5, skin);
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            int i3 = this.lastWidth;
            if (i <= i3 / 2) {
                this.item0.onClick(i, i2);
                return;
            }
            ListItem listItem = this.item1;
            if (listItem != null) {
                listItem.onClick(i - (i3 / 2), i2);
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return this.item0.getHeight(z);
        }
    }

    public boolean[] storeCategories() {
        BooleanArray booleanArray = new BooleanArray();
        for (int i = 0; i < countItems(); i++) {
            if (getItem(i) instanceof CategoryItem) {
                booleanArray.add(((CategoryItem) getItem(i)).isOpen());
            }
        }
        return booleanArray.toArray();
    }

    public void closeCategories() {
        for (int i = 0; i < countItems(); i++) {
            ListItem item = getItem(i);
            if (item instanceof CategoryItem.CollapsableSettingsItem) {
                item.setVisible(false);
            }
        }
    }

    public void restoreCategories(boolean[] zArr) {
        if (zArr == null) {
            return;
        }
        int i = -1;
        for (int i2 = 0; i2 < countItems(); i2++) {
            ListItem item = getItem(i2);
            if (item instanceof CategoryItem.CollapsableSettingsItem) {
                if (i < zArr.length) {
                    item.setVisible(zArr[i]);
                }
            } else if ((item instanceof CategoryItem) && (i = i + 1) < zArr.length) {
                ((CategoryItem) item).setOpen(zArr[i]);
            }
        }
    }

    public Object getTargetObject() {
        return this.targetObject;
    }

    public void setTargetObject(Object obj) {
        this.targetObject = obj;
    }

    public void addHotkeyItem(KeyAction keyAction, Runnable runnable, Stapel2DGameContext stapel2DGameContext) {
        addItem(new HotkeySettingsItem(this, keyAction, runnable, stapel2DGameContext));
    }

    public void addSettingsInfoItem(String str) {
        addItem(new SettingsInfoItem(str, this, this.targetObject, null));
    }

    public void addSettingsInfoItem(String str, Color color) {
        addItem(new SettingsInfoItem(str, this, this.targetObject, null, color));
    }

    public void addLink(String str, Runnable runnable) {
        addItem(new SettingsInfoItem(str, this, this.targetObject, runnable));
    }

    public void addEditableTextItem(String str, String str2, Field field, boolean z, Stapel2DGameContext stapel2DGameContext) {
        addEditableTextItem(str, str2, field, z, stapel2DGameContext, null);
    }

    public void addEditableTextItem(String str, String str2, Field field, boolean z, Stapel2DGameContext stapel2DGameContext, final Runnable runnable) {
        addItem(new EditableTextSettingsItem(str, str2, field, z, this, this.targetObject, stapel2DGameContext) { // from class: info.flowersoft.theotown.ui.settings.SettingsListbox.1
            @Override // info.flowersoft.theotown.ui.settings.EditableTextSettingsItem
            public void onChange() {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    public void addChoiceSettingsItem(String str, Property<Boolean> property, boolean z) {
        addItem(new ChoiceSettingsItem(str, property, z, this, this.targetObject, this.rebuildRunner));
    }

    public void setRebuildFunction(Runnable runnable) {
        this.rebuildRunner = runnable;
    }

    public void rebuild() {
        Runnable runnable = this.rebuildRunner;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void addCategory(int i, String str) {
        addItem(new CategoryItem(this, i, str, false, this.rtl));
        addItem(new EmptyListItem(0));
    }

    public static class EmptyListItem extends ListItem implements CategoryItem.CollapsableSettingsItem {
        public final int height;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        }

        @Override // info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
        public int getWidth() {
            return 0;
        }

        public EmptyListItem(int i) {
            super("");
            this.height = i;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return this.height;
        }
    }

    public void addBinarySettingsItem(String str, Field field, boolean z) {
        addBinarySettingsItem(str, field, z, null);
    }

    public void addBinarySettingsItem(String str, Field field, boolean z, final Runnable runnable) {
        addItem(new BinarySettingsItem(str, field, z, this, this.targetObject) { // from class: info.flowersoft.theotown.ui.settings.SettingsListbox.2
            @Override // info.flowersoft.theotown.ui.settings.BinarySettingsItem, info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
            public void onClick(int i, int i2) {
                super.onClick(i, i2);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    public <T> void addValueSettingsItem(String str, String[] strArr, T[] tArr, Field field, boolean z) {
        addValueSettingsItem(str, strArr, tArr, field, z, null);
    }

    public <T> void addValueSettingsItem(String str, String[] strArr, T[] tArr, Field field, boolean z, final Runnable runnable) {
        addItem(new ValueSettingsItem<T>(str, strArr, tArr, field, z, this, this.targetObject, null) { // from class: info.flowersoft.theotown.ui.settings.SettingsListbox.3
            @Override // info.flowersoft.theotown.ui.settings.ValueSettingsItem, info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
            public void onClick(int i, int i2) {
                super.onClick(i, i2);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    public <T> void addValueSettingsItem(String str, String[] strArr, boolean z, ValueSettingsItem.Selection selection) {
        addItem(new ValueSettingsItem(str, strArr, null, null, z, this, this.targetObject, selection));
    }

    public static abstract class SettingsItem<T> extends ListItem implements CategoryItem.CollapsableSettingsItem {
        public Field attribute;
        public int lastSelectedValue;
        public SettingsListbox listbox;
        public boolean needsRebuild;
        public int selectedValue;
        public final Object targetObject;
        public T[] values;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 20;
        }

        public int getPaddingLeft() {
            return 5;
        }

        public int getPaddingRight() {
            return 5;
        }

        public SettingsItem(String str, T[] tArr, Field field, boolean z, SettingsListbox settingsListbox, Object obj) {
            super(str);
            this.listbox = settingsListbox;
            this.targetObject = obj;
            this.attribute = field;
            int i = 0;
            this.selectedValue = 0;
            T t = get();
            if (tArr != null) {
                while (true) {
                    if (i >= tArr.length) {
                        break;
                    }
                    if (Objects.equals(tArr[i], t)) {
                        this.selectedValue = i;
                        break;
                    }
                    i++;
                }
            }
            this.lastSelectedValue = this.selectedValue;
            this.values = tArr;
            this.needsRebuild = z;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            int iRound = Math.round(skin.fontDefault.getWidth(this.text));
            int iRound2 = Math.round(skin.fontDefault.getHeight());
            int paddingLeft = getPaddingLeft() + i2;
            int i6 = i3 + ((i5 - iRound2) / 2);
            int paddingLeft2 = (i4 - getPaddingLeft()) - getPaddingRight();
            Engine engine = skin.engine;
            engine.setColor(skin.cText);
            if (iRound <= paddingLeft2) {
                engine.drawText(skin.fontDefault, this.text, paddingLeft, i6);
            } else {
                engine.setScale(paddingLeft2 / iRound, 1.0f);
                engine.drawText(skin.fontDefault, this.text, paddingLeft, i6);
                engine.setScale(1.0f, 1.0f);
            }
            engine.setColor(Colors.WHITE);
        }

        public int getWidth() {
            return Math.round(this.listbox.skin.fontDefault.getWidth(this.text)) + getPaddingLeft() + getPaddingRight();
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            this.lastSelectedValue = this.selectedValue;
            ((Master) this.listbox.getAbsoluteParent()).informAboutClickOn(this.listbox);
            T[] tArr = this.values;
            if (tArr != null) {
                set(tArr[this.selectedValue]);
            }
            Field field = this.attribute;
            if (field != null) {
                TheoTown.analytics.logEvent("Settings", field.getName(), "" + this.selectedValue);
            }
            if (this.needsRebuild) {
                this.listbox.rebuild();
            }
        }

        public void set(T t) {
            Field field = this.attribute;
            if (field == null) {
                return;
            }
            try {
                field.set(this.targetObject, t);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        public T get() {
            Field field = this.attribute;
            if (field == null) {
                return null;
            }
            try {
                return (T) field.get(this.targetObject);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            }
        }
    }
}
