package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0u, reason: invalid class name and case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C12540u implements ListIterator {
    public static byte[] A00;
    public static String[] A01 = {"Lh1ctQGI3z0ICKY4sERIgObiaQXEE6st", "", "YrUNUjPJhwTFPahOnKdKEZpQqkqmkMqf", "mt1at7u7GjasOkbUIdXphgeIXmOD3c5Y", "LyUo5DTjg5p2hVh4q93CeOXeBqCAIjFA", "hXpvjK4NhCfyo6HowYXGM", "i3NXtzFRw7DPnENsvqn328A3wBeLdhIf", "5LVzMNXxt"};
    public static final C12540u A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 29);
            String[] strArr = A01;
            if (strArr[3].charAt(4) != strArr[6].charAt(4)) {
                throw new RuntimeException();
            }
            A01[4] = "W86BrAWeae6d9FvxmGtwJGfWCGR1ExqG";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-42, -9, -20, -7, -24, -5, -16, -10, -11, -89, -16, -6, -89, -11, -10, -5, -89, -6, -4, -9, -9, -10, -7, -5, -20, -21, -89, -19, -10, -7, -89, -7, -20, -24, -21, -76, -10, -11, -13, 0, -89, -22, -10, -13, -13, -20, -22, -5, -16, -10, -11};
        if (A01[4].charAt(5) == 'L') {
            throw new RuntimeException();
        }
        A01[7] = "q3Fo83D1p5TcLhnq7hcGOS";
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException(A00(0, 51, 106));
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException(A00(0, 51, 106));
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException(A00(0, 51, 106));
    }

    static {
        A03();
        A02 = new C12540u();
    }

    private final Void A01() {
        throw new NoSuchElementException();
    }

    private final Void A02() {
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        A01();
        throw null;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return 0;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        A02();
        throw null;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return -1;
    }
}
