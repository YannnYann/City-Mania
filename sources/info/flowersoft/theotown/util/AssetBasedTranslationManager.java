package info.flowersoft.theotown.util;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.ObjectIntMap;
import com.badlogic.gdx.utils.ObjectMap;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.R;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes4.dex */
public class AssetBasedTranslationManager implements TranslationManager {
    public static final Locale defaultLocale = Locale.getDefault();
    public Locale effectiveLocale;
    public final ObjectMap<String, String> externalTranslationMap;
    public final FileResolver fileResolver;
    public final FileHandle indexFile;
    public Locale setLocale;
    public final String[] translations = new String[R.STRING_NAMES.length];
    public final ObjectIntMap<String> keyToTranslationMap = new ObjectIntMap<>();

    public interface FileResolver {
        FileHandle resolve(String str);
    }

    public AssetBasedTranslationManager(FileHandle fileHandle, FileResolver fileResolver) {
        int i = 1;
        while (true) {
            String[] strArr = R.STRING_NAMES;
            if (i < strArr.length) {
                this.keyToTranslationMap.put(strArr[i], i);
                i++;
            } else {
                this.externalTranslationMap = new ObjectMap<>();
                this.indexFile = fileHandle;
                this.fileResolver = fileResolver;
                TheoTown.analytics.writeToLog("translation " + defaultLocale);
                setLanguage(null, null);
                return;
            }
        }
    }

    @Override // io.blueflower.stapel2d.gamestack.Translator
    public String _translate(String str) {
        int i = this.keyToTranslationMap.get(str, 0);
        if (i > 0) {
            return this.translations[i];
        }
        return this.externalTranslationMap.get(str, null);
    }

    @Override // io.blueflower.stapel2d.gamestack.Translator
    public String translate(int i) {
        if (i < 1) {
            return null;
        }
        String[] strArr = this.translations;
        if (i < strArr.length) {
            return strArr[i];
        }
        return null;
    }

    @Override // io.blueflower.stapel2d.gamestack.Translator
    public boolean prefersRTL() {
        String language = getEffectiveLocale().getLanguage();
        return language.equals("ar") || language.equals("fa");
    }

    @Override // io.blueflower.stapel2d.gamestack.Translator
    public Locale getLocale() {
        return this.effectiveLocale;
    }

