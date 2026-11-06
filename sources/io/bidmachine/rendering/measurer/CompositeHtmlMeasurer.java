package io.bidmachine.rendering.measurer;

import android.webkit.WebView;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CompositeHtmlMeasurer extends BaseCompositeMeasurer<HtmlMeasurer, WebView> implements HtmlMeasurer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompositeHtmlMeasurer(List<? extends HtmlMeasurer> measurerList) {
        super(measurerList);
        Intrinsics.checkNotNullParameter(measurerList, "measurerList");
    }

    @Override // io.bidmachine.rendering.measurer.HtmlMeasurer
    public String prepareCreativeForMeasure(String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        Iterator<T> it = getMeasurerList().iterator();
        while (it.hasNext()) {
            html = ((HtmlMeasurer) it.next()).prepareCreativeForMeasure(html);
        }
        return html;
    }
}
