package io.blueflower.stapel2d.gui;

import com.ironsource.mediationsdk.metadata.a;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Skin.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Skin {
    public Color cBg;
    public Color cIndicatorRank;
    public Color cIndicatorSelection;
    public Color cIndicatorText;
    public Color cIndicatorTextGreen;
    public Color cIndicatorTextRed;
    public Color cIndicatorTextUber;
    public Color cIndicatorTextYellow;
    public Color cItemBg0;
    public Color cItemBg1;
    public Color cMenuBg;
    public Color cMenuItem;
    public Color cMenuText;
    public Color cMenuTitle;
    public Color cText;
    public Color cTextAccent;
    public Color cTextGreen;
    public Color cTextOrange;
    public Color cTextRed;
    public Color cTextSecondary;
    public Color cTextSelected;
    public Color cTextYellow;
    public Color cWindowTitle;
    public Engine engine;
    public int fCheckboxOff;
    public int fCheckboxOn;
    public int fCloseButton;
    public int fRadioOff;
    public int fRadioOn;
    public Font fontBig;
    public Font fontDefault;
    public Font fontSmall;
    public Image img;
    public int npButton;
    public int npButtonBlue;
    public int npButtonBlueDown;
    public int npButtonDown;
    public int[] npButtonGold;
    public int[] npButtonGreen;
    public int npButtonMarked;
    public int npIndicator;
    public int npListBox;
    public int npListItemDefault;
    public int npListItemSelected;
    public int npNotificationBar;
    public int npPanel;
    public int npProgressBar;
    public int npProgressBarFilled;
    public int npRect;
    public int npRectShadow;
    public int npWhiteRect;
    public int npWhiteRectBordered;
    public int npWhiteRectEmpty;
    public int npWindow;

    public static /* synthetic */ Skin copy$default(Skin skin, Engine engine, Image image, Font font, Font font2, Font font3, Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, Color color17, Color color18, Color color19, Color color20, Color color21, Color color22, Color color23, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int[] iArr, int[] iArr2, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, Object obj) {
        return skin.copy((i25 & 1) != 0 ? skin.engine : engine, (i25 & 2) != 0 ? skin.img : image, (i25 & 4) != 0 ? skin.fontSmall : font, (i25 & 8) != 0 ? skin.fontDefault : font2, (i25 & 16) != 0 ? skin.fontBig : font3, (i25 & 32) != 0 ? skin.cText : color, (i25 & 64) != 0 ? skin.cTextSelected : color2, (i25 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? skin.cTextSecondary : color3, (i25 & 256) != 0 ? skin.cTextAccent : color4, (i25 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? skin.cTextRed : color5, (i25 & 1024) != 0 ? skin.cTextGreen : color6, (i25 & a.o) != 0 ? skin.cTextYellow : color7, (i25 & 4096) != 0 ? skin.cTextOrange : color8, (i25 & 8192) != 0 ? skin.cBg : color9, (i25 & 16384) != 0 ? skin.cItemBg0 : color10, (i25 & 32768) != 0 ? skin.cItemBg1 : color11, (i25 & 65536) != 0 ? skin.cMenuBg : color12, (i25 & 131072) != 0 ? skin.cMenuItem : color13, (i25 & 262144) != 0 ? skin.cMenuText : color14, (i25 & 524288) != 0 ? skin.cMenuTitle : color15, (i25 & 1048576) != 0 ? skin.cWindowTitle : color16, (i25 & 2097152) != 0 ? skin.cIndicatorRank : color17, (i25 & 4194304) != 0 ? skin.cIndicatorText : color18, (i25 & 8388608) != 0 ? skin.cIndicatorTextGreen : color19, (i25 & 16777216) != 0 ? skin.cIndicatorTextRed : color20, (i25 & 33554432) != 0 ? skin.cIndicatorTextYellow : color21, (i25 & 67108864) != 0 ? skin.cIndicatorTextUber : color22, (i25 & 134217728) != 0 ? skin.cIndicatorSelection : color23, (i25 & 268435456) != 0 ? skin.npPanel : i, (i25 & 536870912) != 0 ? skin.npWindow : i2, (i25 & 1073741824) != 0 ? skin.npButton : i3, (i25 & Integer.MIN_VALUE) != 0 ? skin.npButtonDown : i4, (i26 & 1) != 0 ? skin.npListItemSelected : i5, (i26 & 2) != 0 ? skin.npListBox : i6, (i26 & 4) != 0 ? skin.npNotificationBar : i7, (i26 & 8) != 0 ? skin.npListItemDefault : i8, (i26 & 16) != 0 ? skin.npButtonMarked : i9, (i26 & 32) != 0 ? skin.npProgressBar : i10, (i26 & 64) != 0 ? skin.npProgressBarFilled : i11, (i26 & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? skin.npRect : i12, (i26 & 256) != 0 ? skin.npRectShadow : i13, (i26 & EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE) != 0 ? skin.npWhiteRectBordered : i14, (i26 & 1024) != 0 ? skin.npWhiteRect : i15, (i26 & a.o) != 0 ? skin.npWhiteRectEmpty : i16, (i26 & 4096) != 0 ? skin.npButtonGold : iArr, (i26 & 8192) != 0 ? skin.npButtonGreen : iArr2, (i26 & 16384) != 0 ? skin.npButtonBlue : i17, (i26 & 32768) != 0 ? skin.npButtonBlueDown : i18, (i26 & 65536) != 0 ? skin.npIndicator : i19, (i26 & 131072) != 0 ? skin.fCheckboxOff : i20, (i26 & 262144) != 0 ? skin.fCheckboxOn : i21, (i26 & 524288) != 0 ? skin.fRadioOff : i22, (i26 & 1048576) != 0 ? skin.fRadioOn : i23, (i26 & 2097152) != 0 ? skin.fCloseButton : i24);
    }

    public final Engine component1() {
        return this.engine;
    }

    public final Color component10() {
        return this.cTextRed;
    }

    public final Color component11() {
        return this.cTextGreen;
    }

    public final Color component12() {
        return this.cTextYellow;
    }

    public final Color component13() {
        return this.cTextOrange;
    }

    public final Color component14() {
        return this.cBg;
    }

    public final Color component15() {
        return this.cItemBg0;
    }

    public final Color component16() {
        return this.cItemBg1;
    }

    public final Color component17() {
        return this.cMenuBg;
    }

    public final Color component18() {
        return this.cMenuItem;
    }

    public final Color component19() {
        return this.cMenuText;
    }

    public final Image component2() {
        return this.img;
    }

    public final Color component20() {
        return this.cMenuTitle;
    }

    public final Color component21() {
        return this.cWindowTitle;
    }

    public final Color component22() {
        return this.cIndicatorRank;
    }

    public final Color component23() {
        return this.cIndicatorText;
    }

    public final Color component24() {
        return this.cIndicatorTextGreen;
    }

    public final Color component25() {
        return this.cIndicatorTextRed;
    }

    public final Color component26() {
        return this.cIndicatorTextYellow;
    }

    public final Color component27() {
        return this.cIndicatorTextUber;
    }

    public final Color component28() {
        return this.cIndicatorSelection;
    }

    public final int component29() {
        return this.npPanel;
    }

    public final Font component3() {
        return this.fontSmall;
    }

    public final int component30() {
        return this.npWindow;
    }

    public final int component31() {
        return this.npButton;
    }

    public final int component32() {
        return this.npButtonDown;
    }

    public final int component33() {
        return this.npListItemSelected;
    }

    public final int component34() {
        return this.npListBox;
    }

    public final int component35() {
        return this.npNotificationBar;
    }

    public final int component36() {
        return this.npListItemDefault;
    }

    public final int component37() {
        return this.npButtonMarked;
    }

    public final int component38() {
        return this.npProgressBar;
    }

    public final int component39() {
        return this.npProgressBarFilled;
    }

    public final Font component4() {
        return this.fontDefault;
    }

    public final int component40() {
        return this.npRect;
    }

    public final int component41() {
        return this.npRectShadow;
    }

    public final int component42() {
        return this.npWhiteRectBordered;
    }

    public final int component43() {
        return this.npWhiteRect;
    }

    public final int component44() {
        return this.npWhiteRectEmpty;
    }

    public final int[] component45() {
        return this.npButtonGold;
    }

    public final int[] component46() {
        return this.npButtonGreen;
    }

    public final int component47() {
        return this.npButtonBlue;
    }

    public final int component48() {
        return this.npButtonBlueDown;
    }

    public final int component49() {
        return this.npIndicator;
    }

    public final Font component5() {
        return this.fontBig;
    }

    public final int component50() {
        return this.fCheckboxOff;
    }

    public final int component51() {
        return this.fCheckboxOn;
    }

    public final int component52() {
        return this.fRadioOff;
    }

    public final int component53() {
        return this.fRadioOn;
    }

    public final int component54() {
        return this.fCloseButton;
    }

    public final Color component6() {
        return this.cText;
    }

    public final Color component7() {
        return this.cTextSelected;
    }

    public final Color component8() {
        return this.cTextSecondary;
    }

    public final Color component9() {
        return this.cTextAccent;
    }

    public final Skin copy(Engine engine, Image img, Font fontSmall, Font fontDefault, Font fontBig, Color cText, Color cTextSelected, Color cTextSecondary, Color cTextAccent, Color cTextRed, Color cTextGreen, Color cTextYellow, Color cTextOrange, Color cBg, Color cItemBg0, Color cItemBg1, Color cMenuBg, Color cMenuItem, Color cMenuText, Color cMenuTitle, Color cWindowTitle, Color cIndicatorRank, Color cIndicatorText, Color cIndicatorTextGreen, Color cIndicatorTextRed, Color cIndicatorTextYellow, Color cIndicatorTextUber, Color cIndicatorSelection, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int[] npButtonGold, int[] npButtonGreen, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(fontSmall, "fontSmall");
        Intrinsics.checkNotNullParameter(fontDefault, "fontDefault");
        Intrinsics.checkNotNullParameter(fontBig, "fontBig");
        Intrinsics.checkNotNullParameter(cText, "cText");
        Intrinsics.checkNotNullParameter(cTextSelected, "cTextSelected");
        Intrinsics.checkNotNullParameter(cTextSecondary, "cTextSecondary");
        Intrinsics.checkNotNullParameter(cTextAccent, "cTextAccent");
        Intrinsics.checkNotNullParameter(cTextRed, "cTextRed");
        Intrinsics.checkNotNullParameter(cTextGreen, "cTextGreen");
        Intrinsics.checkNotNullParameter(cTextYellow, "cTextYellow");
        Intrinsics.checkNotNullParameter(cTextOrange, "cTextOrange");
        Intrinsics.checkNotNullParameter(cBg, "cBg");
        Intrinsics.checkNotNullParameter(cItemBg0, "cItemBg0");
        Intrinsics.checkNotNullParameter(cItemBg1, "cItemBg1");
        Intrinsics.checkNotNullParameter(cMenuBg, "cMenuBg");
        Intrinsics.checkNotNullParameter(cMenuItem, "cMenuItem");
        Intrinsics.checkNotNullParameter(cMenuText, "cMenuText");
        Intrinsics.checkNotNullParameter(cMenuTitle, "cMenuTitle");
        Intrinsics.checkNotNullParameter(cWindowTitle, "cWindowTitle");
        Intrinsics.checkNotNullParameter(cIndicatorRank, "cIndicatorRank");
        Intrinsics.checkNotNullParameter(cIndicatorText, "cIndicatorText");
        Intrinsics.checkNotNullParameter(cIndicatorTextGreen, "cIndicatorTextGreen");
        Intrinsics.checkNotNullParameter(cIndicatorTextRed, "cIndicatorTextRed");
        Intrinsics.checkNotNullParameter(cIndicatorTextYellow, "cIndicatorTextYellow");
        Intrinsics.checkNotNullParameter(cIndicatorTextUber, "cIndicatorTextUber");
        Intrinsics.checkNotNullParameter(cIndicatorSelection, "cIndicatorSelection");
        Intrinsics.checkNotNullParameter(npButtonGold, "npButtonGold");
        Intrinsics.checkNotNullParameter(npButtonGreen, "npButtonGreen");
        return new Skin(engine, img, fontSmall, fontDefault, fontBig, cText, cTextSelected, cTextSecondary, cTextAccent, cTextRed, cTextGreen, cTextYellow, cTextOrange, cBg, cItemBg0, cItemBg1, cMenuBg, cMenuItem, cMenuText, cMenuTitle, cWindowTitle, cIndicatorRank, cIndicatorText, cIndicatorTextGreen, cIndicatorTextRed, cIndicatorTextYellow, cIndicatorTextUber, cIndicatorSelection, i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, npButtonGold, npButtonGreen, i17, i18, i19, i20, i21, i22, i23, i24);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Skin)) {
            return false;
        }
        Skin skin = (Skin) obj;
        return Intrinsics.areEqual(this.engine, skin.engine) && Intrinsics.areEqual(this.img, skin.img) && Intrinsics.areEqual(this.fontSmall, skin.fontSmall) && Intrinsics.areEqual(this.fontDefault, skin.fontDefault) && Intrinsics.areEqual(this.fontBig, skin.fontBig) && Intrinsics.areEqual(this.cText, skin.cText) && Intrinsics.areEqual(this.cTextSelected, skin.cTextSelected) && Intrinsics.areEqual(this.cTextSecondary, skin.cTextSecondary) && Intrinsics.areEqual(this.cTextAccent, skin.cTextAccent) && Intrinsics.areEqual(this.cTextRed, skin.cTextRed) && Intrinsics.areEqual(this.cTextGreen, skin.cTextGreen) && Intrinsics.areEqual(this.cTextYellow, skin.cTextYellow) && Intrinsics.areEqual(this.cTextOrange, skin.cTextOrange) && Intrinsics.areEqual(this.cBg, skin.cBg) && Intrinsics.areEqual(this.cItemBg0, skin.cItemBg0) && Intrinsics.areEqual(this.cItemBg1, skin.cItemBg1) && Intrinsics.areEqual(this.cMenuBg, skin.cMenuBg) && Intrinsics.areEqual(this.cMenuItem, skin.cMenuItem) && Intrinsics.areEqual(this.cMenuText, skin.cMenuText) && Intrinsics.areEqual(this.cMenuTitle, skin.cMenuTitle) && Intrinsics.areEqual(this.cWindowTitle, skin.cWindowTitle) && Intrinsics.areEqual(this.cIndicatorRank, skin.cIndicatorRank) && Intrinsics.areEqual(this.cIndicatorText, skin.cIndicatorText) && Intrinsics.areEqual(this.cIndicatorTextGreen, skin.cIndicatorTextGreen) && Intrinsics.areEqual(this.cIndicatorTextRed, skin.cIndicatorTextRed) && Intrinsics.areEqual(this.cIndicatorTextYellow, skin.cIndicatorTextYellow) && Intrinsics.areEqual(this.cIndicatorTextUber, skin.cIndicatorTextUber) && Intrinsics.areEqual(this.cIndicatorSelection, skin.cIndicatorSelection) && this.npPanel == skin.npPanel && this.npWindow == skin.npWindow && this.npButton == skin.npButton && this.npButtonDown == skin.npButtonDown && this.npListItemSelected == skin.npListItemSelected && this.npListBox == skin.npListBox && this.npNotificationBar == skin.npNotificationBar && this.npListItemDefault == skin.npListItemDefault && this.npButtonMarked == skin.npButtonMarked && this.npProgressBar == skin.npProgressBar && this.npProgressBarFilled == skin.npProgressBarFilled && this.npRect == skin.npRect && this.npRectShadow == skin.npRectShadow && this.npWhiteRectBordered == skin.npWhiteRectBordered && this.npWhiteRect == skin.npWhiteRect && this.npWhiteRectEmpty == skin.npWhiteRectEmpty && Intrinsics.areEqual(this.npButtonGold, skin.npButtonGold) && Intrinsics.areEqual(this.npButtonGreen, skin.npButtonGreen) && this.npButtonBlue == skin.npButtonBlue && this.npButtonBlueDown == skin.npButtonBlueDown && this.npIndicator == skin.npIndicator && this.fCheckboxOff == skin.fCheckboxOff && this.fCheckboxOn == skin.fCheckboxOn && this.fRadioOff == skin.fRadioOff && this.fRadioOn == skin.fRadioOn && this.fCloseButton == skin.fCloseButton;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((this.engine.hashCode() * 31) + this.img.hashCode()) * 31) + this.fontSmall.hashCode()) * 31) + this.fontDefault.hashCode()) * 31) + this.fontBig.hashCode()) * 31) + this.cText.hashCode()) * 31) + this.cTextSelected.hashCode()) * 31) + this.cTextSecondary.hashCode()) * 31) + this.cTextAccent.hashCode()) * 31) + this.cTextRed.hashCode()) * 31) + this.cTextGreen.hashCode()) * 31) + this.cTextYellow.hashCode()) * 31) + this.cTextOrange.hashCode()) * 31) + this.cBg.hashCode()) * 31) + this.cItemBg0.hashCode()) * 31) + this.cItemBg1.hashCode()) * 31) + this.cMenuBg.hashCode()) * 31) + this.cMenuItem.hashCode()) * 31) + this.cMenuText.hashCode()) * 31) + this.cMenuTitle.hashCode()) * 31) + this.cWindowTitle.hashCode()) * 31) + this.cIndicatorRank.hashCode()) * 31) + this.cIndicatorText.hashCode()) * 31) + this.cIndicatorTextGreen.hashCode()) * 31) + this.cIndicatorTextRed.hashCode()) * 31) + this.cIndicatorTextYellow.hashCode()) * 31) + this.cIndicatorTextUber.hashCode()) * 31) + this.cIndicatorSelection.hashCode()) * 31) + Integer.hashCode(this.npPanel)) * 31) + Integer.hashCode(this.npWindow)) * 31) + Integer.hashCode(this.npButton)) * 31) + Integer.hashCode(this.npButtonDown)) * 31) + Integer.hashCode(this.npListItemSelected)) * 31) + Integer.hashCode(this.npListBox)) * 31) + Integer.hashCode(this.npNotificationBar)) * 31) + Integer.hashCode(this.npListItemDefault)) * 31) + Integer.hashCode(this.npButtonMarked)) * 31) + Integer.hashCode(this.npProgressBar)) * 31) + Integer.hashCode(this.npProgressBarFilled)) * 31) + Integer.hashCode(this.npRect)) * 31) + Integer.hashCode(this.npRectShadow)) * 31) + Integer.hashCode(this.npWhiteRectBordered)) * 31) + Integer.hashCode(this.npWhiteRect)) * 31) + Integer.hashCode(this.npWhiteRectEmpty)) * 31) + Arrays.hashCode(this.npButtonGold)) * 31) + Arrays.hashCode(this.npButtonGreen)) * 31) + Integer.hashCode(this.npButtonBlue)) * 31) + Integer.hashCode(this.npButtonBlueDown)) * 31) + Integer.hashCode(this.npIndicator)) * 31) + Integer.hashCode(this.fCheckboxOff)) * 31) + Integer.hashCode(this.fCheckboxOn)) * 31) + Integer.hashCode(this.fRadioOff)) * 31) + Integer.hashCode(this.fRadioOn)) * 31) + Integer.hashCode(this.fCloseButton);
    }

    public String toString() {
        return "Skin(engine=" + this.engine + ", img=" + this.img + ", fontSmall=" + this.fontSmall + ", fontDefault=" + this.fontDefault + ", fontBig=" + this.fontBig + ", cText=" + this.cText + ", cTextSelected=" + this.cTextSelected + ", cTextSecondary=" + this.cTextSecondary + ", cTextAccent=" + this.cTextAccent + ", cTextRed=" + this.cTextRed + ", cTextGreen=" + this.cTextGreen + ", cTextYellow=" + this.cTextYellow + ", cTextOrange=" + this.cTextOrange + ", cBg=" + this.cBg + ", cItemBg0=" + this.cItemBg0 + ", cItemBg1=" + this.cItemBg1 + ", cMenuBg=" + this.cMenuBg + ", cMenuItem=" + this.cMenuItem + ", cMenuText=" + this.cMenuText + ", cMenuTitle=" + this.cMenuTitle + ", cWindowTitle=" + this.cWindowTitle + ", cIndicatorRank=" + this.cIndicatorRank + ", cIndicatorText=" + this.cIndicatorText + ", cIndicatorTextGreen=" + this.cIndicatorTextGreen + ", cIndicatorTextRed=" + this.cIndicatorTextRed + ", cIndicatorTextYellow=" + this.cIndicatorTextYellow + ", cIndicatorTextUber=" + this.cIndicatorTextUber + ", cIndicatorSelection=" + this.cIndicatorSelection + ", npPanel=" + this.npPanel + ", npWindow=" + this.npWindow + ", npButton=" + this.npButton + ", npButtonDown=" + this.npButtonDown + ", npListItemSelected=" + this.npListItemSelected + ", npListBox=" + this.npListBox + ", npNotificationBar=" + this.npNotificationBar + ", npListItemDefault=" + this.npListItemDefault + ", npButtonMarked=" + this.npButtonMarked + ", npProgressBar=" + this.npProgressBar + ", npProgressBarFilled=" + this.npProgressBarFilled + ", npRect=" + this.npRect + ", npRectShadow=" + this.npRectShadow + ", npWhiteRectBordered=" + this.npWhiteRectBordered + ", npWhiteRect=" + this.npWhiteRect + ", npWhiteRectEmpty=" + this.npWhiteRectEmpty + ", npButtonGold=" + Arrays.toString(this.npButtonGold) + ", npButtonGreen=" + Arrays.toString(this.npButtonGreen) + ", npButtonBlue=" + this.npButtonBlue + ", npButtonBlueDown=" + this.npButtonBlueDown + ", npIndicator=" + this.npIndicator + ", fCheckboxOff=" + this.fCheckboxOff + ", fCheckboxOn=" + this.fCheckboxOn + ", fRadioOff=" + this.fRadioOff + ", fRadioOn=" + this.fRadioOn + ", fCloseButton=" + this.fCloseButton + ')';
    }

    public Skin(Engine engine, Image img, Font fontSmall, Font fontDefault, Font fontBig, Color cText, Color cTextSelected, Color cTextSecondary, Color cTextAccent, Color cTextRed, Color cTextGreen, Color cTextYellow, Color cTextOrange, Color cBg, Color cItemBg0, Color cItemBg1, Color cMenuBg, Color cMenuItem, Color cMenuText, Color cMenuTitle, Color cWindowTitle, Color cIndicatorRank, Color cIndicatorText, Color cIndicatorTextGreen, Color cIndicatorTextRed, Color cIndicatorTextYellow, Color cIndicatorTextUber, Color cIndicatorSelection, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int[] npButtonGold, int[] npButtonGreen, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(img, "img");
        Intrinsics.checkNotNullParameter(fontSmall, "fontSmall");
        Intrinsics.checkNotNullParameter(fontDefault, "fontDefault");
        Intrinsics.checkNotNullParameter(fontBig, "fontBig");
        Intrinsics.checkNotNullParameter(cText, "cText");
        Intrinsics.checkNotNullParameter(cTextSelected, "cTextSelected");
        Intrinsics.checkNotNullParameter(cTextSecondary, "cTextSecondary");
        Intrinsics.checkNotNullParameter(cTextAccent, "cTextAccent");
        Intrinsics.checkNotNullParameter(cTextRed, "cTextRed");
        Intrinsics.checkNotNullParameter(cTextGreen, "cTextGreen");
        Intrinsics.checkNotNullParameter(cTextYellow, "cTextYellow");
        Intrinsics.checkNotNullParameter(cTextOrange, "cTextOrange");
        Intrinsics.checkNotNullParameter(cBg, "cBg");
        Intrinsics.checkNotNullParameter(cItemBg0, "cItemBg0");
        Intrinsics.checkNotNullParameter(cItemBg1, "cItemBg1");
        Intrinsics.checkNotNullParameter(cMenuBg, "cMenuBg");
        Intrinsics.checkNotNullParameter(cMenuItem, "cMenuItem");
        Intrinsics.checkNotNullParameter(cMenuText, "cMenuText");
        Intrinsics.checkNotNullParameter(cMenuTitle, "cMenuTitle");
        Intrinsics.checkNotNullParameter(cWindowTitle, "cWindowTitle");
        Intrinsics.checkNotNullParameter(cIndicatorRank, "cIndicatorRank");
        Intrinsics.checkNotNullParameter(cIndicatorText, "cIndicatorText");
        Intrinsics.checkNotNullParameter(cIndicatorTextGreen, "cIndicatorTextGreen");
        Intrinsics.checkNotNullParameter(cIndicatorTextRed, "cIndicatorTextRed");
        Intrinsics.checkNotNullParameter(cIndicatorTextYellow, "cIndicatorTextYellow");
        Intrinsics.checkNotNullParameter(cIndicatorTextUber, "cIndicatorTextUber");
        Intrinsics.checkNotNullParameter(cIndicatorSelection, "cIndicatorSelection");
        Intrinsics.checkNotNullParameter(npButtonGold, "npButtonGold");
        Intrinsics.checkNotNullParameter(npButtonGreen, "npButtonGreen");
        this.engine = engine;
        this.img = img;
        this.fontSmall = fontSmall;
        this.fontDefault = fontDefault;
        this.fontBig = fontBig;
        this.cText = cText;
        this.cTextSelected = cTextSelected;
        this.cTextSecondary = cTextSecondary;
        this.cTextAccent = cTextAccent;
        this.cTextRed = cTextRed;
        this.cTextGreen = cTextGreen;
        this.cTextYellow = cTextYellow;
        this.cTextOrange = cTextOrange;
        this.cBg = cBg;
        this.cItemBg0 = cItemBg0;
        this.cItemBg1 = cItemBg1;
        this.cMenuBg = cMenuBg;
        this.cMenuItem = cMenuItem;
        this.cMenuText = cMenuText;
        this.cMenuTitle = cMenuTitle;
        this.cWindowTitle = cWindowTitle;
        this.cIndicatorRank = cIndicatorRank;
        this.cIndicatorText = cIndicatorText;
        this.cIndicatorTextGreen = cIndicatorTextGreen;
        this.cIndicatorTextRed = cIndicatorTextRed;
        this.cIndicatorTextYellow = cIndicatorTextYellow;
        this.cIndicatorTextUber = cIndicatorTextUber;
        this.cIndicatorSelection = cIndicatorSelection;
        this.npPanel = i;
        this.npWindow = i2;
        this.npButton = i3;
        this.npButtonDown = i4;
        this.npListItemSelected = i5;
        this.npListBox = i6;
        this.npNotificationBar = i7;
        this.npListItemDefault = i8;
        this.npButtonMarked = i9;
        this.npProgressBar = i10;
        this.npProgressBarFilled = i11;
        this.npRect = i12;
        this.npRectShadow = i13;
        this.npWhiteRectBordered = i14;
        this.npWhiteRect = i15;
        this.npWhiteRectEmpty = i16;
        this.npButtonGold = npButtonGold;
        this.npButtonGreen = npButtonGreen;
        this.npButtonBlue = i17;
        this.npButtonBlueDown = i18;
        this.npIndicator = i19;
        this.fCheckboxOff = i20;
        this.fCheckboxOn = i21;
        this.fRadioOff = i22;
        this.fRadioOn = i23;
        this.fCloseButton = i24;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        */
    public /* synthetic */ Skin(io.blueflower.stapel2d.drawing.Engine r60, io.blueflower.stapel2d.drawing.Image r61, io.blueflower.stapel2d.drawing.Font r62, io.blueflower.stapel2d.drawing.Font r63, io.blueflower.stapel2d.drawing.Font r64, io.blueflower.stapel2d.drawing.Color r65, io.blueflower.stapel2d.drawing.Color r66, io.blueflower.stapel2d.drawing.Color r67, io.blueflower.stapel2d.drawing.Color r68, io.blueflower.stapel2d.drawing.Color r69, io.blueflower.stapel2d.drawing.Color r70, io.blueflower.stapel2d.drawing.Color r71, io.blueflower.stapel2d.drawing.Color r72, io.blueflower.stapel2d.drawing.Color r73, io.blueflower.stapel2d.drawing.Color r74, io.blueflower.stapel2d.drawing.Color r75, io.blueflower.stapel2d.drawing.Color r76, io.blueflower.stapel2d.drawing.Color r77, io.blueflower.stapel2d.drawing.Color r78, io.blueflower.stapel2d.drawing.Color r79, io.blueflower.stapel2d.drawing.Color r80, io.blueflower.stapel2d.drawing.Color r81, io.blueflower.stapel2d.drawing.Color r82, io.blueflower.stapel2d.drawing.Color r83, io.blueflower.stapel2d.drawing.Color r84, io.blueflower.stapel2d.drawing.Color r85, io.blueflower.stapel2d.drawing.Color r86, io.blueflower.stapel2d.drawing.Color r87, int r88, int r89, int r90, int r91, int r92, int r93, int r94, int r95, int r96, int r97, int r98, int r99, int r100, int r101, int r102, int r103, int[] r104, int[] r105, int r106, int r107, int r108, int r109, int r110, int r111, int r112, int r113, int r114, int r115, kotlin.jvm.internal.DefaultConstructorMarker r116) {
        /*
            Method dump skipped, instruction units count: 680
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.gui.Skin.<init>(io.blueflower.stapel2d.drawing.Engine, io.blueflower.stapel2d.drawing.Image, io.blueflower.stapel2d.drawing.Font, io.blueflower.stapel2d.drawing.Font, io.blueflower.stapel2d.drawing.Font, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, io.blueflower.stapel2d.drawing.Color, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int[], int[], int, int, int, int, int, int, int, int, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Skin(Engine engine, Image imageWorld, Font font) {
        this(engine, imageWorld, font, font, font, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, 0, 0, 0, 0, 0, 0, 0, 0, -32, 4194303, null);
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(imageWorld, "imageWorld");
        Intrinsics.checkNotNullParameter(font, "font");
    }

    public final Skin copyAll() {
        return copy$default(this, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, 0, 0, 0, 0, 0, 0, 0, 0, -1, 4194303, null);
    }
}
