package info.flowersoft.theotown.input;

import com.badlogic.gdx.Input;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.util.IntList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum KeyAction {
    CITY_SCROLL_UP(51),
    CITY_SCROLL_UP_ALT(19),
    CITY_SCROLL_LEFT(29),
    CITY_SCROLL_LEFT_ALT(21),
    CITY_SCROLL_DOWN(47),
    CITY_SCROLL_DOWN_ALT(20),
    CITY_SCROLL_RIGHT(32),
    CITY_SCROLL_RIGHT_ALT(22),
    CITY_ZOOM_IN(81),
    CITY_ZOOM_IN_ALT(70),
    CITY_ZOOM_OUT(69),
    CITY_ZOOM_OUT_ALT,
    CITY_SAVE(47, 1),
    OPEN_CATEGORY_ROAD(46),
    OPEN_CATEGORY_TERRAIN(48),
    OPEN_CATEGORY_ENERGY(53),
    OPEN_CATEGORY_WATER(49),
    OPEN_CATEGORY_EDUCATION(37),
    OPEN_CATEGORY_PARK(43),
    OPEN_CATEGORY_POLICE(44),
    OPEN_CATEGORY_FIREBRIGADE(34),
    OPEN_CATEGORY_ROADDECO(35),
    OPEN_CATEGORY_MEDIC(36),
    OPEN_CATEGORY_SPORT(38),
    OPEN_CATEGORY_MANAGEMENT(39),
    OPEN_CATEGORY_AWARD(40),
    OPEN_CATEGORY_ZONE(54),
    OPEN_CATEGORY_DISASTER(52),
    OPEN_CATEGORY_RECENT(31),
    OPEN_CATEGORY_HILLS(50),
    OPEN_CATEGORY_ASPHALT,
    OPEN_CATEGORY_TREE(42),
    OPEN_CATEGORY_MILITARY,
    OPEN_CATEGORY_TRANSPORT,
    OPEN_CATEGORY_INTERSECTIONS,
    OPEN_CATEGORY_BUS,
    OPEN_CATEGORY_TRAIN,
    OPEN_CATEGORY_TRAIN_PARTS,
    OPEN_CATEGORY_ELEVATED_TRAIN,
    OPEN_CATEGORY_METRO,
    OPEN_CATEGORY_AIRPORT,
    OPEN_CATEGORY_SUPPLY,
    OPEN_CATEGORY_WASTE_DISPOSAL,
    OPEN_CATEGORY_FUNERAL,
    OPEN_CATEGORY_PUBLIC,
    OPEN_CATEGORY_RELIGION,
    OPEN_CATEGORY_DECORATION,
    OPEN_CATEGORY_FENCE,
    OPEN_CATEGORY_CHRISTMAS,
    OPEN_CATEGORY_FIREWORK,
    OPEN_CATEGORY_SERVICE,
    OPEN_CATEGORY_LANDMARK,
    OPEN_CATEGORY_PLUGINS,
    OPEN_CATEGORY_RCI_BUILDINGS,
    OPEN_CATEGORY_REMOVE(112),
    OPEN_CATEGORY_VIEW(55),
    OPEN_CATEGORY_ALERT(56),
    OPEN_MINIMAP(41),
    OPEN_MENU(82),
    OPEN_CONSOLE(68),
    OPEN_RCI(new int[]{75, 17, 73}, new int[]{0, 0, 0}),
    OPEN_DATE_INDICATOR(16),
    OPEN_BUDGET_INDICATOR(7),
    TURN_MAP_LEFT(45),
    TURN_MAP_RIGHT(33),
    NEXT_REGION(33),
    PREVIOUS_REGION(45),
    OPEN_BUILD_TOOL(30),
    OPEN_EYEDROPPER_TOOL(74),
    OPEN_RANK_INDICATOR(15),
    OPEN_CITYNAME_INDICATOR(13),
    OPEN_RATING_INDICATOR(14),
    SPEED_PAUSE(8),
    SPEED_SLOW(9),
    SPEED_NORMAL(10),
    SPEED_FAST(11),
    SPEED_FASTFAST(12),
    SPEED_PAUSE_UNPAUSE(62),
    CONTROL_CAR_LEFT(new int[]{29, 21}, new int[]{0, 0}),
    CONTROL_CAR_RIGHT(new int[]{32, 22}, new int[]{0, 0}),
    TOOL_ROAD_UP(92),
    TOOL_ROAD_DOWN(93),
    TOOL_BIGGER(92),
    TOOL_SMALLER(93),
    TOOL_NEXT_VARIANT(61),
    TOOL_PREVIOUS_VARIANT(61, 1),
    TOOL_BUILDING_BUILD(66),
    TOOL_UNDO(67),
    TOOL_REDO(67, 1),
    RESTART(46, 5),
    TOGGLE_NIGHT(42, 5),
    TOGGLE_WINTER(51, 5),
    TOGGLE_DEBUG(32, 5),
    TOGGLE_DARK_MODE(30, 5);

    public static Map<String, Integer> keyNameToKeyCode;
    public static KeyAction[] values;
    public final int[] defaultKeys;
    public final int[] defaultModifiers;
    public int[] keys;
    public int[] modifiers;

    public static boolean isValidKey(int i) {
        return (i <= 0 || i >= 256 || i == 82 || i == 111 || i == 129 || i == 130 || i == 59 || i == 60 || i == 57 || i == 58) ? false : true;
    }

    KeyAction() {
        this(0);
    }

    KeyAction(int i) {
        this(i, 0);
    }

    KeyAction(int i, int i2) {
        this(new int[]{i}, new int[]{i2});
    }

    KeyAction(int[] iArr, int[] iArr2) {
        iArr = (iArr == null || iArr.length == 0) ? new int[]{0} : iArr;
        this.defaultKeys = iArr;
        this.defaultModifiers = iArr2;
        this.keys = iArr;
        this.modifiers = iArr2;
    }

    public String getId() {
        return name().replace('_', ' ').toLowerCase(Locale.ENGLISH);
    }

    public void applyTo(Gadget gadget) {
        int i = 0;
        while (true) {
            int[] iArr = this.keys;
            if (i >= iArr.length) {
                return;
            }
            int i2 = iArr[i];
            int i3 = this.modifiers[i];
            if (i2 > 0) {
                gadget.addSensitiveKey(i2, i3);
            }
            i++;
        }
    }

    public int[] getKeys() {
        return this.keys;
    }

    public int[] getModifiers() {
        return this.modifiers;
    }

    public boolean isChanged() {
        return (Arrays.equals(this.keys, this.defaultKeys) && Arrays.equals(this.modifiers, this.defaultModifiers)) ? false : true;
    }

    public void reset() {
        this.keys = this.defaultKeys;
        this.modifiers = this.defaultModifiers;
    }

    public static void resetAll() {
        for (KeyAction keyAction : cachedValues()) {
            keyAction.reset();
        }
    }

    public void unassign() {
        set(0, 0);
    }

    public void set(int[] iArr, int[] iArr2) {
        if (iArr == null || iArr.length == 0) {
            this.keys = new int[]{0};
            this.modifiers = new int[]{0};
            return;
        }
        this.keys = iArr;
        this.modifiers = iArr2;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (i2 < 0 || i2 > 255) {
                iArr[i] = 0;
            }
        }
    }

    public void set(int i, int i2) {
        set(new int[]{i}, new int[]{i2});
    }

    public static void load(JSONObject jSONObject) throws JSONException {
        for (KeyAction keyAction : cachedValues()) {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(keyAction.getId());
            if (jSONArrayOptJSONArray != null) {
                IntList intList = new IntList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    int iKeyToInt = keyToInt(jSONArrayOptJSONArray.optString(i, ""));
                    if (iKeyToInt > 0) {
                        intList.add(iKeyToInt);
                    }
                }
                if (intList.isEmpty()) {
                    intList.add(0);
                }
                keyAction.keys = intList.toArray();
            } else if (jSONObject.has(keyAction.getId())) {
                String strOptString = jSONObject.optString(keyAction.getId(), "");
                keyAction.keys = new int[]{keyToInt(strOptString)};
                keyAction.modifiers = new int[]{keyToMod(strOptString)};
            } else {
                keyAction.keys = keyAction.defaultKeys;
                keyAction.modifiers = keyAction.defaultModifiers;
            }
        }
        clearKeyMapping();
    }

    public static void save(JSONObject jSONObject) throws JSONException {
        for (KeyAction keyAction : cachedValues()) {
            if (keyAction.keys.length == 1) {
                jSONObject.put(keyAction.getId(), keyToString(keyAction.keys[0], keyAction.modifiers[0]));
            } else {
                JSONArray jSONArray = new JSONArray();
                int i = 0;
                while (true) {
                    int[] iArr = keyAction.keys;
                    if (i >= iArr.length) {
                        break;
                    }
                    jSONArray.put(keyToString(iArr[i], keyAction.modifiers[i]));
                    i++;
                }
                jSONObject.put(keyAction.getId(), jSONArray);
            }
        }
    }

    public static String modToString(int i) {
        if (i == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if ((i & 1) != 0) {
            sb.append("ctrl+");
        }
        if ((i & 2) != 0) {
            sb.append("shift+");
        }
        if ((i & 4) != 0) {
            sb.append("alt+");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static int modToInt(String str) {
        if (str == null || str.isEmpty()) {
            return 0;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        boolean zContains = lowerCase.contains("ctrl");
        ?? r0 = zContains;
        if (lowerCase.contains("shift")) {
            r0 = (zContains ? 1 : 0) | 2;
        }
        return lowerCase.contains("alt") ? r0 | 4 : r0;
    }

    public static String keyToString(int i, int i2) {
        if (i == 0) {
            return "Not Assigned";
        }
        String string = Input.Keys.toString(i);
        if (string == null || string.isEmpty()) {
            string = "Key " + i;
        }
        if (i2 == 0) {
            return string;
        }
        return modToString(i2) + string;
    }

    public static int keyToInt(String str) {
        if (keyNameToKeyCode == null) {
            keyNameToKeyCode = new HashMap();
            for (int i = 0; i < 256; i++) {
                keyNameToKeyCode.put(keyToString(i, 0).toLowerCase(Locale.ENGLISH), Integer.valueOf(i));
            }
        }
        if (str.contains("+")) {
            str = str.split("\\+")[r5.length - 1];
        }
        Integer num = keyNameToKeyCode.get(str.toLowerCase(Locale.ENGLISH));
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    public static int keyToMod(String str) {
        if (str.contains("+")) {
            return modToInt(str);
        }
        return 0;
    }

    public static void clearKeyMapping() {
        keyNameToKeyCode = null;
    }

    public static KeyAction[] cachedValues() {
        if (values == null) {
            values = values();
        }
        return values;
    }

    public static String keysToString(int[] iArr, int[] iArr2) {
        if (iArr.length == 1 && iArr[0] == 0) {
            return keyToString(0, 0);
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iArr.length; i++) {
            sb.append("[ ");
            sb.append(keyToString(iArr[i], iArr2[i]));
            sb.append(" ]");
            if (i < iArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    @Override // java.lang.Enum
    public String toString() {
        return keysToString(this.keys, this.modifiers);
    }

    public String defaultToString() {
        return keysToString(this.defaultKeys, this.defaultModifiers);
    }
}
