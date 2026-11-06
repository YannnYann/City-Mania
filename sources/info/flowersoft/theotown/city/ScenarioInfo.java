package info.flowersoft.theotown.city;

import com.badlogic.gdx.utils.IntSet;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.util.Saveable;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ScenarioInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ScenarioInfo implements Saveable {
    public boolean allowBuyMoney;
    public boolean allowLoans;
    public boolean grantAchievements;
    public int minVersion;
    public String id = "";
    public String title = "";
    public String text = "";
    public String author = "";
    public int allowPluginsType = 3;
    public final Set<String> disabledDraftIds = new LinkedHashSet();
    public final Set<String> whitelistedDraftIds = new LinkedHashSet();
    public final List<LightManagedPluginInfo> requiredStorePlugins = new ArrayList();
    public final List<LightManagedPluginInfo> whitelistedStorePlugins = new ArrayList();

    public final String getId() {
        return this.id;
    }

    public final void setId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final String getText() {
        return this.text;
    }

    public final void setText(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.text = str;
    }

    public final String getAuthor() {
        return this.author;
    }

    public final void setAuthor(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.author = str;
    }

    public final int getMinVersion() {
        return this.minVersion;
    }

    public final void setMinVersion(int i) {
        this.minVersion = i;
    }

    public final int getAllowPluginsType() {
        return this.allowPluginsType;
    }

    public final void setAllowPluginsType(int i) {
        this.allowPluginsType = i;
    }

    public final Set<String> getDisabledDraftIds() {
        return this.disabledDraftIds;
    }

    public final Set<String> getWhitelistedDraftIds() {
        return this.whitelistedDraftIds;
    }

    public final List<LightManagedPluginInfo> getRequiredStorePlugins() {
        return this.requiredStorePlugins;
    }

    public final List<LightManagedPluginInfo> getWhitelistedStorePlugins() {
        return this.whitelistedStorePlugins;
    }

    public final boolean getAllowBuyMoney() {
        return this.allowBuyMoney;
    }

    public final void setAllowBuyMoney(boolean z) {
        this.allowBuyMoney = z;
    }

    public final boolean getAllowLoans() {
        return this.allowLoans;
    }

    public final void setAllowLoans(boolean z) {
        this.allowLoans = z;
    }

    public final boolean getGrantAchievements() {
        return this.grantAchievements;
    }

    public final void setGrantAchievements(boolean z) {
        this.grantAchievements = z;
    }

    public final Set<String> getEffectiveWhitelistedDraftIds() {
        return SetsKt___SetsKt.plus(this.whitelistedDraftIds, "f7d93056-c4de-4384-b919-4c419ce6dffe");
    }

    public final IntSet getAllowedPluginIds() {
        IntSet intSet = new IntSet();
        Iterator<T> it = this.requiredStorePlugins.iterator();
        while (it.hasNext()) {
            intSet.add(((LightManagedPluginInfo) it.next()).getId());
        }
        Iterator<T> it2 = this.whitelistedStorePlugins.iterator();
        while (it2.hasNext()) {
            intSet.add(((LightManagedPluginInfo) it2.next()).getId());
        }
        return intSet;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // info.flowersoft.theotown.util.Saveable
    public void load(JsonReader jsonReader) throws IOException {
        Intrinsics.checkNotNull(jsonReader);
        this.disabledDraftIds.clear();
        this.whitelistedDraftIds.clear();
        this.requiredStorePlugins.clear();
        this.whitelistedStorePlugins.clear();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if (strNextName != null) {
                switch (strNextName.hashCode()) {
                    case -2076428657:
                        if (strNextName.equals("allow buy money")) {
                            this.allowBuyMoney = jsonReader.nextBoolean();
                        }
                        break;
                    case -1658366172:
                        if (strNextName.equals("achievements")) {
                            this.grantAchievements = jsonReader.nextBoolean();
                        }
                        break;
                    case -1406328437:
                        if (strNextName.equals("author")) {
                            String strNextString = jsonReader.nextString();
                            Intrinsics.checkNotNullExpressionValue(strNextString, "nextString(...)");
                            this.author = strNextString;
                        }
                        break;
                    case -983777516:
                        if (strNextName.equals("disabled ids")) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                Set<String> set = this.disabledDraftIds;
                                String strNextString2 = jsonReader.nextString();
                                Intrinsics.checkNotNullExpressionValue(strNextString2, "nextString(...)");
                                set.add(strNextString2);
                            }
                            jsonReader.endArray();
                        }
                        break;
                    case -930439254:
                        if (strNextName.equals("white store plugins")) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                this.whitelistedStorePlugins.add(new LightManagedPluginInfo(jsonReader));
                                jsonReader.endObject();
                            }
                            jsonReader.endArray();
                        }
                        break;
                    case -922650946:
                        if (strNextName.equals("whitelisted ids")) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                Set<String> set2 = this.whitelistedDraftIds;
                                String strNextString3 = jsonReader.nextString();
                                Intrinsics.checkNotNullExpressionValue(strNextString3, "nextString(...)");
                                set2.add(strNextString3);
                            }
                            jsonReader.endArray();
                        }
                        break;
                    case -454347284:
                        if (strNextName.equals("allow loans")) {
                            this.allowLoans = jsonReader.nextBoolean();
                        }
                        break;
                    case 3355:
                        if (strNextName.equals(C3670j8.x)) {
                            String strNextString4 = jsonReader.nextString();
                            Intrinsics.checkNotNullExpressionValue(strNextString4, "nextString(...)");
                            this.id = strNextString4;
                        }
                        break;
                    case 3556653:
                        if (strNextName.equals(C3522b4.i.K0)) {
                            String strNextString5 = jsonReader.nextString();
                            Intrinsics.checkNotNullExpressionValue(strNextString5, "nextString(...)");
                            this.text = strNextString5;
                        }
                        break;
                    case 110371416:
                        if (strNextName.equals(C3522b4.i.D0)) {
                            String strNextString6 = jsonReader.nextString();
                            Intrinsics.checkNotNullExpressionValue(strNextString6, "nextString(...)");
                            this.title = strNextString6;
                        }
                        break;
                    case 646340041:
                        if (strNextName.equals("allow plugins")) {
                            this.allowPluginsType = jsonReader.nextInt();
                        }
                        break;
                    case 667491167:
                        if (strNextName.equals("req store plugins")) {
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                jsonReader.beginObject();
                                this.requiredStorePlugins.add(new LightManagedPluginInfo(jsonReader));
                                jsonReader.endObject();
                            }
                            jsonReader.endArray();
                        }
                        break;
                    case 1577184522:
                        if (strNextName.equals("min version")) {
                            this.minVersion = jsonReader.nextInt();
                        }
                        break;
                }
            }
            jsonReader.skipValue();
        }
    }

    @Override // info.flowersoft.theotown.util.Saveable
    public void save(JsonWriter jsonWriter) throws IOException {
        Intrinsics.checkNotNull(jsonWriter);
        jsonWriter.name(C3670j8.x).value(this.id);
        jsonWriter.name(C3522b4.i.D0).value(this.title);
        jsonWriter.name(C3522b4.i.K0).value(this.text);
        jsonWriter.name("author").value(this.author);
        jsonWriter.name("min version").value(this.minVersion);
        jsonWriter.name("allow plugins").value(this.allowPluginsType);
        JsonWriter jsonWriterBeginArray = jsonWriter.name("disabled ids").beginArray();
        Iterator<T> it = this.disabledDraftIds.iterator();
        while (it.hasNext()) {
            jsonWriterBeginArray.value((String) it.next());
        }
        jsonWriterBeginArray.endArray();
        JsonWriter jsonWriterBeginArray2 = jsonWriter.name("whitelisted ids").beginArray();
        Iterator<T> it2 = this.whitelistedDraftIds.iterator();
        while (it2.hasNext()) {
            jsonWriterBeginArray2.value((String) it2.next());
        }
        jsonWriterBeginArray2.endArray();
        jsonWriter.name("allow buy money").value(this.allowBuyMoney);
        jsonWriter.name("allow loans").value(this.allowLoans);
        jsonWriter.name("achievements").value(this.grantAchievements);
        JsonWriter jsonWriterBeginArray3 = jsonWriter.name("req store plugins").beginArray();
        for (LightManagedPluginInfo lightManagedPluginInfo : this.requiredStorePlugins) {
            jsonWriterBeginArray3.beginObject();
            lightManagedPluginInfo.save(jsonWriterBeginArray3);
            jsonWriterBeginArray3.endObject();
        }
        jsonWriterBeginArray3.endArray();
        JsonWriter jsonWriterBeginArray4 = jsonWriter.name("white store plugins").beginArray();
        for (LightManagedPluginInfo lightManagedPluginInfo2 : this.whitelistedStorePlugins) {
            jsonWriterBeginArray4.beginObject();
            lightManagedPluginInfo2.save(jsonWriterBeginArray4);
            jsonWriterBeginArray4.endObject();
        }
        jsonWriterBeginArray4.endArray();
    }
}
