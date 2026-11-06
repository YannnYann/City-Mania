package info.flowersoft.theotown.ui.settings;

import com.google.android.gms.common.api.Api;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
class SettingsInfoItem extends SettingsListbox.SettingsItem {
    public Runnable callback;
    public Color color;

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public SettingsInfoItem(String str, SettingsListbox settingsListbox, Object obj, Runnable runnable) {
        this(str, settingsListbox, obj, runnable, runnable == null ? Colors.GRAY : Resources.skin.cTextAccent);
    }

    public SettingsInfoItem(String str, SettingsListbox settingsListbox, Object obj, Runnable runnable, Color color) {
        super(str, new Object[0], null, false, settingsListbox, obj);
        this.callback = runnable;
        this.color = color;
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        Font font = skin.fontSmall;
        Math.round(font.getWidth(" "));
        int i6 = i2 + 5;
        int iRound = i3 + ((i5 - Math.round(font.getHeight(" "))) / 2);
        engine.setColor(this.color);
        engine.drawText(font, this.text, i6, iRound);
        engine.setColor(Colors.WHITE);
    }

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        Runnable runnable = this.callback;
        if (runnable != null) {
            runnable.run();
        }
    }
}
