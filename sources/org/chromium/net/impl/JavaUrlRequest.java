package org.chromium.net.impl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import com.ironsource.C3746nc;
import j$.time.Duration;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.InlineExecutionProhibitedException;
import org.chromium.net.ThreadStatsUid;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import org.chromium.net.impl.CronetLogger;
import org.chromium.net.impl.JavaUrlRequest;
import org.chromium.net.impl.JavaUrlRequestUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class JavaUrlRequest extends ExperimentalUrlRequest {
    public static final String TAG = "JavaUrlRequest";
    public final boolean mAllowDirectExecutor;
    public final AsyncUrlRequestCallback mCallbackAsync;
    public final int mCronetEngineId;
    public String mCurrentUrl;
    public HttpURLConnection mCurrentUrlConnection;
    public final JavaCronetEngine mEngine;
    public final Executor mExecutor;
    public boolean mFinalUserCallbackThrew;
    public final String mInitialMethod;
    public final CronetLogger mLogger;
    public final long mNetworkHandle;
    public int mNonfinalUserCallbackExceptionCount;
    public OutputStreamDataSink mOutputStreamDataSink;
    public String mPendingRedirectUrl;
    public int mReadCount;
    public ReadableByteChannel mResponseChannel;
    public final VersionSafeCallbacks$UploadDataProviderWrapper mUploadDataProvider;
    public final Executor mUploadExecutor;
    public UrlResponseInfoImpl mUrlResponseInfo;
    public final String mUserAgent;
    public final Map<String, String> mRequestHeaders = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    public final List<String> mUrlChain = new ArrayList();
    public final AtomicInteger mState = new AtomicInteger(0);
    public final AtomicBoolean mUploadProviderClosed = new AtomicBoolean(false);
    public volatile int mAdditionalStatusDetails = -1;

    public static final class SerializingExecutor implements Executor {
        public boolean mRunning;
        public final Executor mUnderlyingExecutor;
        public final Runnable mRunTasks = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runTasks();
            }
        };
        public final ArrayDeque<Runnable> mTaskQueue = new ArrayDeque<>();

        public SerializingExecutor(Executor underlyingExecutor) {
            this.mUnderlyingExecutor = underlyingExecutor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            synchronized (this.mTaskQueue) {
                this.mTaskQueue.addLast(command);
                try {
                    this.mUnderlyingExecutor.execute(this.mRunTasks);
                } catch (RejectedExecutionException unused) {
                    this.mTaskQueue.removeLast();
                }
            }
        }

        public final void runTasks() {
            synchronized (this.mTaskQueue) {
                try {
                    if (this.mRunning) {
                        return;
                    }
                    Runnable runnablePollFirst = this.mTaskQueue.pollFirst();
                    this.mRunning = runnablePollFirst != null;
                    while (runnablePollFirst != null) {
                        try {
                            runnablePollFirst.run();
                            synchronized (this.mTaskQueue) {
                                runnablePollFirst = this.mTaskQueue.pollFirst();
                                this.mRunning = runnablePollFirst != null;
                            }
                        } catch (Throwable th) {
                            synchronized (this.mTaskQueue) {
                                this.mRunning = false;
                                try {
                                    this.mUnderlyingExecutor.execute(this.mRunTasks);
                                } catch (RejectedExecutionException unused) {
                                }
                                throw th;
                            }
                        }
                    }
                } finally {
                }
            }
        }
    }

    public JavaUrlRequest(JavaCronetEngine engine, UrlRequest.Callback callback, final Executor executor, Executor userExecutor, String url, String userAgent, boolean allowDirectExecutor, boolean trafficStatsTagSet, int trafficStatsTag, final boolean trafficStatsUidSet, final int trafficStatsUid, long networkHandle, String method, ArrayList<Map.Entry<String, String>> requestHeaders, UploadDataProvider uploadDataProvider, Executor uploadDataProviderExecutor) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#JavaUrlRequest");
        try {
            Objects.requireNonNull(url, "URL is required");
            Objects.requireNonNull(callback, "Listener is required");
            Objects.requireNonNull(executor, "Executor is required");
            Objects.requireNonNull(userExecutor, "userExecutor is required");
            this.mAllowDirectExecutor = allowDirectExecutor;
            this.mCallbackAsync = new AsyncUrlRequestCallback(callback, userExecutor);
            final int threadStatsTag = trafficStatsTagSet ? trafficStatsTag : TrafficStats.getThreadStatsTag();
            this.mExecutor = new SerializingExecutor(new Executor() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda4
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    executor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            JavaUrlRequest.$r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(i, z, i, runnable);
                        }
                    });
                }
            });
            this.mEngine = engine;
            this.mCronetEngineId = engine.getCronetEngineId();
            this.mLogger = engine.getCronetLogger();
            this.mCurrentUrl = url;
            this.mUserAgent = userAgent;
            this.mNetworkHandle = networkHandle;
            this.mInitialMethod = checkedHttpMethod(method);
            setHeaders(requestHeaders);
            this.mUploadDataProvider = checkedUploadDataProvider(uploadDataProvider);
            this.mUploadExecutor = (uploadDataProviderExecutor == null || allowDirectExecutor) ? uploadDataProviderExecutor : new JavaUrlRequestUtils.DirectPreventingExecutor(uploadDataProviderExecutor);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped == null) {
                throw th;
            }
            try {
                scopedSysTraceEventScoped.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$8Jo97Oa6sMq63KSfyXfVRlvw9I0(int i, boolean z, int i2, Runnable runnable) {
        int threadStatsTag = TrafficStats.getThreadStatsTag();
        TrafficStats.setThreadStatsTag(i);
        if (z) {
            ThreadStatsUid.set(i2);
        }
        try {
            runnable.run();
        } finally {
            if (z) {
                ThreadStatsUid.clear();
            }
            TrafficStats.setThreadStatsTag(threadStatsTag);
        }
    }

    public static String checkedHttpMethod(String method) {
        Objects.requireNonNull(method, "Method is required.");
        if ("OPTIONS".equalsIgnoreCase(method) || C3746nc.a.equalsIgnoreCase(method) || "HEAD".equalsIgnoreCase(method) || C3746nc.b.equalsIgnoreCase(method) || "PUT".equalsIgnoreCase(method) || "DELETE".equalsIgnoreCase(method) || "TRACE".equalsIgnoreCase(method) || "PATCH".equalsIgnoreCase(method)) {
            return method;
        }
        throw new IllegalArgumentException("Invalid http method " + method);
    }

    public final void setHeaders(ArrayList<Map.Entry<String, String>> requestHeaders) {
        for (Map.Entry<String, String> entry : requestHeaders) {
            if (!isValidHeaderName(entry.getKey()) || entry.getValue().contains("\r\n")) {
                throw new IllegalArgumentException("Invalid header with headername: " + entry.getKey());
            }
            this.mRequestHeaders.put(entry.getKey(), entry.getValue());
        }
    }

    public static boolean isValidHeaderName(String header) {
        for (int i = 0; i < header.length(); i++) {
            char cCharAt = header.charAt(i);
            if (cCharAt != ',' && cCharAt != '/' && cCharAt != '{' && cCharAt != '}') {
                switch (cCharAt) {
                    case '\'':
                    case '(':
                    case ')':
                        break;
                    default:
                        switch (cCharAt) {
                            case ':':
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                            case '?':
                            case '@':
                                break;
                            default:
                                switch (cCharAt) {
                                    case '[':
                                    case '\\':
                                    case ']':
                                        break;
                                    default:
                                        if (!Character.isISOControl(cCharAt) && !Character.isWhitespace(cCharAt)) {
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            return false;
        }
        return true;
    }

    public final VersionSafeCallbacks$UploadDataProviderWrapper checkedUploadDataProvider(UploadDataProvider uploadDataProvider) {
        if (uploadDataProvider == null) {
            return null;
        }
        if (!this.mRequestHeaders.containsKey("Content-Type")) {
            throw new IllegalArgumentException("Requests with upload data must have a Content-Type.");
        }
        return new VersionSafeCallbacks$UploadDataProviderWrapper(uploadDataProvider);
    }

    public final class OutputStreamDataSink extends JavaUploadDataSinkBase {
        public WritableByteChannel mOutputChannel;
        public final AtomicBoolean mOutputChannelClosed;
        public final HttpURLConnection mUrlConnection;
        public OutputStream mUrlConnectionOutputStream;

        public OutputStreamDataSink(final Executor userExecutor, Executor executor, HttpURLConnection urlConnection, VersionSafeCallbacks$UploadDataProviderWrapper provider) {
            super(userExecutor, executor, provider);
            this.mOutputChannelClosed = new AtomicBoolean(false);
            this.mUrlConnection = urlConnection;
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void initializeRead() throws IOException {
            if (this.mOutputChannel == null) {
                JavaUrlRequest.this.mAdditionalStatusDetails = 10;
                this.mUrlConnection.setDoOutput(true);
                this.mUrlConnection.connect();
                JavaUrlRequest.this.mAdditionalStatusDetails = 12;
                OutputStream outputStream = this.mUrlConnection.getOutputStream();
                this.mUrlConnectionOutputStream = outputStream;
                this.mOutputChannel = Channels.newChannel(outputStream);
            }
        }

        public void closeOutputChannel() throws IOException {
            if (this.mOutputChannel == null || !this.mOutputChannelClosed.compareAndSet(false, true)) {
                return;
            }
            this.mOutputChannel.close();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void finish() throws IOException {
            closeOutputChannel();
            JavaUrlRequest.this.fireGetHeaders();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void initializeStart(long totalBytes) {
            if (totalBytes > 0) {
                this.mUrlConnection.setFixedLengthStreamingMode(totalBytes);
            } else {
                this.mUrlConnection.setChunkedStreamingMode(8192);
            }
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public int processSuccessfulRead(ByteBuffer buffer) throws IOException {
            int iWrite = 0;
            while (buffer.hasRemaining()) {
                iWrite += this.mOutputChannel.write(buffer);
            }
            this.mUrlConnectionOutputStream.flush();
            return iWrite;
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public Runnable getErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable runnable) {
            return JavaUrlRequest.this.errorSetting(runnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public Runnable getUploadErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable runnable) {
            return JavaUrlRequest.this.uploadErrorSetting(runnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        public void processUploadError(Throwable exception) {
            JavaUrlRequest.this.enterUploadErrorState(exception);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void start() {
        this.mAdditionalStatusDetails = 10;
        this.mEngine.incrementActiveRequestCount();
        transitionStates(0, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$start$2();
            }
        });
    }

    public final /* synthetic */ void lambda$start$2() {
        this.mUrlChain.add(this.mCurrentUrl);
        fireOpenConnection();
    }

    public final void enterErrorState(final CronetException error) {
        if (setTerminalState(6)) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onFailed(this.mUrlResponseInfo, error);
        }
    }

    public final boolean setTerminalState(int error) {
        int i;
        do {
            i = this.mState.get();
            if (i == 0) {
                throw new IllegalStateException("Can't enter error state before start");
            }
            if (i == 6 || i == 7 || i == 8) {
                return false;
            }
        } while (!this.mState.compareAndSet(i, error));
        return true;
    }

    public final void enterUserErrorState(final Throwable error) {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$enterUserErrorState$3();
            }
        }, "enterUserErrorState");
        enterErrorState(new CallbackExceptionImpl("Exception received from UrlRequest.Callback", error));
    }

    public final /* synthetic */ void lambda$enterUserErrorState$3() {
        this.mNonfinalUserCallbackExceptionCount++;
    }

    public final void enterUploadErrorState(final Throwable error) {
        enterErrorState(new CallbackExceptionImpl("Exception received from UploadDataProvider", error));
    }

    public final void enterCronetErrorState(final Throwable error) {
        enterErrorState(new CronetExceptionImpl("System error", error));
    }

    public final void transitionStates(int expected, int newState, Runnable afterTransition) {
        if (!this.mState.compareAndSet(expected, newState)) {
            int i = this.mState.get();
            if (i == 8 || i == 6) {
                return;
            }
            throw new IllegalStateException("Invalid state transition - expected " + JavaUrlRequestUtils.stateToString(expected) + " but was " + JavaUrlRequestUtils.stateToString(i));
        }
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#transitionStates " + JavaUrlRequestUtils.stateToString(expected) + " -> " + JavaUrlRequestUtils.stateToString(newState));
        try {
            afterTransition.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void followRedirect() {
        transitionStates(3, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest.1
            @Override // java.lang.Runnable
            public void run() {
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                javaUrlRequest.mCurrentUrl = javaUrlRequest.mPendingRedirectUrl;
                JavaUrlRequest.this.mPendingRedirectUrl = null;
                JavaUrlRequest.this.fireOpenConnection();
            }
        });
    }

    public final void fireGetHeaders() {
        this.mAdditionalStatusDetails = 13;
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda11
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$fireGetHeaders$4();
            }
        }), "fireGetHeaders");
    }

    public final /* synthetic */ void lambda$fireGetHeaders$4() throws Exception {
        List<String> list;
        if (this.mCurrentUrlConnection == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String headerField = "http/1.1";
        int i = 0;
        while (true) {
            String headerFieldKey = this.mCurrentUrlConnection.getHeaderFieldKey(i);
            if (headerFieldKey == null) {
                break;
            }
            if ("X-Android-Selected-Transport".equalsIgnoreCase(headerFieldKey)) {
                headerField = this.mCurrentUrlConnection.getHeaderField(i);
            }
            if (!headerFieldKey.startsWith("X-Android")) {
                arrayList.add(new AbstractMap.SimpleEntry(headerFieldKey, this.mCurrentUrlConnection.getHeaderField(i)));
            }
            i++;
        }
        int responseCode = this.mCurrentUrlConnection.getResponseCode();
        UrlResponseInfoImpl urlResponseInfoImpl = new UrlResponseInfoImpl(new ArrayList(this.mUrlChain), responseCode, this.mCurrentUrlConnection.getResponseMessage(), Collections.unmodifiableList(arrayList), false, headerField, "", 0L);
        if (responseCode >= 300 && responseCode < 400 && (list = urlResponseInfoImpl.getAllHeaders().get("location")) != null) {
            fireRedirectReceived(list.get(0), urlResponseInfoImpl);
            return;
        }
        this.mUrlResponseInfo = urlResponseInfoImpl;
        fireCloseUploadDataProvider();
        if (responseCode >= 400) {
            InputStream errorStream = this.mCurrentUrlConnection.getErrorStream();
            this.mResponseChannel = errorStream == null ? null : InputStreamChannel.wrap(errorStream);
            this.mCallbackAsync.onResponseStarted();
        } else {
            this.mResponseChannel = InputStreamChannel.wrap(this.mCurrentUrlConnection.getInputStream());
            this.mCallbackAsync.onResponseStarted();
        }
    }

    public final void fireCloseUploadDataProvider() {
        if (this.mUploadDataProvider == null || !this.mUploadProviderClosed.compareAndSet(false, true)) {
            return;
        }
        try {
            Executor executor = this.mUploadExecutor;
            final VersionSafeCallbacks$UploadDataProviderWrapper versionSafeCallbacks$UploadDataProviderWrapper = this.mUploadDataProvider;
            Objects.requireNonNull(versionSafeCallbacks$UploadDataProviderWrapper);
            executor.execute(uploadErrorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda2
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws IOException {
                    versionSafeCallbacks$UploadDataProviderWrapper.close();
                }
            }));
        } catch (RejectedExecutionException e) {
            Log.e(TAG, "Exception when closing uploadDataProvider", e);
        }
    }

    public final void fireRedirectReceived(final String locationField, final UrlResponseInfo urlResponseInfo) {
        transitionStates(1, 2, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$6(locationField, urlResponseInfo);
            }
        });
    }

    public final /* synthetic */ void lambda$fireRedirectReceived$6(String str, final UrlResponseInfo urlResponseInfo) {
        String string = URI.create(this.mCurrentUrl).resolve(str).toString();
        this.mPendingRedirectUrl = string;
        this.mUrlChain.add(string);
        transitionStates(2, 3, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$5(urlResponseInfo);
            }
        });
    }

    public final /* synthetic */ void lambda$fireRedirectReceived$5(UrlResponseInfo urlResponseInfo) {
        this.mCallbackAsync.onRedirectReceived(urlResponseInfo, this.mPendingRedirectUrl);
    }

    public final void fireOpenConnection() {
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda6
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$fireOpenConnection$7();
            }
        }), "fireOpenConnection");
    }

    public final /* synthetic */ void lambda$fireOpenConnection$7() throws Exception {
        if (this.mState.get() == 8) {
            return;
        }
        URL url = new URL(this.mCurrentUrl);
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
        long j = this.mNetworkHandle;
        if (j == -1) {
            this.mCurrentUrlConnection = (HttpURLConnection) url.openConnection();
        } else {
            Network networkFromHandle = getNetworkFromHandle(j);
            if (networkFromHandle == null) {
                throw new NetworkExceptionImpl("Network bound to request not found", 9, -4);
            }
            this.mCurrentUrlConnection = (HttpURLConnection) networkFromHandle.openConnection(url);
        }
        this.mCurrentUrlConnection.setInstanceFollowRedirects(false);
        if (!this.mRequestHeaders.containsKey("User-Agent")) {
            this.mRequestHeaders.put("User-Agent", this.mUserAgent);
        }
        for (Map.Entry<String, String> entry : this.mRequestHeaders.entrySet()) {
            this.mCurrentUrlConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        this.mCurrentUrlConnection.setRequestMethod(this.mInitialMethod);
        VersionSafeCallbacks$UploadDataProviderWrapper versionSafeCallbacks$UploadDataProviderWrapper = this.mUploadDataProvider;
        if (versionSafeCallbacks$UploadDataProviderWrapper != null) {
            OutputStreamDataSink outputStreamDataSink = new OutputStreamDataSink(this.mUploadExecutor, this.mExecutor, this.mCurrentUrlConnection, versionSafeCallbacks$UploadDataProviderWrapper);
            this.mOutputStreamDataSink = outputStreamDataSink;
            outputStreamDataSink.start(this.mUrlChain.size() == 1);
        } else {
            this.mAdditionalStatusDetails = 10;
            this.mCurrentUrlConnection.connect();
            fireGetHeaders();
        }
    }

    public final Runnable errorSetting(final JavaUrlRequestUtils.CheckedRunnable delegate) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$errorSetting$8(delegate);
            }
        };
    }

    public final /* synthetic */ void lambda$errorSetting$8(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterCronetErrorState(th);
        }
    }

    public final Runnable userErrorSetting(final JavaUrlRequestUtils.CheckedRunnable delegate) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$userErrorSetting$9(delegate);
            }
        };
    }

    public final /* synthetic */ void lambda$userErrorSetting$9(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUserErrorState(th);
        }
    }

    public final Runnable uploadErrorSetting(final JavaUrlRequestUtils.CheckedRunnable delegate) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadErrorSetting$10(delegate);
            }
        };
    }

    public final /* synthetic */ void lambda$uploadErrorSetting$10(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUploadErrorState(th);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void read(final ByteBuffer buffer) {
        Preconditions.checkDirect(buffer);
        Preconditions.checkHasRemaining(buffer);
        final JavaUrlRequestUtils.CheckedRunnable checkedRunnable = new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$read$11(buffer);
            }
        };
        transitionStates(4, 5, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$read$12(checkedRunnable);
            }
        });
    }

    public final /* synthetic */ void lambda$read$11(ByteBuffer byteBuffer) throws Exception {
        int i;
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            this.mReadCount++;
            i = readableByteChannel.read(byteBuffer);
        } else {
            i = -1;
        }
        processReadResult(i, byteBuffer);
    }

    public final /* synthetic */ void lambda$read$12(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        executeOnExecutor(errorSetting(checkedRunnable), "read");
    }

    public final void processReadResult(int read, final ByteBuffer buffer) throws IOException {
        if (read != -1) {
            this.mCallbackAsync.onReadCompleted(this.mUrlResponseInfo, buffer);
            return;
        }
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            readableByteChannel.close();
        }
        if (this.mState.compareAndSet(5, 7)) {
            fireDisconnect();
            this.mCallbackAsync.onSucceeded(this.mUrlResponseInfo);
        }
    }

    public final void fireDisconnect() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireDisconnect$13();
            }
        }, "fireDisconnect");
    }

    public final /* synthetic */ void lambda$fireDisconnect$13() {
        OutputStreamDataSink outputStreamDataSink = this.mOutputStreamDataSink;
        if (outputStreamDataSink != null) {
            try {
                outputStreamDataSink.closeOutputChannel();
            } catch (IOException e) {
                Log.e(TAG, "Exception when closing OutputChannel", e);
            }
        }
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void cancel() {
        int andSet = this.mState.getAndSet(8);
        if (andSet == 1 || andSet == 2 || andSet == 3 || andSet == 4 || andSet == 5) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onCanceled(this.mUrlResponseInfo);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public boolean isDone() {
        int i = this.mState.get();
        return i == 7 || i == 6 || i == 8;
    }

    public static long estimateHeadersSizeInBytesList(Map<String, List<String>> headers) {
        long length = 0;
        if (headers == null) {
            return 0L;
        }
        for (Map.Entry<String, List<String>> entry : headers.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            if (entry.getValue() != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        length += (long) str.length();
                    }
                }
            }
        }
        return length;
    }

    public static long estimateHeadersSizeInBytes(Map<String, String> headers) {
        long length = 0;
        if (headers == null) {
            return 0L;
        }
        for (Map.Entry<String, String> entry : headers.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            String value = entry.getValue();
            if (value != null) {
                length += (long) value.length();
            }
        }
        return length;
    }

    public static long parseContentLengthString(String contentLength) {
        try {
            return Long.parseLong(contentLength);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void getStatus(UrlRequest.StatusListener listener) {
        int i = this.mState.get();
        int i2 = this.mAdditionalStatusDetails;
        switch (i) {
            case 0:
            case 6:
            case 7:
            case 8:
                i2 = -1;
                break;
            case 1:
                break;
            case 2:
            case 3:
            case 4:
                i2 = 0;
                break;
            case 5:
                i2 = 14;
                break;
            default:
                throw new IllegalStateException("Switch is exhaustive: " + i);
        }
        this.mCallbackAsync.sendStatus(new VersionSafeCallbacks$UrlRequestStatusListener(listener), i2);
    }

    public final class AsyncUrlRequestCallback {
        public final VersionSafeCallbacks$UrlRequestCallback mCallback;
        public final Executor mFallbackExecutor;
        public final Executor mUserExecutor;

        public AsyncUrlRequestCallback(UrlRequest.Callback callback, final Executor userExecutor) {
            this.mCallback = new VersionSafeCallbacks$UrlRequestCallback(callback);
            if (JavaUrlRequest.this.mAllowDirectExecutor) {
                this.mUserExecutor = userExecutor;
                this.mFallbackExecutor = null;
            } else {
                this.mUserExecutor = new JavaUrlRequestUtils.DirectPreventingExecutor(userExecutor);
                this.mFallbackExecutor = userExecutor;
            }
        }

        public void sendStatus(final VersionSafeCallbacks$UrlRequestStatusListener listener, final int status) {
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onStatus(status);
                }
            }, "sendStatus");
        }

        public void execute(JavaUrlRequestUtils.CheckedRunnable runnable, String name) {
            try {
                executeOnUserExecutor(JavaUrlRequest.this.userErrorSetting(runnable), name);
            } catch (RejectedExecutionException e) {
                JavaUrlRequest.this.enterErrorState(new CronetExceptionImpl("Exception posting task to executor", e));
            }
        }

        public void onRedirectReceived(final UrlResponseInfo info2, final String newLocationUrl) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onRedirectReceived$1(info2, newLocationUrl);
                }
            }, "onRedirectReceived");
        }

        public final /* synthetic */ void lambda$onRedirectReceived$1(UrlResponseInfo urlResponseInfo, String str) throws Exception {
            this.mCallback.onRedirectReceived(JavaUrlRequest.this, urlResponseInfo, str);
        }

        public void onResponseStarted() {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onResponseStarted$2();
                }
            }, "onResponseStarted");
        }

        public final /* synthetic */ void lambda$onResponseStarted$2() throws Exception {
            if (JavaUrlRequest.this.mState.compareAndSet(1, 4)) {
                VersionSafeCallbacks$UrlRequestCallback versionSafeCallbacks$UrlRequestCallback = this.mCallback;
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                versionSafeCallbacks$UrlRequestCallback.onResponseStarted(javaUrlRequest, javaUrlRequest.mUrlResponseInfo);
            }
        }

        public void onReadCompleted(final UrlResponseInfo info2, final ByteBuffer byteBuffer) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onReadCompleted$3(info2, byteBuffer);
                }
            }, "onReadCompleted");
        }

        public final /* synthetic */ void lambda$onReadCompleted$3(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws Exception {
            if (JavaUrlRequest.this.mState.compareAndSet(5, 4)) {
                this.mCallback.onReadCompleted(JavaUrlRequest.this, urlResponseInfo, byteBuffer);
            }
        }

        public final CronetLogger.CronetTrafficInfo buildCronetTrafficInfo() {
            Map<String, List<String>> allHeaders;
            String negotiatedProtocol;
            boolean zWasCached;
            int i;
            long jEstimateHeadersSizeInBytes;
            long j;
            long jEstimateHeadersSizeInBytesList;
            CronetLogger.CronetTrafficInfo.RequestTerminalState requestTerminalState;
            if (JavaUrlRequest.this.mUrlResponseInfo != null) {
                allHeaders = JavaUrlRequest.this.mUrlResponseInfo.getAllHeaders();
                negotiatedProtocol = JavaUrlRequest.this.mUrlResponseInfo.getNegotiatedProtocol();
                int httpStatusCode = JavaUrlRequest.this.mUrlResponseInfo.getHttpStatusCode();
                zWasCached = JavaUrlRequest.this.mUrlResponseInfo.wasCached();
                i = httpStatusCode;
            } else {
                allHeaders = Collections.EMPTY_MAP;
                negotiatedProtocol = "";
                zWasCached = false;
                i = 0;
            }
            String str = negotiatedProtocol;
            long contentLengthString = -1;
            long j2 = 0;
            if (zWasCached) {
                jEstimateHeadersSizeInBytes = 0;
                j = 0;
            } else {
                jEstimateHeadersSizeInBytes = JavaUrlRequest.estimateHeadersSizeInBytes(JavaUrlRequest.this.mRequestHeaders);
                j = 0;
                j2 = -1;
            }
            if (zWasCached) {
                contentLengthString = j;
                jEstimateHeadersSizeInBytesList = contentLengthString;
            } else {
                jEstimateHeadersSizeInBytesList = JavaUrlRequest.estimateHeadersSizeInBytesList(allHeaders);
                if (allHeaders.containsKey("Content-Length")) {
                    contentLengthString = JavaUrlRequest.parseContentLengthString(allHeaders.get("Content-Length").get(0));
                }
            }
            Duration durationOfSeconds = Duration.ofSeconds(j);
            Duration durationOfSeconds2 = Duration.ofSeconds(j);
            int i2 = JavaUrlRequest.this.mState.get();
            if (i2 == 6) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.ERROR;
            } else if (i2 == 7) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.SUCCEEDED;
            } else if (i2 == 8) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.CANCELLED;
            } else {
                throw new IllegalStateException("Internal Cronet error: attempted to report metrics but current state (" + i2 + ") is not a done state!");
            }
            return new CronetLogger.CronetTrafficInfo(jEstimateHeadersSizeInBytes, j2, jEstimateHeadersSizeInBytesList, contentLengthString, i, durationOfSeconds, durationOfSeconds2, str, false, false, requestTerminalState, JavaUrlRequest.this.mNonfinalUserCallbackExceptionCount, JavaUrlRequest.this.mReadCount, JavaUrlRequest.this.mOutputStreamDataSink != null ? JavaUrlRequest.this.mOutputStreamDataSink.getReadCount() : 0, false, JavaUrlRequest.this.mFinalUserCallbackThrew, Process.myUid(), 0, 0, 0, CronetLogger.CronetTrafficInfo.RequestFailureReason.UNKNOWN, false, ImplVersion.getCronetVersion(), CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK, -1L, -1L, -1L, -1L);
        }

        public final void maybeReportMetrics() {
            if (Build.VERSION.SDK_INT < 26) {
                return;
            }
            JavaUrlRequest.this.executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$maybeReportMetrics$4();
                }
            }, "maybeReportMetrics");
        }

        public final /* synthetic */ void lambda$maybeReportMetrics$4() {
            try {
                JavaUrlRequest.this.mLogger.logCronetTrafficInfo(JavaUrlRequest.this.mCronetEngineId, buildCronetTrafficInfo());
            } catch (RuntimeException e) {
                Log.i(JavaUrlRequest.TAG, "Error while trying to log CronetTrafficInfo: ", e);
            }
        }

        public void onCanceled(final UrlResponseInfo info2) {
            JavaUrlRequest.this.closeResponseChannel();
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCanceled$5(info2);
                }
            }, "onCanceled");
        }

        public final /* synthetic */ void lambda$onCanceled$5(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onCanceled(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onCanceled", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void onSucceeded(final UrlResponseInfo info2) {
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSucceeded$6(info2);
                }
            }, "onSucceeded");
        }

        public final /* synthetic */ void lambda$onSucceeded$6(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onSucceeded(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onSucceded", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void onFailed(final UrlResponseInfo urlResponseInfo, final CronetException e) {
            JavaUrlRequest.this.closeResponseChannel();
            Runnable runnable = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFailed$7(urlResponseInfo, e);
                }
            };
            try {
                executeOnUserExecutor(runnable, "onFailed");
            } catch (InlineExecutionProhibitedException unused) {
                if (this.mFallbackExecutor != null) {
                    executeOnFallbackExecutor(runnable, "onFailed");
                }
            }
        }

        public final /* synthetic */ void lambda$onFailed$7(UrlResponseInfo urlResponseInfo, CronetException cronetException) {
            try {
                this.mCallback.onFailed(JavaUrlRequest.this, urlResponseInfo, cronetException);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onFailed", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        public void executeOnUserExecutor(final Runnable runnable, final String name) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + name);
            try {
                this.mUserExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.m3105$r8$lambda$D3Lg1jcdUAIZEKduVfKuga6A4E(name, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$D3Lg1jcdUAIZEKduVfK-uga6A4E, reason: not valid java name */
        public static /* synthetic */ void m3105$r8$lambda$D3Lg1jcdUAIZEKduVfKuga6A4E(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public void executeOnFallbackExecutor(final Runnable runnable, final String name) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor " + name);
            try {
                this.mFallbackExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.$r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(name, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public static /* synthetic */ void $r8$lambda$_9B4GRLfAWjHu6e_D7q3tew4R6c(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor  " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    public final void closeResponseChannel() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$closeResponseChannel$14();
            }
        }, "closeResponseChannel");
    }

    public final /* synthetic */ void lambda$closeResponseChannel$14() {
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            try {
                readableByteChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mResponseChannel = null;
        }
    }

    public final Network getNetworkFromHandle(long networkHandle) {
        for (Network network : ((ConnectivityManager) this.mEngine.getContext().getSystemService("connectivity")).getAllNetworks()) {
            if (network.getNetworkHandle() == networkHandle) {
                return network;
            }
        }
        return null;
    }

    public final void onFinalCallbackException(String method, Exception e) {
        Log.e(TAG, "Exception in " + method + " method", e);
        this.mFinalUserCallbackThrew = true;
    }

    public final void executeOnExecutor(final Runnable runnable, final String name) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + name);
        try {
            this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    JavaUrlRequest.$r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(name, runnable);
                }
            });
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static /* synthetic */ void $r8$lambda$NQYCbe0U94j06X1DTQBiU1HE4R4(String str, Runnable runnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + str + " running callback");
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
