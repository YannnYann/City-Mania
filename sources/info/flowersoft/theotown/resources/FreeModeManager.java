package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class FreeModeManager {
    public static FreeModeManager instance;
    public final JSONObject config = Resources.getSpecificConfig("free mode");

    public int getPrice(int i) {
        return 0;
    }

    public void rollback() {
    }

    public boolean isAvailable() {
        return this.config.optBoolean("available", false);
    }

    public void showDialog(int i, Stapel2DGameContext stapel2DGameContext, Master master, Setter<Stage> setter, Getter<Boolean> getter, Runnable runnable) {
        int price = getPrice(i);
        if (price <= 0) {
            getter.get();
            return;
        }
        BuyOrVideoDialog buyOrVideoDialog = new BuyOrVideoDialog(GameMode.FREE.getIcon(), stapel2DGameContext.getTranslator().translate(2469), stapel2DGameContext.getTranslator().translate(3498), master, price, getter, setter, stapel2DGameContext, "free game mode", "free game mode", false);
        buyOrVideoDialog.setOnClose(runnable);
        buyOrVideoDialog.setVisible(true);
    }

    public static FreeModeManager getInstance() {
        if (instance == null) {
            instance = new FreeModeManager();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }
}
