package info.flowersoft.theotown.components.influence;

import info.flowersoft.theotown.components.DefaultInfluence;

/* JADX INFO: loaded from: classes4.dex */
public class AreaInfluenceWorker extends DefaultInfluence {
    public final int endX;
    public final int endY;
    public final int startX;
    public final int startY;

    public AreaInfluenceWorker(int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        this.startX = i;
        this.startY = i2;
        this.endX = i3;
        this.endY = i4;
        this.width = i5;
        this.height = i6;
    }

    public void calculateBaseInfluences() {
        int width = this.city.getWidth();
        int height = this.city.getHeight();
        for (int i = 0; i < height; i++) {
            for (int i2 = 0; i2 < width; i2++) {
                addBaseInfluenceFromTile(i2, i);
            }
        }
    }

    @Override // info.flowersoft.theotown.components.DefaultInfluence
    public void applyInfluence(int i, int i2, int i3, int i4) {
        int influenceRadius = DefaultInfluence.getInfluenceRadius(i4);
        int i5 = influenceRadius * influenceRadius;
        if (influenceRadius <= 0 || i4 == 0) {
            return;
        }
        int iMax = Math.max(i - influenceRadius, Math.max(0, this.startX));
        int iMin = Math.min(i + influenceRadius, Math.min(this.width - 1, this.endX - 1));
        int iMin2 = Math.min(influenceRadius + i2, Math.min(this.height - 1, this.endY - 1));
        int i6 = i4 <= 0 ? -1 : 1;
        int iAbs = Math.abs(i4);
        for (int iMax2 = Math.max(i2 - influenceRadius, Math.max(0, this.startY)); iMax2 <= iMin2; iMax2++) {
            int i7 = iMax2 - i2;
            int i8 = i7 * i7;
            int iRound = Math.round((float) Math.ceil(Math.sqrt(i5 - i8)));
            int iMin3 = Math.min(iMin, iRound + i);
            for (int iMax3 = Math.max(iMax, i - iRound); iMax3 <= iMin3; iMax3++) {
                int i9 = iMax3 - i;
                int i10 = (i9 * i9) + i8;
                if (i10 <= i5) {
                    addInfluenceRaw(iMax3, iMax2, i3, Math.min((iAbs * 50) / (i10 + 1), 100) * i6);
                }
            }
        }
    }
}
