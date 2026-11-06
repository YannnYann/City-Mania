package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QF {
    public static String[] A00 = {"OgUX7gzHpSeJddbuscLmGOVyd42yu1Hx", "gpaMURIjLEBwPTzUXsfheCKWNhP9NbwP", "O26lRHT6uqDaYF5G5NQzACbygP1ky54G", "jzVXvLz2O7l3wzMO9IeKYiuI0zv4eCqt", "HyvN7DjBq9RkCvHIGaKBihOfJzb", "E6sXCyKDum1pQyP9FFM8iFEhCtA6HUxR", "OzsBZ6lJmJbmFi9rg2hG2pFSR2EhuJ44", "TFcv15lauI8WMsCfswAvPYflIE2Dxc6v"};
    public static final AudioAttributes A01 = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    public static int A00(int i, int i2) {
        for (int i3 = 8; i3 > 0; i3--) {
            AudioFormat.Builder sampleRate = new AudioFormat.Builder().setEncoding(i).setSampleRate(i2);
            int channelCount = N1.A01(i3);
            AudioFormat audioFormat = sampleRate.setChannelMask(channelCount).build();
            if (AudioTrack.isDirectPlaybackSupported(audioFormat, A01)) {
                return i3;
            }
        }
        return 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.4e != com.google.common.collect.ImmutableList$Builder<java.lang.Integer> */
    /* JADX WARN: Multi-variable type inference failed */
    public static int[] A01() {
        C13194e c13194eA01 = AbstractC14399l.A01();
        VV it = QG.A06.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A00[1].charAt(7) == 'z') {
                throw new RuntimeException();
            }
            A00[3] = "SXeZgNZCF5MEef6vLBLd96WSlgFBQ6u4";
            if (zHasNext) {
                int encoding = ((Integer) it.next()).intValue();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(encoding).setSampleRate(48000).build(), A01)) {
                    c13194eA01.A04(Integer.valueOf(encoding));
                }
            } else {
                c13194eA01.A04(2);
                return AnonymousClass19.A0B(c13194eA01.A05());
            }
        }
    }
}
