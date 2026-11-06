package com.unity3d.services.core.network.mapper;

import com.unity3d.services.core.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: HttpRequestToOkHttpRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class HttpRequestToOkHttpRequestKt {
    private static final String PROTOBUF_MEDIA_TYPE = "application/x-protobuf";

    private static final RequestBody generateOkHttpBody(Object obj) {
        if (obj instanceof byte[]) {
            RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(...)");
            return requestBodyCreate;
        }
        if (obj instanceof String) {
            RequestBody requestBodyCreate2 = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), (String) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate2, "create(...)");
            return requestBodyCreate2;
        }
        RequestBody requestBodyCreate3 = RequestBody.create(MediaType.parse("text/plain;charset=utf-8"), "");
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate3, "create(...)");
        return requestBodyCreate3;
    }

    public static /* synthetic */ RequestBody generateOkHttpProtobufBody$default(Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = "application/x-protobuf";
        }
        return generateOkHttpProtobufBody(obj, str);
    }

    private static final RequestBody generateOkHttpProtobufBody(Object obj, String str) {
        if (obj instanceof byte[]) {
            RequestBody requestBodyCreate = RequestBody.create(MediaType.parse(str), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(...)");
            return requestBodyCreate;
        }
        if (obj instanceof String) {
            RequestBody requestBodyCreate2 = RequestBody.create(MediaType.parse(str), (String) obj);
            Intrinsics.checkNotNullExpressionValue(requestBodyCreate2, "create(...)");
            return requestBodyCreate2;
        }
        RequestBody requestBodyCreate3 = RequestBody.create(MediaType.parse(str), "");
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate3, "create(...)");
        return requestBodyCreate3;
    }

    private static final Headers generateOkHttpHeaders(HttpRequest httpRequest) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            builder.add(entry.getKey(), CollectionsKt___CollectionsKt.joinToString$default(entry.getValue(), ",", null, null, 0, null, null, 62, null));
        }
        Headers headersBuild = builder.build();
        Intrinsics.checkNotNullExpressionValue(headersBuild, "build(...)");
        return headersBuild;
    }

    public static final Request toOkHttpRequest(HttpRequest httpRequest) {
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builderUrl = new Request.Builder().url(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt__StringsKt.trim(httpRequest.getPath(), '/'), "/"));
        String string = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        Request requestBuild = builderUrl.method(string, body != null ? generateOkHttpBody(body) : null).headers(generateOkHttpHeaders(httpRequest)).build();
        Intrinsics.checkNotNullExpressionValue(requestBuild, "build(...)");
        return requestBuild;
    }

    public static final Request toOkHttpProtoRequest(HttpRequest httpRequest) {
        RequestBody requestBodyGenerateOkHttpProtobufBody;
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builderUrl = new Request.Builder().url(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.trim(httpRequest.getBaseURL(), '/') + '/' + StringsKt__StringsKt.trim(httpRequest.getPath(), '/'), "/"));
        String string = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            String contentType = httpRequest.getContentType();
            if (contentType == null) {
                contentType = "application/x-protobuf";
            }
            requestBodyGenerateOkHttpProtobufBody = generateOkHttpProtobufBody(body, contentType);
        } else {
            requestBodyGenerateOkHttpProtobufBody = null;
        }
        Request requestBuild = builderUrl.method(string, requestBodyGenerateOkHttpProtobufBody).headers(generateOkHttpHeaders(httpRequest)).build();
        Intrinsics.checkNotNullExpressionValue(requestBuild, "build(...)");
        return requestBuild;
    }
}
