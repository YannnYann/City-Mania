package io.bidmachine.utils;

import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.utils.IabElementStyle;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.CreativeLoadingMethod;

/* JADX INFO: loaded from: classes5.dex */
public final class IabUtils {
    public static final IabUtils INSTANCE = new IabUtils();
    public static final CacheControl DEFAULT_CACHE_CONTROL = CacheControl.FullLoad;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CreativeLoadingMethod.values().length];
            try {
                iArr[CreativeLoadingMethod.Stream.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CreativeLoadingMethod.PartialLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final CacheControl toCacheControl(Object obj) {
        CreativeLoadingMethod creativeLoadingMethodValueOf;
        if (obj == null) {
            return DEFAULT_CACHE_CONTROL;
        }
        if (obj instanceof CacheControl) {
            return (CacheControl) obj;
        }
        if (obj instanceof CreativeLoadingMethod) {
            creativeLoadingMethodValueOf = (CreativeLoadingMethod) obj;
        } else if (obj instanceof String) {
            try {
                creativeLoadingMethodValueOf = CreativeLoadingMethod.valueOf((String) obj);
            } catch (Throwable unused) {
                creativeLoadingMethodValueOf = null;
            }
        } else {
            creativeLoadingMethodValueOf = null;
        }
        int i = creativeLoadingMethodValueOf == null ? -1 : WhenMappings.$EnumSwitchMapping$0[creativeLoadingMethodValueOf.ordinal()];
        return i != -1 ? i != 1 ? i != 2 ? DEFAULT_CACHE_CONTROL : CacheControl.PartialLoad : CacheControl.Stream : DEFAULT_CACHE_CONTROL;
    }

    public final IabElementStyle toIabElementStyle(Object obj) {
        if (obj instanceof AdExtension.ControlAsset) {
            return ProtoUtilsKt.toIabElementStyle((AdExtension.ControlAsset) obj);
        }
        return null;
    }
}
