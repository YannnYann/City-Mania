package info.flowersoft.theotown.backend;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public interface ResponseCollector<T> {
    void collect(InputStream inputStream, ResponseHandler<T> responseHandler) throws IOException;
}
