package info.flowersoft.theotown.resources;

import info.flowersoft.theotown.util.JSONUtil;
import info.flowersoft.theotown.util.json.JSONArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class WordFilter {
    public static WordFilter instance;
    public final List<String> words = new ArrayList();

    public WordFilter() {
        JSONArray jSONArrayOptArray = JSONUtil.optArray(Resources.getSpecificConfig("wordfilter"), "words");
        for (int i = 0; i < jSONArrayOptArray.length(); i++) {
            String strOptString = jSONArrayOptArray.optString(i);
            if (strOptString != null && !strOptString.isEmpty()) {
                this.words.add(unify(strOptString));
            }
        }
    }

    public boolean isForbidden(String str) {
        boolean z;
        boolean z2;
        String strUnify = unify(str);
        for (int i = 0; i < this.words.size(); i++) {
            String strSubstring = this.words.get(i);
            if (strSubstring.charAt(0) == ' ') {
                strSubstring = strSubstring.substring(1);
                z = true;
            } else {
                z = false;
            }
            if (strSubstring.charAt(strSubstring.length() - 1) == ' ') {
                strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                z2 = true;
            } else {
                z2 = false;
            }
            for (int iIndexOf = strUnify.indexOf(strSubstring); iIndexOf >= 0; iIndexOf = strUnify.indexOf(strSubstring, iIndexOf + 1)) {
                if ((!z || iIndexOf == 0 || Character.isWhitespace(str.charAt(iIndexOf - 1))) && (!z2 || iIndexOf == str.length() - strSubstring.length() || Character.isWhitespace(str.charAt(strSubstring.length() + iIndexOf)))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String unify(String str) {
        return str.toLowerCase(Locale.ENGLISH).replace((char) 223, 's').replace('5', 's').replace('3', 'e').replace('0', 'o').replace('1', 'l').replace('i', 'l');
    }

    public static WordFilter getInstance() {
        if (instance == null) {
            instance = new WordFilter();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }
}
