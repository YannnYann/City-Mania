package info.flowersoft.theotown.ui.settings;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Property;

/* JADX INFO: loaded from: classes4.dex */
public class ChoiceSettingsItem extends SettingsListbox.SettingsItem {
    public final Property<Boolean> isSelected;
    public final Runnable rebuild;

    public ChoiceSettingsItem(String str, Property<Boolean> property, boolean z, SettingsListbox settingsListbox, Object obj, Runnable runnable) {
        super(str, new Object[0], null, z, settingsListbox, obj);
        this.isSelected = property;
        this.rebuild = runnable;
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        boolean zBooleanValue = this.isSelected.get().booleanValue();
        int i6 = i2 + 5;
        int iRound = i3 + ((i5 - Math.round(skin.fontDefault.getHeight(" "))) / 2);
        engine.setColor(zBooleanValue ? skin.cTextAccent : skin.cTextSecondary);
        engine.drawText(skin.fontDefault, this.text, i6, iRound);
        int i7 = zBooleanValue ? Resources.skin.fRadioOn : Resources.skin.fRadioOff;
        if (i7 > 0) {
            int iRound2 = Math.round(Resources.IMAGE_WORLD.getWidth(i7));
            int iRound3 = Math.round(Resources.IMAGE_WORLD.getHeight(i7));
            engine.setColor(Colors.WHITE);
            engine.drawImage(skin.img, ((i2 + i4) - iRound2) - 5, i3 + ((i5 - iRound3) / 2), i7);
        }
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        this.isSelected.set(Boolean.TRUE);
        if (this.needsRebuild) {
            this.rebuild.run();
        }
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return super.getWidth() + 20;
    }
}
