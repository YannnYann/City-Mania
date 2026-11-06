package com.unity3d.services.core.network.domain;

import com.unity3d.ads.core.log.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.FilesKt__FileTreeWalkKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: CleanupDirectory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CleanupDirectory {
    private final Logger logger;

    public CleanupDirectory(Logger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    public final void invoke(File directory, int i, long j) {
        List list;
        Intrinsics.checkNotNullParameter(directory, "directory");
        if (!directory.exists() || !directory.isDirectory()) {
            this.logger.debug("Directory does not exist or is not a directory: " + directory + ", nothing to clean up.");
            return;
        }
        Object obj = null;
        Sequence sequenceFilter = SequencesKt___SequencesKt.filter(FilesKt__FileTreeWalkKt.walk$default(directory, null, 1, null), CleanupDirectory$invoke$cachedFiles$1.INSTANCE);
        Iterator it = sequenceFilter.iterator();
        long length = 0;
        long length2 = 0;
        while (it.hasNext()) {
            length2 += ((File) it.next()).length();
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : sequenceFilter) {
            if (((File) obj2).lastModified() + j < jCurrentTimeMillis) {
                arrayList.add(obj2);
            } else {
                arrayList2.add(obj2);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list2 = (List) pair.component1();
        List list3 = (List) pair.component2();
        List list4 = list2;
        Iterator it2 = list4.iterator();
        while (it2.hasNext()) {
            length += ((File) it2.next()).length();
        }
        long j2 = length2 - length;
        Iterator it3 = list4.iterator();
        while (it3.hasNext()) {
            ((File) it3.next()).delete();
        }
        long j3 = i * 1048576;
        if (j2 > j3) {
            Iterator it4 = SequencesKt___SequencesKt.runningFold(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(list3), new Comparator() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((File) t).lastModified()), Long.valueOf(((File) t2).lastModified()));
                }
            }), TuplesKt.to(Long.valueOf(j2), CollectionsKt__CollectionsKt.emptyList()), new Function2() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    return CleanupDirectory.invoke$lambda$3((Pair) obj3, (File) obj4);
                }
            }).iterator();
            while (true) {
                if (!it4.hasNext()) {
                    break;
                }
                Object next = it4.next();
                if (((Number) ((Pair) next).component1()).longValue() <= j3) {
                    obj = next;
                    break;
                }
            }
            Pair pair2 = (Pair) obj;
            if (pair2 != null && (list = (List) pair2.component2()) != null) {
                list3 = list;
            }
            Iterator it5 = list3.iterator();
            while (it5.hasNext()) {
                ((File) it5.next()).delete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair invoke$lambda$3(Pair pair, File file) {
        Intrinsics.checkNotNullParameter(pair, "<destruct>");
        Intrinsics.checkNotNullParameter(file, "file");
        return TuplesKt.to(Long.valueOf(((Number) pair.component1()).longValue() - file.length()), CollectionsKt___CollectionsKt.plus((List) pair.component2(), file));
    }
}
