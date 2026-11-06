package io.bidmachine.media3.exoplayer.mediacodec;

import android.content.Context;
import android.os.HandlerThread;
import com.google.common.base.Supplier;
import io.bidmachine.media3.common.MimeTypes;
import io.bidmachine.media3.common.util.Log;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter;
import io.bidmachine.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    public boolean asyncCryptoFlagEnabled;
    public int asynchronousMode;
    public final Supplier<HandlerThread> callbackThreadSupplier;
    public final Context context;
    public final Supplier<HandlerThread> queueingThreadSupplier;

    @Deprecated
    public DefaultMediaCodecAdapterFactory() {
        this.asynchronousMode = 0;
        this.asyncCryptoFlagEnabled = false;
        this.context = null;
        this.callbackThreadSupplier = null;
        this.queueingThreadSupplier = null;
    }

    public DefaultMediaCodecAdapterFactory(Context context) {
        this(context, null, null);
    }

    public DefaultMediaCodecAdapterFactory(Context context, Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2) {
        this.context = context;
        this.asynchronousMode = 0;
        this.asyncCryptoFlagEnabled = false;
        this.callbackThreadSupplier = supplier;
        this.queueingThreadSupplier = supplier2;
    }

    @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) throws IOException {
        int i;
        AsynchronousMediaCodecAdapter.Factory factory;
        Supplier<HandlerThread> supplier;
        if (Util.SDK_INT >= 23 && ((i = this.asynchronousMode) == 1 || (i == 0 && shouldUseAsynchronousAdapterInDefaultMode()))) {
            int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
            Log.i("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + Util.getTrackTypeString(trackType));
            Supplier<HandlerThread> supplier2 = this.callbackThreadSupplier;
            if (supplier2 != null && (supplier = this.queueingThreadSupplier) != null) {
                factory = new AsynchronousMediaCodecAdapter.Factory(supplier2, supplier);
            } else {
                factory = new AsynchronousMediaCodecAdapter.Factory(trackType);
            }
            factory.experimentalSetAsyncCryptoFlagEnabled(this.asyncCryptoFlagEnabled);
            return factory.createAdapter(configuration);
        }
        return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
    }

    public final boolean shouldUseAsynchronousAdapterInDefaultMode() {
        int i = Util.SDK_INT;
        if (i >= 31) {
            return true;
        }
        Context context = this.context;
        return context != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen");
    }
}
