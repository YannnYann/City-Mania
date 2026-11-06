package io.bidmachine.rendering.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class EventParams {
    public final EventType a;
    public final String b;
    public final List c;
    public final String d;

    public EventParams(EventType eventType, String source, String str, List<EventTaskBucketParams> eventTaskBucketParamsList) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
        this.a = eventType;
        this.b = str;
        this.c = eventTaskBucketParamsList;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = source.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.d = lowerCase;
    }

    public final List<EventTaskBucketParams> getEventTaskBucketParamsList() {
        return this.c;
    }

    public final EventType getEventType() {
        return this.a;
    }

    public final String getRequestPermissionUrl() {
        return this.b;
    }

    public final String getSource() {
        return this.d;
    }

    public final boolean isEmpty() {
        String str = this.b;
        return (str == null || StringsKt__StringsKt.isBlank(str)) && this.c.isEmpty();
    }

    public final EventParams mergeWith(EventParams eventParams) {
        Intrinsics.checkNotNullParameter(eventParams, "eventParams");
        if (this.a != eventParams.a || !Intrinsics.areEqual(this.d, eventParams.d)) {
            return this;
        }
        Builder builder = new Builder(this);
        String str = this.b;
        if (str == null || StringsKt__StringsKt.isBlank(str)) {
            builder.setRequestPermissionUrl(eventParams.b);
        }
        builder.addEventTaskBucketParamsList(eventParams.c);
        return builder.build();
    }

    public static final class Builder {
        public final EventType a;
        public final String b;
        public String c;
        public List d;

        public final Builder addEventTaskBucketParamsList(List<EventTaskBucketParams> eventTaskBucketParamsList) {
            Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
            this.d.addAll(eventTaskBucketParamsList);
            return this;
        }

        public final EventParams build() {
            return new EventParams(this.a, this.b, this.c, this.d);
        }

        public final Builder setRequestPermissionUrl(String str) {
            this.c = str;
            return this;
        }

        public Builder(EventType eventType, String source, String str, List<EventTaskBucketParams> eventTaskBucketParamsList) {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
            this.a = eventType;
            this.b = source;
            this.c = str;
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(eventTaskBucketParamsList);
            this.d = arrayList;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(EventParams eventParams) {
            this(eventParams.getEventType(), eventParams.getSource(), eventParams.getRequestPermissionUrl(), eventParams.getEventTaskBucketParamsList());
            Intrinsics.checkNotNullParameter(eventParams, "eventParams");
        }
    }

    public /* synthetic */ EventParams(EventType eventType, String str, String str2, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(eventType, str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list);
    }
}
