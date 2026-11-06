package info.flowersoft.theotown.creation.modifier;

import info.flowersoft.theotown.city.objects.Ground;
import info.flowersoft.theotown.draft.BiomeDraft;
import info.flowersoft.theotown.draft.GroundDraft;
import info.flowersoft.theotown.resources.Drafts;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VolcanoBiomeModifier.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class VolcanoBiomeModifier extends BiomeTerrainModifier {
    public final BiomeDraft volcanoBiome = (BiomeDraft) Drafts.get("$biome_volcano00", BiomeDraft.class);
    public final GroundDraft lavaGround = (GroundDraft) Drafts.get("$ground_volcano00_active00", GroundDraft.class);

    /* JADX INFO: compiled from: VolcanoBiomeModifier.kt */
    public static final class Volcano {
        public final boolean active;
        public final int radius;
        public final int x;
        public final int y;

        public Volcano(int i, int i2, int i3, boolean z) {
            this.x = i;
            this.y = i2;
            this.radius = i3;
            this.active = z;
        }

        public final int getX() {
            return this.x;
        }

        public final int getY() {
            return this.y;
        }

        public final int getRadius() {
            return this.radius;
        }

        public final boolean getActive() {
            return this.active;
        }
    }

    @Override // info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier
    public boolean isAvailable() {
        return (this.volcanoBiome == null || this.lavaGround == null || !getBiomes().contains(this.volcanoBiome)) ? false : true;
    }

    @Override // info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier
    public void apply() {
        float f;
        float f2;
        float f3;
        float f4;
        BiomeDraft biomeDraft = this.volcanoBiome;
        Intrinsics.checkNotNull(biomeDraft);
        GroundDraft groundDraft = this.lavaGround;
        Intrinsics.checkNotNull(groundDraft);
        ArrayList<Volcano> arrayList = new ArrayList();
        int height = getHeight();
        int i = 0;
        while (true) {
            f = 0.3f;
            f2 = 1.0f;
            if (i >= height) {
                break;
            }
            int width = getWidth();
            for (int i2 = 0; i2 < width; i2++) {
                if (!getGround(i2, i).isWater() && Intrinsics.areEqual(getBiome(i2, i), biomeDraft)) {
                    float f5 = i2;
                    float f6 = i;
                    if (getNoise().eval(f5 * 0.1f, 0.1f * f6) > 0.3f && getNoise().eval(f5 * 1.0f, f6 * 1.0f) > 0.5f && getNoise().eval(32.0f + f5, f6 + 73.0f) > 0.5f) {
                        float fEval = (getNoise().eval(f5 * 0.3f, f6 * 0.3f) * 0.5f) + 0.5f;
                        arrayList.add(new Volcano(i2, i, ((int) (30 * fEval * fEval)) + 8, fEval > 0.7f));
                    }
                }
            }
            i++;
        }
        int height2 = getHeight();
        for (int i3 = 0; i3 < height2; i3++) {
            int width2 = getWidth();
            for (int i4 = 0; i4 < width2; i4++) {
                Ground ground = getGround(i4, i3);
                for (Volcano volcano : arrayList) {
                    int x = volcano.getX();
                    int y = volcano.getY();
                    int radius = volcano.getRadius();
                    boolean active = volcano.getActive();
                    int i5 = x - i4;
                    int i6 = y - i3;
                    int i7 = (i5 * i5) + (i6 * i6);
                    if (i7 < radius * radius) {
                        f3 = f;
                        f4 = f2;
                        float fSqrt = ((float) Math.sqrt(i7)) * ((getNoise().eval(i4 * f3, i3 * f3) * 0.2f) + f4);
                        float f7 = radius;
                        if (fSqrt <= f7) {
                            float fAbs = f4 - Math.abs(f4 - (((f7 - fSqrt) / f7) * 1.2f));
                            float f8 = fAbs * fAbs;
                            setBiome(i4, i3, biomeDraft);
                            if (active && fSqrt <= f4) {
                                ground.setDraft(groundDraft);
                            }
                            ground.height = (short) Math.max((int) (80.0f * f7 * f8), ground.height + ((int) (f7 * 40.0f * f8)));
                        }
                    } else {
                        f3 = f;
                        f4 = f2;
                    }
                    f = f3;
                    f2 = f4;
                }
            }
        }
    }
}
