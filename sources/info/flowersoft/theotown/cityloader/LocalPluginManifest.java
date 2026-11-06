package info.flowersoft.theotown.cityloader;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import info.flowersoft.theotown.util.vfs.AbstractFile;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class LocalPluginManifest {
    public boolean active;
    public String author;
    public boolean category;
    public String id;
    public boolean isLoaded;
    public AbstractFile manifestPath;
    public int minVersion;
    public boolean multiplayer;
    public int occurrences;
    public boolean once;
    public boolean permanent;
    public String[] platforms;
    public AbstractFile pluginPath;
    public long size;
    public String text;
    public String thumbnail;
    public String title;
    public String url;
    public int version;

    public LocalPluginManifest(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptJSONArray;
        this.text = "";
        this.thumbnail = "";
        this.category = true;
        this.url = "";
        this.minVersion = 0;
        this.permanent = false;
        this.multiplayer = true;
        this.once = false;
        this.active = true;
        this.isLoaded = false;
        this.id = jSONObject.getString(C3670j8.x);
        this.version = jSONObject.getInt("version");
        this.title = jSONObject.getString(C3522b4.i.D0);
        this.text = jSONObject.optString(C3522b4.i.K0, "");
        this.author = jSONObject.getString("author");
        this.thumbnail = jSONObject.optString("thumbnail", "");
        this.category = jSONObject.optBoolean("category", true);
        this.url = jSONObject.optString("url", "");
        this.minVersion = jSONObject.optInt("min version", 0);
        this.permanent = jSONObject.optBoolean("permanent", false);
        this.multiplayer = jSONObject.optBoolean("multiplayer", true);
        this.once = jSONObject.optBoolean("once", false);
        if (jSONObject.has("platforms") && (jSONArrayOptJSONArray = jSONObject.optJSONArray("platforms")) != null) {
            this.platforms = new String[jSONArrayOptJSONArray.length()];
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                this.platforms[i] = jSONArrayOptJSONArray.optString(i, "").toLowerCase(Locale.ENGLISH).trim();
            }
        }
        if (this.id.isEmpty()) {
            throw new IllegalArgumentException("Id may not be empty");
        }
        if (this.title.isEmpty()) {
            throw new IllegalArgumentException("Title may not be empty");
        }
    }

    public LocalPluginManifest(JsonReader jsonReader) throws IOException {
        this.text = "";
        this.thumbnail = "";
        this.category = true;
        this.url = "";
        this.minVersion = 0;
        this.permanent = false;
        this.multiplayer = true;
        this.once = false;
        this.active = true;
        this.isLoaded = false;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.getClass();
            switch (strNextName) {
                case "platforms":
                    jsonReader.beginArray();
                    int iNextInt = jsonReader.nextInt();
                    this.platforms = new String[iNextInt];
                    for (int i = 0; i < iNextInt; i++) {
                        this.platforms[i] = jsonReader.nextString();
                    }
                    jsonReader.endArray();
                    break;
                case "author":
                    this.author = jsonReader.nextString();
                    break;
                case "id":
                    this.id = jsonReader.nextString();
                    break;
                case "url":
                    this.url = jsonReader.nextString();
                    break;
                case "once":
                    this.once = jsonReader.nextBoolean();
                    break;
                case "size":
                    this.size = jsonReader.nextLong();
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
                case "permanent":
                    this.permanent = jsonReader.nextBoolean();
                    break;
                case "occurrences":
                    this.occurrences = jsonReader.nextInt();
                    break;
                case "thumbnail":
                    this.thumbnail = jsonReader.nextString();
                    break;
                case "min version":
                    this.minVersion = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
    }

    public void save(JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name("version").value(this.version);
        jsonWriter.name(C3522b4.i.D0).value(limitString(this.title));
        if (!this.text.isEmpty()) {
            jsonWriter.name(C3522b4.i.K0).value(limitString(this.text));
        }
        jsonWriter.name("author").value(this.author);
        if (!this.thumbnail.isEmpty()) {
            jsonWriter.name("thumbnail").value(limitString(this.thumbnail));
        }
        if (this.minVersion > 0) {
            jsonWriter.name("min version").value(this.minVersion);
        }
        if (this.occurrences > 0) {
            jsonWriter.name("occurrences").value(this.occurrences);
        }
        jsonWriter.name("size").value(this.size);
        if (!this.url.isEmpty()) {
            jsonWriter.name("url").value(limitString(this.url));
        }
        if (this.permanent) {
            jsonWriter.name("permanent").value(this.permanent);
        }
        if (this.once) {
            jsonWriter.name("once").value(this.once);
        }
        String[] strArr = this.platforms;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        jsonWriter.name("platforms").beginArray();
        jsonWriter.value(this.platforms.length);
        int i = 0;
        while (true) {
            String[] strArr2 = this.platforms;
            if (i < strArr2.length) {
                jsonWriter.value(strArr2[i]);
                i++;
            } else {
                jsonWriter.endArray();
                return;
            }
        }
    }

    public long getSize() {
        return this.size;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public void setOccurrences(int i) {
        this.occurrences = i;
    }

    public void setManifestPath(AbstractFile abstractFile) {
        this.manifestPath = abstractFile;
    }

    public AbstractFile getPluginPath() {
        return this.pluginPath;
    }

    public void setPluginPath(AbstractFile abstractFile) {
        this.pluginPath = abstractFile;
    }

    public String getId() {
        return this.id;
    }

    public int getVersion() {
        return this.version;
    }

    public String getTitle() {
        return this.title;
    }

    public String getText() {
        return this.text;
    }

    public String getAuthor() {
        return this.author;
    }

    public int getMinVersion() {
        return this.minVersion;
    }

    public boolean isActive() {
        return this.active;
    }

    public void setActive(boolean z) {
        this.active = z;
    }

    public boolean isLoaded() {
        return this.isLoaded;
    }

    public void setLoaded(boolean z) {
        this.isLoaded = z;
    }

    public boolean isPermanent() {
        return this.permanent;
    }

    public boolean isMultiplayer() {
        return this.multiplayer;
    }

    public boolean isOnce() {
        return this.once;
    }

    public boolean supportsPlatform(String str) {
        String[] strArr = this.platforms;
        if (strArr == null || strArr.length == 0) {
            return true;
        }
        if (str == null) {
            return false;
        }
        String strTrim = str.toLowerCase(Locale.ENGLISH).trim();
        int i = 0;
        while (true) {
            String[] strArr2 = this.platforms;
            if (i >= strArr2.length) {
                return false;
            }
            if (strTrim.equals(strArr2[i])) {
                return true;
            }
            i++;
        }
    }

    public boolean requiresRestart() {
        return this.active != this.isLoaded;
    }

    public boolean equals(Object obj) {
        String str;
        return (obj instanceof LocalPluginManifest) && (str = this.id) != null && str.equals(((LocalPluginManifest) obj).id);
    }

    public int hashCode() {
        String str = this.id;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String limitString(String str) {
        return (str == null || str.length() <= 32) ? str : str.substring(0, 32);
    }
}
