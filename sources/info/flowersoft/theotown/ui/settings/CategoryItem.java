package info.flowersoft.theotown.ui.settings;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryItem extends ListItem {
    public final int icon;
    public boolean open;
    public boolean rtl;
    public final SettingsListbox settingsListbox;

    public interface CollapsableSettingsItem {
        int getWidth();
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return 26;
    }

    public CategoryItem(SettingsListbox settingsListbox, int i, String str, boolean z, boolean z2) {
        super(str);
        this.icon = i;
        this.settingsListbox = settingsListbox;
        this.open = z;
        this.rtl = z2;
    }

    public boolean isOpen() {
        return this.open;
    }

    public void setOpen(boolean z) {
        this.open = z;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Font font = skin.fontBig;
        Engine engine = skin.engine;
        if (this.rtl) {
            engine.drawImage(skin.img, (i2 + i4) - 26, i3, this.icon);
        } else {
            engine.drawImage(skin.img, i2, i3, this.icon);
        }
        engine.setColor(this.open ? skin.cText : skin.cTextAccent);
        engine.drawText(font, this.text, i2 + i5 + 5, i3, (i4 - (i5 * 2)) - 10, i5, this.rtl ? 1.0f : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        engine.setColor(Colors.WHITE);
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        this.open = !this.open;
        int i3 = 0;
        boolean z = false;
        while (i3 < this.settingsListbox.countItems()) {
            ListItem item = this.settingsListbox.getItem(i3);
            if (z) {
                if (!(item instanceof CollapsableSettingsItem)) {
                    return;
                } else {
                    item.setVisible(this.open);
                }
            }
            if (item == this) {
                i3++;
                z = true;
            }
            i3++;
        }
    }
}
