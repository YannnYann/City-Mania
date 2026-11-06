package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
import com.unity3d.ads.core.data.datasource.AndroidGoogleAppIdDataSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class FirebaseOptions {
    public final String apiKey;
    public final String applicationId;
    public final String databaseUrl;
    public final String gaTrackingId;
    public final String gcmSenderId;
    public final String projectId;
    public final String recaptchaSiteKey;
    public final String storageBucket;

    public FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.applicationId = str;
        this.apiKey = str2;
        this.databaseUrl = str3;
        this.gaTrackingId = str4;
        this.gcmSenderId = str5;
        this.storageBucket = str6;
        this.recaptchaSiteKey = str7;
        this.projectId = str8;
    }

    public static FirebaseOptions fromResource(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString(AndroidGoogleAppIdDataSource.GOOGLE_APP_ID_RESOURCE_NAME);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new FirebaseOptions(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("recaptcha_site_key"), stringResourceValueReader.getString("project_id"));
    }

    public String getApiKey() {
        return this.apiKey;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getGcmSenderId() {
        return this.gcmSenderId;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return Objects.equals(this.applicationId, firebaseOptions.applicationId) && Objects.equals(this.apiKey, firebaseOptions.apiKey) && Objects.equals(this.databaseUrl, firebaseOptions.databaseUrl) && Objects.equals(this.gaTrackingId, firebaseOptions.gaTrackingId) && Objects.equals(this.gcmSenderId, firebaseOptions.gcmSenderId) && Objects.equals(this.storageBucket, firebaseOptions.storageBucket) && Objects.equals(this.recaptchaSiteKey, firebaseOptions.recaptchaSiteKey) && Objects.equals(this.projectId, firebaseOptions.projectId);
    }

    public int hashCode() {
        return Objects.hash(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.recaptchaSiteKey, this.projectId);
    }

    public String toString() {
        return com.google.android.gms.common.internal.Objects.toStringHelper(this).add("applicationId", this.applicationId).add("apiKey", this.apiKey).add("databaseUrl", this.databaseUrl).add("gcmSenderId", this.gcmSenderId).add("storageBucket", this.storageBucket).add("recaptchaSiteKey", this.recaptchaSiteKey).add("projectId", this.projectId).toString();
    }
}
