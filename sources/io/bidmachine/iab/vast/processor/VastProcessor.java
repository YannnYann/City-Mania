package io.bidmachine.iab.vast.processor;

import android.util.Pair;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.VastLog;
import io.bidmachine.iab.vast.VastRequest;
import io.bidmachine.iab.vast.VastSpecError;
import io.bidmachine.iab.vast.tags.AdContentTag;
import io.bidmachine.iab.vast.tags.AdTag;
import io.bidmachine.iab.vast.tags.AdVerificationsExtensionTag;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.CompanionAdsCreativeTag;
import io.bidmachine.iab.vast.tags.CompanionTag;
import io.bidmachine.iab.vast.tags.CreativeContentTag;
import io.bidmachine.iab.vast.tags.CreativeTag;
import io.bidmachine.iab.vast.tags.ExtensionTag;
import io.bidmachine.iab.vast.tags.InLineAdTag;
import io.bidmachine.iab.vast.tags.LinearCreativeTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import io.bidmachine.iab.vast.tags.VastParser;
import io.bidmachine.iab.vast.tags.VastTag;
import io.bidmachine.iab.vast.tags.VideoClicksTag;
import io.bidmachine.iab.vast.tags.WrapperAdTag;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public class VastProcessor {
    public final VastRequest a;
    public final VastMediaPicker b;
    public final int c;
    public final Stack d;
    public int e;

    public VastProcessor(VastRequest vastRequest, VastMediaPicker<MediaFileTag> mediaPicker) {
        this(vastRequest, mediaPicker, 5);
    }

    public final VastProcessorResult a(AdContentTag adContentTag, VastTag vastTag, a aVar) {
        VastProcessorResult vastProcessorResult = new VastProcessorResult();
        int i = 0;
        while (true) {
            if (i < vastTag.getAdTagList().size()) {
                AdTag adTag = vastTag.getAdTagList().get(i);
                if (adTag != null && adTag.getAdContentTag() != null) {
                    AdContentTag adContentTag2 = adTag.getAdContentTag();
                    if (!(adContentTag2 instanceof InLineAdTag)) {
                        if ((adContentTag2 instanceof WrapperAdTag) && aVar.c()) {
                            VastProcessorResult vastProcessorResultA = a((WrapperAdTag) adContentTag2);
                            if (!vastProcessorResultA.hasVastAd()) {
                                a(vastProcessorResultA.a());
                                if (adContentTag == null) {
                                    vastProcessorResult.a(VastSpecError.WRAPPER_RESPONSE_NO_AD);
                                } else if (vastProcessorResultA.b()) {
                                    VastSpecError vastSpecError = vastProcessorResultA.getVastSpecError();
                                    if (vastSpecError == null) {
                                        vastSpecError = VastSpecError.UNKNOWN;
                                    }
                                    vastProcessorResult.a(adContentTag, vastSpecError);
                                } else {
                                    vastProcessorResult.a(adContentTag, VastSpecError.WRAPPER_RESPONSE_NO_AD);
                                }
                                if (i == 0 && !aVar.b()) {
                                    break;
                                }
                            } else {
                                return vastProcessorResultA;
                            }
                        }
                    } else {
                        VastProcessorResult vastProcessorResultB = b((InLineAdTag) adContentTag2);
                        if (vastProcessorResultB.hasVastAd()) {
                            return vastProcessorResultB;
                        }
                        a(vastProcessorResultB.a());
                        if (adContentTag == null) {
                            vastProcessorResult.a(vastProcessorResultB.getVastSpecError());
                        } else if (vastProcessorResultB.b()) {
                            VastSpecError vastSpecError2 = vastProcessorResultB.getVastSpecError();
                            if (vastSpecError2 == null) {
                                vastSpecError2 = VastSpecError.UNKNOWN;
                            }
                            vastProcessorResult.a(adContentTag, vastSpecError2);
                        }
                    }
                    b(adContentTag2);
                }
                i++;
            } else if (vastProcessorResult.getVastSpecError() == null && adContentTag != null) {
                vastProcessorResult.a(adContentTag, VastSpecError.WRAPPER_RESPONSE_NO_AD);
            }
        }
        return vastProcessorResult;
    }

    public final VastProcessorResult b(InLineAdTag inLineAdTag) {
        this.d.push(inLineAdTag);
        VastProcessorResult vastProcessorResult = new VastProcessorResult();
        Pair pairA = a(inLineAdTag);
        if (pairA == null) {
            vastProcessorResult.a(inLineAdTag, VastSpecError.XML_VALIDATE);
            return vastProcessorResult;
        }
        if (pairA.first == null && pairA.second == null) {
            vastProcessorResult.a(inLineAdTag, VastSpecError.BAD_FILE);
            return vastProcessorResult;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList<String> arrayList3 = new ArrayList<>();
        EnumMap enumMap = new EnumMap(TrackingEvent.class);
        ArrayList arrayList4 = new ArrayList();
        AppodealExtensionTag appodealExtensionTag = null;
        if (!this.d.empty()) {
            for (AdContentTag adContentTag : this.d) {
                if (adContentTag != null) {
                    if (adContentTag.getImpressionUrlList() != null) {
                        arrayList.addAll(adContentTag.getImpressionUrlList());
                    }
                    List<CreativeTag> creativeTagList = adContentTag.getCreativeTagList();
                    if (creativeTagList != null) {
                        for (CreativeTag creativeTag : creativeTagList) {
                            if (creativeTag != null) {
                                CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                                if (creativeContentTag instanceof LinearCreativeTag) {
                                    LinearCreativeTag linearCreativeTag = (LinearCreativeTag) creativeContentTag;
                                    VideoClicksTag videoClicksTag = linearCreativeTag.getVideoClicksTag();
                                    if (videoClicksTag != null && videoClicksTag.getClickTrackingUrlList() != null) {
                                        arrayList2.addAll(videoClicksTag.getClickTrackingUrlList());
                                    }
                                    a(enumMap, linearCreativeTag.getTrackingEventListMap());
                                } else if (creativeContentTag instanceof CompanionAdsCreativeTag) {
                                    a(arrayList3, (CompanionAdsCreativeTag) creativeContentTag);
                                }
                            }
                        }
                    }
                    List<ExtensionTag> extensionTagList = adContentTag.getExtensionTagList();
                    if (extensionTagList != null) {
                        for (ExtensionTag extensionTag : extensionTagList) {
                            if (extensionTag instanceof AppodealExtensionTag) {
                                if (appodealExtensionTag == null) {
                                    appodealExtensionTag = (AppodealExtensionTag) extensionTag;
                                }
                            } else if (extensionTag instanceof AdVerificationsExtensionTag) {
                                arrayList4.add((AdVerificationsExtensionTag) extensionTag);
                            }
                        }
                    }
                }
            }
        }
        VastAd vastAd = new VastAd((LinearCreativeTag) pairA.first, (MediaFileTag) pairA.second);
        vastAd.d(arrayList);
        vastAd.c(a());
        vastAd.a(arrayList2);
        vastAd.setWrapperCompanionClickTrackingUrlList(arrayList3);
        vastAd.a(enumMap);
        vastAd.b(a((AdContentTag) inLineAdTag));
        vastAd.a(appodealExtensionTag);
        vastAd.setAdVerificationsExtensionList(arrayList4);
        vastProcessorResult.a(vastAd);
        return vastProcessorResult;
    }

    public VastProcessorResult process(String xmlData) {
        VastLog.d("VastProcessor", "process", new Object[0]);
        VastProcessorResult vastProcessorResult = new VastProcessorResult();
        try {
            VastTag vast = VastParser.parseVast(xmlData);
            if (vast != null && vast.hasAd()) {
                return a(null, vast, new a());
            }
            vastProcessorResult.a(VastSpecError.XML_VALIDATE);
            return vastProcessorResult;
        } catch (Exception unused) {
            vastProcessorResult.a(VastSpecError.XML_PARSING);
            return vastProcessorResult;
        }
    }

    public VastProcessor(VastRequest vastRequest, VastMediaPicker vastMediaPicker, int i) {
        this.e = 0;
        this.a = vastRequest;
        this.b = vastMediaPicker;
        this.c = i;
        this.d = new Stack();
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0134 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public io.bidmachine.iab.vast.processor.VastProcessorResult a(io.bidmachine.iab.vast.tags.WrapperAdTag r10) {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.vast.processor.VastProcessor.a(io.bidmachine.iab.vast.tags.WrapperAdTag):io.bidmachine.iab.vast.processor.VastProcessorResult");
    }

    public final boolean b() {
        return this.e >= this.c;
    }

    public void b(AdContentTag adContentTag) {
        if (this.d.empty()) {
            return;
        }
        int iSearch = this.d.search(adContentTag);
        for (int i = 0; i < iSearch; i++) {
            this.d.pop();
        }
    }

    public final ArrayList a(AdContentTag adContentTag) {
        ArrayList arrayList = new ArrayList();
        List<CreativeTag> creativeTagList = adContentTag.getCreativeTagList();
        if (creativeTagList != null) {
            for (CreativeTag creativeTag : creativeTagList) {
                if (creativeTag != null) {
                    CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                    if (creativeContentTag instanceof CompanionAdsCreativeTag) {
                        arrayList.addAll(((CompanionAdsCreativeTag) creativeContentTag).getCompanionTagList());
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        if (!this.d.empty()) {
            for (AdContentTag adContentTag : this.d) {
                if (adContentTag != null && adContentTag.getErrorUrlList() != null) {
                    arrayList.addAll(adContentTag.getErrorUrlList());
                }
            }
        }
        return arrayList;
    }

    public final Pair a(InLineAdTag inLineAdTag) {
        LinearCreativeTag linearCreativeTag;
        List<MediaFileTag> mediaFileTagList;
        List<CreativeTag> creativeTagList = inLineAdTag.getCreativeTagList();
        if (creativeTagList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (CreativeTag creativeTag : creativeTagList) {
            if (creativeTag != null) {
                CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                if ((creativeContentTag instanceof LinearCreativeTag) && (mediaFileTagList = (linearCreativeTag = (LinearCreativeTag) creativeContentTag).getMediaFileTagList()) != null && !mediaFileTagList.isEmpty()) {
                    Iterator<MediaFileTag> it = mediaFileTagList.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new Pair(linearCreativeTag, it.next()));
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Pair pairPickVideo = this.b.pickVideo(arrayList);
        return pairPickVideo != null ? pairPickVideo : new Pair(null, null);
    }

    public final void a(Map map, Map map2) {
        if (map2 == null || map2.isEmpty()) {
            return;
        }
        for (Map.Entry entry : map2.entrySet()) {
            TrackingEvent trackingEvent = (TrackingEvent) entry.getKey();
            List arrayList = (List) map.get(trackingEvent);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(trackingEvent, arrayList);
            }
            arrayList.addAll((Collection) entry.getValue());
        }
    }

    public final void a(List list, CompanionAdsCreativeTag companionAdsCreativeTag) {
        List<String> companionClickTrackingList;
        for (CompanionTag companionTag : companionAdsCreativeTag.getCompanionTagList()) {
            if (!companionTag.hasCreative() && (companionClickTrackingList = companionTag.getCompanionClickTrackingList()) != null) {
                list.addAll(companionClickTrackingList);
            }
        }
    }

    public void a(List list) {
        this.a.fireErrorUrls(list, null);
    }
}
