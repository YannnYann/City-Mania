package info.flowersoft.theotown.store;

import com.badlogic.gdx.utils.ObjectIntMap;
import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Translator;

/* JADX INFO: loaded from: classes4.dex */
public class StoreCategory {
    public final int categoryId;
    public final int count;
    public final int icon;
    public final String img;
    public final String text;
    public final String title;
    public static final ObjectIntMap<String> CATEGORY_TITLE_IDS = new ObjectIntMapBuilder(new ObjectIntMap()).put("Other", 1823).put("Road", 636).put("Terrain", 1496).put("Trees", 3387).put("Transport", 60).put("Residential", 6).put("Commercial", 1579).put("Industrial", 3074).put("Parks, Sports and Management", 2365).put("Supply (Energy, Water, Waste Disposal)", 3509).put("Religion and Culture", 2234).put("Service (Police, Health Care, Education,...)", 1441).put("Award and Special", 2329).put("Decorations", 197).put("Tools", 1239).put("Weather and Overlay", 2029).put("Packs", 39).put("Road decoration", 1999).put("Military", 3536).put("Official Game Extensions", 1171).put("Scenarios", 1491).put("Shaders", 1681).put("Heightmaps", 3103).put("Themes", 3038).build();
    public static final ObjectIntMap<String> CATEGORY_ICONS = new ObjectIntMapBuilder(new ObjectIntMap()).put("Other", Resources.ICON_OTHER).put("Road", Resources.ICON_ROAD).put("Terrain", Resources.ICON_TERRAIN).put("Trees", Resources.ICON_TREE).put("Transport", Resources.ICON_PUBLICTRANSPORT).put("Residential", Resources.ICON_RESIDENTIAL).put("Commercial", Resources.ICON_COMMERCIAL).put("Industrial", Resources.ICON_INDUSTRIAL).put("Parks, Sports and Management", Resources.ICON_PUBLIC).put("Supply (Energy, Water, Waste Disposal)", Resources.ICON_SUPPLY).put("Religion and Culture", Resources.ICON_RELIGION).put("Service (Police, Health Care, Education,...)", Resources.ICON_SERVICE).put("Award and Special", Resources.ICON_AWARD).put("Decorations", Resources.ICON_DECORATION).put("Tools", Resources.ICON_BUILD).put("Weather and Overlay", Resources.ICON_WEATHER_SUNNY).put("Packs", Resources.ICON_ZONES).put("Road decoration", Resources.ICON_ROAD_DECORATION).put("Military", Resources.ICON_MILITARY).put("Official Game Extensions", Resources.PEOPLE_MAYOR).put("Scenarios", Resources.ICON_SCENARIO).put("Shaders", Resources.ICON_EYE).put("Heightmaps", Resources.ICON_MAP).put("Themes", Resources.ICON_THEMES).build();

    public enum Builtins {
        OfficialGameExtensions(24, "Official Game Extensions"),
        Scenarios(26, "Scenarios"),
        Terrain(5, "Terrain"),
        Trees(6, "Trees"),
        Road(3, "Road"),
        RoadDecoration(20, "Road decoration"),
        Transport(7, "Transport"),
        Residential(8, "Residential"),
        Commercial(9, "Commercial"),
        Industrial(10, "Industrial"),
        ParksSportsManagement(11, "Parks, Sports and Management"),
        Supply(12, "Supply (Energy, Water, Waste Disposal)"),
        Service(14, "Service (Police, Health Care, Education,...)"),
        Military(21, "Military"),
        Religion(13, "Religion and Culture"),
        AwardSpecial(15, "Award and Special"),
        Decorations(16, "Decorations"),
        Tools(17, "Tools"),
        WeatherOverlay(18, "Weather and Overlay"),
        Shaders(25, "Shaders"),
        Packs(19, "Packs"),
        Heightmaps(27, "Heightmaps"),
        Utilities(23, "Utilities"),
        Themes(28, "Themes"),
        Other(1, "Other");

        public final int id;
        public final String title;

        Builtins(int i, String str) {
            this.id = i;
            this.title = str;
        }

        public StoreCategory toCategory(Translator translator) {
            return new StoreCategory(this.id, this.title, translator);
        }
    }

    public StoreCategory(int i, String str, Translator translator) {
        this.categoryId = i;
        this.title = localize(str, translator);
        this.text = "";
        this.img = "";
        this.count = 0;
        this.icon = CATEGORY_ICONS.get(str, 0);
    }

    public StoreCategory(JSONObject jSONObject, Translator translator) throws JSONException {
        this.categoryId = jSONObject.optInt(C3670j8.x);
        this.title = localize(jSONObject.getString(C3522b4.i.D0), translator);
        this.text = jSONObject.optString(C3522b4.i.K0);
        this.img = jSONObject.optString("img");
        this.count = jSONObject.optInt("count", 0);
        this.icon = CATEGORY_ICONS.get(jSONObject.getString(C3522b4.i.D0), 0);
    }

    public int getCategoryId() {
        return this.categoryId;
    }

    public String getTitle() {
        return this.title;
    }

    public int getIcon() {
        return this.icon;
    }

    public int getCount() {
        return this.count;
    }

    public final String localize(String str, Translator translator) {
        int i = CATEGORY_TITLE_IDS.get(str, -1);
        return i >= 0 ? translator.translate(i) : str;
    }

    public static class ObjectIntMapBuilder<T> {
        public final ObjectIntMap<T> map;

        public ObjectIntMapBuilder(ObjectIntMap<T> objectIntMap) {
            this.map = objectIntMap;
        }

        public ObjectIntMapBuilder<T> put(T t, int i) {
            this.map.put(t, i);
            return this;
        }

        public ObjectIntMap<T> build() {
            return this.map;
        }
    }
}
