package info.flowersoft.theotown.scripting;

import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class LuaTableSerializer {
    public static double sanitizeDouble(double d) {
        if (!Double.isInfinite(d) && !Double.isNaN(d)) {
            return d;
        }
        if (Double.isNaN(d)) {
            return 1.0d;
        }
        return d > 0.0d ? Double.MAX_VALUE : -1.7976931348623157E308d;
    }

    public static JSONObject serialize(LuaTable luaTable) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (LuaValue luaValue : luaTable.keys()) {
            if (luaValue.isstring()) {
                String string = luaValue.toString();
                LuaValue luaValue2 = luaTable.get(luaValue);
                if (luaValue2.isnil()) {
                    jSONObject.put(string, (Object) null);
                } else if (luaValue2.isboolean()) {
                    jSONObject.put(string, luaValue2.checkboolean());
                } else if (luaValue2.isint()) {
                    jSONObject.put(string, luaValue2.toint());
                } else if (luaValue2.islong()) {
                    jSONObject.put(string, luaValue2.checklong());
                } else if (luaValue2.isnumber()) {
                    jSONObject.put(string, sanitizeDouble(luaValue2.checkdouble()));
                } else if (luaValue2.isstring()) {
                    jSONObject.put(string, luaValue2.toString());
                } else if (luaValue2.istable()) {
                    jSONObject.put(string, serialize(luaValue2.checktable()));
                }
            }
        }
        return jSONObject;
    }

    public static LuaTable deserialize(JSONArray jSONArray) throws JSONException {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj == null) {
                luaTableTableOf.insert(0, LuaValue.NIL);
            } else if (obj instanceof JSONObject) {
                luaTableTableOf.insert(0, deserialize((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                luaTableTableOf.insert(0, deserialize((JSONArray) obj));
            } else if (obj instanceof Boolean) {
                luaTableTableOf.insert(0, LuaValue.valueOf(((Boolean) obj).booleanValue()));
            } else if (obj instanceof Short) {
                luaTableTableOf.insert(0, LuaValue.valueOf((int) ((Short) obj).shortValue()));
            } else if (obj instanceof Integer) {
                luaTableTableOf.insert(0, LuaValue.valueOf(((Integer) obj).intValue()));
            } else if (obj instanceof Long) {
                luaTableTableOf.insert(0, LuaValue.valueOf(((Long) obj).longValue()));
            } else if (obj instanceof Float) {
                luaTableTableOf.insert(0, LuaValue.valueOf(((Float) obj).floatValue()));
            } else if (obj instanceof Double) {
                luaTableTableOf.insert(0, LuaValue.valueOf(((Double) obj).doubleValue()));
            } else {
                luaTableTableOf.insert(0, LuaValue.valueOf(obj.toString()));
            }
        }
        return luaTableTableOf;
    }

    public static LuaTable deserialize(JSONObject jSONObject) throws JSONException {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj == null) {
                luaTableTableOf.set(next, LuaValue.NIL);
            } else if (obj instanceof JSONObject) {
                luaTableTableOf.set(next, deserialize((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                luaTableTableOf.set(next, deserialize((JSONArray) obj));
            } else if (obj instanceof Boolean) {
                luaTableTableOf.set(next, LuaValue.valueOf(((Boolean) obj).booleanValue()));
            } else if (obj instanceof Short) {
                luaTableTableOf.set(next, LuaValue.valueOf((int) ((Short) obj).shortValue()));
            } else if (obj instanceof Integer) {
                luaTableTableOf.set(next, LuaValue.valueOf(((Integer) obj).intValue()));
            } else if (obj instanceof Long) {
                luaTableTableOf.set(next, LuaValue.valueOf(((Long) obj).longValue()));
            } else if (obj instanceof Float) {
                luaTableTableOf.set(next, LuaValue.valueOf(((Float) obj).floatValue()));
            } else if (obj instanceof Double) {
                luaTableTableOf.set(next, LuaValue.valueOf(((Double) obj).doubleValue()));
            } else {
                luaTableTableOf.set(next, obj.toString());
            }
        }
        return luaTableTableOf;
    }

    public static void serialize(LuaTable luaTable, JsonWriter jsonWriter) throws IOException {
        serialize(luaTable, jsonWriter, new Context());
    }

    public static void serialize(LuaTable luaTable, JsonWriter jsonWriter, Context context) throws IOException {
        jsonWriter.beginObject();
        if (context != null) {
            int tableIndex = context.getTableIndex(luaTable);
            if (tableIndex >= 0) {
                jsonWriter.name("$table:ref:::").value(tableIndex);
                jsonWriter.endObject();
                return;
            }
            context.onSavedTable(luaTable);
        }
        for (LuaValue luaValue : luaTable.keys()) {
            if (luaValue.isstring()) {
                LuaValue luaValue2 = luaTable.get(luaValue);
                if (luaValue.isnumber()) {
                    jsonWriter.name("this:is:a:number:::" + luaValue.checknumber());
                } else {
                    jsonWriter.name(luaValue.toString());
                }
                if (luaValue2.isnil()) {
                    jsonWriter.nullValue();
                } else if (luaValue2.isboolean()) {
                    jsonWriter.value(luaValue2.checkboolean());
                } else if (luaValue2.isint()) {
                    jsonWriter.value(luaValue2.toint());
                } else if (luaValue2.islong()) {
                    jsonWriter.value(luaValue2.checklong());
                } else if (luaValue2.isnumber()) {
                    jsonWriter.value(sanitizeDouble(luaValue2.checkdouble()));
                } else if (luaValue2.isstring()) {
                    jsonWriter.value(luaValue2.toString());
                } else if (luaValue2.istable()) {
                    serialize(luaValue2.checktable(), jsonWriter, context);
                }
            }
        }
        jsonWriter.endObject();
    }

    public static LuaTable deserialize(JsonReader jsonReader) throws IOException {
        return deserialize(jsonReader, new Context());
    }

    public static LuaTable deserialize(JsonReader jsonReader, Context context) throws IOException {
        jsonReader.beginObject();
        LuaTable luaTableTableOf = LuaValue.tableOf();
        boolean z = true;
        int i = 0;
        while (true) {
            if (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                i++;
                if (context != null) {
                    if (strNextName.equals("$table:ref:::")) {
                        luaTableTableOf = context.getLoadedTable(jsonReader.nextInt());
                        while (jsonReader.hasNext()) {
                            jsonReader.skipValue();
                        }
                    } else if (z) {
                        context.onLoadedTable(luaTableTableOf);
                        z = false;
                    }
                }
                try {
                    LuaValue luaValueValueOf = LuaValue.valueOf(strNextName);
                    if (strNextName.startsWith("this:is:a:number:::")) {
                        luaValueValueOf = LuaValue.valueOf(Double.parseDouble(strNextName.substring(19)));
                    }
                    switch (jsonReader.peek()) {
                        case 3:
                            luaTableTableOf.set(luaValueValueOf, deserialize(jsonReader, context));
                            break;
                        case 4:
                        case 5:
                        case 10:
                        case 13:
                        default:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextString()));
                            break;
                        case 6:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextString()));
                            break;
                        case 7:
                        case 16:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextDouble()));
                            break;
                        case 8:
                        case 14:
                        case 15:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextInt()));
                            break;
                        case 9:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextLong()));
                            break;
                        case 11:
                            luaTableTableOf.set(luaValueValueOf, LuaValue.valueOf(jsonReader.nextBoolean()));
                            break;
                        case 12:
                            jsonReader.skipValue();
                            luaTableTableOf.set(luaValueValueOf, LuaValue.NIL);
                            break;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    jsonReader.skipValue();
                }
            }
        }
        if (i == 0) {
            context.onLoadedTable(luaTableTableOf);
        }
        jsonReader.endObject();
        return luaTableTableOf;
    }

    public static class Context {
        public final List<LuaTable> loadedTables = new ArrayList();
        public final IdentityHashMap<LuaTable, Integer> savedTables = new IdentityHashMap<>();
        public int ctr = 0;

        public final void onSavedTable(LuaTable luaTable) {
            this.savedTables.put(luaTable, Integer.valueOf(this.loadedTables.size()));
            this.loadedTables.add(luaTable);
            this.ctr++;
        }

        public final void onLoadedTable(LuaTable luaTable) {
            this.savedTables.put(luaTable, Integer.valueOf(this.loadedTables.size()));
            this.loadedTables.add(luaTable);
            this.ctr++;
        }

        public final int getTableIndex(LuaTable luaTable) {
            Integer num = this.savedTables.get(luaTable);
            this.ctr++;
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }

        public final LuaTable getLoadedTable(int i) {
            return this.loadedTables.get(i);
        }
    }
}
