package io.bidmachine.iab.mraid;

import android.net.Uri;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidNativeFeatureUrlParser {
    public final b a = new b();

    public MraidCalendarEvent parseCalendarEvent(Uri uri) {
        try {
            return this.a.a(Uri.decode(uri.getQueryParameter("eventJson")));
        } catch (Exception e) {
            MraidLog.e("MraidNativeFeatureUrlParser", e);
            return null;
        }
    }

    public Uri parseStorePictureUri(Uri uri) {
        try {
            return Uri.parse(Uri.decode(uri.getQueryParameter("url")));
        } catch (Exception e) {
            MraidLog.e("MraidNativeFeatureUrlParser", e);
            return null;
        }
    }
}
