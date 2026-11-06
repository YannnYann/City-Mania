package androidx.core.view;

import android.view.View;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;

/* JADX INFO: compiled from: View.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ViewKt {
    public static final Sequence<View> getAllViews(View view) {
        return SequencesKt__SequenceBuilderKt.sequence(new ViewKt$allViews$1(view, null));
    }
}
