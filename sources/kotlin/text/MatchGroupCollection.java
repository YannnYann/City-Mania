package kotlin.text;

import java.util.Collection;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: MatchResult.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface MatchGroupCollection extends Collection<MatchGroup>, KMappedMarker {
    MatchGroup get(int i);
}
