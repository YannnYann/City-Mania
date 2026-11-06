package info.flowersoft.theotown.minigame;

import info.flowersoft.theotown.minigame.IdleGame;

/* JADX INFO: loaded from: classes4.dex */
public class StandardSpec implements IdleGame.Spec {
    public boolean isInt;
    public double levelBase;
    public double levelFactorLinear;
    public String name;
    public double offset;
    public double offsetLinear;
    public double rankFactor;
    public double rankFactorLinear;
    public double scale;
    public double stageBase;
    public double stageFactorLinear;
    public String unit;

    public StandardSpec(String str, String str2, boolean z, double d, double d2, double d3, double d4) {
        this.name = str;
        this.unit = str2;
        this.isInt = z;
        this.stageFactorLinear = d;
        this.levelFactorLinear = d2;
        this.offsetLinear = d3;
        this.rankFactorLinear = d4;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame.Spec
    public String getName() {
        return this.name;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame.Spec
    public double getValue(int i, int i2, int i3) {
        double d = i;
        double d2 = i3;
        double d3 = i2;
        return (this.scale * Math.pow(this.stageBase, (this.rankFactor * d2) + d) * Math.pow(this.levelBase, d3)) + this.offset + (this.stageFactorLinear * (d + (this.rankFactorLinear * d2))) + (this.levelFactorLinear * d3) + this.offsetLinear;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame.Spec
    public String getUnit() {
        return this.unit;
    }

    @Override // info.flowersoft.theotown.minigame.IdleGame.Spec
    public boolean isInt() {
        return this.isInt;
    }
}
