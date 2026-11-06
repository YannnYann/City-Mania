package io.bidmachine.media3.exoplayer.image;

import android.graphics.Bitmap;
import io.bidmachine.media3.common.Format;
import io.bidmachine.media3.common.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.datasource.BitmapUtil;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.decoder.SimpleDecoder;
import io.bidmachine.media3.exoplayer.RendererCapabilities;
import io.bidmachine.media3.exoplayer.image.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class BitmapFactoryImageDecoder extends SimpleDecoder<DecoderInputBuffer, ImageOutputBuffer, ImageDecoderException> implements ImageDecoder {
    public final BitmapDecoder bitmapDecoder;

    public interface BitmapDecoder {
        Bitmap decode(byte[] bArr, int i) throws ImageDecoderException;
    }

    @Override // io.bidmachine.media3.decoder.SimpleDecoder, io.bidmachine.media3.decoder.Decoder
    public /* bridge */ /* synthetic */ ImageOutputBuffer dequeueOutputBuffer() throws ImageDecoderException {
        return (ImageOutputBuffer) super.dequeueOutputBuffer();
    }

    public static final class Factory implements ImageDecoder.Factory {
        public final BitmapDecoder bitmapDecoder = new BitmapDecoder() { // from class: io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0
            @Override // io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder.BitmapDecoder
            public final Bitmap decode(byte[] bArr, int i) {
                return BitmapFactoryImageDecoder.decode(bArr, i);
            }
        };

        @Override // io.bidmachine.media3.exoplayer.image.ImageDecoder.Factory
        public int supportsFormat(Format format) {
            String str = format.sampleMimeType;
            if (str == null || !MimeTypes.isImage(str)) {
                return RendererCapabilities.create(0);
            }
            if (Util.isBitmapFactorySupportedMimeType(format.sampleMimeType)) {
                return RendererCapabilities.create(4);
            }
            return RendererCapabilities.create(1);
        }

        @Override // io.bidmachine.media3.exoplayer.image.ImageDecoder.Factory
        public BitmapFactoryImageDecoder createImageDecoder() {
            return new BitmapFactoryImageDecoder(this.bitmapDecoder);
        }
    }

    public BitmapFactoryImageDecoder(BitmapDecoder bitmapDecoder) {
        super(new DecoderInputBuffer[1], new ImageOutputBuffer[1]);
        this.bitmapDecoder = bitmapDecoder;
    }

    @Override // io.bidmachine.media3.decoder.SimpleDecoder
    public DecoderInputBuffer createInputBuffer() {
        return new DecoderInputBuffer(1);
    }

    @Override // io.bidmachine.media3.decoder.SimpleDecoder
    public ImageOutputBuffer createOutputBuffer() {
        return new ImageOutputBuffer() { // from class: io.bidmachine.media3.exoplayer.image.BitmapFactoryImageDecoder.1
            @Override // io.bidmachine.media3.decoder.DecoderOutputBuffer
            public void release() {
                BitmapFactoryImageDecoder.this.releaseOutputBuffer(this);
            }
        };
    }

    @Override // io.bidmachine.media3.decoder.SimpleDecoder
    public ImageDecoderException createUnexpectedDecodeException(Throwable th) {
        return new ImageDecoderException("Unexpected decode error", th);
    }

    @Override // io.bidmachine.media3.decoder.SimpleDecoder
    public ImageDecoderException decode(DecoderInputBuffer decoderInputBuffer, ImageOutputBuffer imageOutputBuffer, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data);
            Assertions.checkState(byteBuffer.hasArray());
            Assertions.checkArgument(byteBuffer.arrayOffset() == 0);
            imageOutputBuffer.bitmap = this.bitmapDecoder.decode(byteBuffer.array(), byteBuffer.remaining());
            imageOutputBuffer.timeUs = decoderInputBuffer.timeUs;
            return null;
        } catch (ImageDecoderException e) {
            return e;
        }
    }

    public static Bitmap decode(byte[] bArr, int i) throws ImageDecoderException {
        try {
            return BitmapUtil.decode(bArr, i, null, -1);
        } catch (ParserException e) {
            throw new ImageDecoderException("Could not decode image data with BitmapFactory. (data.length = " + bArr.length + ", input length = " + i + ")", e);
        } catch (IOException e2) {
            throw new ImageDecoderException(e2);
        }
    }
}
