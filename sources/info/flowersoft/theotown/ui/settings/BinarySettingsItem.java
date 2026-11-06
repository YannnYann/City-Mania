package info.flowersoft.theotown.ui.settings;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Skin;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class BinarySettingsItem extends SettingsListbox.SettingsItem<Boolean> {
    public BinarySettingsItem(String str, Field field, boolean z, SettingsListbox settingsListbox, Object obj) {
        super(str, new Boolean[]{Boolean.FALSE, Boolean.TRUE}, field, z, settingsListbox, obj);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        super.draw(z, i, i2, i3, i4, i5, skin);
        skin.engine.drawImage(skin.img, ((i2 + i4) - Math.round(Resources.IMAGE_WORLD.getWidth(r6))) - 5, i3 + ((i5 - Math.round(Resources.IMAGE_WORLD.getHeight(r6))) / 2), this.selectedValue > 0 ? skin.fCheckboxOn : skin.fCheckboxOff);
        skin.engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem
    public int getPaddingRight() {
        return Math.round(Resources.IMAGE_WORLD.getWidth(Resources.skin.fCheckboxOn)) + 10;
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        this.selectedValue = 1 - this.selectedValue;
        super.onClick(i, i2);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return super.getWidth() + 20;
    }
}
