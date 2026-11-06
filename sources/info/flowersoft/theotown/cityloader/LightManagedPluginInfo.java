package info.flowersoft.theotown.cityloader;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.store.ManagedPluginFile;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import vm2.LuaTable;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class LightManagedPluginInfo {
    public String author;
    public int authorId;
    public int id;
    public int occurrences;
    public String text;
    public String title;
    public int version;

    public LightManagedPluginInfo(JsonReader jsonReader) throws IOException {
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "author":
                    this.author = jsonReader.nextString();
                    break;
                case "id":
                    this.id = jsonReader.nextInt();
                    break;
                case "text":
                    this.text = jsonReader.nextString();
                    break;
                case "title":
                    this.title = jsonReader.nextString();
                    break;
                case "version":
                    this.version = jsonReader.nextInt();
                    break;
                case "occurrences":
                    this.occurrences = jsonReader.nextInt();
                    break;
                case "author id":
                    this.authorId = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name(C3522b4.i.D0).value(limitString(this.title));
        jsonWriter.name(C3522b4.i.K0).value(limitString(this.text));
        jsonWriter.name("version").value(this.version);
        jsonWriter.name("author id").value(this.authorId);
        jsonWriter.name("author").value(limitString(this.author));
        jsonWriter.name("occurrences").value(this.occurrences);
    }

    public final String limitString(String str) {
        return (str == null || str.length() <= 32) ? str : str.substring(0, 32);
    }

    public LightManagedPluginInfo(ManagedPluginFile managedPluginFile) {
        this(managedPluginFile.getPluginId(), managedPluginFile.getTitle(), managedPluginFile.getText(), managedPluginFile.getVersion(), managedPluginFile.getAuthorId(), managedPluginFile.getAuthor());
    }

    public LightManagedPluginInfo(int i, String str, String str2, int i2, int i3, String str3) {
        this.id = i;
        this.title = str;
        this.text = str2;
        this.version = i2;
        this.authorId = i3;
        this.author = str3;
    }

    public int getId() {
        return this.id;
    }

    public String getTitle() {
        return this.title;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setOccurrences(int i) {
        this.occurrences = i;
    }

    public LuaTable toLuaTable() {
        LuaTable luaTableTableOf = LuaValue.tableOf();
        luaTableTableOf.set(C3670j8.x, this.id);
        luaTableTableOf.set(C3522b4.i.D0, this.title);
        luaTableTableOf.set(C3522b4.i.K0, this.text);
        luaTableTableOf.set("version", this.version);
        luaTableTableOf.set("author", this.author);
        return luaTableTableOf;
    }
}
