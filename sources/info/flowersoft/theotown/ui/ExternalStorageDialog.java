package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class ExternalStorageDialog extends Dialog {
    public ExternalStorageDialog(Translator translator, Master master) {
        super(Resources.ICON_SAVE, translator.translate(589), translator.translate(3123), master);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        new GoldButton(Resources.ICON_OK, translator.translate(952), i, i2, i3, getControlLine().getThirdPart().getClientHeight(), getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.ExternalStorageDialog.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                ExternalStorageDialog.this.setVisible(false);
            }
        };
        new IconButton(Resources.ICON_CANCEL, translator.translate(3400), i, i2, i3, getControlLine().getThirdPart().getClientHeight(), getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.ui.ExternalStorageDialog.2
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                Settings.showNoMemAccessDialog = false;
                ExternalStorageDialog.this.setVisible(false);
            }
        };
    }
}
