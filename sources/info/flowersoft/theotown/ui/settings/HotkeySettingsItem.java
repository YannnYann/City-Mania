package info.flowersoft.theotown.ui.settings;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.input.KeyActionManager;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.settings.CategoryItem;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.key.KeyMapper;

/* JADX INFO: loaded from: classes4.dex */
public class HotkeySettingsItem extends ListItem implements CategoryItem.CollapsableSettingsItem {
    public Stapel2DGameContext context;
    public KeyAction keyAction;
    public Runnable onChange;
    public final SettingsListbox settingsListbox;

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return 20;
    }

    public HotkeySettingsItem(SettingsListbox settingsListbox, KeyAction keyAction, Runnable runnable, Stapel2DGameContext stapel2DGameContext) {
        super(keyAction.getId());
        this.settingsListbox = settingsListbox;
        this.keyAction = keyAction;
        this.onChange = runnable;
        this.context = stapel2DGameContext;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        drawBackground(false, i, i2, i3, i4, i5, skin);
        Engine engine = skin.engine;
        engine.setColor(skin.cText);
        float f = i3;
        float f2 = i4;
        float f3 = i5;
        engine.drawText(skin.fontDefault, this.text, i2 + 5, f, f2, f3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        engine.setColor(this.keyAction.isChanged() ? skin.cTextOrange : skin.cTextAccent);
        engine.drawText(skin.fontDefault, this.keyAction.toString(), i2 - 5, f, f2, f3, 1.0f, 0.5f);
        engine.setColor(Colors.WHITE);
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        super.onClick(i, i2);
        final Dialog dialog = new Dialog(Resources.ICON_WIZARD, this.keyAction.getId(), StringFormatter.format(this.context.getTranslator().translate(70), this.keyAction.toString(), this.keyAction.defaultToString()), (Master) this.settingsListbox.getAbsoluteParent());
        dialog.addHiddenCancelButton();
        new Gadget(0, 0, 0, 0, dialog.getContentPane()) { // from class: info.flowersoft.theotown.ui.settings.HotkeySettingsItem.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void updateKeyInput(KeyMapper keyMapper) {
                super.updateKeyInput(keyMapper);
                for (int i3 = 0; i3 < 256; i3++) {
                    if (KeyAction.isValidKey(i3) && keyMapper.keyHit(i3)) {
                        HotkeySettingsItem.this.keyAction.set(i3, keyMapper.getActiveModifier());
                        dialog.setVisible(false);
                        KeyActionManager.save(HotkeySettingsItem.this.context);
                        return;
                    }
                }
            }
        };
        dialog.addButton(Resources.ICON_MINUS, this.context.getTranslator().translate(3418), new Runnable() { // from class: info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HotkeySettingsItem.$r8$lambda$yN8Njrqt28wkGRY35EH9yiZRmLM(this.f$0);
            }
        });
        dialog.addButton(Resources.ICON_RESET, this.context.getTranslator().translate(3439), new Runnable() { // from class: info.flowersoft.theotown.ui.settings.HotkeySettingsItem$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                HotkeySettingsItem.m2405$r8$lambda$7E6HJxzwllHh7uO32DdmJXx4VM(this.f$0);
            }
        });
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$yN8Njrqt28wkGRY35EH9yiZRmLM(HotkeySettingsItem hotkeySettingsItem) {
        hotkeySettingsItem.keyAction.unassign();
        KeyActionManager.save(hotkeySettingsItem.context);
    }

    /* JADX INFO: renamed from: $r8$lambda$7-E6HJxzwllHh7uO32DdmJXx4VM, reason: not valid java name */
    public static /* synthetic */ void m2405$r8$lambda$7E6HJxzwllHh7uO32DdmJXx4VM(HotkeySettingsItem hotkeySettingsItem) {
        hotkeySettingsItem.keyAction.reset();
        KeyActionManager.save(hotkeySettingsItem.context);
    }

    @Override // info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem
    public int getWidth() {
        return Math.round(this.settingsListbox.getSkin().fontDefault.getWidth(this.text)) + 90;
    }
}
