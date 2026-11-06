package info.flowersoft.theotown.draftloader;

import info.flowersoft.theotown.draft.ThemeDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.json.JSONException;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.gui.Skin;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ThemeDraftLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ThemeDraftLoader extends DraftLoader {
    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public String[] getLoadingTags() {
        return new String[]{"theme"};
    }

    @Override // info.flowersoft.theotown.draftloader.DraftLoader
    public ThemeDraft load() throws JSONException {
        ThemeDraft themeDraft = new ThemeDraft();
        loadDefaults(themeDraft);
        String strOptString = this.src.optString("base", null);
        if (strOptString == null || strOptString.length() == 0) {
            themeDraft.setDark(this.src.optBoolean("dark", false));
            Skin skin = themeDraft.isDark() ? Resources.skinDark : Resources.skinLight;
            Intrinsics.checkNotNull(skin);
            themeDraft.setSkin(Skin.copy$default(skin, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4194303, null));
        } else {
            ThemeDraft themeDraft2 = (ThemeDraft) Drafts.getOrThrow(strOptString, ThemeDraft.class);
            themeDraft.setDark(this.src.optBoolean("dark", themeDraft2.isDark()));
            themeDraft.setSkin(Skin.copy$default(themeDraft2.getSkin(), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4194303, null));
        }
        ThemeDraft themeDraft3 = (ThemeDraft) Drafts.get(themeDraft.id, ThemeDraft.class);
        if (themeDraft3 != null) {
            List<ThemeDraft> THEMES = Drafts.THEMES;
            Intrinsics.checkNotNullExpressionValue(THEMES, "THEMES");
            THEMES.remove(themeDraft3);
        }
        if (themeDraft.ordinal == Integer.MIN_VALUE) {
            themeDraft.ordinal = Drafts.THEMES.size();
        }
        Drafts.THEMES.add(themeDraft);
        loadSkin(themeDraft.getSkin(), themeDraft);
        return themeDraft;
    }

    public final void loadSkin(Skin skin, ThemeDraft themeDraft) throws JSONException {
        Color colorOptColor = optColor("text color", skin.cText);
        Intrinsics.checkNotNullExpressionValue(colorOptColor, "optColor(...)");
        skin.cText = colorOptColor;
        Color colorOptColor2 = optColor("selected text color", skin.cTextSelected);
        Intrinsics.checkNotNullExpressionValue(colorOptColor2, "optColor(...)");
        skin.cTextSelected = colorOptColor2;
        Color colorOptColor3 = optColor("secondary text color", skin.cTextSecondary);
        Intrinsics.checkNotNullExpressionValue(colorOptColor3, "optColor(...)");
        skin.cTextSecondary = colorOptColor3;
        Color colorOptColor4 = optColor("accent text color", skin.cTextAccent);
        Intrinsics.checkNotNullExpressionValue(colorOptColor4, "optColor(...)");
        skin.cTextAccent = colorOptColor4;
        Color colorOptColor5 = optColor("red text color", skin.cTextRed);
        Intrinsics.checkNotNullExpressionValue(colorOptColor5, "optColor(...)");
        skin.cTextRed = colorOptColor5;
        Color colorOptColor6 = optColor("green text color", skin.cTextGreen);
        Intrinsics.checkNotNullExpressionValue(colorOptColor6, "optColor(...)");
        skin.cTextGreen = colorOptColor6;
        Color colorOptColor7 = optColor("yellow text color", skin.cTextYellow);
        Intrinsics.checkNotNullExpressionValue(colorOptColor7, "optColor(...)");
        skin.cTextYellow = colorOptColor7;
        Color colorOptColor8 = optColor("orange text color", skin.cTextOrange);
        Intrinsics.checkNotNullExpressionValue(colorOptColor8, "optColor(...)");
        skin.cTextOrange = colorOptColor8;
        Color colorOptColor9 = optColor("background color", skin.cBg);
        Intrinsics.checkNotNullExpressionValue(colorOptColor9, "optColor(...)");
        skin.cBg = colorOptColor9;
        Color colorOptColor10 = optColor("item background color 0", skin.cItemBg0);
        Intrinsics.checkNotNullExpressionValue(colorOptColor10, "optColor(...)");
        skin.cItemBg0 = colorOptColor10;
        Color colorOptColor11 = optColor("item background color 1", skin.cItemBg1);
        Intrinsics.checkNotNullExpressionValue(colorOptColor11, "optColor(...)");
        skin.cItemBg1 = colorOptColor11;
        Color colorOptColor12 = optColor("menu background color", skin.cMenuBg);
        Intrinsics.checkNotNullExpressionValue(colorOptColor12, "optColor(...)");
        skin.cMenuBg = colorOptColor12;
        Color colorOptColor13 = optColor("menu item color", skin.cMenuItem);
        Intrinsics.checkNotNullExpressionValue(colorOptColor13, "optColor(...)");
        skin.cMenuItem = colorOptColor13;
        Color colorOptColor14 = optColor("menu text color", skin.cMenuText);
        Intrinsics.checkNotNullExpressionValue(colorOptColor14, "optColor(...)");
        skin.cMenuText = colorOptColor14;
        Color colorOptColor15 = optColor("menu title color", skin.cMenuTitle);
        Intrinsics.checkNotNullExpressionValue(colorOptColor15, "optColor(...)");
        skin.cMenuTitle = colorOptColor15;
        Color colorOptColor16 = optColor("window title color", skin.cWindowTitle);
        Intrinsics.checkNotNullExpressionValue(colorOptColor16, "optColor(...)");
        skin.cWindowTitle = colorOptColor16;
        Color colorOptColor17 = optColor("indicator rank color", skin.cIndicatorRank);
        Intrinsics.checkNotNullExpressionValue(colorOptColor17, "optColor(...)");
        skin.cIndicatorRank = colorOptColor17;
        Color colorOptColor18 = optColor("indicator text color", skin.cIndicatorText);
        Intrinsics.checkNotNullExpressionValue(colorOptColor18, "optColor(...)");
        skin.cIndicatorText = colorOptColor18;
        Color colorOptColor19 = optColor("indicator text green color", skin.cIndicatorTextGreen);
        Intrinsics.checkNotNullExpressionValue(colorOptColor19, "optColor(...)");
        skin.cIndicatorTextGreen = colorOptColor19;
        Color colorOptColor20 = optColor("indicator text red color", skin.cIndicatorTextRed);
        Intrinsics.checkNotNullExpressionValue(colorOptColor20, "optColor(...)");
        skin.cIndicatorTextRed = colorOptColor20;
        Color colorOptColor21 = optColor("indicator text yellow color", skin.cIndicatorTextYellow);
        Intrinsics.checkNotNullExpressionValue(colorOptColor21, "optColor(...)");
        skin.cIndicatorTextYellow = colorOptColor21;
        Color colorOptColor22 = optColor("indicator text uber color", skin.cIndicatorTextUber);
        Intrinsics.checkNotNullExpressionValue(colorOptColor22, "optColor(...)");
        skin.cIndicatorTextUber = colorOptColor22;
        Color colorOptColor23 = optColor("indicator selection color", skin.cIndicatorSelection);
        Intrinsics.checkNotNullExpressionValue(colorOptColor23, "optColor(...)");
        skin.cIndicatorSelection = colorOptColor23;
        skin.npPanel = loadNinePatch("panel frame", themeDraft, skin.npPanel);
        skin.npWindow = loadNinePatch("window frame", themeDraft, skin.npWindow);
        skin.npButton = loadNinePatch("button frame", themeDraft, skin.npButton);
        skin.npButtonDown = loadNinePatch("button down frame", themeDraft, skin.npButtonDown);
        skin.npListItemSelected = loadNinePatch("list item selected frame", themeDraft, skin.npListItemSelected);
        skin.npListBox = loadNinePatch("list box frame", themeDraft, skin.npListBox);
        skin.npNotificationBar = loadNinePatch("notification bar frame", themeDraft, skin.npNotificationBar);
        skin.npListItemDefault = loadNinePatch("list item frame", themeDraft, skin.npListItemDefault);
        skin.npButtonMarked = loadNinePatch("button marked frame", themeDraft, skin.npButtonMarked);
        skin.npProgressBar = loadNinePatch("progress bar frame", themeDraft, skin.npProgressBar);
        skin.npProgressBarFilled = loadNinePatch("progress bar filled frame", themeDraft, skin.npProgressBarFilled);
        skin.npRect = loadNinePatch("rect frame", themeDraft, skin.npRect);
        skin.npRectShadow = loadNinePatch("rect shadow frame", themeDraft, skin.npRectShadow);
        skin.npWhiteRectBordered = loadNinePatch("white rect bordered frame", themeDraft, skin.npWhiteRectBordered);
        skin.npWhiteRect = loadNinePatch("white rect frame", themeDraft, skin.npWhiteRect);
        skin.npWhiteRectEmpty = loadNinePatch("white rect empty frame", themeDraft, skin.npWhiteRectEmpty);
        skin.npButtonGold = loadNinePatches("button gold frame", themeDraft, skin.npButtonGold);
        skin.npButtonGreen = loadNinePatches("button green frame", themeDraft, skin.npButtonGreen);
        skin.npButtonBlue = loadNinePatch("button blue frame", themeDraft, skin.npButtonBlue);
        skin.npButtonBlueDown = loadNinePatch("button blue down frame", themeDraft, skin.npButtonBlueDown);
        skin.npIndicator = loadNinePatch("indicator frame", themeDraft, skin.npIndicator);
        skin.fCheckboxOff = loadFrame("checkbox off frame", themeDraft, skin.fCheckboxOff);
        skin.fCheckboxOn = loadFrame("checkbox on frame", themeDraft, skin.fCheckboxOn);
        skin.fRadioOff = loadFrame("radio off frame", themeDraft, skin.fRadioOff);
        skin.fRadioOn = loadFrame("radio on frame", themeDraft, skin.fRadioOn);
        skin.fCloseButton = loadFrame("close button frame", themeDraft, skin.fCloseButton);
    }

    public final int loadFrame(String str, ThemeDraft themeDraft, int i) throws JSONException {
        int[] iArrLoadFrames = loadFrames(str, str + 's', ImageHandleResolver.TOP_LEFT, themeDraft, (int[]) null);
        if (iArrLoadFrames == null) {
            return i;
        }
        if (iArrLoadFrames.length == 0) {
            throw new IllegalArgumentException(("Frame " + str + " must define at least one frame").toString());
        }
        return iArrLoadFrames[0];
    }

    public final int loadNinePatch(String str, ThemeDraft themeDraft, int i) throws JSONException {
        int[] iArrLoadFrames = loadFrames(str, str + 's', ImageHandleResolver.TOP_LEFT, themeDraft, (int[]) null);
        if (iArrLoadFrames == null) {
            return i;
        }
        if (iArrLoadFrames.length < 9) {
            throw new IllegalArgumentException(("NinePatch " + str + " must define at least 9 frames").toString());
        }
        Iterable indices = ArraysKt___ArraysKt.getIndices(iArrLoadFrames);
        if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
            Iterator it = indices.iterator();
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                if (iArrLoadFrames[iNextInt] != iArrLoadFrames[(iNextInt / 9) * 9] + (iNextInt % 9)) {
                    throw new IllegalArgumentException(("NinePatch " + str + " frames must be consecutive").toString());
                }
            }
        }
        Resources.IMAGE_WORLD.setType(iArrLoadFrames[0], 1, iArrLoadFrames.length);
        return iArrLoadFrames[0];
    }

    public final int[] loadNinePatches(String str, ThemeDraft themeDraft, int[] iArr) throws JSONException {
        int[] iArrLoadFrames = loadFrames(str, str + 's', ImageHandleResolver.TOP_LEFT, themeDraft, (int[]) null);
        if (iArrLoadFrames == null) {
            return iArr;
        }
        if (iArrLoadFrames.length < 9) {
            throw new IllegalArgumentException(("NinePatch " + str + " must define at least 9 frames").toString());
        }
        Iterable indices = ArraysKt___ArraysKt.getIndices(iArrLoadFrames);
        if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
            Iterator it = indices.iterator();
            while (it.hasNext()) {
                int iNextInt = ((IntIterator) it).nextInt();
                if (iArrLoadFrames[iNextInt] != iArrLoadFrames[(iNextInt / 9) * 9] + (iNextInt % 9)) {
                    throw new IllegalArgumentException(("NinePatch " + str + " frames must be consecutive").toString());
                }
            }
        }
        Resources.IMAGE_WORLD.setType(iArrLoadFrames[0], 1, iArrLoadFrames.length);
        int length = iArrLoadFrames.length / 9;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = iArrLoadFrames[i * 9];
        }
        return iArr2;
    }
}
