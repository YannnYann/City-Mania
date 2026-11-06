package io.bidmachine.displays.mapper;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.NativeAssetPosition;
import io.bidmachine.LabelData;
import io.bidmachine.PositionData;
import io.bidmachine.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
public final class LabelDataMapper {
    public final PositionDataMapper positionDataMapper;

    public LabelDataMapper(PositionDataMapper positionDataMapper) {
        Intrinsics.checkNotNullParameter(positionDataMapper, "positionDataMapper");
        this.positionDataMapper = positionDataMapper;
    }

    public final LabelData map(Ad.Display.Native.Asset.LabelAsset data) {
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            PositionDataMapper positionDataMapper = this.positionDataMapper;
            NativeAssetPosition pos = data.getPos();
            Intrinsics.checkNotNullExpressionValue(pos, "data.pos");
            PositionData map = positionDataMapper.map(pos);
            if (map != null) {
                String content = data.getContent();
                Intrinsics.checkNotNullExpressionValue(content, "data.content");
                byte[] bytes = content.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                byte[] bArrDecodeBase64$default = UtilsKt.decodeBase64$default(bytes, 0, 1, (Object) null);
                if (bArrDecodeBase64$default != null) {
                    Bitmap image = BitmapFactory.decodeByteArray(bArrDecodeBase64$default, 0, bArrDecodeBase64$default.length);
                    float w = data.getW();
                    float h = data.getH();
                    Intrinsics.checkNotNullExpressionValue(image, "image");
                    return new LabelData(w, h, image, map);
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
