package info.flowersoft.theotown.city.neighbors;

import com.ironsource.C3670j8;
import info.flowersoft.theotown.city.TradingRelation;
import info.flowersoft.theotown.city.components.BuildingSurvey;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualNeighborCity extends NeighborCity {
    public long bodyDisposal;
    public boolean invalid;
    public LuaTable luaRepr;
    public String name;
    public Draft owner;
    public long power;
    public LuaTable storage;
    public final BuildingSurvey survey;
    public long wasteDisposal;
    public long water;

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean contains(int i, int i2) {
        return false;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public int getInhabitants() {
        return 0;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public int getInhabitants(int i) {
        return 0;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public Image getPreviewImage() {
        return null;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasInfinityMoney() {
        return false;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasPowerConnection() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasRoadConnection() {
        return true;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public boolean hasWaterConnection() {
        return true;
    }

    public VirtualNeighborCity(Draft draft, String str, String str2) {
        super(new TradingRelation(), true, str, 0L, "", true);
        this.survey = new BuildingSurvey();
        getTradingRelation().setId(str);
        this.owner = draft;
        this.name = str2;
        this.storage = LuaValue.tableOf();
        setupTrading();
    }

    public VirtualNeighborCity(JsonReader jsonReader) throws IOException {
        super(new TradingRelation(), true, null, 0L, "", true);
        this.survey = new BuildingSurvey();
        load(jsonReader);
    }

    public final void load(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "trading":
                    jsonReader.beginObject();
                    getTradingRelation().load(jsonReader);
                    jsonReader.endObject();
                    break;
                case "id":
                    setId(jsonReader.nextString());
                    break;
                case "stg":
                    this.storage = LuaTableSerializer.deserialize(jsonReader);
                    break;
                case "name":
                    this.name = jsonReader.nextString();
                    break;
                case "owner":
                    this.owner = Drafts.get(jsonReader.nextString(), Draft.class);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        if (this.owner == null) {
            setInvalid();
            return;
        }
        if (this.storage == null) {
            this.storage = LuaValue.tableOf();
        }
        setupTrading();
    }

    public final void setupTrading() {
        if (this.owner != null) {
            getTradingRelation().setId("virtual:" + this.owner.id + ":" + getId());
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        if (this.owner != null) {
            jsonWriter.name("owner").value(this.owner.id);
        }
        jsonWriter.name(C3670j8.x).value(getId());
        jsonWriter.name("name").value(this.name);
        jsonWriter.name("stg");
        LuaTableSerializer.serialize(this.storage, jsonWriter);
    }

    public void setInvalid() {
        this.invalid = true;
    }

    public boolean isInvalid() {
        return this.invalid;
    }

    public Draft getOwner() {
        return this.owner;
    }

    public LuaTable getStorage() {
        return this.storage;
    }

    public void setLuaRepr(LuaTable luaTable) {
        this.luaRepr = luaTable;
    }

    public LuaTable getLuaRepr() {
        return this.luaRepr;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPower(long j) {
        this.power = j;
    }

    public void setWater(long j) {
        this.water = j;
    }

    public void setWasteDisposal(long j) {
        this.wasteDisposal = j;
    }

    public void setBodyDisposal(long j) {
        this.bodyDisposal = j;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public String getId() {
        return super.getId();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public TradingRelation getTradingRelation() {
        return super.getTradingRelation();
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public String getName() {
        return this.name;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public BuildingSurvey getSurvey() {
        return this.survey;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailablePower() {
        return this.power;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableWater() {
        return this.water;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableWasteDisposal() {
        return this.wasteDisposal;
    }

    @Override // info.flowersoft.theotown.city.neighbors.NeighborCity
    public long getAvailableBodyDisposal() {
        return this.bodyDisposal;
    }
}
