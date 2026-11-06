package ads_mobile_sdk;

import androidx.webkit.StartUpLocation;
import androidx.webkit.WebViewStartUpResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zy3 implements j41 {
    public final /* synthetic */ WebViewStartUpResult a;

    public zy3(WebViewStartUpResult webViewStartUpResult) {
        this.a = webViewStartUpResult;
    }

    @Override // ads_mobile_sdk.j41
    public final Long getTotalTimeInUiThreadMillis() {
        try {
            return this.a.getTotalTimeInUiThreadMillis();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // ads_mobile_sdk.j41
    public final Long getMaxTimePerTaskInUiThreadMillis() {
        try {
            return this.a.getMaxTimePerTaskInUiThreadMillis();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // ads_mobile_sdk.j41
    public final List b() {
        try {
            List<StartUpLocation> uiThreadBlockingStartUpLocations = this.a.getUiThreadBlockingStartUpLocations();
            if (uiThreadBlockingStartUpLocations != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = uiThreadBlockingStartUpLocations.iterator();
                while (it.hasNext()) {
                    String stackInformation = ((StartUpLocation) it.next()).getStackInformation();
                    if (stackInformation == null) {
                        stackInformation = null;
                    }
                    if (stackInformation != null) {
                        arrayList.add(stackInformation);
                    }
                }
                return arrayList;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @Override // ads_mobile_sdk.j41
    public final List a() {
        try {
            List<StartUpLocation> nonUiThreadBlockingStartUpLocations = this.a.getNonUiThreadBlockingStartUpLocations();
            if (nonUiThreadBlockingStartUpLocations != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<T> it = nonUiThreadBlockingStartUpLocations.iterator();
                while (it.hasNext()) {
                    String stackInformation = ((StartUpLocation) it.next()).getStackInformation();
                    if (stackInformation == null) {
                        stackInformation = null;
                    }
                    if (stackInformation != null) {
                        arrayList.add(stackInformation);
                    }
                }
                return arrayList;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
