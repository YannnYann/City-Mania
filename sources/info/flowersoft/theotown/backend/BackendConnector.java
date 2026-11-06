package info.flowersoft.theotown.backend;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.Base64Coder;
import com.badlogic.gdx.utils.TimeUtils;
import com.ironsource.C3746nc;
import com.ironsource.R6;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.util.Hex;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.StreamCopyUtil;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes4.dex */
public class BackendConnector {
    public final String clientId;
    public final String clientVI;
    public final int clientVersion;
    public final String device;
    public final String path;
    public static final ResponseCollector<String> COLLECT_TEXT = new ResponseCollector() { // from class: info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda0
        @Override // info.flowersoft.theotown.backend.ResponseCollector
        public final void collect(InputStream inputStream, ResponseHandler responseHandler) throws IOException {
            BackendConnector.$r8$lambda$e07PEY3_59jaPFF4wzBpcVcg3uI(inputStream, responseHandler);
        }
    };
    public static final ResponseCollector<String> COLLECT_COMPRESSED_TEXT = new ResponseCollector() { // from class: info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda1
        @Override // info.flowersoft.theotown.backend.ResponseCollector
        public final void collect(InputStream inputStream, ResponseHandler responseHandler) throws IOException {
            BackendConnector.$r8$lambda$pNa0ov1zL5a4kjp42CLSDVns4Qo(inputStream, responseHandler);
        }
    };
    public static final Request EMPTY_REQUEST = new Request() { // from class: info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda2
        @Override // info.flowersoft.theotown.backend.Request
        public final void apply(URLConnection uRLConnection) {
            BackendConnector.m2118$r8$lambda$blBLZExnP82ufujLAIphhbD9Gc(uRLConnection);
        }
    };

    /* JADX INFO: renamed from: $r8$lambda$blBLZExnP82ufuj-LAIphhbD9Gc, reason: not valid java name */
    public static /* synthetic */ void m2118$r8$lambda$blBLZExnP82ufujLAIphhbD9Gc(URLConnection uRLConnection) {
    }

    public static void applyHeaders(URLConnection uRLConnection) {
    }

