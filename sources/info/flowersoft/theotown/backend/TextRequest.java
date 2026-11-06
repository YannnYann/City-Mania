package info.flowersoft.theotown.backend;

import com.ironsource.G5;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class TextRequest implements Request {
    public final List<String> names = new ArrayList();
    public final List<String> texts = new ArrayList();

    public void add(String str, String str2) {
        this.names.add(str);
        this.texts.add(str2);
    }

    @Override // info.flowersoft.theotown.backend.Request
    public void apply(URLConnection uRLConnection) throws IOException {
        uRLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.names.size(); i++) {
            String str = this.names.get(i);
            String str2 = this.texts.get(i);
            sb.append(URLEncoder.encode(str, "UTF-8"));
            sb.append(G5.U);
            sb.append(URLEncoder.encode(str2, "UTF-8"));
            if (i < this.names.size() - 1) {
                sb.append('&');
            }
        }
        byte[] bytes = sb.toString().getBytes("UTF-8");
        uRLConnection.setRequestProperty("Content-Length", "" + bytes.length);
        OutputStream outputStream = uRLConnection.getOutputStream();
        try {
            outputStream.write(bytes);
            outputStream.close();
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
