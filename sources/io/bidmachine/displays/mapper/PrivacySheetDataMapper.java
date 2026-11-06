package io.bidmachine.displays.mapper;

import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.PrivacySheetParamsParser;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PrivacySheetDataMapper {
    public final LabelDataMapper labelDataMapper;

    public PrivacySheetDataMapper(LabelDataMapper labelDataMapper) {
        Intrinsics.checkNotNullParameter(labelDataMapper, "labelDataMapper");
        this.labelDataMapper = labelDataMapper;
    }

    public final PrivacySheetData map(Ad.Display.Native.Asset data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            String value = data.getData().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "data.data.value");
            PrivacySheetParams json = PrivacySheetParamsParser.parseJson(value);
            if (json == null) {
                return null;
            }
            LabelDataMapper labelDataMapper = this.labelDataMapper;
            Ad.Display.Native.Asset.LabelAsset label = data.getLabel();
            Intrinsics.checkNotNullExpressionValue(label, "data.label");
            LabelData map = labelDataMapper.map(label);
            if (map == null) {
                return null;
            }
            return new PrivacySheetData(map, json);
        } catch (Throwable unused) {
            return null;
        }
    }
}
