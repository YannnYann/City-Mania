package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.selects.SelectClause1;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ReceiveChannel<E> {
    void cancel(CancellationException cancellationException);

    SelectClause1<E> getOnReceive();

    ChannelIterator<E> iterator();

    Object receive(Continuation<? super E> continuation);

    /* JADX INFO: renamed from: receiveCatching-JP2dKIU */
    Object mo2948receiveCatchingJP2dKIU(Continuation<? super ChannelResult<? extends E>> continuation);

    /* JADX INFO: renamed from: tryReceive-PtdJZtk */
    Object mo2950tryReceivePtdJZtk();
}
