package info.flowersoft.theotown.components.power;

import com.badlogic.gdx.utils.IntMap;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Tiles;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.MultiList;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.CyclicWorker;
import io.blueflower.stapel2d.util.IntQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class PowerWorker extends CyclicWorker implements Runnable {
    public static final JSONObject CONFIG;
    public static final float DEFAULT_ADAPTION_RATE;
    public final City city;
    public Set<EnergyGroup> lastGroups;
    public final Tiles tiles;
    public float adaptionRate = DEFAULT_ADAPTION_RATE;
    public final BitSet binaryMask = new BitSet();
    public final MultiList<Building>[] buildings = {new MultiList<>(), new MultiList<>()};
    public int counter = 0;
    public final IntMap<EnergyGroup>[] groupPerTile = {new IntMap(), new IntMap()};
    public final Queue<EnergyGroup> queue = new ArrayDeque();
    public final IntQueue queueXYL = new IntQueue();
    public final List<EnergyGroup> originalGroups = new ArrayList();

    static {
        JSONObject specificConfig = Resources.getSpecificConfig("energy");
        CONFIG = specificConfig;
        DEFAULT_ADAPTION_RATE = (float) specificConfig.optDouble("adaption rate", 0.01d);
    }

    public final void markTile(int i, int i2) {
        this.binaryMask.set(i + (i2 * this.city.getWidth()));
    }

    public final boolean isTileMarked(int i, int i2) {
        return this.binaryMask.get(i + (i2 * this.city.getWidth()));
    }

    public PowerWorker(City city) {
        this.city = city;
        this.tiles = city.getTiles();
        setTask(this);
    }

    public Set<EnergyGroup> getLastGroups() {
        return this.lastGroups;
    }

    public void setDefaultAdaptionRate() {
        this.adaptionRate = DEFAULT_ADAPTION_RATE;
    }

    public void setAdaptionRate(float f) {
        this.adaptionRate = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ae A[PHI: r12
      0x01ae: PHI (r12v23 info.flowersoft.theotown.city.objects.Wire) = (r12v50 info.flowersoft.theotown.city.objects.Wire), (r12v51 info.flowersoft.theotown.city.objects.Wire) binds: [B:55:0x01a3, B:57:0x01ac] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            Method dump skipped, instruction units count: 1366
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.components.power.PowerWorker.run():void");
    }

    public final class EnergyGroup {
        public MultiList<Building>.SingleList needer;
        public Set<Integer> neighborCities;
        public EnergyGroup parent;
        public float produced;
        public MultiList<Building>.SingleList producer;
        public float used;

        public static /* synthetic */ float access$524(EnergyGroup energyGroup, float f) {
            float f2 = energyGroup.used - f;
            energyGroup.used = f2;
            return f2;
        }

        public float getProduced() {
            return this.produced;
        }

        public float getUsed() {
            return this.used;
        }

        public EnergyGroup() {
            this.producer = PowerWorker.this.buildings[0].newList();
            this.needer = PowerWorker.this.buildings[0].newList();
        }

        public EnergyGroup(PowerWorker powerWorker, Building building) {
            this();
            this.producer.add(building);
        }

        public final void registerNeighborCity(int i) {
            if (this.neighborCities == null) {
                this.neighborCities = new HashSet();
            }
            this.neighborCities.add(Integer.valueOf(i));
        }

        public final EnergyGroup getParent() {
            if (this.parent == null) {
                return this;
            }
            while (true) {
                EnergyGroup energyGroup = this.parent;
                EnergyGroup energyGroup2 = energyGroup.parent;
                if (energyGroup2 == null) {
                    return energyGroup;
                }
                this.parent = energyGroup2;
            }
        }

        public final EnergyGroup join(EnergyGroup energyGroup) {
            energyGroup.parent = this;
            for (int i = 0; i < energyGroup.producer.size(); i++) {
                this.producer.add(energyGroup.producer.get(i));
            }
            energyGroup.producer.free();
            energyGroup.producer = null;
            this.needer = PowerWorker.this.buildings[0].mix(this.needer, energyGroup.needer);
            energyGroup.needer = null;
            Set<Integer> set = this.neighborCities;
            if (set == null) {
                this.neighborCities = energyGroup.neighborCities;
            } else {
                Set<Integer> set2 = energyGroup.neighborCities;
                if (set2 != null) {
                    set.addAll(set2);
                }
            }
            this.used += energyGroup.used;
            return this;
        }

        public MultiList<Building>.SingleList getProducer() {
            return this.producer;
        }

        public MultiList<Building>.SingleList getNeeder() {
            return this.needer;
        }
    }
}
