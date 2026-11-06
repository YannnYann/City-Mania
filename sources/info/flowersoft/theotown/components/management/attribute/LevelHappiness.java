package info.flowersoft.theotown.components.management.attribute;

/* JADX INFO: loaded from: classes4.dex */
public class LevelHappiness extends Attribute {
    public LevelHappiness() {
        super(true, false, 2345);
        setAdjustRatio(1.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    @Override // info.flowersoft.theotown.components.management.attribute.Attribute
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float evaluate(info.flowersoft.theotown.components.management.attribute.HappinessContext r7) {
        /*
            r6 = this;
            float[] r0 = r7.influences
            info.flowersoft.theotown.city.components.InfluenceType r1 = info.flowersoft.theotown.city.components.InfluenceType.LEVEL_LOW
            int r1 = r1.ordinal()
            r0 = r0[r1]
            float[] r1 = r7.influences
            info.flowersoft.theotown.city.components.InfluenceType r2 = info.flowersoft.theotown.city.components.InfluenceType.LEVEL_MIDDLE
            int r2 = r2.ordinal()
            r1 = r1[r2]
            float[] r2 = r7.influences
            info.flowersoft.theotown.city.components.InfluenceType r3 = info.flowersoft.theotown.city.components.InfluenceType.LEVEL_HIGH
            int r3 = r3.ordinal()
            r2 = r2[r3]
            info.flowersoft.theotown.city.objects.Building r3 = r7.building
            r4 = 1065353216(0x3f800000, float:1.0)
            if (r3 != 0) goto L3f
            int r7 = r7.level
            r3 = 1056964608(0x3f000000, float:0.5)
            r5 = 1048576000(0x3e800000, float:0.25)
            if (r7 == 0) goto L3b
            r0 = 1
            if (r7 == r0) goto L36
            r0 = 2
            if (r7 == r0) goto L33
            goto L3f
        L33:
            float r2 = r2 * r5
            float r2 = r2 + r3
            goto L40
        L36:
            float r1 = r1 * r5
            float r1 = r1 + r3
            float r2 = r2 * r5
            float r2 = r2 + r1
            goto L40
        L3b:
            float r0 = r0 * r5
            float r2 = r0 + r3
            goto L40
        L3f:
            r2 = r4
        L40:
            float r7 = java.lang.Math.min(r2, r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.management.attribute.LevelHappiness.evaluate(info.flowersoft.theotown.components.management.attribute.HappinessContext):float");
    }
}
