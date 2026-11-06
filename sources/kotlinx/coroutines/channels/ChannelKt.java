package kotlinx.coroutines.channels;

import com.google.android.gms.common.api.Api;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ChannelKt {
    public static /* synthetic */ Channel Channel$default(int i, BufferOverflow bufferOverflow, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        return Channel(i, bufferOverflow, function1);
    }

    public static final <E> Channel<E> Channel(int i, BufferOverflow bufferOverflow, Function1<? super E, Unit> function1) {
        if (i == -2) {
            return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(Channel.Factory.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core(), function1) : new ConflatedBufferedChannel(1, bufferOverflow, function1);
        }
        if (i == -1) {
            if (bufferOverflow != BufferOverflow.SUSPEND) {
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
            }
            return new ConflatedBufferedChannel(1, BufferOverflow.DROP_OLDEST, function1);
        }
        if (i != 0) {
            if (i != Integer.MAX_VALUE) {
                return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i, function1) : new ConflatedBufferedChannel(i, bufferOverflow, function1);
            }
            return new BufferedChannel(Api.BaseClientBuilder.API_PRIORITY_OTHER, function1);
        }
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            return new BufferedChannel(0, function1);
        }
        return new ConflatedBufferedChannel(1, bufferOverflow, function1);
    }
}
