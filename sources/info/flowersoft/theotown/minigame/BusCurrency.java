package info.flowersoft.theotown.minigame;

import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class BusCurrency extends ConcreteCurrency {
    public String unit;

    public BusCurrency(Translator translator) {
        this.unit = " " + translator.translate(879);
    }

    @Override // info.flowersoft.theotown.minigame.Currency
    public String getUnit() {
        return this.unit;
    }

    @Override // info.flowersoft.theotown.minigame.Currency
    public String getTag() {
        return "bus currency";
    }
}
