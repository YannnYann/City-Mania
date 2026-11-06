package com.google.android.libraries.ads.mobile.sdk.common;

import ads_mobile_sdk.f01;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public abstract class BaseRequestBuilder<T extends BaseRequestBuilder<T>> {
    public String a;
    public String c;
    public String i;
    public String j;
    public long k;
    public boolean l;
    public final LinkedHashSet b = new LinkedHashSet();
    public final LinkedHashMap d = new LinkedHashMap();
    public Bundle e = new Bundle();
    public final HashSet f = new HashSet();
    public final HashSet g = new HashSet();
    public final LinkedHashMap h = new LinkedHashMap();

    public BaseRequestBuilder(String str) {
        this.a = str;
    }

    public final T addCategoryExclusion(String categoryExclusion) {
        Intrinsics.checkNotNullParameter(categoryExclusion, "categoryExclusion");
        this.b.add(categoryExclusion);
        return (T) self();
    }

    public final T addKeyword(String keyword) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.f.add(keyword);
        return (T) self();
    }

    public final String b() {
        return this.a;
    }

    public final LinkedHashSet c() {
        return this.b;
    }

    public final String d() {
        return this.c;
    }

    public final LinkedHashMap e() {
        return this.d;
    }

    public final Bundle f() {
        return this.e;
    }

    public final HashSet g() {
        return this.f;
    }

    public final HashSet h() {
        return this.g;
    }

    public final long i() {
        return this.k;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.j;
    }

    public final boolean l() {
        return this.l;
    }

    public final T putCustomTargeting(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.d.put(key, value);
        return (T) self();
    }

    public abstract BaseRequestBuilder self();

    public final T setContentUrl(String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        if (contentUrl.length() <= 0) {
            throw new IllegalArgumentException("Content URL must be non-empty.");
        }
        this.c = contentUrl;
        return (T) self();
    }

    public final T setGoogleExtrasBundle(Bundle extraBundle) {
        Intrinsics.checkNotNullParameter(extraBundle, "extraBundle");
        if (Build.VERSION.SDK_INT >= 26) {
            extraBundle = extraBundle.deepCopy();
            Intrinsics.checkNotNull(extraBundle);
        }
        this.e = extraBundle;
        return (T) self();
    }

    public final T setNeighboringContentUrls(Set<String> neighboringContentUrls) {
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        this.g.clear();
        for (String str : neighboringContentUrls) {
            if (str.length() == 0) {
                f01.c("Neighboring content URL should not be empty.", null);
            } else {
                this.g.add(str);
            }
        }
        return (T) self();
    }

    public final T setPublisherProvidedId(String publisherProvidedId) {
        Intrinsics.checkNotNullParameter(publisherProvidedId, "publisherProvidedId");
        this.i = publisherProvidedId;
        return (T) self();
    }

    public final T setRequestAgent(String requestAgent) {
        Intrinsics.checkNotNullParameter(requestAgent, "requestAgent");
        this.j = requestAgent;
        return (T) self();
    }

    public final LinkedHashMap a() {
        return this.h;
    }
}
