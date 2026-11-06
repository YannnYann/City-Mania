package io.bidmachine.core;

import com.ironsource.C3746nc;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> {
    private static final TaskManager TASK_MANAGER = new NetworkTaskManager();
    private Callback<RequestResultType, ErrorResultType> callback;
    private CancelCallback cancelCallback;
    private ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> contentEncoders;
    private URLConnection currentConnection;
    private State currentState = State.Idle;
    private RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> dataBinder;
    private ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> dataEncoders;
    private ErrorResultType errorResult;
    private final Method method;
    private final String path;
    private final RequestDataType requestData;
    private RequestResultType requestResult;

    public interface Callback<RequestResultType, ErrorResultType> {
        void onFail(ErrorResultType errorresulttype);

        void onSuccess(RequestResultType requestresulttype);
    }

    public interface CancelCallback {
        void onCanceled();
    }

    public static class GZIPRequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> extends RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> {
        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        public byte[] decode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            ByteArrayInputStream byteArrayInputStream;
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            GZIPInputStream gZIPInputStream;
            if (!"gzip".equals(uRLConnection.getContentEncoding())) {
                return bArr;
            }
            GZIPInputStream gZIPInputStream2 = null;
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                    try {
                        gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayInputStream = null;
                }
            } catch (Throwable th4) {
                byteArrayInputStream = null;
                th = th4;
                byteArrayOutputStream = null;
            }
            try {
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int i = gZIPInputStream.read(bArr2);
                    if (i == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        Utils.flush(byteArrayOutputStream);
                        Utils.close(byteArrayOutputStream);
                        Utils.close(byteArrayInputStream);
                        Utils.close(gZIPInputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i);
                }
            } catch (Throwable th5) {
                th = th5;
                gZIPInputStream2 = gZIPInputStream;
                Utils.flush(byteArrayOutputStream);
                Utils.close(byteArrayOutputStream);
                Utils.close(byteArrayInputStream);
                Utils.close(gZIPInputStream2);
                throw th;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        public byte[] encode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            GZIPOutputStream gZIPOutputStream;
            GZIPOutputStream gZIPOutputStream2 = null;
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    gZIPOutputStream.write(bArr);
                    Utils.close(gZIPOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    Utils.flush(byteArrayOutputStream);
                    Utils.close(byteArrayOutputStream);
                    Utils.flush(null);
                    Utils.close(null);
                    return byteArray;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream2 = gZIPOutputStream;
                    Utils.flush(byteArrayOutputStream);
                    Utils.close(byteArrayOutputStream);
                    Utils.flush(gZIPOutputStream2);
                    Utils.close(gZIPOutputStream2);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                byteArrayOutputStream = null;
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.RequestDataEncoder
        public void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
            uRLConnection.setRequestProperty("Accept-Encoding", "gzip");
            uRLConnection.setRequestProperty("Content-Encoding", "gzip");
        }
    }

    public enum Method {
        Get(C3746nc.a),
        Post(C3746nc.b);

        public final String methodString;

        Method(String str) {
            this.methodString = str;
        }

        public void apply(URLConnection uRLConnection) throws ProtocolException {
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).setRequestMethod(this.methodString);
            }
        }
    }

    public static abstract class RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> {
        public ErrorResultType createFailResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception {
            return null;
        }

        public abstract RequestResultType createSuccessResult(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        public abstract byte[] obtainData(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, RequestDataType requestdatatype) throws Exception;

        public abstract void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection);

        public void prepareRequest(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }

    public static abstract class RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> {
        public abstract byte[] decode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        public abstract byte[] encode(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection, byte[] bArr) throws Exception;

        public void prepareHeaders(NetworkRequest<RequestDataType, RequestResultType, ErrorResultType> networkRequest, URLConnection uRLConnection) {
        }
    }

    public enum State {
        Idle,
        Running,
        Success,
        Fail,
        Canceled
    }

    public final class c implements Runnable {
        public c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            NetworkRequest.this.process();
            if (NetworkRequest.this.callback == null || NetworkRequest.this.isCanceled()) {
                return;
            }
            if (NetworkRequest.this.currentState == State.Success) {
                NetworkRequest.this.callback.onSuccess(NetworkRequest.this.requestResult);
            } else {
                NetworkRequest.this.callback.onFail(NetworkRequest.this.errorResult);
            }
        }
    }

    public NetworkRequest(Method method, String str, RequestDataType requestdatatype) {
        this.method = method;
        this.path = str;
        this.requestData = requestdatatype;
    }

    private InputStream obtainErrorStream(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getErrorStream();
        }
        return null;
    }

    private int obtainResponseCode(URLConnection uRLConnection) throws IOException {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0142 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void process() {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.NetworkRequest.process():void");
    }

    public void addContentEncoder(RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder) {
        if (this.contentEncoders == null) {
            this.contentEncoders = new ArrayList<>();
        }
        this.contentEncoders.add(requestDataEncoder);
    }

    public void addDataEncoder(RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder) {
        if (this.dataEncoders == null) {
            this.dataEncoders = new ArrayList<>();
        }
        this.dataEncoders.add(requestDataEncoder);
    }

    public void cancel() {
        this.currentState = State.Canceled;
        CancelCallback cancelCallback = this.cancelCallback;
        if (cancelCallback != null) {
            cancelCallback.onCanceled();
        }
    }

    public byte[] decodeResponseData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.contentEncoders;
        if (arrayList != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it = arrayList.iterator();
            while (it.hasNext()) {
                bArr = it.next().decode(this, uRLConnection, bArr);
            }
        }
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.dataEncoders;
        if (arrayList2 != null) {
            Iterator<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                bArr = it2.next().decode(this, uRLConnection, bArr);
            }
        }
        return bArr;
    }

    public byte[] encodeRequestData(URLConnection uRLConnection, byte[] bArr) throws Exception {
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList = this.dataEncoders;
        if (arrayList != null) {
            for (RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder : arrayList) {
                requestDataEncoder.prepareHeaders(this, uRLConnection);
                bArr = requestDataEncoder.encode(this, uRLConnection, bArr);
            }
        }
        ArrayList<RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType>> arrayList2 = this.contentEncoders;
        if (arrayList2 != null) {
            for (RequestDataEncoder<RequestDataType, RequestResultType, ErrorResultType> requestDataEncoder2 : arrayList2) {
                requestDataEncoder2.prepareHeaders(this, uRLConnection);
                bArr = requestDataEncoder2.encode(this, uRLConnection, bArr);
            }
        }
        return bArr;
    }

    public String getBaseUrl() throws Exception {
        return "TODO: implement url";
    }

    public Method getMethod() {
        return this.method;
    }

    public String getPath() {
        return this.path;
    }

    public boolean isCanceled() {
        return this.currentState == State.Canceled;
    }

    public abstract ErrorResultType obtainError(URLConnection uRLConnection, int i);

    public abstract ErrorResultType obtainError(URLConnection uRLConnection, Throwable th);

    public byte[] obtainRequestData(URLConnection uRLConnection) throws Exception {
        RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> requestDataBinder = this.dataBinder;
        if (requestDataBinder == null) {
            return null;
        }
        requestDataBinder.prepareRequest(this, uRLConnection);
        this.dataBinder.prepareHeaders(this, uRLConnection);
        return this.dataBinder.obtainData(this, uRLConnection, this.requestData);
    }

    public void prepareRequestParams(URLConnection uRLConnection) {
        uRLConnection.setConnectTimeout(40000);
        uRLConnection.setReadTimeout(40000);
    }

    public void request() {
        request(TASK_MANAGER);
    }

    public void setCallback(Callback<RequestResultType, ErrorResultType> callback) {
        this.callback = callback;
    }

    public void setCancelCallback(CancelCallback cancelCallback) {
        this.cancelCallback = cancelCallback;
    }

    public void setDataBinder(RequestDataBinder<RequestDataType, RequestResultType, ErrorResultType> requestDataBinder) {
        this.dataBinder = requestDataBinder;
    }

    public void request(TaskManager taskManager) {
        try {
            taskManager.execute(new c());
        } catch (Throwable th) {
            Logger.w(th);
            Callback<RequestResultType, ErrorResultType> callback = this.callback;
            if (callback != null) {
                callback.onFail(obtainError((URLConnection) null, th));
            }
        }
    }
}
