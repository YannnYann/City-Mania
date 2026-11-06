package com.badlogic.gdx.utils;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class BufferUtils {
    public static Array<ByteBuffer> unsafeBuffers = new Array<>();
    public static int allocatedUnsafe = 0;

    private static native void copyJni(Buffer buffer, int i, Buffer buffer2, int i2, int i3);

    private static native void copyJni(byte[] bArr, int i, Buffer buffer, int i2, int i3);

    private static native void freeMemory(ByteBuffer byteBuffer);

    private static native ByteBuffer newDisposableByteBuffer(int i);

    public static void copy(byte[] bArr, int i, Buffer buffer, int i2) {
        buffer.limit(buffer.position() + bytesToElements(buffer, i2));
        copyJni(bArr, i, buffer, positionInBytes(buffer), i2);
    }

    public static void copy(Buffer buffer, Buffer buffer2, int i) {
        int iElementsToBytes = elementsToBytes(buffer, i);
        buffer2.limit(buffer2.position() + bytesToElements(buffer2, iElementsToBytes));
        copyJni(buffer, positionInBytes(buffer), buffer2, positionInBytes(buffer2), iElementsToBytes);
    }

    public static int positionInBytes(Buffer buffer) {
        if (buffer instanceof ByteBuffer) {
            return buffer.position();
        }
        if (buffer instanceof ShortBuffer) {
            return buffer.position() << 1;
        }
        if (buffer instanceof CharBuffer) {
            return buffer.position() << 1;
        }
        if (buffer instanceof IntBuffer) {
            return buffer.position() << 2;
        }
        if (buffer instanceof LongBuffer) {
            return buffer.position() << 3;
        }
        if (buffer instanceof FloatBuffer) {
            return buffer.position() << 2;
        }
        if (buffer instanceof DoubleBuffer) {
            return buffer.position() << 3;
        }
        throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
    }

    public static int bytesToElements(Buffer buffer, int i) {
        if (buffer instanceof ByteBuffer) {
            return i;
        }
        if (!(buffer instanceof ShortBuffer) && !(buffer instanceof CharBuffer)) {
            if (buffer instanceof IntBuffer) {
                return i >>> 2;
            }
            if (buffer instanceof LongBuffer) {
                return i >>> 3;
            }
            if (buffer instanceof FloatBuffer) {
                return i >>> 2;
            }
            if (buffer instanceof DoubleBuffer) {
                return i >>> 3;
            }
            throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
        }
        return i >>> 1;
    }

    public static int elementsToBytes(Buffer buffer, int i) {
        if (buffer instanceof ByteBuffer) {
            return i;
        }
        if (!(buffer instanceof ShortBuffer) && !(buffer instanceof CharBuffer)) {
            if (buffer instanceof IntBuffer) {
                return i << 2;
            }
            if (buffer instanceof LongBuffer) {
                return i << 3;
            }
            if (buffer instanceof FloatBuffer) {
                return i << 2;
            }
            if (buffer instanceof DoubleBuffer) {
                return i << 3;
            }
            throw new GdxRuntimeException("Can't copy to a " + buffer.getClass().getName() + " instance");
        }
        return i << 1;
    }

    public static FloatBuffer newFloatBuffer(int i) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        return byteBufferAllocateDirect.asFloatBuffer();
    }

    public static ByteBuffer newByteBuffer(int i) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        return byteBufferAllocateDirect;
    }

    public static IntBuffer newIntBuffer(int i) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i * 4);
        byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
        return byteBufferAllocateDirect.asIntBuffer();
    }

    public static void disposeUnsafeByteBuffer(ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity();
        synchronized (unsafeBuffers) {
            if (!unsafeBuffers.removeValue(byteBuffer, true)) {
                throw new IllegalArgumentException("buffer not allocated with newUnsafeByteBuffer or already disposed");
            }
        }
        allocatedUnsafe -= iCapacity;
        freeMemory(byteBuffer);
    }

    public static boolean isUnsafeByteBuffer(ByteBuffer byteBuffer) {
        boolean zContains;
        synchronized (unsafeBuffers) {
            zContains = unsafeBuffers.contains(byteBuffer, true);
        }
        return zContains;
    }

    public static ByteBuffer newUnsafeByteBuffer(int i) {
        ByteBuffer byteBufferNewDisposableByteBuffer = newDisposableByteBuffer(i);
        byteBufferNewDisposableByteBuffer.order(ByteOrder.nativeOrder());
        allocatedUnsafe += i;
        synchronized (unsafeBuffers) {
            unsafeBuffers.add(byteBufferNewDisposableByteBuffer);
        }
        return byteBufferNewDisposableByteBuffer;
    }
}
