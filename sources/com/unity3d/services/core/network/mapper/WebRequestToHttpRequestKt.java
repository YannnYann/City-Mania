package com.unity3d.services.core.network.mapper;

import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.RequestType;
import com.unity3d.services.core.request.WebRequest;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebRequestToHttpRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class WebRequestToHttpRequestKt {
    public static final HttpRequest toHttpRequest(WebRequest webRequest) {
        Intrinsics.checkNotNullParameter(webRequest, "<this>");
        String string = webRequest.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String requestType = webRequest.getRequestType();
        Intrinsics.checkNotNullExpressionValue(requestType, "getRequestType(...)");
        RequestType requestTypeValueOf = RequestType.valueOf(requestType);
        Map<String, List<String>> headers = webRequest.getHeaders();
        Intrinsics.checkNotNullExpressionValue(headers, "getHeaders(...)");
        return new HttpRequest(string, null, requestTypeValueOf, webRequest.getBody(), headers, null, null, null, null, null, 0, 0, 0, 0, false, null, null, 0, 262114, null);
    }
}
