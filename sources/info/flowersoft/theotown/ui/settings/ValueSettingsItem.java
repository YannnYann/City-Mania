package info.flowersoft.theotown.ui.settings;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.IntList;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ValueSettingsItem<T> extends SettingsListbox.SettingsItem<T> {
    public final String[] names;
    public int[][] rows;
    public Selection selection;
    public final int[] startX;

    public interface Selection {
        boolean isSelected(int i);

        void select(int i);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public ValueSettingsItem(String str, String[] strArr, T[] tArr, Field field, boolean z, SettingsListbox settingsListbox, Object obj, Selection selection) {
        super(str, tArr, field, z, settingsListbox, obj);
        this.names = strArr;
        this.startX = new int[strArr.length];
        if (selection != null) {
            this.selection = selection;
        } else {
            this.selection = new Selection() { // from class: info.flowersoft.theotown.ui.settings.ValueSettingsItem.1
                @Override // info.flowersoft.theotown.ui.settings.ValueSettingsItem.Selection
                public boolean isSelected(int i) {
                    return i == ValueSettingsItem.this.selectedValue;
                }

                @Override // info.flowersoft.theotown.ui.settings.ValueSettingsItem.Selection
                public void select(int i) {
                    ValueSettingsItem.this.selectedValue = i;
                }
            };
        }
    }

    public final void buildRows(Font font, int i) {
        ArrayList arrayList = new ArrayList();
        int width = (i - ((int) font.getWidth(this.text))) - 16;
        IntList intList = new IntList();
        arrayList.add(intList);
        int i2 = 0;
        while (true) {
            String[] strArr = this.names;
            if (i2 >= strArr.length) {
                break;
            }
            String str = strArr[i2];
            if (width < font.getWidth(str)) {
                IntList intList2 = new IntList();
                arrayList.add(intList2);
                intList = intList2;
                width = i;
            }
            width = (int) (width - (font.getWidth(str) + 16.0f));
            intList.add(i2);
            i2++;
        }
        this.rows = new int[arrayList.size()][];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.rows[i3] = ((IntList) arrayList.get(i3)).toArray();
        }
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        int[] iArr;
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        Font font = skin.fontDefault;
        if (this.rows == null) {
            buildRows(font, i4);
        }
        int iRound = i3 + ((20 - Math.round(font.getHeight())) / 2);
        engine.setColor(skin.cText);
        engine.drawText(font, this.text, i2 + 5, iRound);
        for (int i6 = 0; i6 < this.rows.length; i6++) {
            int i7 = 0;
            int width = 0;
            while (true) {
                iArr = this.rows[i6];
                if (i7 >= iArr.length) {
                    break;
                }
                width = (int) (width + font.getWidth(this.names[iArr[i7]]));
                i7++;
            }
            int length = ((i2 + i4) - (width + (((iArr.length * 2) - 1) * 8))) - 6;
            int i8 = (i6 * 20) + iRound;
            int i9 = 0;
            while (true) {
                int[] iArr2 = this.rows[i6];
                if (i9 < iArr2.length) {
                    int i10 = iArr2[i9];
                    String str = this.names[i10];
                    this.startX[i10] = length - i2;
                    int i11 = length + 8;
                    engine.setColor(this.selection.isSelected(i10) ? skin.cTextAccent : skin.cTextSecondary);
                    float f = i11;
                    engine.drawText(skin.fontDefault, str, f, i8);
                    length = (int) (f + font.getWidth(str) + 8);
                    i9++;
                }
            }
        }
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        int i3 = 0;
        int iMin = Math.min(Math.max(i2 / 20, 0), this.rows.length - 1);
        int i4 = this.rows[iMin][0];
        while (true) {
            int[] iArr = this.rows[iMin];
            if (i3 >= iArr.length) {
                break;
            }
            int i5 = iArr[i3];
            if (this.startX[i5] > i) {
                break;
            }
            i3++;
            i4 = i5;
        }
        this.selectedValue = i4;
        this.selection.select(i4);
        super.onClick(i, i2);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        int[][] iArr = this.rows;
        if (iArr != null) {
            return iArr.length * 20;
        }
        return 20;
    }
}
