package info.flowersoft.theotown.city.objects;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.draft.AnimationDraft;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public enum CrimeType {
    GRAFFITI(0, new Getter() { // from class: info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda0
        @Override // io.blueflower.stapel2d.util.Getter
        public final Object get() {
            return BuildingIcons.INSTANCE.getCrimeGraffiti();
        }
    }),
    BURGLARY(1, new Getter() { // from class: info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda1
        @Override // io.blueflower.stapel2d.util.Getter
        public final Object get() {
            return BuildingIcons.INSTANCE.getCrimeBurglary();
        }
    }),
    MURDER(2, new Getter() { // from class: info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda2
        @Override // io.blueflower.stapel2d.util.Getter
        public final Object get() {
            return BuildingIcons.INSTANCE.getCrimeMurder();
        }
    }),
    RIOT(3, new Getter() { // from class: info.flowersoft.theotown.city.objects.CrimeType$$ExternalSyntheticLambda3
        @Override // io.blueflower.stapel2d.util.Getter
        public final Object get() {
            return BuildingIcons.INSTANCE.getCrimeRiot();
        }
    });

    public static CrimeType[] cachedValues;
    public static IntMap<CrimeType> idToCrime;
    public final Getter<AnimationDraft> iconGetter;
    public final int id;

    CrimeType(int i, Getter getter) {
        this.id = i;
        this.iconGetter = getter;
    }

    public int getId() {
        return this.id;
    }

    public AnimationDraft getBuildingIcon() {
        return this.iconGetter.get();
    }

    public static CrimeType[] cachedValues() {
        if (cachedValues == null) {
            cachedValues = values();
        }
        return cachedValues;
    }

    public static CrimeType resolveId(int i) {
        if (idToCrime == null) {
            idToCrime = new IntMap<>();
            for (int i2 = 0; i2 < cachedValues().length; i2++) {
                idToCrime.put(cachedValues()[i2].id, cachedValues()[i2]);
            }
        }
        if (idToCrime.containsKey(i)) {
            return idToCrime.get(i);
        }
        return null;
    }
}
