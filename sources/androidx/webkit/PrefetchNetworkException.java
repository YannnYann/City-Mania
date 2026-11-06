package androidx.webkit;

/* JADX INFO: loaded from: classes.dex */
public class PrefetchNetworkException extends PrefetchException {
    public final int httpResponseStatusCode;

    public PrefetchNetworkException(String str, int i) {
        super(str);
        this.httpResponseStatusCode = i;
    }
}