    public static /* synthetic */ void $r8$lambda$e07PEY3_59jaPFF4wzBpcVcg3uI(InputStream inputStream, ResponseHandler responseHandler) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
                sb.append('\n');
            } else {
                responseHandler.handle(sb.toString());
                return;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$pNa0ov1zL5a4kjp42CLSDVns4Qo(InputStream inputStream, ResponseHandler responseHandler) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StreamCopyUtil.copyTo(inputStream, byteArrayOutputStream);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())), StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append('\n');
                } else {
                    responseHandler.handle(sb.toString());
                    return;
                }
            }
        } catch (ZipException unused) {
            throw new ZipException(new String(Base64Coder.encode(byteArrayOutputStream.toByteArray())));
        }
    }

    public static ResponseHandler<String> buildJSONAdapter(final ResponseHandler<JSONObject> responseHandler) {
        return new ResponseHandler<String>() { // from class: info.flowersoft.theotown.backend.BackendConnector.1
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(String str) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.has(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT)) {
                        jSONObject = jSONObject.getJSONObject(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT);
                    }
                    responseHandler.handle(jSONObject);
                } catch (JSONException e) {
                    error(new JSONException("Could not read json object: " + str + " (" + e.getMessage() + ")"));
                } catch (Exception e2) {
                    error(e2);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                responseHandler.error(exc);
            }
        };
    }

    public static Request createBinaryRequest(final String str, final byte[] bArr, Setter<Float> setter) {
        return new Request() { // from class: info.flowersoft.theotown.backend.BackendConnector$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.backend.Request
            public final void apply(URLConnection uRLConnection) {
                BackendConnector.$r8$lambda$Svge5htZs4Du1ytkaZExEVDBFcU(str, bArr, uRLConnection);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$Svge5htZs4Du1ytkaZExEVDBFcU(String str, byte[] bArr, URLConnection uRLConnection) {
        long jMillis = TimeUtils.millis();
        Gdx.app.debug("BackendConnector", "Uploading " + str + "... (" + bArr.length + " bytes)");
        OutputStream outputStream = null;
        try {
            try {
                try {
                    String str2 = "-----------------------------4664151417711\r\nContent-Disposition: form-data; name=\"file\"; filename=\"" + URLEncoder.encode(str, "UTF-8").replace("+", "%20") + "\"\r\nContent-Type: image/jpeg\r\n\r\n";
                    uRLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=---------------------------4664151417711");
                    uRLConnection.setRequestProperty("Content-Length", String.valueOf(str2.length() + 48 + bArr.length));
                    outputStream = uRLConnection.getOutputStream();
                    outputStream.write(str2.getBytes());
                    outputStream.write(bArr);
                    outputStream.write("\r\n-----------------------------4664151417711--\r\n".getBytes());
                    outputStream.flush();
                    Gdx.app.debug("FileUploader", "Upload took " + (TimeUtils.millis() - jMillis) + "ms");
                    outputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                    outputStream.close();
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            try {
                outputStream.close();
            } catch (Exception unused2) {
            }
            throw th;
        }
    }

    public BackendConnector(String str, String str2, int i, String str3, String str4) {
        this.path = str;
        this.clientId = str2;
        this.clientVersion = i;
        this.clientVI = str3;
        this.device = str4;
    }

    public final HttpURLConnection prepareConnection(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.path + "/" + str).openConnection();
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestMethod(C3746nc.b);
        httpURLConnection.setConnectTimeout(20000);
        httpURLConnection.setReadTimeout(20000);
        applyHeaders(httpURLConnection);
        return httpURLConnection;
    }

    public <T> void sendRequest(String str, Request request, ResponseCollector<T> responseCollector, ResponseHandler<T> responseHandler) {
        InputStream inputStream = null;
        try {
            try {
                try {
                    try {
                        try {
                            HttpURLConnection httpURLConnectionPrepareConnection = prepareConnection(str);
                            request.apply(httpURLConnectionPrepareConnection);
                            inputStream = httpURLConnectionPrepareConnection.getInputStream();
                            responseCollector.collect(inputStream, responseHandler);
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    } catch (MalformedURLException e2) {
                        TheoTown.analytics.logException("Backend", e2);
                        responseHandler.error(e2);
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    }
                } catch (IOException e3) {
                    TheoTown.analytics.logException("Backend", e3);
                    responseHandler.error(e3);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (SecurityException e4) {
                TheoTown.analytics.logException("Backend", e4);
                responseHandler.error(e4);
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
    }

    public <T> void sendRequest(String str, JSONObject jSONObject, String str2, ResponseHandler<JSONObject> responseHandler) {
        TextRequest textRequest = new TextRequest();
        textRequest.add(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, jSONObject.toString());
        textRequest.add("clientid", this.clientId);
        textRequest.add("cake", str2);
        textRequest.add("clientversion", "" + this.clientVersion);
        textRequest.add("vi", this.clientVI);
        textRequest.add("compress", "1");
        textRequest.add(R6.B, this.device);
        sendRequest(str, textRequest, COLLECT_COMPRESSED_TEXT, buildJSONAdapter(responseHandler));
    }

    public <T> void sendSecureRequest(String str, JSONObject jSONObject, final ResponseHandler<JSONObject> responseHandler, User user, String str2, final Session session) {
        TextRequest textRequest = new TextRequest();
        try {
            byte[] bytes = jSONObject.toString().getBytes(StandardCharsets.UTF_8);
            byte[] bArrEncrypt = session.encrypt(bytes);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest(Hex.hex2bin("CBEF5C85D3C6B342"));
            textRequest.add("user", "" + user.getId());
            textRequest.add("cake", str2);
            textRequest.add("session", session.getId());
            textRequest.add(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT, new String(Base64Coder.encode(bArrEncrypt)));
            textRequest.add("sign", new String(Base64Coder.encode(bArrDigest)));
            textRequest.add("clientid", this.clientId);
            textRequest.add("clientversion", "" + this.clientVersion);
            textRequest.add("vi", this.clientVI);
            textRequest.add("compress", "1");
            textRequest.add(R6.B, this.device);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        sendRequest(str, textRequest, COLLECT_COMPRESSED_TEXT, new ResponseHandler<String>() { // from class: info.flowersoft.theotown.backend.BackendConnector.2
            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void handle(String str3) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str3);
                    if (jSONObject2.has(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT)) {
                        byte[] bArrDecrypt = session.decrypt(Base64Coder.decode(jSONObject2.getString(HandleInvocationsFromAdViewer.KEY_PRIVACY_UPDATE_CONTENT).replace("\n", "")));
                        byte[] bArrDecode = Base64Coder.decode(jSONObject2.getString("sign").replace("\n", ""));
                        MessageDigest messageDigest2 = MessageDigest.getInstance("MD5");
                        messageDigest2.update(bArrDecrypt);
                        if (!Arrays.equals(bArrDecode, messageDigest2.digest(Hex.hex2bin("7B70BB55032D797A")))) {
                            throw new IllegalStateException("Sign didn't match");
                        }
                        GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArrDecrypt));
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        StreamCopyUtil.copyTo(gZIPInputStream, byteArrayOutputStream);
                        jSONObject2 = new JSONObject(new String(byteArrayOutputStream.toByteArray(), StandardCharsets.UTF_8));
                    }
                    responseHandler.handle(jSONObject2);
                } catch (JSONException e2) {
                    error(new JSONException("Could not read json object: " + str3 + " (" + e2.getMessage() + ")"));
                } catch (Exception e3) {
                    error(e3);
                }
            }

            @Override // info.flowersoft.theotown.backend.ResponseHandler
            public void error(Exception exc) {
                responseHandler.error(exc);
            }
        });
    }
}