    public final JSONArray getPatchArr(JSONObject jSONObject, String str) {
        Object objOpt = jSONObject.opt(str);
        if (objOpt instanceof JSONArray) {
            return (JSONArray) objOpt;
        }
        if (!(objOpt instanceof JSONObject)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = (JSONObject) objOpt;
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                String string = jSONObject2.getString(next);
                if (string != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("name", next);
                    jSONObject3.put(C3522b4.i.X, string);
                    jSONArray.put(jSONObject3);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArray;
    }

    @Override // io.blueflower.stapel2d.gamestack.TranslationManager
    public void setLanguage(Locale locale, List<JSONObject> list) {
        this.setLocale = locale;
        Locale defaultLocale2 = locale != null ? locale : getDefaultLocale();
        this.effectiveLocale = defaultLocale2;
        if (locale == null) {
            locale = defaultLocale2;
        }
        if ("zh".equals(locale.getLanguage()) && !"".equals(locale.getCountry()) && !"HK".equals(locale.getCountry()) && !"CN".equals(locale.getCountry())) {
            locale = new Locale("zh", "tw");
        }
        Locale.setDefault(locale);
        int translationIndex = getTranslationIndex(locale);
        try {
            JSONObject jSONObject = new JSONObject(Files.readTextFile(this.indexFile));
            if (jSONObject.optLong("creation id") != 1793013302946L) {
                throw new RuntimeException("Translation file doesn't match class file");
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(this.fileResolver.resolve(jSONObject.optJSONArray("translation files").getString(translationIndex)).read()), StandardCharsets.UTF_8));
            JSONArray jSONArray = new JSONArray(bufferedReader.readLine());
            bufferedReader.close();
            for (int i = 1; i < jSONArray.length(); i++) {
                this.translations[i] = jSONArray.getString(i);
            }
            if (Gdx.app.getType() == Application.ApplicationType.Desktop) {
                activateTaggedTranslations("_onmouseinput");
            }
            Map<String, String> mapCollectPatches = list != null ? collectPatches(list, this.effectiveLocale) : null;
            if (mapCollectPatches != null) {
                applyPatches(mapCollectPatches);
            }
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        } catch (IOException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public final void activateTaggedTranslations(String str) {
        int i = 1;
        while (true) {
            String[] strArr = R.STRING_NAMES;
            if (i >= strArr.length) {
                return;
            }
            String str2 = strArr[i];
            if (str2.endsWith(str)) {
                int i2 = this.keyToTranslationMap.get(str2.substring(0, str2.length() - str.length()), -1);
                if (i2 > 0) {
                    String[] strArr2 = this.translations;
                    strArr2[i2] = strArr2[i];
                }
            }
            i++;
        }
    }

    public static int getTranslationIndex(Locale locale) {
        int i = 0;
        int i2 = 0;
        char c = 0;
        while (true) {
            String[] strArr = R.STRING_QUALIFIERS;
            if (i >= strArr.length) {
                return i2;
            }
            Locale localeForQualifier = getLocaleForQualifier(strArr[i]);
            if (localeForQualifier.getLanguage().equals(locale.getLanguage())) {
                char c2 = localeForQualifier.getCountry().equals(locale.getCountry()) ? (char) 2 : (char) 1;
                if (c2 > c) {
                    i2 = i;
                    c = c2;
                }
            }
            i++;
        }
    }

    public static Locale getLocaleForQualifier(String str) {
        String strReplace = str.replace('-', '_');
        Locale locale = Locale.ENGLISH;
        if (strReplace.toLowerCase(locale).equals("zh_rtw")) {
            strReplace = "zh_tw";
        }
        if (strReplace.toLowerCase(locale).equals("zh_rhk")) {
            strReplace = "zh_hk";
        }
        if (strReplace.toLowerCase(locale).equals("b+fil")) {
            strReplace = "fil";
        }
        String[] strArrSplit = strReplace.split("_");
        if (strArrSplit.length == 1) {
            return new Locale(strReplace);
        }
        return new Locale(strArrSplit[0], strArrSplit[1]);
    }

    public final void applyPatches(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            int i = this.keyToTranslationMap.get(key, 0);
            if (i > 0) {
                this.translations[i] = entry.getValue();
            } else {
                this.externalTranslationMap.put(key, entry.getValue());
            }
        }
    }

    public final Map<String, String> collectPatches(List<JSONObject> list, Locale locale) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            JSONArray patchArr = getPatchArr(list.get(i), "*");
            if (patchArr != null) {
                arrayList.add(patchArr);
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            JSONArray patchArr2 = getPatchArr(list.get(i2), locale.getLanguage());
            if (patchArr2 != null) {
                arrayList.add(patchArr2);
            }
        }
        if (locale.getCountry() != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                JSONArray patchArr3 = getPatchArr(list.get(i3), locale.getLanguage() + "-" + locale.getCountry().toLowerCase(Locale.ENGLISH));
                if (patchArr3 != null) {
                    arrayList.add(patchArr3);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            JSONArray jSONArray = (JSONArray) arrayList.get(i4);
            for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i5);
                if (jSONObjectOptJSONObject != null) {
                    map.put(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.optString(C3522b4.i.X));
                }
            }
        }
        return map;
    }

    @Override // io.blueflower.stapel2d.gamestack.TranslationManager
    public Locale getSelectedLocale() {
        return this.setLocale;
    }

    @Override // io.blueflower.stapel2d.gamestack.TranslationManager
    public Locale getEffectiveLocale() {
        Locale locale = this.setLocale;
        return locale == null ? getDefaultLocale() : locale;
    }

    @Override // io.blueflower.stapel2d.gamestack.TranslationManager
    public Locale getDefaultLocale() {
        return defaultLocale;
    }

    public static Locale getDefaultLocaleInit() {
        return defaultLocale;
    }
}
