package info.flowersoft.theotown.ui.settings;

import com.google.android.gms.common.api.Api;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class EditableTextSettingsItem extends SettingsListbox.SettingsItem<String> {
    public final String caption;
    public final Stapel2DGameContext context;

    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public void onChange() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EditableTextSettingsItem(String str, String str2, Field field, boolean z, SettingsListbox settingsListbox, Object obj, Stapel2DGameContext stapel2DGameContext) {
        super(str, new String[]{""}, field, z, settingsListbox, obj);
        try {
            ((String[]) this.values)[0] = (String) field.get(obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        this.context = stapel2DGameContext;
        this.caption = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        Font font = skin.fontDefault;
        int iRound = i3 + ((20 - Math.round(font.getHeight())) / 2);
        engine.setColor(skin.cText);
        float f = iRound;
        engine.drawText(font, this.text, i2 + 5, f);
        engine.setColor(skin.cTextAccent);
        float f2 = (i2 + i4) - 6;
        engine.drawText(font, this.context.getTranslator().translate(2635), f2, f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        engine.setColor(skin.cTextSecondary);
        engine.drawText(font, ((String[]) this.values)[0], f2, iRound + 20, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        engine.setColor(Colors.WHITE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return ((String[]) this.values)[0].isEmpty() ? 20 : 40;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem, io.blueflower.stapel2d.gui.ListItem
    public void onClick(final int i, final int i2) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder((Master) this.listbox.getAbsoluteParent(), this.context.getTranslator(), this.context.getKey());
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer<String>() { // from class: info.flowersoft.theotown.ui.settings.EditableTextSettingsItem.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public void accept(String str) {
                EditableTextSettingsItem editableTextSettingsItem = EditableTextSettingsItem.this;
                ((String[]) editableTextSettingsItem.values)[0] = str;
                EditableTextSettingsItem.super.onClick(i, i2);
                EditableTextSettingsItem.this.onChange();
            }
        });
        renameDialogBuilder.setOkText(this.context.getTranslator().translate(3456));
        renameDialogBuilder.build(Resources.ICON_EDIT, this.text, this.caption, ((String[]) this.values)[0]).setVisible(true);
    }
}
