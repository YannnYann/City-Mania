package io.bidmachine.displays.mapper;

import com.explorestack.protobuf.adcom.NativeAssetPosition;
import io.bidmachine.PositionData;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PositionDataMapper {

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NativeAssetPosition.values().length];
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NativeAssetPosition.ASSET_POSITION_BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final PositionData map(NativeAssetPosition data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            int i = WhenMappings.$EnumSwitchMapping$0[data.ordinal()];
            if (i == 1) {
                return PositionData.TopLeft;
            }
            if (i == 2) {
                return PositionData.TopRight;
            }
            if (i == 3) {
                return PositionData.BottomLeft;
            }
            if (i != 4) {
                return null;
            }
            return PositionData.BottomRight;
        } catch (Throwable unused) {
            return null;
        }
    }
}
