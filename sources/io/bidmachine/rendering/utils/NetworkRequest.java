package io.bidmachine.rendering.utils;

import android.text.TextUtils;
import com.ironsource.C3746nc;
import io.bidmachine.rendering.utils.taskmanager.CancelableTask;
import io.bidmachine.util.Error;
import io.bidmachine.util.network.NetworkUtils;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkRequest<ResponseType> {
    public static final TaskManager m = new NetworkTaskManager();
    public final String a;
    public final Method b;
    public final Map c;
    public final Map d;
    public final Integer e;
    public final Integer f;
    public final ResponseProcessor i;
    public final Listener j;
    public TaskManager k;
    public CancelableTask l;

    public static class Builder<ResponseType> {
        public final String a;
        public final Method b;
        public final Map c = new HashMap();
        public final Map d = new HashMap();
        public Integer e;
        public Integer f;
        public ResponseProcessor i;
        public Listener j;

        public Builder(String url, Method method) {
            this.a = url;
            this.b = method;
        }

        public Builder<ResponseType> addHeader(String key, String value) {
            this.c.put(key, value);
            return this;
        }

        public NetworkRequest<ResponseType> build() {
            return new NetworkRequest<>(this.a, this.b, this.c, this.d, this.e, this.f, null, null, this.i, this.j);
        }

        public NetworkRequest<ResponseType> send() {
            NetworkRequest<ResponseType> networkRequestBuild = build();
            networkRequestBuild.send();
            return networkRequestBuild;
        }

        public Builder<ResponseType> setListener(Listener<ResponseType> listener) {
            this.j = listener;
            return this;
        }

        public Builder<ResponseType> setResponseTransformer(ResponseProcessor<ResponseType> responseProcessor) {
            this.i = responseProcessor;
            return this;
        }

        public Builder<ResponseType> setUserAgent(String userAgent) {
            if (!TextUtils.isEmpty(userAgent)) {
                addHeader("User-Agent", userAgent);
            }
            return this;
        }
    }

    public static abstract class ByteArrayProcessor<T> implements ResponseProcessor<T>, ResponseTransformer<byte[], T> {
        @Override // io.bidmachine.rendering.utils.NetworkRequest.ResponseProcessor
        public T process(URLConnection urlConnection) throws Throwable {
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream;
            InputStream inputStream2 = null;
            try {
                inputStream = urlConnection.getInputStream();
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th) {
                    inputStream2 = inputStream;
                    th = th;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
            try {
                Utils.write(inputStream, byteArrayOutputStream);
                T tTransform = transform(byteArrayOutputStream.toByteArray());
                io.bidmachine.util.Utils.flushSafely(byteArrayOutputStream);
                io.bidmachine.util.Utils.closeSafely(byteArrayOutputStream);
                io.bidmachine.util.Utils.closeSafely(inputStream);
                return tTransform;
            } catch (Throwable th3) {
                inputStream2 = inputStream;
                th = th3;
                io.bidmachine.util.Utils.flushSafely(byteArrayOutputStream);
                io.bidmachine.util.Utils.closeSafely(byteArrayOutputStream);
                io.bidmachine.util.Utils.closeSafely(inputStream2);
                throw th;
            }
        }
    }

    public interface DataRetriever {
    }

    public interface Listener<ResponseType> {
        void onError(Error error);

        void onSuccess(ResponseType response);
    }

    public enum Method {
        Get(C3746nc.a),
        Post(C3746nc.b);

        public final String a;

        Method(String networkName) {
            this.a = networkName;
        }

        public String getNetworkName() {
            return this.a;
        }
    }

    public interface ResponseProcessor<ResponseType> {
        ResponseType process(URLConnection urlConnection);
    }

    public interface ResponseTransformer<From, To> {
        To transform(From from);
    }

    public static class StringProcessor extends ByteArrayProcessor<String> {
        @Override // io.bidmachine.rendering.utils.NetworkRequest.ResponseTransformer
        public String transform(byte[] bytes) {
            return new String(bytes, StandardCharsets.UTF_8);
        }
    }

    public interface UrlConnectionProcessor {
    }

    public class b extends CancelableTask {
        public b() {
        }

        @Override // io.bidmachine.rendering.utils.taskmanager.CancelableTask
        public void runTask() {
            NetworkRequest.this.b();
        }
    }

    public NetworkRequest(String url, Method method, Map<String, String> headers, Map<String, String> queryParameters, Integer connectTimeout, Integer readTimeout, UrlConnectionProcessor urlConnectionProcessor, DataRetriever requestDataRetriever, ResponseProcessor<ResponseType> responseProcessor, Listener<ResponseType> listener) {
        this.a = url;
        this.b = method;
        this.e = connectTimeout;
        this.f = readTimeout;
        this.i = responseProcessor;
        this.c = headers;
        this.d = queryParameters;
        this.j = listener;
    }

    public final void b() {
        HttpURLConnection httpURLConnectionA;
        Throwable th;
        try {
            httpURLConnectionA = a(NetworkUtils.appendQueryParameters(this.a, this.d));
            try {
                int responseCode = httpURLConnectionA.getResponseCode();
                if (responseCode == 200) {
                    ResponseProcessor responseProcessor = this.i;
                    if (responseProcessor == null) {
                        a((Object) null);
                    } else {
                        try {
                            a(responseProcessor.process(httpURLConnectionA));
                        } catch (Throwable th2) {
                            a(new Error(th2));
                        }
                    }
                } else if (responseCode == 204) {
                    a((Object) null);
                } else {
                    a(new Error("Server response code - " + responseCode + " " + httpURLConnectionA.getResponseMessage()));
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    a(new Error(th));
                } finally {
                    NetworkUtils.disconnectSafely(httpURLConnectionA);
                }
            }
        } catch (Throwable th4) {
            httpURLConnectionA = null;
            th = th4;
        }
    }

    public void cancel() {
        TaskManager taskManager = this.k;
        CancelableTask cancelableTask = this.l;
        if (taskManager != null && cancelableTask != null) {
            taskManager.cancel(cancelableTask);
        }
        a();
    }

    public void send() {
        send(m);
    }

    public final HttpURLConnection a(String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod(this.b.getNetworkName());
            for (Map.Entry entry : this.c.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            Integer num = this.e;
            if (num != null && num.intValue() >= 0) {
                httpURLConnection.setConnectTimeout(this.e.intValue());
            }
            Integer num2 = this.f;
            if (num2 != null && num2.intValue() >= 0) {
                httpURLConnection.setReadTimeout(this.f.intValue());
            }
            switch (httpURLConnection.getResponseCode()) {
                case 301:
                case 302:
                case 303:
                case MRAID_BRIDGE_ERROR_VALUE:
                case AD_EXPIRED_ON_PLAY_VALUE:
                case AD_WIN_NOTIFICATION_ERROR_VALUE:
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField) && io.bidmachine.util.Utils.isHttpUrl(headerField)) {
                        NetworkUtils.disconnectSafely(httpURLConnection);
                        return a(headerField);
                    }
                    return httpURLConnection;
                case AD_EXPIRED_VALUE:
                case 306:
                default:
                    return httpURLConnection;
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection2 = httpURLConnection;
            NetworkUtils.disconnectSafely(httpURLConnection2);
            throw th;
        }
    }

    public void send(TaskManager taskManager) {
        cancel();
        this.k = taskManager;
        b bVar = new b();
        this.l = bVar;
        try {
            taskManager.execute(bVar);
        } catch (Throwable th) {
            a(new Error(th));
        }
    }

    public final void a(Object obj) {
        Listener listener = this.j;
        if (listener != null) {
            listener.onSuccess(obj);
        }
    }

    public final void a(Error error) {
        Listener listener = this.j;
        if (listener != null) {
            listener.onError(error);
        }
    }

    public final void a() {
        this.k = null;
        this.l = null;
    }
}
