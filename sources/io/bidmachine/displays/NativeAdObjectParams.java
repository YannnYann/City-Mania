package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import com.ironsource.C3522b4;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.TrackEventType;
import io.bidmachine.displays.mapper.DisclaimerDataMapper;
import io.bidmachine.displays.mapper.LabelDataMapper;
import io.bidmachine.displays.mapper.PositionDataMapper;
import io.bidmachine.displays.mapper.PrivacySheetDataMapper;
import io.bidmachine.internal.C4227k;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NativeAdObjectParams extends DisplayAdObjectParams {
    public final DisclaimerDataMapper disclaimerDataMapper;
    public final LabelDataMapper labelDataMapper;
    public final PositionDataMapper positionDataMapper;
    public final PrivacySheetDataMapper privacySheetDataMapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdObjectParams(Ad ad) {
        super(ad);
        Intrinsics.checkNotNullParameter(ad, "ad");
        PositionDataMapper positionDataMapper = new PositionDataMapper();
        this.positionDataMapper = positionDataMapper;
        LabelDataMapper labelDataMapper = new LabelDataMapper(positionDataMapper);
        this.labelDataMapper = labelDataMapper;
        this.privacySheetDataMapper = new PrivacySheetDataMapper(labelDataMapper);
        this.disclaimerDataMapper = new DisclaimerDataMapper();
        Ad.Display.Native r6 = ad.getDisplay().getNative();
        Intrinsics.checkNotNullExpressionValue(r6, "ad.display.native");
        Ad.Display.Native.LinkAsset link = r6.getLink();
        if (link != null && link != Ad.Display.Native.LinkAsset.getDefaultInstance()) {
            Map<String, Object> data = getData();
            String url = link.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "linkAsset.url");
            data.put("clickUrl", url);
            int trkrCount = link.getTrkrCount();
            for (int i = 0; i < trkrCount; i++) {
                addEvent(TrackEventType.Click, link.getTrkr(i));
            }
        }
        for (Ad.Display.Native.Asset asset : r6.getAssetList()) {
            int id = asset.getId();
            if (id == 4) {
                Ad.Display.Native.Asset.VideoAsset defaultInstance = Ad.Display.Native.Asset.VideoAsset.getDefaultInstance();
                Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
                if (!Intrinsics.areEqual(asset.getVideo().getCurl(), defaultInstance.getCurl())) {
                    Map<String, Object> data2 = getData();
                    String curl = asset.getVideo().getCurl();
                    Intrinsics.checkNotNullExpressionValue(curl, "asset.video.curl");
                    data2.put("videoUrl", curl);
                }
                if (!Intrinsics.areEqual(asset.getVideo().getAdm(), defaultInstance.getAdm())) {
                    Map<String, Object> data3 = getData();
                    String adm = asset.getVideo().getAdm();
                    Intrinsics.checkNotNullExpressionValue(adm, "asset.video.adm");
                    data3.put("videoAdm", adm);
                }
            } else if (id == 7) {
                try {
                    Map<String, Object> data4 = getData();
                    String value = asset.getData().getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "asset.data.value");
                    data4.put("rating", Float.valueOf(Float.parseFloat(value)));
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable unused) {
                }
            } else if (id == 8) {
                Map<String, Object> data5 = getData();
                String value2 = asset.getData().getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "asset.data.value");
                data5.put(C3522b4.i.G0, value2);
            } else if (id == 123) {
                Map<String, Object> data6 = getData();
                String text = asset.getTitle().getText();
                Intrinsics.checkNotNullExpressionValue(text, "asset.title.text");
                data6.put(C3522b4.i.D0, text);
            } else if (id == 124) {
                Map<String, Object> data7 = getData();
                String url2 = asset.getImage().getUrl();
                Intrinsics.checkNotNullExpressionValue(url2, "asset.image.url");
                data7.put("iconUrl", url2);
            } else if (id == 127) {
                Map<String, Object> data8 = getData();
                String value3 = asset.getData().getValue();
                Intrinsics.checkNotNullExpressionValue(value3, "asset.data.value");
                data8.put("description", value3);
            } else if (id != 128) {
                switch (id) {
                    case 101:
                        LabelDataMapper labelDataMapper2 = this.labelDataMapper;
                        Ad.Display.Native.Asset.LabelAsset label = asset.getLabel();
                        Intrinsics.checkNotNullExpressionValue(label, "asset.label");
                        LabelData map = labelDataMapper2.map(label);
                        if (map != null) {
                            getData().put("adLabel", map);
                        }
                        break;
                    case 102:
                        PrivacySheetDataMapper privacySheetDataMapper = this.privacySheetDataMapper;
                        Intrinsics.checkNotNullExpressionValue(asset, "asset");
                        PrivacySheetData map2 = privacySheetDataMapper.map(asset);
                        if (map2 != null) {
                            getData().put("privacySheet", map2);
                        }
                        break;
                    case 103:
                        DisclaimerDataMapper disclaimerDataMapper = this.disclaimerDataMapper;
                        Intrinsics.checkNotNullExpressionValue(asset, "asset");
                        C4227k map3 = disclaimerDataMapper.map(asset);
                        if (map3 != null) {
                            getData().put("disclaimer", map3);
                        }
                        break;
                }
            } else {
                Map<String, Object> data9 = getData();
                String url3 = asset.getImage().getUrl();
                Intrinsics.checkNotNullExpressionValue(url3, "asset.image.url");
                data9.put("imageUrl", url3);
            }
        }
    }

    @Override // io.bidmachine.displays.IabAdObjectParams, io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        return true;
    }
}
