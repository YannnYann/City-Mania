package io.blueflower.stapel2d.gui;

import com.unity3d.services.UnityAdsConstants;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Font;
import java.lang.Character;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class TextFrame extends Label {
    public boolean bold;
    public List<String> lines;
    public int textHeight;

    public static boolean isEmojiModifier(int i) {
        return i >= 127995 && i <= 127999;
    }

    public static boolean isRegionalIndicator(int i) {
        return i >= 127462 && i <= 127487;
    }

    public static boolean isVariationSelector(int i) {
        if (i == 65038 || i == 65039) {
            return true;
        }
        return i >= 917760 && i <= 917999;
    }

    public TextFrame(String str, int i, int i2, int i3, int i4, Gadget gadget) {
        super(str, i, i2, i3, i4, gadget);
        this.textHeight = -1;
        calculateTextHeight();
    }

    @Override // io.blueflower.stapel2d.gui.Label
    public void setText(String str) {
        String str2 = this.text;
        if (str2 == null || !str2.equals(str)) {
            super.setText(str);
            invokeChange();
        }
    }

    @Override // io.blueflower.stapel2d.gui.Label
    public void setFont(Font font) {
        super.setFont(font);
        invokeChange();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setPadding(int i) {
        super.setPadding(i);
        invokeChange();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setPadding(int i, int i2) {
        super.setPadding(i, i2);
        invokeChange();
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        invokeChange();
    }

    public boolean isBold() {
        return this.bold;
    }

    public void setBold(boolean z) {
        this.bold = z;
    }

    public final void invokeChange() {
        this.textHeight = -1;
        calculateTextHeight();
    }

    @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        if (this.text != null) {
            int iRound = Math.round(this.font.getHeight());
            this.skin.engine.setColor(getColor());
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            for (int i3 = 0; i3 < this.lines.size(); i3++) {
                String str = this.lines.get(i3);
                this.skin.engine.drawText(this.font, str, this.x + i + paddingLeft, (this.alignmentY * (getClientHeight() - this.textHeight)) + this.y + i2 + paddingTop, this.width, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.alignmentX, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                if (this.bold) {
                    this.skin.engine.drawText(this.font, str, 0.2f + this.x + i + paddingLeft, (this.alignmentY * (getClientHeight() - this.textHeight)) + this.y + i2 + paddingTop, this.width, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, this.alignmentX, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                }
                paddingTop += iRound;
            }
            this.skin.engine.setColor(Colors.WHITE);
        }
        drawChildren(i, i2);
    }

    public int calculateTextHeight() {
        int i = this.textHeight;
        if (i >= 0) {
            return i;
        }
        if (this.text == null) {
            return 0;
        }
        int height = (int) (this.font.getHeight() + 0.5f);
        List<String> listCalculateLines = calculateLines(this.text, getClientWidth(), this.font);
        this.lines = listCalculateLines;
        int size = height * listCalculateLines.size();
        this.textHeight = size;
        return size;
    }

    public static List<String> calculateLines(String str, int i, Font font) {
        int i2;
        ArrayList arrayList = new ArrayList();
        for (String str2 : str.split("\\n", -1)) {
            StringBuilder sb = new StringBuilder();
            int iCharCount = 0;
            while (true) {
                i2 = iCharCount;
                while (iCharCount < str2.length()) {
                    int iCodePointAt = str2.codePointAt(iCharCount);
                    iCharCount += Character.charCount(iCodePointAt);
                    if (isLineBreakOpportunity(iCodePointAt)) {
                        break;
                    }
                }
                appendWrappedSegment(str2.substring(i2, iCharCount), arrayList, sb, i, font);
            }
            if (i2 < str2.length()) {
                appendWrappedSegment(str2.substring(i2), arrayList, sb, i, font);
            }
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public static boolean isLineBreakOpportunity(int i) {
        return Character.isWhitespace(i) || isCjk(i);
    }

    public static boolean isCjk(int i) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(i);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.HIRAGANA || unicodeBlockOf == Character.UnicodeBlock.KATAKANA || unicodeBlockOf == Character.UnicodeBlock.HANGUL_SYLLABLES;
    }

    public static void appendWrappedSegment(String str, List<String> list, StringBuilder sb, int i, Font font) {
        if (sb.length() > 0) {
            if (font.getWidth(sb.toString() + str) > i) {
                list.add(sb.toString());
                sb.setLength(0);
            }
        }
        float f = i;
        if (font.getWidth(str) <= f) {
            sb.append(str);
            return;
        }
        int i2 = 0;
        while (i2 < str.length()) {
            int iNextCharacterBoundary = nextCharacterBoundary(str, i2);
            String strSubstring = str.substring(i2, iNextCharacterBoundary);
            if (sb.length() > 0) {
                if (font.getWidth(sb.toString() + strSubstring) > f) {
                    list.add(sb.toString());
                    sb.setLength(0);
                }
            }
            sb.append(strSubstring);
            i2 = iNextCharacterBoundary;
        }
    }

    public static int nextCharacterBoundary(String str, int i) {
        int iCharCount;
        int iCodePointAt = str.codePointAt(i);
        int iCharCount2 = i + Character.charCount(iCodePointAt);
        boolean zIsRegionalIndicator = isRegionalIndicator(iCodePointAt);
        while (iCharCount2 < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount2);
            int type = Character.getType(iCodePointAt2);
            if (type == 6 || type == 8 || type == 7 || isVariationSelector(iCodePointAt2) || isEmojiModifier(iCodePointAt2)) {
                iCharCount = Character.charCount(iCodePointAt2);
                iCharCount2 += iCharCount;
            } else if (iCodePointAt2 == 8205) {
                iCharCount2 += Character.charCount(iCodePointAt2);
                if (iCharCount2 < str.length()) {
                    iCharCount = Character.charCount(str.codePointAt(iCharCount2));
                    iCharCount2 += iCharCount;
                }
            } else {
                if (!zIsRegionalIndicator || !isRegionalIndicator(iCodePointAt2)) {
                    break;
                }
                iCharCount2 += Character.charCount(iCodePointAt2);
                zIsRegionalIndicator = false;
            }
        }
        return iCharCount2;
    }
}
