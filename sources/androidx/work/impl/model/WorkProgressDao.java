package androidx.work.impl.model;

/* JADX INFO: loaded from: classes.dex */
public interface WorkProgressDao {
    void delete(String workSpecId);

    void deleteAll();

    void insert(WorkProgress progress);
}
