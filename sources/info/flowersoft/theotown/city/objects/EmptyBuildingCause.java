package info.flowersoft.theotown.city.objects;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.components.management.attribute.Attribute;
import info.flowersoft.theotown.components.management.attribute.AttributeFactory;
import info.flowersoft.theotown.util.DraftLocalizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.json.JsonReader;
import io.blueflower.stapel2d.util.json.JsonWriter;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: compiled from: EmptyBuildingCause.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class EmptyBuildingCause {
    public static final EmptyBuildingCause lowDemand;
    public final Attribute attribute;
    public final CrimeType crimeType;
    public final float happiness;
    public final EmptyCauseType type;
    public static final Companion Companion = new Companion(null);
    public static final EmptyBuildingCause unknown = new EmptyBuildingCause(EmptyCauseType.Unknown, null, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 14, null);

    /* JADX INFO: compiled from: EmptyBuildingCause.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EmptyCauseType.values().length];
            try {
                iArr[EmptyCauseType.Unknown.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EmptyCauseType.LowDemand.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EmptyCauseType.Happiness.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EmptyCauseType.Crime.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EmptyCauseType.Illness.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final EmptyBuildingCause forCrime(CrimeType crimeType) {
        return Companion.forCrime(crimeType);
    }

    public static final EmptyBuildingCause forHappiness(Attribute attribute, float f) {
        return Companion.forHappiness(attribute, f);
    }

    public static final EmptyBuildingCause forIllness() {
        return Companion.forIllness();
    }

    public static final EmptyBuildingCause getLowDemand() {
        return Companion.getLowDemand();
    }

    public static final EmptyBuildingCause getUnknown() {
        return Companion.getUnknown();
    }

    public static final EmptyBuildingCause load(JsonReader jsonReader) {
        return Companion.load(jsonReader);
    }

    public EmptyBuildingCause(EmptyCauseType type, CrimeType crimeType, Attribute attribute, float f) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.crimeType = crimeType;
        this.attribute = attribute;
        this.happiness = f;
    }

    public /* synthetic */ EmptyBuildingCause(EmptyCauseType emptyCauseType, CrimeType crimeType, Attribute attribute, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(emptyCauseType, (i & 2) != 0 ? null : crimeType, (i & 4) != 0 ? null : attribute, (i & 8) != 0 ? Float.MAX_VALUE : f);
    }

    public final EmptyCauseType getType() {
        return this.type;
    }

    public final CrimeType getCrimeType() {
        return this.crimeType;
    }

    public final Attribute getAttribute() {
        return this.attribute;
    }

    public final float getHappiness() {
        return this.happiness;
    }

    /* JADX INFO: compiled from: EmptyBuildingCause.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getLowDemand$annotations() {
        }

        public static /* synthetic */ void getUnknown$annotations() {
        }

        public Companion() {
        }

        public final EmptyBuildingCause getUnknown() {
            return EmptyBuildingCause.unknown;
        }

        public final EmptyBuildingCause getLowDemand() {
            return EmptyBuildingCause.lowDemand;
        }

        public final EmptyBuildingCause forHappiness(Attribute attribute, float f) {
            return new EmptyBuildingCause(EmptyCauseType.Happiness, null, attribute, f, 2, null);
        }

        public final EmptyBuildingCause forCrime(CrimeType crimeType) {
            Intrinsics.checkNotNullParameter(crimeType, "crimeType");
            return new EmptyBuildingCause(EmptyCauseType.Crime, crimeType, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 12, null);
        }

        public final EmptyBuildingCause forIllness() {
            return new EmptyBuildingCause(EmptyCauseType.Illness, null, null, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 14, null);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final EmptyBuildingCause load(JsonReader src) throws IOException {
            Intrinsics.checkNotNullParameter(src, "src");
            src.beginObject();
            EmptyCauseType emptyCauseTypeResolve = EmptyCauseType.Unknown;
            CrimeType crimeTypeResolveId = null;
            float fNextFloat = Float.MAX_VALUE;
            Attribute attribute = null;
            while (src.hasNext()) {
                String strNextName = src.nextName();
                if (strNextName != null) {
                    switch (strNextName.hashCode()) {
                        case -1407242550:
                            if (strNextName.equals("attrib")) {
                                attribute = AttributeFactory.getAttribute(src.nextInt());
                                if (attribute == null) {
                                    emptyCauseTypeResolve = EmptyCauseType.Unknown;
                                }
                            }
                            break;
                        case 3195065:
                            if (strNextName.equals("happ")) {
                                fNextFloat = src.nextFloat();
                            }
                            break;
                        case 3575610:
                            if (strNextName.equals("type")) {
                                EmptyCauseType.Companion companion = EmptyCauseType.Companion;
                                String strNextString = src.nextString();
                                Intrinsics.checkNotNullExpressionValue(strNextString, "nextString(...)");
                                emptyCauseTypeResolve = companion.resolve(strNextString);
                                if (emptyCauseTypeResolve == null) {
                                    emptyCauseTypeResolve = EmptyCauseType.Unknown;
                                }
                            }
                            break;
                        case 94929138:
                            if (strNextName.equals("crime")) {
                                crimeTypeResolveId = CrimeType.resolveId(src.nextInt());
                                if (crimeTypeResolveId == null) {
                                    emptyCauseTypeResolve = EmptyCauseType.Unknown;
                                }
                            }
                            break;
                    }
                }
                src.skipValue();
            }
            src.endObject();
            return new EmptyBuildingCause(emptyCauseTypeResolve, crimeTypeResolveId, attribute, fNextFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        float f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        lowDemand = new EmptyBuildingCause(EmptyCauseType.LowDemand, 0 == true ? 1 : 0, null, f, 14, null);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: EmptyBuildingCause.kt */
    public static final class EmptyCauseType {
        public static final /* synthetic */ EnumEntries $ENTRIES;
        public static final /* synthetic */ EmptyCauseType[] $VALUES;
        public static final Companion Companion;
        public static final Map<String, EmptyCauseType> mapping;
        public final String tag;
        public static final EmptyCauseType Unknown = new EmptyCauseType("Unknown", 0, "unknown");
        public static final EmptyCauseType LowDemand = new EmptyCauseType("LowDemand", 1, "low demand");
        public static final EmptyCauseType Happiness = new EmptyCauseType("Happiness", 2, "happiness");
        public static final EmptyCauseType Crime = new EmptyCauseType("Crime", 3, "crime");
        public static final EmptyCauseType Illness = new EmptyCauseType("Illness", 4, "illness");

        public static final /* synthetic */ EmptyCauseType[] $values() {
            return new EmptyCauseType[]{Unknown, LowDemand, Happiness, Crime, Illness};
        }

        public static EnumEntries<EmptyCauseType> getEntries() {
            return $ENTRIES;
        }

        public static EmptyCauseType valueOf(String str) {
            return (EmptyCauseType) Enum.valueOf(EmptyCauseType.class, str);
        }

        public static EmptyCauseType[] values() {
            return (EmptyCauseType[]) $VALUES.clone();
        }

        public EmptyCauseType(String str, int i, String str2) {
            this.tag = str2;
        }

        public final String getTag() {
            return this.tag;
        }

        static {
            EmptyCauseType[] emptyCauseTypeArr$values = $values();
            $VALUES = emptyCauseTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(emptyCauseTypeArr$values);
            Companion = new Companion(null);
            EnumEntries<EmptyCauseType> entries = getEntries();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(entries, 10)), 16));
            for (EmptyCauseType emptyCauseType : entries) {
                linkedHashMap.put(emptyCauseType.tag, emptyCauseType);
            }
            mapping = linkedHashMap;
        }

        /* JADX INFO: compiled from: EmptyBuildingCause.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }

            public final EmptyCauseType resolve(String tag) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                return (EmptyCauseType) EmptyCauseType.mapping.get(tag);
            }
        }
    }

    public final void save(JsonWriter dst) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        dst.beginObject();
        dst.name("type").value(this.type.getTag());
        if (this.type == EmptyCauseType.Crime && this.crimeType != null) {
            dst.name("crime").value(this.crimeType.getId());
        }
        EmptyCauseType emptyCauseType = this.type;
        EmptyCauseType emptyCauseType2 = EmptyCauseType.Happiness;
        if (emptyCauseType == emptyCauseType2 && this.attribute != null) {
            dst.name("attrib").value(this.attribute.getIndex());
        }
        if (this.type == emptyCauseType2 && this.happiness != Float.MAX_VALUE) {
            dst.name("happ").value(this.happiness);
        }
        dst.endObject();
    }

    public final String localize(Translator translator, DraftLocalizer localizer) {
        Intrinsics.checkNotNullParameter(translator, "translator");
        Intrinsics.checkNotNullParameter(localizer, "localizer");
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            String strTranslate = translator.translate(1866);
            Intrinsics.checkNotNullExpressionValue(strTranslate, "translate(...)");
            return strTranslate;
        }
        if (i == 2) {
            String strTranslate2 = translator.translate(EventTypeExtended.EVENT_TYPE_EXTENDED_CUSTOM_LOSS_VALUE);
            Intrinsics.checkNotNullExpressionValue(strTranslate2, "translate(...)");
            return strTranslate2;
        }
        if (i == 3) {
            String strTranslate3 = translator.translate(2435);
            Attribute attribute = this.attribute;
            Intrinsics.checkNotNull(attribute);
            String str = StringFormatter.format(strTranslate3, translator.translate(attribute.getNameLocalizationId()));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return str;
        }
        if (i != 4) {
            if (i != 5) {
                throw new NoWhenBranchMatchedException();
            }
            String strTranslate4 = translator.translate(2869);
            Intrinsics.checkNotNullExpressionValue(strTranslate4, "translate(...)");
            return strTranslate4;
        }
        String strTranslate5 = translator.translate(958);
        CrimeType crimeType = this.crimeType;
        Intrinsics.checkNotNull(crimeType);
        String str2 = StringFormatter.format(strTranslate5, localizer.getTitle(crimeType.getBuildingIcon()));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return str2;
    }
}
