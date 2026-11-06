package info.flowersoft.theotown.backend;

/* JADX INFO: loaded from: classes4.dex */
public interface ResponseHandler<T> {
    void error(Exception exc);

    void handle(T t);
}
