package info.flowersoft.theotown.backend;

import java.io.IOException;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes4.dex */
public interface Request {
    void apply(URLConnection uRLConnection) throws IOException;
}
