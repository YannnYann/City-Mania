package info.flowersoft.theotown.draftloader;

import com.ironsource.C3522b4;
import com.ironsource.C3670j8;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class Generator {
    public static Generator instance;
    public final Map<String, String> LIGHT_DEFINITIONS;

    public Generator() {
        HashMap map = new HashMap();
        this.LIGHT_DEFINITIONS = map;
        map.put("$genres01variant3", "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18}]");
        map.put("$genres01variant2", (String) map.get("$genres01variant3"));
        map.put("$genres01variant5", "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36}]");
        map.put("$genres01variant4", (String) map.get("$genres01variant5"));
        map.put("$genres01variant7", "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-49}, {\"id\":\"1x2l\", \"x\":10, \"y\":-48}, {\"id\":\"2x2l\", \"x\":13, \"y\":-46},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-44}, {\"id\":\"2x2l\", \"x\":25, \"y\":-41}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-41},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-42},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-55}, {\"id\":\"1x2l\", \"x\":10, \"y\":-54}, {\"id\":\"2x2l\", \"x\":13, \"y\":-52},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-50}, {\"id\":\"2x2l\", \"x\":25, \"y\":-47}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-47},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-48},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-61}, {\"id\":\"1x2l\", \"x\":10, \"y\":-60}, {\"id\":\"2x2l\", \"x\":13, \"y\":-58},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-56}, {\"id\":\"2x2l\", \"x\":25, \"y\":-53}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-53},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-54}]");
        map.put("$genres01variant6", (String) map.get("$genres01variant7"));
        map.put("$genres01variant9", "[{\"id\":\"2x2l\", \"x\":7, \"y\":-7}, {\"id\":\"1x2l\", \"x\":10, \"y\":-6}, {\"id\":\"2x2l\", \"x\":13, \"y\":-4},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-2}, {\"id\":\"stair_nw\", \"x\":38, \"y\":1}, {\"id\":\"1x2l\", \"x\":41, \"y\":0},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-13}, {\"id\":\"1x2l\", \"x\":10, \"y\":-12}, {\"id\":\"2x2l\", \"x\":13, \"y\":-10},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-8}, {\"id\":\"2x2l\", \"x\":25, \"y\":-5}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-5},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-6},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-19}, {\"id\":\"1x2l\", \"x\":10, \"y\":-18}, {\"id\":\"2x2l\", \"x\":13, \"y\":-16},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-14}, {\"id\":\"2x2l\", \"x\":25, \"y\":-11}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-11},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-12},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-25}, {\"id\":\"1x2l\", \"x\":10, \"y\":-24}, {\"id\":\"2x2l\", \"x\":13, \"y\":-22},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-20}, {\"id\":\"2x2l\", \"x\":25, \"y\":-17}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-17},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-18},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-31}, {\"id\":\"1x2l\", \"x\":10, \"y\":-30}, {\"id\":\"2x2l\", \"x\":13, \"y\":-28},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-26}, {\"id\":\"2x2l\", \"x\":25, \"y\":-23}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-23},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-24},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-37}, {\"id\":\"1x2l\", \"x\":10, \"y\":-36}, {\"id\":\"2x2l\", \"x\":13, \"y\":-34},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-32}, {\"id\":\"2x2l\", \"x\":25, \"y\":-29}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-29},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-30},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-43}, {\"id\":\"1x2l\", \"x\":10, \"y\":-42}, {\"id\":\"2x2l\", \"x\":13, \"y\":-40},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-38}, {\"id\":\"2x2l\", \"x\":25, \"y\":-35}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-35},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-36},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-49}, {\"id\":\"1x2l\", \"x\":10, \"y\":-48}, {\"id\":\"2x2l\", \"x\":13, \"y\":-46},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-44}, {\"id\":\"2x2l\", \"x\":25, \"y\":-41}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-41},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-42},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-55}, {\"id\":\"1x2l\", \"x\":10, \"y\":-54}, {\"id\":\"2x2l\", \"x\":13, \"y\":-52},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-50}, {\"id\":\"2x2l\", \"x\":25, \"y\":-47}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-47},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-48},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-61}, {\"id\":\"1x2l\", \"x\":10, \"y\":-60}, {\"id\":\"2x2l\", \"x\":13, \"y\":-58},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-56}, {\"id\":\"2x2l\", \"x\":25, \"y\":-53}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-53},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-54},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-67}, {\"id\":\"1x2l\", \"x\":10, \"y\":-66}, {\"id\":\"2x2l\", \"x\":13, \"y\":-64},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-62}, {\"id\":\"2x2l\", \"x\":25, \"y\":-59}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-59},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-60},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-73}, {\"id\":\"1x2l\", \"x\":10, \"y\":-72}, {\"id\":\"2x2l\", \"x\":13, \"y\":-70},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-68}, {\"id\":\"2x2l\", \"x\":25, \"y\":-65}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-65},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-66},\n{\"id\":\"2x2l\", \"x\":7, \"y\":-79}, {\"id\":\"1x2l\", \"x\":10, \"y\":-78}, {\"id\":\"2x2l\", \"x\":13, \"y\":-76},\n{\"id\":\"2x2l\", \"x\":17, \"y\":-74}, {\"id\":\"2x2l\", \"x\":25, \"y\":-71}, {\"id\":\"stair_nw\", \"x\":38, \"y\":-71},\n{\"id\":\"1x2l\", \"x\":41, \"y\":-72}]");
        map.put("$genres01variant8", (String) map.get("$genres01variant9"));
        map.put("$genres02variant0", C3522b4.j.d + "{\"id\":\"cutelamp\", \"x\":2, \"y\":-8}, {\"id\":\"cutelamp\", \"x\":30, \"y\":5}, {\"id\":\"cutelamp\", \"x\":56, \"y\":-8}, {\"id\":\"1x2l\", \"x\":25, \"y\":-1}, {\"id\":\"1x1l\", \"x\":42, \"y\":-4},{\"id\":\"1x2l\", \"x\":13, \"y\":-13}, {\"id\":\"1x1l\", \"x\":19, \"y\":-16}, {\"id\":\"1x2l\", \"x\":27, \"y\":-12}, {\"id\":\"1x1l\", \"x\":42, \"y\":-10}, {\"id\":\"1x2l\", \"x\":48, \"y\":-19}" + C3522b4.j.e);
        map.put("$genres02variant1", C3522b4.j.d + "{\"id\":\"cutelamp\", \"x\":2, \"y\":-8}, {\"id\":\"cutelamp\", \"x\":30, \"y\":5}, {\"id\":\"cutelamp\", \"x\":56, \"y\":-8}, {\"id\":\"1x2l\", \"x\":25, \"y\":-1}, {\"id\":\"1x1l\", \"x\":42, \"y\":-4},{\"id\":\"1x2l\", \"x\":13, \"y\":-13}, {\"id\":\"1x1l\", \"x\":19, \"y\":-16}, {\"id\":\"1x2l\", \"x\":27, \"y\":-12}, {\"id\":\"1x1l\", \"x\":42, \"y\":-10}, {\"id\":\"1x2l\", \"x\":48, \"y\":-19}" + C3522b4.j.e);
        map.put("$genres02variant2", C3522b4.j.d + "{\"id\":\"cutelamp\", \"x\":2, \"y\":-8}, {\"id\":\"cutelamp\", \"x\":30, \"y\":5}, {\"id\":\"cutelamp\", \"x\":56, \"y\":-8}, {\"id\":\"1x2l\", \"x\":25, \"y\":-1}, {\"id\":\"1x1l\", \"x\":42, \"y\":-4},{\"id\":\"1x2l\", \"x\":13, \"y\":-13}, {\"id\":\"1x1l\", \"x\":19, \"y\":-16}, {\"id\":\"1x2l\", \"x\":27, \"y\":-12}, {\"id\":\"1x1l\", \"x\":42, \"y\":-10}, {\"id\":\"1x2l\", \"x\":48, \"y\":-19},{\"id\":\"1x2l\", \"x\":13, \"y\":-25}, {\"id\":\"1x1l\", \"x\":19, \"y\":-40}, {\"id\":\"1x2l\", \"x\":27, \"y\":-24}, {\"id\":\"1x1l\", \"x\":42, \"y\":-22}, {\"id\":\"1x2l\", \"x\":48, \"y\":-31}" + C3522b4.j.e);
        map.put("$genres02variant3", C3522b4.j.d + "{\"id\":\"cutelamp\", \"x\":2, \"y\":-8}, {\"id\":\"cutelamp\", \"x\":30, \"y\":5}, {\"id\":\"cutelamp\", \"x\":56, \"y\":-8}, {\"id\":\"1x2l\", \"x\":25, \"y\":-1}, {\"id\":\"1x1l\", \"x\":42, \"y\":-4},{\"id\":\"1x2l\", \"x\":13, \"y\":-13}, {\"id\":\"1x1l\", \"x\":19, \"y\":-16}, {\"id\":\"1x2l\", \"x\":27, \"y\":-12}, {\"id\":\"1x1l\", \"x\":42, \"y\":-10}, {\"id\":\"1x2l\", \"x\":48, \"y\":-19},{\"id\":\"1x2l\", \"x\":13, \"y\":-25}, {\"id\":\"1x1l\", \"x\":19, \"y\":-40}, {\"id\":\"1x2l\", \"x\":27, \"y\":-24}, {\"id\":\"1x1l\", \"x\":42, \"y\":-22}, {\"id\":\"1x2l\", \"x\":48, \"y\":-31},{\"id\":\"1x2l\", \"x\":13, \"y\":-37}, {\"id\":\"1x1l\", \"x\":19, \"y\":-52}, {\"id\":\"1x2l\", \"x\":27, \"y\":-36}, {\"id\":\"1x1l\", \"x\":42, \"y\":-34}, {\"id\":\"1x2l\", \"x\":48, \"y\":-43}" + C3522b4.j.e);
        map.put("$gencom01variant0", "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"special7_com\", \"x\":2, \"y\":-28,\"night light probability\": 1}]");
        map.put("$gencom01variant2", "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"special8_com\", \"x\":2, \"y\":-49,\"night light probability\": 1}]");
        map.put("$gencom01variant4", "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-43}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-38},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-52}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-47},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-42}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-51},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-52}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-61},\n  {\"id\":\"special7_com\", \"x\":2, \"y\":-64,\"night light probability\": 1}]");
        map.put("$gencom01variant6", "[{\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-16}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-11}, \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-25}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-20},\n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-34}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-29},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-43}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-38},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-52}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-47},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-61}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-56},  \n  {\"id\":\"4x3l_left_1\", \"x\":5, \"y\":-70}, {\"id\":\"4x3l_left_1\", \"x\":15, \"y\":-65},  \n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-6}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-15},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-24}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-33},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-42}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-51},\n  {\"id\":\"special_axiotower\", \"x\":25, \"y\":-60}, {\"id\":\"special_axiotower\", \"x\":25, \"y\":-69},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-16}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-25},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-34}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-43},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-52}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-61},\n  {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-70}, {\"id\":\"4x3l_right_1\", \"x\":52, \"y\":-79},\n  {\"id\":\"special8_com\", \"x\":2, \"y\":-85,\"night light probability\": 1}]");
    }

    public void addLightDefinitions(JSONArray jSONArray) throws JSONException {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ids");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONArrayOptJSONArray.put(jSONObject.getString("ids"));
            }
            String string = jSONObject.getJSONArray("animation").toString();
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                String string2 = jSONArrayOptJSONArray.getString(i2);
                if (this.LIGHT_DEFINITIONS.containsKey(string2)) {
                    throw new IllegalStateException("Generic building of id " + string2 + " has a light definition already, please remove one of the occurrences");
                }
                this.LIGHT_DEFINITIONS.put(string2, string);
            }
        }
    }

    public final void applyLightDefinitions(JSONObject jSONObject) throws JSONException {
        String string = jSONObject.getString(C3670j8.x);
        if (this.LIGHT_DEFINITIONS.containsKey(string)) {
            JSONArray jSONArray = new JSONArray(this.LIGHT_DEFINITIONS.get(string));
            JSONArray jSONArray2 = jSONObject.getJSONArray("animation");
            for (int i = 0; i < jSONArray.length(); i++) {
                jSONArray2.put(jSONArray.get(i));
            }
        }
    }

    public String generateResidentialContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            try {
                List<JSONObject> listGenerateCompBuildings = generateCompBuildings("$genres00", 3, 3, "residential", 2, 22, 6, 0, 13, 3, true, 6, 1, 0);
                Generator generator = this;
                try {
                    listGenerateCompBuildings.addAll(generator.generateCompBuildings("$genres01", 2, 2, "residential", 1, 6, 18, 1, 4, 1, false, 4, 2, 0));
                    generator = this;
                    listGenerateCompBuildings.addAll(generator.generateCompBuildings("$genres02", 2, 2, "residential", 2, 8, 12, 0, 4, 1, true, 0, 1, 16));
                    for (int i = 0; i < listGenerateCompBuildings.size(); i++) {
                        JSONObject jSONObject = listGenerateCompBuildings.get(i);
                        try {
                            applyLightDefinitions(jSONObject);
                            jSONArray.put(jSONObject);
                        } catch (JSONException e) {
                            e = e;
                            e.printStackTrace();
                            return null;
                        }
                    }
                    return jSONArray.toString(4);
                } catch (JSONException e2) {
                    e = e2;
                }
            } catch (JSONException e3) {
                e = e3;
            }
        } catch (JSONException e4) {
            e = e4;
        }
    }

    public String generateCommercialContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            try {
                List<JSONObject> listGenerateCompBuildings = generateCompBuildings("$gencom00", 4, 4, "commercial", 3, 52, 5, 0, 13, 3, true, 0, 1, 0);
                try {
                    listGenerateCompBuildings.addAll(generateCompBuildings("$gencom01", 2, 2, "commercial", 1, 11, 9, 0, 4, 2, false, 2, 1, 16));
                    for (int i = 0; i < listGenerateCompBuildings.size(); i++) {
                        JSONObject jSONObject = listGenerateCompBuildings.get(i);
                        try {
                            applyLightDefinitions(jSONObject);
                            jSONArray.put(jSONObject);
                        } catch (JSONException e) {
                            e = e;
                            e.printStackTrace();
                            return null;
                        }
                    }
                    return jSONArray.toString(4);
                } catch (JSONException e2) {
                    e = e2;
                }
            } catch (JSONException e3) {
                e = e3;
            }
        } catch (JSONException e4) {
            e = e4;
        }
    }

    public List<JSONObject> generateCompBuildings(String str, int i, int i2, String str2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, int i9, int i10, int i11) throws JSONException {
        String str3;
        int i12;
        String str4 = str;
        int i13 = i;
        int i14 = i10;
        String str5 = str4 + "baseplain00";
        String str6 = str4 + "basecolor0";
        String str7 = str4 + "compplain00";
        String str8 = str4 + "compcolor0";
        String str9 = str4 + "topplain00";
        String str10 = str4 + "topcolor0";
        ArrayList arrayList = new ArrayList();
        int i15 = 0;
        int i16 = 0;
        while (i15 < i7) {
            int i17 = 0;
            while (i17 < i14) {
                int i18 = i6 + (i8 * i15);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C3670j8.x, str4 + "variant" + ((i18 * i10) + i17));
                jSONObject.put("type", str2);
                jSONObject.put("width", i13);
                jSONObject.put("height", i2);
                jSONObject.put("level", i3);
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject2 = new JSONObject();
                int i19 = i15;
                jSONObject2.put("x", 0);
                jSONObject2.put("y", 0);
                jSONObject2.put("w", 0);
                jSONObject2.put("h", (i18 * i5) + (i * 16) + i4 + i11);
                jSONArray.put(jSONObject2);
                jSONObject.put("frames", jSONArray);
                JSONArray jSONArray2 = new JSONArray();
                int i20 = 0;
                if (z) {
                    addAnimationToDraft(jSONArray2, str5, 0, 0);
                }
                if (i9 > 0) {
                    addAnimationToDraft(jSONArray2, str6 + i16, 0, 0);
                }
                int i21 = 0 - i4;
                int i22 = 1;
                while (i22 <= i18) {
                    if (z) {
                        addAnimationToDraft(jSONArray2, str7, i20, i21);
                    }
                    if (i9 > 0) {
                        str3 = str5;
                        i12 = 0;
                        addAnimationToDraft(jSONArray2, str8 + i16, 0, i21);
                    } else {
                        str3 = str5;
                        i12 = i20;
                    }
                    i21 -= i5;
                    i22++;
                    i20 = i12;
                    str5 = str3;
                }
                String str11 = str5;
                int i23 = i20;
                if (z) {
                    addAnimationToDraft(jSONArray2, str9, i23, i21);
                }
                if (i9 > 0) {
                    addAnimationToDraft(jSONArray2, str10 + i16, i23, i21);
                }
                jSONObject.put("animation", jSONArray2);
                if (i9 > 0) {
                    i16 = (i16 + 1) % i9;
                }
                arrayList.add(jSONObject);
                i17++;
                str4 = str;
                i13 = i;
                i14 = i10;
                i15 = i19;
                str5 = str11;
            }
            i15++;
            str4 = str;
            i13 = i;
            i14 = i10;
            str5 = str5;
        }
        return arrayList;
    }

    public final void addAnimationToDraft(JSONArray jSONArray, String str, int i, int i2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(C3670j8.x, str);
        jSONObject.put("x", i);
        jSONObject.put("y", i2);
        jSONArray.put(jSONObject);
    }

    public static Generator getInstance() {
        if (instance == null) {
            instance = new Generator();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }
}
