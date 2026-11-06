package io.blueflower.stapel2d.gamestack;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public interface Translator {
    String _translate(String str);

    Locale getLocale();

    boolean prefersRTL();

    String translate(int i);
}
