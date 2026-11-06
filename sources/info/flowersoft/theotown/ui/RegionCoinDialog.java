package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Master;

/* JADX INFO: loaded from: classes4.dex */
public class RegionCoinDialog extends Dialog {
    public RegionCoinDialog(Translator translator, Master master) {
        super(Resources.ICON_ONLINE_REGION_COIN, translator.translate(1350), translator.translate(1396), master);
        addButton(Resources.ICON_OK, translator.translate(1899), true, null).setGolden(true);
    }
}
