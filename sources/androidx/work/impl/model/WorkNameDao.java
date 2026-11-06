package androidx.work.impl.model;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface WorkNameDao {
    List<String> getNamesForWorkSpecId(String workSpecId);

    void insert(WorkName workName);
}
