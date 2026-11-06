package info.flowersoft.theotown.city.objects;

import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.scripting.LuaTableSerializer;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import vm2.LuaTable;
import vm2.LuaValue;
import vm2.lib.jse.CoerceJavaToLua;

/* JADX INFO: loaded from: classes4.dex */
public final class CarOwner {
    public final Car car;
    public LuaTable luaRepr;
    public Draft ownerDraft;
    public LuaTable storage;

    public CarOwner(Draft draft, Car car, LuaTable luaTable) {
        this.ownerDraft = draft;
        this.car = car;
        this.storage = luaTable;
    }

    public CarOwner(Car car, JsonReader jsonReader) throws IOException {
        this.car = car;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            if (strNextName.equals("stg")) {
                this.storage = LuaTableSerializer.deserialize(jsonReader);
            } else if (strNextName.equals("draft")) {
                String strNextString = jsonReader.nextString();
                Draft draft = Drafts.get(strNextString, Draft.class);
                this.ownerDraft = draft;
                if (draft == null) {
                    throw new IOException("Car owner draft " + strNextString + " does not exist");
                }
            } else {
                jsonReader.skipValue();
            }
        }
    }

    public void setupRepr(LuaValue luaValue) {
        this.luaRepr = luaValue.invokemethod("_new", CoerceJavaToLua.coerce(this)).arg1().checktable();
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("draft").value(this.ownerDraft.id);
        jsonWriter.name("stg");
        LuaTableSerializer.serialize(this.storage, jsonWriter);
    }

    public Draft getOwnerDraft() {
        return this.ownerDraft;
    }

    public Car getCar() {
        return this.car;
    }

    public LuaTable getStorage() {
        return this.storage;
    }

    public LuaTable getLuaRepr() {
        return this.luaRepr;
    }
}
