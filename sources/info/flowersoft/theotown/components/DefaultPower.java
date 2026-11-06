package info.flowersoft.theotown.components;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.CityComponent;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.objects.Wire;
import info.flowersoft.theotown.components.power.PowerWorker;
import info.flowersoft.theotown.draft.WireDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.MultiList;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultPower extends CityComponent {
    public PowerWorker worker;

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public int getType() {
        return 5;
    }

    public DefaultPower(JsonReader jsonReader, City city) throws IOException {
        this.tiles = city.getTiles();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("wires")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = "$wire00";
                    boolean zNextBoolean = true;
                    int iNextInt = 0;
                    int iNextInt2 = 0;
                    int iNextInt3 = 0;
                    int iNextInt4 = 0;
                    while (jsonReader.hasNext()) {
                        String strNextName = jsonReader.nextName();
                        strNextName.getClass();
                        switch (strNextName) {
                            case "f":
                            case "frame":
                                iNextInt3 = jsonReader.nextInt();
                                break;
                            case "p":
                            case "punch":
                                zNextBoolean = jsonReader.nextBoolean();
                                break;
                            case "x":
                                iNextInt = jsonReader.nextInt();
                                break;
                            case "y":
                                iNextInt2 = jsonReader.nextInt();
                                break;
                            case "id":
                                strNextString = jsonReader.nextString();
                                break;
                            case "connection dir":
                                iNextInt4 = jsonReader.nextInt();
                                break;
                            default:
                                jsonReader.skipValue();
                                break;
                        }
                    }
                    jsonReader.endObject();
                    WireDraft wireDraft = (WireDraft) Drafts.ALL.get(strNextString);
                    if (wireDraft != null) {
                        Wire wire = new Wire(wireDraft, iNextInt, iNextInt2, iNextInt3);
                        wire.setPunch(zNextBoolean);
                        wire.setConnection(iNextInt4);
                        this.tiles.setWire(iNextInt, iNextInt2, wireDraft.level, wire);
                        city.getWires().add(wire);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public DefaultPower() {
    }

    public PowerWorker getWorker() {
        return this.worker;
    }

    @Override // info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        PowerWorker powerWorker = new PowerWorker(city);
        this.worker = powerWorker;
        addWorker(powerWorker);
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("wires");
        jsonWriter.beginArray();
        for (int i = 0; i < this.city.getHeight(); i++) {
            for (int i2 = 0; i2 < this.city.getWidth(); i2++) {
                if (this.tiles.hasWire(i2, i)) {
                    for (int i3 = -1; i3 <= 1; i3++) {
                        Wire wire = this.tiles.getWire(i2, i, i3);
                        if (wire != null) {
                            jsonWriter.beginObject();
                            if (!wire.getDraft().id.equals("$wire00")) {
                                jsonWriter.name(C3670j8.x).value(wire.getDraft().id);
                            }
                            jsonWriter.name("x").value(i2);
                            jsonWriter.name("y").value(i);
                            jsonWriter.name("f").value(wire.getFrame());
                            jsonWriter.name("p").value(wire.isPunch());
                            int connectionDir = wire.getConnectionDir();
                            if (connectionDir != 0) {
                                jsonWriter.name("connection dir").value(connectionDir);
                            }
                            jsonWriter.endObject();
                        }
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public void calculate() {
        this.worker.startAnytime();
    }

    public int countNetworks() {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups != null) {
            return lastGroups.size();
        }
        return 0;
    }

    public Building sampleProducer(int i) {
        PowerWorker.EnergyGroup group = getGroup(i);
        if (group == null) {
            return null;
        }
        MultiList<Building>.SingleList producer = group.getProducer();
        if (producer.isEmpty()) {
            return null;
        }
        return producer.get(Resources.RND.nextInt(producer.size()));
    }

    public Building sampleConsumer(int i) {
        PowerWorker.EnergyGroup group = getGroup(i);
        if (group == null) {
            return null;
        }
        MultiList<Building>.SingleList needer = group.getNeeder();
        if (needer.isEmpty()) {
            return null;
        }
        return needer.get(Resources.RND.nextInt(needer.size()));
    }

    public final PowerWorker.EnergyGroup getGroup(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null || lastGroups.size() <= i) {
            return null;
        }
        Iterator<PowerWorker.EnergyGroup> it = lastGroups.iterator();
        for (int i2 = 0; i2 < i && it.hasNext(); i2++) {
            it.next();
        }
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public int availablePower() {
        return availablePower(-1);
    }

    public int consumedPower() {
        return consumedPower(-1);
    }

    public int nativeAvailablePower() {
        return nativeAvailablePower(-1);
    }

    public int nativeConsumedPower() {
        return nativeConsumedPower(-1);
    }

    public int availablePower(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        int produced = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    produced = (int) (produced + energyGroup.getProduced());
                }
                i2++;
            }
        }
        return produced;
    }

    public int consumedPower(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        int used = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    used = (int) (used + energyGroup.getUsed());
                }
                i2++;
            }
        }
        return used;
    }

    public int nativeAvailablePower(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null) {
            return 0;
        }
        int power = 0;
        int i2 = 0;
        for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
            if (i == -1 || i == i2) {
                for (int i3 = 0; i3 < energyGroup.getProducer().size(); i3++) {
                    power = (int) (((long) power) + energyGroup.getProducer().get(i3).getPower());
                }
            }
            i2++;
        }
        return power;
    }

    public int nativeConsumedPower(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null) {
            return 0;
        }
        int power = 0;
        int i2 = 0;
        for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
            if (i == -1 || i == i2) {
                for (int i3 = 0; i3 < energyGroup.getNeeder().size(); i3++) {
                    power = (int) (((long) power) - energyGroup.getNeeder().get(i3).getPower());
                }
            }
            i2++;
        }
        return power;
    }

    public float usageRatio() {
        return usageRatio(-1);
    }

    public float usageRatio(int i) {
        float fConsumedPower = consumedPower(i);
        float fAvailablePower = availablePower(i);
        return fAvailablePower > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? fConsumedPower / fAvailablePower : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public int availablePowerBuildings() {
        return availablePowerBuildings(-1);
    }

    public int availablePowerBuildings(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        int size = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    size += energyGroup.getProducer().size();
                }
                i2++;
            }
        }
        return size;
    }

    public int consumedPowerBuildings() {
        return consumedPowerBuildings(-1);
    }

    public int consumedPowerBuildings(int i) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        int size = 0;
        if (lastGroups != null) {
            int i2 = 0;
            for (PowerWorker.EnergyGroup energyGroup : lastGroups) {
                if (i == -1 || i == i2) {
                    size += energyGroup.getNeeder().size();
                }
                i2++;
            }
        }
        return size;
    }

    public int getNetwork(Building building) {
        Set<PowerWorker.EnergyGroup> lastGroups = this.worker.getLastGroups();
        if (lastGroups == null) {
            return -2;
        }
        Iterator<PowerWorker.EnergyGroup> it = lastGroups.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().getProducer().contains(building)) {
                return i;
            }
            i++;
        }
        return -2;
    }
}
