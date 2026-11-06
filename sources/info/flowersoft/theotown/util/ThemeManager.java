package info.flowersoft.theotown.util;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.ThemeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Skin;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ThemeManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ThemeManager {
    public static final ThemeManager INSTANCE = new ThemeManager();
    public static String appliedThemeId;
    public static boolean init;
    public static boolean isDarkMode;

    public final String getAppliedThemeId() {
        return appliedThemeId;
    }

    public final boolean isDarkMode() {
        return isDarkMode;
    }

    public final void update() {
        ThemeDraft themeDraft;
        boolean zIsDark;
        Skin skinCopyAll;
        Skin skin;
        String str = Settings.themeId;
        if (str == null || (themeDraft = (ThemeDraft) Drafts.get(str, ThemeDraft.class)) == null || !themeDraft.active || !themeDraft.loaded) {
            themeDraft = null;
        }
        int i = Settings.theme;
        if (i != 0) {
            zIsDark = i != 1 ? TheoTown.runtimeFeatures.prefersDarkMode() : true;
        } else {
            zIsDark = false;
        }
        if (themeDraft != null) {
            zIsDark = themeDraft.isDark();
        }
        String str2 = themeDraft != null ? themeDraft.id : null;
        if (init && Intrinsics.areEqual(appliedThemeId, str2) && isDarkMode == zIsDark && Resources.skin != null) {
            return;
        }
        if (Resources.skin != null) {
            Skin skin2 = Resources.skinLight;
            Skin skin3 = Resources.skinDark;
            if (themeDraft == null || (skin = themeDraft.getSkin()) == null || (skinCopyAll = skin.copyAll()) == null) {
                if (zIsDark) {
                    skin2 = skin3;
                }
                skinCopyAll = skin2.copyAll();
            }
            Resources.skin = skinCopyAll;
            appliedThemeId = str2;
            init = true;
        }
        isDarkMode = zIsDark;
        TheoTown.runtimeFeatures.applyDarkTheme(zIsDark);
    }

    public final void reset() {
        appliedThemeId = null;
        isDarkMode = false;
        init = false;
    }

    public final void transformColorInplace(Color color) {
        Intrinsics.checkNotNullParameter(color, "color");
        if (isDarkMode) {
            Skin skin = Resources.skin;
            Color color2 = Colors.WHITE;
            if (Intrinsics.areEqual(color, color2)) {
                return;
            }
            if (Intrinsics.areEqual(color, Colors.BLACK)) {
                color.setTo(skin.cText);
            } else {
                color.lerp(color2, 0.5f);
            }
        }
    }

    public final Color transformColor(Color color) {
        Intrinsics.checkNotNullParameter(color, "color");
        if (!isDarkMode) {
            return color;
        }
        Color colorCopy = color.copy();
        transformColorInplace(colorCopy);
        Intrinsics.checkNotNullExpressionValue(colorCopy, "also(...)");
        return colorCopy;
    }
}
