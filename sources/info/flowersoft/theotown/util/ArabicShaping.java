package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.IntIntMap;
import com.badlogic.gdx.utils.IntMap;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: ArabicShaping.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ArabicShaping {
    public static final ArabicShaping INSTANCE = new ArabicShaping();
    public static final IntMap<Rule> rules = new IntMap<>();
    public static final IntIntMap charVariants = new IntIntMap();

    public final int[] getCodePoints() {
        return rules.keys().toArray().toArray();
    }

    public final void transformInplace(IntArray codePoints) {
        Intrinsics.checkNotNullParameter(codePoints, "codePoints");
        int i = codePoints.size;
        if (i == 0) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = codePoints.get(i2);
            Rule rule = getRule(i4);
            if (rule != null) {
                codePoints.set(i2, resolve(i4, getRule(i3), rule, i2 < codePoints.size + (-1) ? getRule(codePoints.get(i2 + 1)) : null));
            }
            i2++;
            i3 = i4;
        }
    }

    public final String transform(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        if (!containsRules(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int iCodePointAt = str.codePointAt(0);
        int iCharCount = 0;
        int i = 0;
        while (iCharCount < str.length()) {
            iCharCount += Character.charCount(iCodePointAt);
            int iCodePointAt2 = iCharCount < str.length() ? str.codePointAt(iCharCount) : 0;
            Rule rule = getRule(iCodePointAt);
            if (rule != null) {
                sb.appendCodePoint(resolve(iCodePointAt, getRule(i), rule, getRule(iCodePointAt2)));
            } else {
                sb.appendCodePoint(iCodePointAt);
            }
            i = iCodePointAt;
            iCodePointAt = iCodePointAt2;
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final boolean containsRules(String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        int iCharCount = 0;
        while (iCharCount < str.length()) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (getRule(iCodePointAt) != null) {
                return true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return false;
    }

    public final boolean containsRules(IntArray codePoints) {
        Intrinsics.checkNotNullParameter(codePoints, "codePoints");
        int i = codePoints.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (getRule(codePoints.get(i2)) != null) {
                return true;
            }
        }
        return false;
    }

    public final Rule getRule(int i) {
        return rules.get(i);
    }

    public final int resolve(int i, Rule rule, Rule charRule, Rule rule2) {
        Intrinsics.checkNotNullParameter(charRule, "charRule");
        return getVariant(i, CharacterForm.Companion.fromJoin(charRule.canJoinLeft(rule), charRule.canJoinRight(rule2)));
    }

    public final void init(List<String> shapingLines, List<String> mappingLines) {
        Intrinsics.checkNotNullParameter(shapingLines, "shapingLines");
        Intrinsics.checkNotNullParameter(mappingLines, "mappingLines");
        rules.clear();
        charVariants.clear();
        int i = 0;
        for (Object obj : shapingLines) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String strStripCR = INSTANCE.stripCR((String) obj);
            if (strStripCR.length() != 0 && strStripCR.charAt(0) != '#') {
                List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) strStripCR, new String[]{";"}, false, 0, 6, (Object) null);
                if (listSplit$default.size() != 4) {
                    throw new IllegalArgumentException(("Invalid shaping format in line " + i2 + ": " + strStripCR).toString());
                }
                Rule rule = new Rule(Integer.parseInt(StringsKt__StringsKt.trim((String) listSplit$default.get(0)).toString(), CharsKt__CharJVMKt.checkRadix(16)), JoiningType.Companion.parse(StringsKt__StringsKt.trim((String) listSplit$default.get(2)).toString()));
                rules.put(rule.getCode(), rule);
            }
            i = i2;
        }
        int i3 = 0;
        for (Object obj2 : mappingLines) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            String strStripCR2 = INSTANCE.stripCR((String) obj2);
            if (strStripCR2.length() != 0 && strStripCR2.charAt(0) != '#') {
                List listSplit$default2 = StringsKt__StringsKt.split$default((CharSequence) strStripCR2, new String[]{";"}, false, 0, 6, (Object) null);
                if (listSplit$default2.size() != 5) {
                    throw new IllegalArgumentException(("Invalid mapping format in line " + i4 + ": " + strStripCR2).toString());
                }
                int i5 = Integer.parseInt((String) listSplit$default2.get(0), CharsKt__CharJVMKt.checkRadix(16));
                int i6 = 0;
                for (CharacterForm characterForm : CharacterForm.getEntries()) {
                    int i7 = i6 + 1;
                    if (i6 < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    CharacterForm characterForm2 = characterForm;
                    if (!StringsKt__StringsKt.isBlank((CharSequence) listSplit$default2.get(i7))) {
                        charVariants.put(INSTANCE.getVariantKey(i5, characterForm2), Integer.parseInt(StringsKt__StringsKt.trim((String) listSplit$default2.get(i7)).toString(), CharsKt__CharJVMKt.checkRadix(16)));
                    }
                    i6 = i7;
                }
            }
            i3 = i4;
        }
    }

    public final String stripCR(String str) {
        return StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "\r", false, 2, (Object) null) ? StringsKt__StringsJVMKt.replace$default(str, "\r", "", false, 4, (Object) null) : str;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ArabicShaping.kt */
    public static final class JoiningType {
        public static final /* synthetic */ EnumEntries $ENTRIES;
        public static final /* synthetic */ JoiningType[] $VALUES;
        public static final Companion Companion;
        public final boolean joinsLeft;
        public final boolean joinsRight;
        public final String tag;
        public static final JoiningType RightJoining = new JoiningType("RightJoining", 0, "R", false, true);
        public static final JoiningType LeftJoining = new JoiningType("LeftJoining", 1, "L", true, false);
        public static final JoiningType DualJoining = new JoiningType("DualJoining", 2, "D", true, true);
        public static final JoiningType JoinCausing = new JoiningType("JoinCausing", 3, "C", true, true);
        public static final JoiningType NonJoining = new JoiningType("NonJoining", 4, "U", false, false);
        public static final JoiningType Transparent = new JoiningType("Transparent", 5, RequestConfiguration.MAX_AD_CONTENT_RATING_T, false, false);

        public static final /* synthetic */ JoiningType[] $values() {
            return new JoiningType[]{RightJoining, LeftJoining, DualJoining, JoinCausing, NonJoining, Transparent};
        }

        public static EnumEntries<JoiningType> getEntries() {
            return $ENTRIES;
        }

        public static JoiningType valueOf(String str) {
            return (JoiningType) Enum.valueOf(JoiningType.class, str);
        }

        public static JoiningType[] values() {
            return (JoiningType[]) $VALUES.clone();
        }

        public JoiningType(String str, int i, String str2, boolean z, boolean z2) {
            this.tag = str2;
            this.joinsLeft = z;
            this.joinsRight = z2;
        }

        public final String getTag() {
            return this.tag;
        }

        public final boolean getJoinsLeft() {
            return this.joinsLeft;
        }

        public final boolean getJoinsRight() {
            return this.joinsRight;
        }

        static {
            JoiningType[] joiningTypeArr$values = $values();
            $VALUES = joiningTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(joiningTypeArr$values);
            Companion = new Companion(null);
        }

        /* JADX INFO: compiled from: ArabicShaping.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }

            public final JoiningType parse(String tag) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                for (JoiningType joiningType : JoiningType.getEntries()) {
                    if (Intrinsics.areEqual(joiningType.getTag(), tag)) {
                        return joiningType;
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
    }

    /* JADX INFO: compiled from: ArabicShaping.kt */
    public static final class Rule {
        public final int code;
        public final JoiningType joiningType;

        public static /* synthetic */ Rule copy$default(Rule rule, int i, JoiningType joiningType, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = rule.code;
            }
            if ((i2 & 2) != 0) {
                joiningType = rule.joiningType;
            }
            return rule.copy(i, joiningType);
        }

        public final int component1() {
            return this.code;
        }

        public final JoiningType component2() {
            return this.joiningType;
        }

        public final Rule copy(int i, JoiningType joiningType) {
            Intrinsics.checkNotNullParameter(joiningType, "joiningType");
            return new Rule(i, joiningType);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Rule)) {
                return false;
            }
            Rule rule = (Rule) obj;
            return this.code == rule.code && this.joiningType == rule.joiningType;
        }

        public int hashCode() {
            return (Integer.hashCode(this.code) * 31) + this.joiningType.hashCode();
        }

        public String toString() {
            return "Rule(code=" + this.code + ", joiningType=" + this.joiningType + ')';
        }

        public Rule(int i, JoiningType joiningType) {
            Intrinsics.checkNotNullParameter(joiningType, "joiningType");
            this.code = i;
            this.joiningType = joiningType;
        }

        public final int getCode() {
            return this.code;
        }

        public final JoiningType getJoiningType() {
            return this.joiningType;
        }

        public final boolean canJoinLeft(Rule rule) {
            return rule != null && this.joiningType.getJoinsLeft() && rule.joiningType.getJoinsRight();
        }

        public final boolean canJoinRight(Rule rule) {
            return rule != null && this.joiningType.getJoinsRight() && rule.joiningType.getJoinsLeft();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ArabicShaping.kt */
    public static final class CharacterForm {
        public static final /* synthetic */ EnumEntries $ENTRIES;
        public static final /* synthetic */ CharacterForm[] $VALUES;
        public static final Companion Companion;
        public final String tag;
        public static final CharacterForm Isolated = new CharacterForm("Isolated", 0, "ISOLATED FORM");
        public static final CharacterForm Initial = new CharacterForm("Initial", 1, "INITIAL FORM");
        public static final CharacterForm Medial = new CharacterForm("Medial", 2, "MEDIAL FORM");
        public static final CharacterForm Final = new CharacterForm("Final", 3, "FINAL FORM");

        public static final /* synthetic */ CharacterForm[] $values() {
            return new CharacterForm[]{Isolated, Initial, Medial, Final};
        }

        public static EnumEntries<CharacterForm> getEntries() {
            return $ENTRIES;
        }

        public static CharacterForm valueOf(String str) {
            return (CharacterForm) Enum.valueOf(CharacterForm.class, str);
        }

        public static CharacterForm[] values() {
            return (CharacterForm[]) $VALUES.clone();
        }

        public CharacterForm(String str, int i, String str2) {
            this.tag = str2;
        }

        public final String getTag() {
            return this.tag;
        }

        static {
            CharacterForm[] characterFormArr$values = $values();
            $VALUES = characterFormArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(characterFormArr$values);
            Companion = new Companion(null);
        }

        /* JADX INFO: compiled from: ArabicShaping.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }

            public final CharacterForm fromJoin(boolean z, boolean z2) {
                if (z && z2) {
                    return CharacterForm.Medial;
                }
                if (z && !z2) {
                    return CharacterForm.Initial;
                }
                if (!z && z2) {
                    return CharacterForm.Final;
                }
                return CharacterForm.Isolated;
            }
        }
    }

    public final int getVariant(int i, CharacterForm form) {
        Intrinsics.checkNotNullParameter(form, "form");
        int i2 = charVariants.get(getVariantKey(i, form), 0);
        if (i2 != 0) {
            return i2;
        }
        System.out.println((Object) ("Could not find variant " + form + " for character " + i + " aka " + ((char) i)));
        return i;
    }

    public final int getVariantKey(int i, CharacterForm characterForm) {
        return (i & 1073741823) | (characterForm.ordinal() << 30);
    }
}
