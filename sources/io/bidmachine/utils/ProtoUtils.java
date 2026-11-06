package io.bidmachine.utils;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.EventType;
import io.bidmachine.AdContentType;
import io.bidmachine.AdFormat;
import io.bidmachine.BannerAdSize;
import io.bidmachine.MediaAssetType;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.sdk.AdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ProtoUtils {
    public static final ProtoUtils INSTANCE = new ProtoUtils();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.KindCase.values().length];
            try {
                iArr[Value.KindCase.NUMBER_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Value.KindCase.STRING_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Value.KindCase.BOOL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Value.KindCase.STRUCT_VALUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Value.KindCase.LIST_VALUE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void addEvent(Map<TrackEventType, List<String>> outMap, TrackEventType eventType, String str) {
        Intrinsics.checkNotNullParameter(outMap, "outMap");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        if (str == null || str.length() == 0) {
            return;
        }
        List<String> arrayList = outMap.get(eventType);
        if (arrayList == null) {
            arrayList = new ArrayList<>(1);
            outMap.put(eventType, arrayList);
        }
        arrayList.add(str);
    }

    public static final AdFormat.Builder createAdFormatBuilder(io.bidmachine.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        AdFormat.Builder builder = AdFormat.newBuilder();
        if (adFormat instanceof AdFormat.Banner) {
            BannerAdSize bannerAdSize = ((AdFormat.Banner) adFormat).getBannerAdSize();
            builder.setBanner(AdFormat.Banner.newBuilder().setWidth(bannerAdSize.getWidth()).setHeight(bannerAdSize.getHeight()).setIsAdaptive(bannerAdSize.isAdaptive()).build());
        } else {
            if (adFormat instanceof AdFormat.Interstitial) {
                AdContentType adContentType = ((AdFormat.Interstitial) adFormat).getAdContentType();
                boolean z = adContentType == AdContentType.All;
                builder.setInterstitial(AdFormat.Interstitial.newBuilder().setHasBanner(z || adContentType == AdContentType.Static).setHasVideo(z || adContentType == AdContentType.Video).build());
            } else if (adFormat instanceof AdFormat.Rewarded) {
                AdContentType adContentType2 = ((AdFormat.Rewarded) adFormat).getAdContentType();
                boolean z2 = adContentType2 == AdContentType.All;
                builder.setRewarded(AdFormat.Rewarded.newBuilder().setHasBanner(z2 || adContentType2 == AdContentType.Static).setHasVideo(z2 || adContentType2 == AdContentType.Video).build());
            } else if (adFormat instanceof AdFormat.Native) {
                List<MediaAssetType> mediaAssetTypes = ((AdFormat.Native) adFormat).getMediaAssetTypes();
                boolean zIsAll = MediaAssetType.isAll(mediaAssetTypes);
                builder.setNative(AdFormat.Native.newBuilder().setHasVideo(zIsAll || mediaAssetTypes.contains(MediaAssetType.Video)).setHasIcon(zIsAll || mediaAssetTypes.contains(MediaAssetType.Icon)).setHasImage(zIsAll || mediaAssetTypes.contains(MediaAssetType.Image)).build());
            }
        }
        Intrinsics.checkNotNullExpressionValue(builder, "builder");
        return builder;
    }

    public static final void fillStructWithPrimitiveValues(Struct.Builder structBuilder, Map<String, ? extends Object> source) {
        Intrinsics.checkNotNullParameter(structBuilder, "structBuilder");
        Intrinsics.checkNotNullParameter(source, "source");
        for (Map.Entry<String, ? extends Object> entry : source.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof String) {
                structBuilder.putFields(key, Value.newBuilder().setStringValue((String) value).build());
            } else if (value instanceof Boolean) {
                structBuilder.putFields(key, Value.newBuilder().setBoolValue(((Boolean) value).booleanValue()).build());
            } else if (value instanceof Number) {
                structBuilder.putFields(key, Value.newBuilder().setNumberValue(((Number) value).doubleValue()).build());
            }
        }
    }

    public static final AdExtension findFirstAdExtension(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        int extProtoCount = ad.getExtProtoCount();
        for (int i = 0; i < extProtoCount; i++) {
            try {
                Any extProto = ad.getExtProto(i);
                if (extProto.is(AdExtension.class)) {
                    return (AdExtension) extProto.unpack(AdExtension.class);
                }
                continue;
            } catch (Throwable th) {
                Logger.w(th);
            }
        }
        return null;
    }

    public static final boolean isEmpty(Struct struct) {
        return struct == null || struct.getFieldsCount() <= 0;
    }

    public static final Timestamp msToTimestamp(long j) {
        long j2 = 1000;
        Timestamp timestampBuild = Timestamp.newBuilder().setSeconds(j / j2).setNanos(((int) (j % j2)) * 1000000).build();
        Intrinsics.checkNotNullExpressionValue(timestampBuild, "newBuilder()\n           …000)\n            .build()");
        return timestampBuild;
    }

    public static final void prepareEvents(Map<TrackEventType, List<String>> outMap, List<Ad.Event> list) {
        Intrinsics.checkNotNullParameter(outMap, "outMap");
        if (list == null || list.isEmpty()) {
            return;
        }
        for (Ad.Event event : list) {
            TrackEventType trackEventTypeFromNumber = event.getType() == EventType.EVENT_TYPE_IMPRESSION ? TrackEventType.Show : TrackEventType.fromNumber(event.getTypeValue());
            if (trackEventTypeFromNumber != null) {
                addEvent(outMap, trackEventTypeFromNumber, event.getUrl());
            }
        }
    }

    public static final Timestamp secToTimestamp(long j) {
        Timestamp timestampBuild = Timestamp.newBuilder().setSeconds(j).setNanos(0).build();
        Intrinsics.checkNotNullExpressionValue(timestampBuild, "newBuilder()\n           …s(0)\n            .build()");
        return timestampBuild;
    }

    public static final List<Object> toListOrNull(ListValue listValue) {
        if (isEmpty(listValue)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Intrinsics.checkNotNull(listValue);
        List<Value> valuesList = listValue.getValuesList();
        Intrinsics.checkNotNullExpressionValue(valuesList, "listValue!!.valuesList");
        Iterator<T> it = valuesList.iterator();
        while (it.hasNext()) {
            Object objectOrNull = toObjectOrNull((Value) it.next());
            if (objectOrNull != null) {
                arrayList.add(objectOrNull);
            }
        }
        return arrayList;
    }

    public static final Map<String, Object> toMapOrNull(Struct struct) {
        Object objectOrNull;
        if (isEmpty(struct)) {
            return null;
        }
        HashMap map = new HashMap();
        Intrinsics.checkNotNull(struct);
        Map<String, Value> fieldsMap = struct.getFieldsMap();
        Intrinsics.checkNotNullExpressionValue(fieldsMap, "struct!!.fieldsMap");
        for (Map.Entry<String, Value> entry : fieldsMap.entrySet()) {
            String key = entry.getKey();
            Value value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(key, "key");
            if (key.length() != 0 && (objectOrNull = toObjectOrNull(value)) != null) {
                map.put(key, objectOrNull);
            }
        }
        return map;
    }

    public static final Object toObjectOrNull(Value value) {
        if (value == null) {
            return null;
        }
        Value.KindCase kindCase = value.getKindCase();
        int i = kindCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[kindCase.ordinal()];
        if (i == 1) {
            return Double.valueOf(value.getNumberValue());
        }
        if (i == 2) {
            return value.getStringValue();
        }
        if (i == 3) {
            return Boolean.valueOf(value.getBoolValue());
        }
        if (i == 4) {
            return toMapOrNull(value.getStructValue());
        }
        if (i != 5) {
            return null;
        }
        return toListOrNull(value.getListValue());
    }

    public static final boolean isEmpty(ListValue listValue) {
        return listValue == null || listValue.getValuesCount() <= 0;
    }
}
