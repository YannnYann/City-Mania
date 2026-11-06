package io.bidmachine.rendering.measurer;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CompositeHtmlMeasurerFactory implements HtmlMeasurerFactory {
    public final List a;

    public CompositeHtmlMeasurerFactory(List<? extends MeasurerFactory> list) {
        this.a = list;
    }

    @Override // io.bidmachine.rendering.measurer.HtmlMeasurerFactory
    public HtmlMeasurer createHtmlMeasurer(Context context) {
        HtmlMeasurer htmlMeasurerCreateHtmlMeasurer;
        Intrinsics.checkNotNullParameter(context, "context");
        List list = this.a;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        List list2 = this.a;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            try {
                htmlMeasurerCreateHtmlMeasurer = ((MeasurerFactory) it.next()).createHtmlMeasurer(applicationContext);
            } catch (Throwable unused) {
                htmlMeasurerCreateHtmlMeasurer = null;
            }
            if (htmlMeasurerCreateHtmlMeasurer != null) {
                arrayList.add(htmlMeasurerCreateHtmlMeasurer);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new CompositeHtmlMeasurer(arrayList);
    }
}
