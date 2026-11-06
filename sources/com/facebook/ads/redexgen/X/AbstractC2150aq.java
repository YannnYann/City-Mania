package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2150aq {
    public static String[] A00 = {"ltmF64ZweBQJPeOdif9BPyh7xrdDqMGm", "1hD4GCEv16m9ULjLseNq8NpSJScOpV4z", "cjybuzvgbX7cmH3axbx3qBHLU46", "3xOl7CJaqVAPHP1avR87ELk8GAlY0bDn", "t7u0RHWzousfLG5LtFWytgwP1DKhggaB", "Lz4xSMhIvLrTjJnzClIMi9mdhGC", "f5Kl57kllqDhIhPF", "i0IJI0KG8A89caPvqz1zLZN3nnLrP5V4"};

    public static C2149ap A00(int i, long[] jArr, int[] iArr, long j) {
        int chunkSamplesRemaining = 8192 / i;
        int iA05 = 0;
        for (int i2 : iArr) {
            iA05 += N1.A05(i2, chunkSamplesRemaining);
        }
        long[] jArr2 = new long[iA05];
        int[] iArr2 = new int[iA05];
        int originalSampleIndex = 0;
        long[] timestamps = new long[iA05];
        int[] flags = new int[iA05];
        int i3 = 0;
        int bufferSampleCount = 0;
        int i4 = 0;
        while (true) {
            int newSampleIndex = iArr.length;
            String[] strArr = A00;
            String str = strArr[0];
            String str2 = strArr[3];
            int iCharAt = str.charAt(21);
            int maxSampleCount = str2.charAt(21);
            if (iCharAt == maxSampleCount) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[5] = "wNkrlldVaUTeajb4lzLgF8WCWCG";
            strArr2[2] = "yVUP0nv1OIaEI6s3laAD0V5uevr";
            if (i4 < newSampleIndex) {
                int rechunkedSampleCount = iArr[i4];
                long j2 = jArr[i4];
                while (rechunkedSampleCount > 0) {
                    int iMin = Math.min(chunkSamplesRemaining, rechunkedSampleCount);
                    jArr2[bufferSampleCount] = j2;
                    iArr2[bufferSampleCount] = i * iMin;
                    originalSampleIndex = Math.max(originalSampleIndex, iArr2[bufferSampleCount]);
                    timestamps[bufferSampleCount] = ((long) i3) * j;
                    flags[bufferSampleCount] = 1;
                    j2 += (long) iArr2[bufferSampleCount];
                    i3 += iMin;
                    rechunkedSampleCount -= iMin;
                    bufferSampleCount++;
                }
                i4++;
            } else {
                return new C2149ap(jArr2, iArr2, originalSampleIndex, timestamps, flags, j * ((long) i3));
            }
        }
    }
}
