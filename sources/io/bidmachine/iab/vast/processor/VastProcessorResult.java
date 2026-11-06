package io.bidmachine.iab.vast.processor;

import android.os.Bundle;
import android.text.TextUtils;
import io.bidmachine.iab.vast.VastSpecError;
import io.bidmachine.iab.vast.VastUrlProcessorRegistry;
import io.bidmachine.iab.vast.tags.AdContentTag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class VastProcessorResult {
    public VastAd b;
    public VastSpecError c;
    public final List a = new ArrayList();
    public boolean d = true;

    public List a() {
        return this.a;
    }

    public boolean b() {
        return this.d;
    }

    public VastAd getVastAd() {
        return this.b;
    }

    public VastSpecError getVastSpecError() {
        return this.c;
    }

    public boolean hasVastAd() {
        return this.b != null;
    }

    public void a(VastSpecError vastSpecError) {
        this.c = vastSpecError;
    }

    public void a(VastAd vastAd) {
        this.b = vastAd;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public void a(AdContentTag adContentTag, VastSpecError vastSpecError) {
        a(vastSpecError);
        Bundle bundle = new Bundle();
        bundle.putInt("params_error_code", vastSpecError.getCode());
        List<String> errorUrlList = adContentTag.getErrorUrlList();
        if (errorUrlList == null || errorUrlList.isEmpty()) {
            return;
        }
        Iterator<String> it = errorUrlList.iterator();
        while (it.hasNext()) {
            String strProcessUrl = VastUrlProcessorRegistry.processUrl(it.next(), bundle);
            if (!TextUtils.isEmpty(strProcessUrl)) {
                this.a.add(strProcessUrl);
            }
        }
    }
}
