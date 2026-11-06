package io.bidmachine.util.network;

import android.net.Uri;
import android.os.SystemClock;
import io.bidmachine.util.taskmanager.CancelableTask;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: NetworkRequest.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NetworkRequest<ResponseType> {
    public static final Companion Companion = new Companion(null);
    public static final TaskManager TASK_MANAGER = new NetworkTaskManager();
    public static final TaskManager TIME_OUT_TASK_MANAGER = new CoroutineTaskManager(new CoroutineName("NetworkTimeOutTaskManager").plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(Dispatchers.getIO()));
    public final Integer connectTimeoutMs;
    public int connectionCount;
    public Duration executionTime;
    public final Map<String, String> headers;
    public final AtomicBoolean isDataReceived;
    public final AtomicBoolean isDestroyed;
    public final AtomicBoolean isNotified;
    public final AtomicBoolean isSend;
    public TaskManager lastTaskManager;
    public final Listener<ResponseType> listener;
    public final MetadataListener metadataListener;
    public final Method method;
    public CancelableTask processTask;
    public final Map<String, String> queryParameters;
    public final Integer readTimeoutMs;
    public final Redirect redirect;
    public byte[] requestData;
    public final RequestProcessor requestProcessor;
    public final ResponseProcessor<ResponseType> responseProcessor;
    public final Long timeoutMs;
    public CancelableTask timeoutTask;
    public final String url;

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public interface Listener<ResponseType> {
        void onError(NetworkError networkError);

        void onSuccess(ResponseType responsetype);
    }

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public interface MetadataListener {
        void onReceived(ResponseMetadata responseMetadata);
    }

    public NetworkRequest(String url, Method method, Map<String, String> headers, Map<String, String> queryParameters, Redirect redirect, Long l, Integer num, Integer num2, RequestProcessor requestProcessor, ResponseProcessor<ResponseType> responseProcessor, Listener<ResponseType> listener, MetadataListener metadataListener) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(queryParameters, "queryParameters");
        Intrinsics.checkNotNullParameter(redirect, "redirect");
        this.url = url;
        this.method = method;
        this.headers = headers;
        this.queryParameters = queryParameters;
        this.redirect = redirect;
        this.timeoutMs = l;
        this.connectTimeoutMs = num;
        this.readTimeoutMs = num2;
        this.requestProcessor = requestProcessor;
        this.responseProcessor = responseProcessor;
        this.listener = listener;
        this.metadataListener = metadataListener;
        this.isSend = new AtomicBoolean(false);
        this.isNotified = new AtomicBoolean(false);
        this.isDestroyed = new AtomicBoolean(false);
        this.isDataReceived = new AtomicBoolean(false);
    }

    public final Listener<ResponseType> getListener() {
        return this.listener;
    }

    public final MetadataListener getMetadataListener() {
        return this.metadataListener;
    }

    /* JADX INFO: renamed from: getExecutionTime-FghU774, reason: not valid java name */
    public final Duration m2750getExecutionTimeFghU774() {
        return this.executionTime;
    }

    public static /* synthetic */ void send$default(NetworkRequest networkRequest, TaskManager taskManager, int i, Object obj) {
        if ((i & 1) != 0) {
            taskManager = TASK_MANAGER;
        }
        networkRequest.send(taskManager);
    }

    public final boolean isDestroyed() {
        return this.isDestroyed.get();
    }

    public final void destroy() {
        TaskManager taskManager;
        this.isDestroyed.set(true);
        stopTimeout();
        CancelableTask cancelableTask = this.processTask;
        if (cancelableTask != null && (taskManager = this.lastTaskManager) != null) {
            taskManager.cancel(cancelableTask);
        }
        this.lastTaskManager = null;
        this.processTask = null;
        this.requestData = null;
    }

    public final void send(TaskManager taskManager) {
        Intrinsics.checkNotNullParameter(taskManager, "taskManager");
        if (isDestroyed()) {
            notifyError$default((NetworkRequest) this, true, (ResponseMetadata) null, (Throwable) new IllegalStateException("The Send method was called, but NetworkRequest has already been destroyed"), 2, (Object) null);
            return;
        }
        if (this.isSend.compareAndSet(false, true)) {
            startTimeout();
            try {
                ProcessTask processTask = new ProcessTask();
                taskManager.execute(processTask);
                this.lastTaskManager = taskManager;
                this.processTask = processTask;
            } catch (Throwable th) {
                notifyError$default((NetworkRequest) this, false, (ResponseMetadata) null, th, 3, (Object) null);
            }
        }
    }

    public final void sendInternal() {
        Throwable th;
        HttpURLConnection httpURLConnectionOpenConnection;
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        Function0<Unit> function0 = new Function0<Unit>(this) { // from class: io.bidmachine.util.network.NetworkRequest$sendInternal$finishAction$1
            public final /* synthetic */ NetworkRequest<ResponseType> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (this.this$0.m2750getExecutionTimeFghU774() == null) {
                    NetworkRequest<ResponseType> networkRequest = this.this$0;
                    Duration.Companion companion = Duration.Companion;
                    networkRequest.executionTime = Duration.m2870boximpl(DurationKt.toDuration(SystemClock.elapsedRealtime() - jElapsedRealtime, DurationUnit.MILLISECONDS));
                }
            }
        };
        ResponseType responsetypeProcess = (ResponseType) null;
        try {
            httpURLConnectionOpenConnection = openConnection(new URL(NetworkUtils.appendQueryParameters(this.url, this.queryParameters)));
            try {
                if (!isDestroyed()) {
                    int responseCode = httpURLConnectionOpenConnection.getResponseCode();
                    if (!isDestroyed()) {
                        ResponseMetadata responseMetadataCreateResponseMetadataOrNull = createResponseMetadataOrNull(httpURLConnectionOpenConnection, responseCode);
                        if (responseCode == 200) {
                            ResponseProcessor<ResponseType> responseProcessor = this.responseProcessor;
                            if (responseProcessor != null) {
                                responsetypeProcess = responseProcessor.process(httpURLConnectionOpenConnection);
                            }
                            function0.invoke();
                            notifySuccess(responseMetadataCreateResponseMetadataOrNull, responsetypeProcess);
                        } else if (responseCode != 204) {
                            function0.invoke();
                            notifyError$default((NetworkRequest) this, false, responseMetadataCreateResponseMetadataOrNull, (Throwable) new IllegalResponseException(responseCode), 1, (Object) null);
                        } else {
                            function0.invoke();
                            notifySuccess(responseMetadataCreateResponseMetadataOrNull, null);
                        }
                    }
                }
            } catch (RequestInDestroyedStateException unused) {
                responsetypeProcess = (ResponseType) httpURLConnectionOpenConnection;
            } catch (Throwable th2) {
                th = th2;
                try {
                    notifyError$default((NetworkRequest) this, false, (ResponseMetadata) null, th, 3, (Object) null);
                } finally {
                    function0.invoke();
                    NetworkUtilsKt.disconnectSafely(httpURLConnectionOpenConnection);
                }
            }
        } catch (RequestInDestroyedStateException unused2) {
        } catch (Throwable th3) {
            th = th3;
            httpURLConnectionOpenConnection = null;
        }
    }

    public final HttpURLConnection openConnection(URL url) throws Throwable {
        int i = this.connectionCount + 1;
        this.connectionCount = i;
        if (i > 20) {
            throw new IllegalStateException("The maximum number of connections for one request has been reached");
        }
        if (isDestroyed()) {
            throw new RequestInDestroyedStateException();
        }
        HttpURLConnection httpURLConnection = null;
        try {
            URLConnection uRLConnectionOpenConnection = url.openConnection();
            Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection2.setInstanceFollowRedirects(this.redirect == Redirect.Native);
            httpURLConnection2.setDoInput(true);
            httpURLConnection2.setUseCaches(false);
            httpURLConnection2.setAllowUserInteraction(false);
            try {
                RequestProcessor requestProcessor = this.requestProcessor;
                if (requestProcessor != null) {
                    requestProcessor.setupConnection(httpURLConnection2);
                }
                httpURLConnection2.setRequestMethod(this.method.getNetworkName());
                for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                    httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                }
                Integer num = this.connectTimeoutMs;
                if (num != null && num.intValue() >= 0) {
                    httpURLConnection2.setConnectTimeout(this.connectTimeoutMs.intValue());
                }
                Integer num2 = this.readTimeoutMs;
                if (num2 != null && num2.intValue() >= 0) {
                    httpURLConnection2.setReadTimeout(this.readTimeoutMs.intValue());
                }
                if (this.isDataReceived.compareAndSet(false, true)) {
                    RequestProcessor requestProcessor2 = this.requestProcessor;
                    this.requestData = requestProcessor2 != null ? requestProcessor2.getBody() : null;
                }
                byte[] bArr = this.requestData;
                if (bArr != null) {
                    httpURLConnection2.setDoOutput(true);
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    Intrinsics.checkNotNullExpressionValue(outputStream, "httpURLConnection.outputStream");
                    BufferedOutputStream bufferedOutputStream = outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream, 8192);
                    try {
                        bufferedOutputStream.write(bArr);
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(bufferedOutputStream, null);
                    } finally {
                    }
                }
                if (isDestroyed()) {
                    throw new RequestInDestroyedStateException();
                }
                if (this.redirect == Redirect.Manual) {
                    int responseCode = httpURLConnection2.getResponseCode();
                    switch (responseCode) {
                        case 301:
                        case 302:
                        case 303:
                        case MRAID_BRIDGE_ERROR_VALUE:
                        case AD_EXPIRED_ON_PLAY_VALUE:
                        case AD_WIN_NOTIFICATION_ERROR_VALUE:
                            String headerField = httpURLConnection2.getHeaderField("Location");
                            NetworkUtilsKt.disconnectSafely(httpURLConnection2);
                            if (headerField == null || headerField.length() == 0) {
                                throw new IllegalArgumentException("Location header url could not be null or empty when server responds with " + responseCode + " code");
                            }
                            URL url2 = new URL(url, headerField);
                            if (!NetworkUtilsKt.isHttp(url2)) {
                                throw new IllegalArgumentException("Location header url is not http or https, but has " + url2.getProtocol() + " protocol");
                            }
                            return openConnection(url2);
                    }
                }
                return httpURLConnection2;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                NetworkUtilsKt.disconnectSafely(httpURLConnection);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void startTimeout() {
        stopTimeout();
        Long l = this.timeoutMs;
        if (l == null || l.longValue() <= 0) {
            return;
        }
        try {
            TimeoutTask timeoutTask = new TimeoutTask();
            TIME_OUT_TASK_MANAGER.scheduleSafely(timeoutTask, this.timeoutMs.longValue());
            this.timeoutTask = timeoutTask;
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public final void stopTimeout() {
        CancelableTask cancelableTask = this.timeoutTask;
        if (cancelableTask != null) {
            TIME_OUT_TASK_MANAGER.cancel(cancelableTask);
        }
        this.timeoutTask = null;
    }

    public final void processTimeout() {
        if (isDestroyed()) {
            return;
        }
        destroy();
        TaskManager taskManager = this.lastTaskManager;
        if (taskManager == null) {
            taskManager = TASK_MANAGER;
        }
        taskManager.executeSafely(new Runnable() { // from class: io.bidmachine.util.network.NetworkRequest$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                NetworkRequest.processTimeout$lambda$9(this.f$0);
            }
        });
    }

    public static final void processTimeout$lambda$9(NetworkRequest this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        notifyError$default(this$0, true, (ResponseMetadata) null, new NetworkError(new TimeoutException("NetworkRequest timeout reached")), 2, (Object) null);
    }

    public final ResponseMetadata createResponseMetadataOrNull(HttpURLConnection httpURLConnection, int i) {
        if (this.metadataListener == null) {
            return null;
        }
        URL url = httpURLConnection.getURL();
        Intrinsics.checkNotNullExpressionValue(url, "httpURLConnection.url");
        return new ResponseMetadata(url, i, httpURLConnection.getHeaderFields());
    }

    public static /* synthetic */ void notifyError$default(NetworkRequest networkRequest, boolean z, ResponseMetadata responseMetadata, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            responseMetadata = null;
        }
        networkRequest.notifyError(z, responseMetadata, th);
    }

    public final void notifyError(boolean z, ResponseMetadata responseMetadata, Throwable th) {
        notifyError(z, responseMetadata, new NetworkError(th));
    }

    public static /* synthetic */ void notifyError$default(NetworkRequest networkRequest, boolean z, ResponseMetadata responseMetadata, NetworkError networkError, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            responseMetadata = null;
        }
        networkRequest.notifyError(z, responseMetadata, networkError);
    }

    public final void notifyError(boolean z, ResponseMetadata responseMetadata, NetworkError networkError) {
        if (this.isNotified.compareAndSet(false, true) || z) {
            if (!isDestroyed() || z) {
                MetadataListener metadataListener = getMetadataListener();
                if (metadataListener != null) {
                    metadataListener.onReceived(responseMetadata);
                }
                Listener<ResponseType> listener = getListener();
                if (listener != null) {
                    listener.onError(networkError);
                }
            }
        }
    }

    public final void notifySuccess(ResponseMetadata responseMetadata, ResponseType responsetype) {
        if (this.isNotified.compareAndSet(false, true) && !isDestroyed()) {
            MetadataListener metadataListener = getMetadataListener();
            if (metadataListener != null) {
                metadataListener.onReceived(responseMetadata);
            }
            Listener<ResponseType> listener = getListener();
            if (listener != null) {
                listener.onSuccess(responsetype);
            }
        }
    }

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public static final class Builder<ResponseType> {
        public Integer connectTimeoutMs;
        public final Map<String, String> headers;
        public Listener<ResponseType> listener;
        public MetadataListener metadataListener;
        public final Method method;
        public final Map<String, String> queryParameters;
        public Integer readTimeoutMs;
        public Redirect redirect;
        public RequestProcessor requestProcessor;
        public ResponseProcessor<ResponseType> responseProcessor;
        public Long timeoutMs;
        public final String url;

        /* JADX WARN: Illegal instructions before constructor call */
        public Builder(Uri uri, Method method) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            Intrinsics.checkNotNullParameter(method, "method");
            String string = uri.toString();
            Intrinsics.checkNotNullExpressionValue(string, "uri.toString()");
            this(string, method);
        }

        public Builder(String url, Method method) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(method, "method");
            this.redirect = Redirect.Manual;
            this.url = url;
            this.method = method;
            this.headers = new HashMap();
            this.queryParameters = new HashMap();
        }

        public final Builder<ResponseType> setRedirect(Redirect redirect) {
            Intrinsics.checkNotNullParameter(redirect, "redirect");
            this.redirect = redirect;
            return this;
        }

        public final Builder<ResponseType> setTimeoutMs(Long l) {
            this.timeoutMs = l;
            return this;
        }

        public final Builder<ResponseType> setRequestProcessor(RequestProcessor requestProcessor) {
            this.requestProcessor = requestProcessor;
            return this;
        }

        public final Builder<ResponseType> setResponseProcessor(ResponseProcessor<ResponseType> responseProcessor) {
            this.responseProcessor = responseProcessor;
            return this;
        }

        public final Builder<ResponseType> setListener(Listener<ResponseType> listener) {
            this.listener = listener;
            return this;
        }

        public final Builder<ResponseType> setMetadataListener(MetadataListener metadataListener) {
            this.metadataListener = metadataListener;
            return this;
        }

        public final NetworkRequest<ResponseType> build() {
            return new NetworkRequest<>(this.url, this.method, this.headers, this.queryParameters, this.redirect, this.timeoutMs, this.connectTimeoutMs, this.readTimeoutMs, this.requestProcessor, this.responseProcessor, this.listener, this.metadataListener);
        }

        public static /* synthetic */ NetworkRequest send$default(Builder builder, TaskManager taskManager, int i, Object obj) {
            if ((i & 1) != 0) {
                taskManager = NetworkRequest.TASK_MANAGER;
            }
            return builder.send(taskManager);
        }

        public final NetworkRequest<ResponseType> send(TaskManager taskManager) {
            Intrinsics.checkNotNullParameter(taskManager, "taskManager");
            NetworkRequest<ResponseType> networkRequestBuild = build();
            networkRequestBuild.send(taskManager);
            return networkRequestBuild;
        }
    }

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public final class ProcessTask extends CancelableTask {
        public ProcessTask() {
        }

        @Override // io.bidmachine.util.taskmanager.CancelableTask
        public void runTask() {
            NetworkRequest.this.sendInternal();
        }
    }

    /* JADX INFO: compiled from: NetworkRequest.kt */
    public final class TimeoutTask extends CancelableTask {
        public TimeoutTask() {
        }

        @Override // io.bidmachine.util.taskmanager.CancelableTask
        public void runTask() {
            NetworkRequest.this.processTimeout();
        }
    }
}
