package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.openrtb.Openrtb;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.analytics.events.SDKEvent;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.net.SocketTimeoutException;
import java.net.URLConnection;
import java.net.UnknownHostException;
import org.apache.http.conn.ConnectTimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public class ApiRequest<RequestDataType, ResponseType> extends NetworkRequest<RequestDataType, ResponseType, BMError> {
    static int REQUEST_TIMEOUT = 10000;
    String requiredUrl;
    int timeOut;

    public static class ApiAuctionDataBinder extends ApiResponseAuctionDataBinder {
        @Override // io.bidmachine.ApiRequest.ApiResponseAuctionDataBinder, io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<Request, Response, BMError>) networkRequest, uRLConnection, (Request) obj);
        }

        @Override // io.bidmachine.ApiRequest.ApiResponseAuctionDataBinder
        public byte[] obtainData(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection, Request request) throws Exception {
            Openrtb.Builder builderNewBuilder = Openrtb.newBuilder();
            builderNewBuilder.setRequest(request);
            builderNewBuilder.setVer("3.0");
            builderNewBuilder.setDomainspec("adcom");
            builderNewBuilder.setDomainver("1.0");
            A.b("Auction Request", builderNewBuilder);
            return builderNewBuilder.build().toByteArray();
        }
    }

    public static abstract class ApiDataBinder<RequestDataType, ResponseDataType> extends NetworkRequest.RequestDataBinder<RequestDataType, ResponseDataType, BMError> {
    }

    public static class ApiEventDataBinder extends ApiDataBinder<SDKEvent, Void> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public Void createSuccessResult(NetworkRequest<SDKEvent, Void, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<SDKEvent, Void, BMError>) networkRequest, uRLConnection, (SDKEvent) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<SDKEvent, Void, BMError> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<SDKEvent, Void, BMError>) networkRequest, uRLConnection, bArr);
        }

        public byte[] obtainData(NetworkRequest<SDKEvent, Void, BMError> networkRequest, URLConnection uRLConnection, SDKEvent sDKEvent) throws Exception {
            if (sDKEvent != null) {
                return sDKEvent.toByteArray();
            }
            return null;
        }
    }

    public static class ApiInitDataBinder extends ApiDataBinder<InitRequest, InitResponse> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<InitRequest, InitResponse, BMError>) networkRequest, uRLConnection, bArr);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<InitRequest, InitResponse, BMError>) networkRequest, uRLConnection, (InitRequest) obj);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public InitResponse createSuccessResult(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            InitResponse from = InitResponse.parseFrom(bArr);
            A.b("Init Response", from);
            return from;
        }

        public byte[] obtainData(NetworkRequest<InitRequest, InitResponse, BMError> networkRequest, URLConnection uRLConnection, InitRequest initRequest) throws Exception {
            A.b("Init Request", initRequest);
            if (initRequest != null) {
                return initRequest.toByteArray();
            }
            return null;
        }
    }

    public static class ApiResponseAuctionDataBinder extends ApiDataBinder<Request, Response> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<Request, Response, BMError>) networkRequest, uRLConnection, bArr);
        }

        public byte[] obtainData(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection, Request request) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Content-Type", CommonGatewayClient.HEADER_PROTOBUF);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public Response createSuccessResult(NetworkRequest<Request, Response, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            Openrtb from = Openrtb.parseFrom(bArr);
            if (from == null) {
                return null;
            }
            A.b("Auction Response", from);
            return from.getResponse();
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ byte[] obtainData(NetworkRequest networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return obtainData((NetworkRequest<Request, Response, BMError>) networkRequest, uRLConnection, (Request) obj);
        }
    }

    public static class ApiTrackerDataBinder extends ApiDataBinder<Object, String> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public String createSuccessResult(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public byte[] obtainData(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection, Object obj) throws Exception {
            return null;
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public void prepareHeaders(NetworkRequest<Object, String, BMError> networkRequest, URLConnection uRLConnection) {
            String userAgent = UserAgentManager.getUserAgent();
            if (TextUtils.isEmpty(userAgent)) {
                return;
            }
            uRLConnection.setRequestProperty("User-Agent", userAgent);
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataBinder
        public /* bridge */ /* synthetic */ Object createSuccessResult(NetworkRequest networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return createSuccessResult((NetworkRequest<Object, String, BMError>) networkRequest, uRLConnection, bArr);
        }
    }

    public static class Builder<RequestDataType, ResponseDataType> {
        private NetworkRequest.Callback<ResponseDataType, BMError> callback;
        private NetworkRequest.CancelCallback cancelCallback;
        private ApiDataBinder<RequestDataType, ResponseDataType> dataBinder;
        private RequestDataType requestData;
        private String url;
        private int timeOut = ApiRequest.REQUEST_TIMEOUT;
        private NetworkRequest.Method method = NetworkRequest.Method.Post;

        /* JADX WARN: Multi-variable type inference failed */
        public ApiRequest<RequestDataType, ResponseDataType> build() {
            ApiRequest<RequestDataType, ResponseDataType> apiRequest = new ApiRequest<>(this.method, null, this.requestData);
            apiRequest.setCallback(this.callback);
            apiRequest.setCancelCallback(this.cancelCallback);
            apiRequest.setDataBinder(this.dataBinder);
            apiRequest.requiredUrl = this.url;
            apiRequest.timeOut = this.timeOut;
            return apiRequest;
        }

        public String getUrl() {
            return this.url;
        }

        public ApiRequest<RequestDataType, ResponseDataType> request() {
            ApiRequest<RequestDataType, ResponseDataType> apiRequestBuild = build();
            apiRequestBuild.request();
            return apiRequestBuild;
        }

        public Builder<RequestDataType, ResponseDataType> setCallback(NetworkRequest.Callback<ResponseDataType, BMError> callback) {
            this.callback = callback;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setCancelCallback(NetworkRequest.CancelCallback cancelCallback) {
            this.cancelCallback = cancelCallback;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setDataBinder(ApiDataBinder<RequestDataType, ResponseDataType> apiDataBinder) {
            this.dataBinder = apiDataBinder;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setLoadingTimeOut(int i) {
            if (i <= 0) {
                i = ApiRequest.REQUEST_TIMEOUT;
            }
            this.timeOut = i;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setMethod(NetworkRequest.Method method) {
            this.method = method;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> setRequestData(RequestDataType requestdatatype) {
            this.requestData = requestdatatype;
            return this;
        }

        public Builder<RequestDataType, ResponseDataType> url(String str) {
            this.url = str;
            return this;
        }
    }

    public static /* synthetic */ String $r8$lambda$zKQ_rxlzIBeYkZwrs86Qr72NaCo(Throwable th, URLConnection uRLConnection) {
        return "obtainError: " + th + "(" + uRLConnection + ")";
    }

    @Override // io.bidmachine.core.NetworkRequest
    public String getBaseUrl() {
        return this.requiredUrl;
    }

    @Override // io.bidmachine.core.NetworkRequest
    public void prepareRequestParams(URLConnection uRLConnection) {
        super.prepareRequestParams(uRLConnection);
        uRLConnection.setConnectTimeout(this.timeOut);
        uRLConnection.setReadTimeout(this.timeOut);
    }

    private ApiRequest(NetworkRequest.Method method, String str, RequestDataType requestdatatype) {
        super(method, str, requestdatatype);
        addContentEncoder(new NetworkRequest.GZIPRequestDataEncoder());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.core.NetworkRequest
    public BMError obtainError(URLConnection uRLConnection, int i) {
        BMError bMErrorInternal;
        if (i >= 200 && i < 300) {
            return BMError.BMServerNoFill;
        }
        if (i >= 400 && i < 500) {
            bMErrorInternal = BMError.Request;
        } else if (i >= 500 && i < 600) {
            bMErrorInternal = BMError.Server;
        } else {
            bMErrorInternal = BMError.internal("Unknown server error");
        }
        return new BMError(bMErrorInternal, i, "Server returned " + i + " code");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.bidmachine.core.NetworkRequest
    public BMError obtainError(final URLConnection uRLConnection, final Throwable th) {
        Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ApiRequest$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return ApiRequest.$r8$lambda$zKQ_rxlzIBeYkZwrs86Qr72NaCo(th, uRLConnection);
            }
        });
        if (th instanceof UnknownHostException) {
            return BMError.NoConnection;
        }
        if (!(th instanceof SocketTimeoutException) && !(th instanceof ConnectTimeoutException)) {
            return BMError.throwable("Unknown api request error", th);
        }
        return BMError.TimeoutError;
    }
}
