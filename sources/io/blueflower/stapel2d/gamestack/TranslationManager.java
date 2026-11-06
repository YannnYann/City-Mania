package io.blueflower.stapel2d.gamestack;

import info.flowersoft.theotown.util.json.JSONObject;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public interface TranslationManager extends Translator {
    Locale getDefaultLocale();

    Locale getEffectiveLocale();

    Locale getSelectedLocale();

    void setLanguage(Locale locale, List<JSONObject> list);
}
