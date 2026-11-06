package com.google.android.libraries.ads.mobile.sdk.internal.util;

import android.os.Bundle;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BundleTypeAdapter extends TypeAdapter<Bundle> {
    public final Gson a;

    public BundleTypeAdapter(Gson gson) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.a = gson;
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public final Bundle read2(JsonReader jsonReader) {
        return new Bundle();
    }

    @Override // com.google.gson.TypeAdapter
    public final void write(JsonWriter jsonWriter, Bundle bundle) throws IOException {
        Bundle bundle2 = bundle;
        if (jsonWriter == null) {
            return;
        }
        if (bundle2 == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginObject();
        for (String str : bundle2.keySet()) {
            if (str != null) {
                jsonWriter.name(str);
                Object obj = bundle2.get(str);
                if (obj == null) {
                    jsonWriter.nullValue();
                } else {
                    this.a.toJson(obj, obj.getClass(), jsonWriter);
                }
            }
        }
        jsonWriter.endObject();
    }
}
