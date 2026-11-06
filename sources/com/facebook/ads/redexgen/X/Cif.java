package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.if, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Cif {
    public static String[] A01 = {"1CU3iw4Trc3qggngkxP7P26jEGLrLZaR", "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn", "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3", "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD", "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY", "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH", "NGMd8PbmdSzgSLgNcWdVjgLa", "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"};
    public final InterfaceC2628ie A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private int A00(List<C2606iH> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).A00 != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A05(List<C2606iH> list) {
        while (true) {
            int iA00 = A00(list);
            if (iA00 == -1) {
                return;
            } else {
                A01(list, iA00, iA00 + 1);
            }
        }
    }

    public Cif(InterfaceC2628ie interfaceC2628ie) {
        this.A00 = interfaceC2628ie;
    }

    private void A01(List<C2606iH> list, int i, int i2) {
        C2606iH c2606iH = list.get(i);
        C2606iH c2606iH2 = list.get(i2);
        switch (c2606iH2.A00) {
            case 1:
                A02(list, i, c2606iH, i2, c2606iH2);
                break;
            case 2:
                A03(list, i, c2606iH, i2, c2606iH2);
                break;
            case 4:
                A04(list, i, c2606iH, i2, c2606iH2);
                break;
        }
    }

    private void A02(List<C2606iH> list, int i, C2606iH c2606iH, int i2, C2606iH c2606iH2) {
        int i3 = 0;
        int i4 = c2606iH.A01;
        int offset = c2606iH2.A02;
        if (i4 < offset) {
            i3 = 0 - 1;
        }
        int i5 = c2606iH.A02;
        int offset2 = c2606iH2.A02;
        if (i5 < offset2) {
            i3++;
        }
        int i6 = c2606iH2.A02;
        int offset3 = c2606iH.A02;
        if (i6 <= offset3) {
            int i7 = c2606iH.A02;
            int offset4 = c2606iH2.A01;
            c2606iH.A02 = i7 + offset4;
        }
        int i8 = c2606iH2.A02;
        int offset5 = c2606iH.A01;
        if (i8 <= offset5) {
            int i9 = c2606iH.A01;
            int offset6 = c2606iH2.A01;
            c2606iH.A01 = i9 + offset6;
        }
        int offset7 = c2606iH2.A02;
        c2606iH2.A02 = offset7 + i3;
        list.set(i, c2606iH2);
        list.set(i2, c2606iH);
    }

    private final void A03(List<C2606iH> list, int i, C2606iH c2606iH, int i2, C2606iH c2606iH2) {
        boolean z;
        C2606iH c2606iHADb = null;
        boolean z2 = false;
        if (c2606iH.A02 < c2606iH.A01) {
            z = false;
            if (c2606iH2.A02 == c2606iH.A02 && c2606iH2.A01 == c2606iH.A01 - c2606iH.A02) {
                z2 = true;
            }
        } else {
            z = true;
            if (c2606iH2.A02 == c2606iH.A01 + 1 && c2606iH2.A01 == c2606iH.A02 - c2606iH.A01) {
                z2 = true;
            }
        }
        if (c2606iH.A01 < c2606iH2.A02) {
            c2606iH2.A02--;
        } else if (c2606iH.A01 < c2606iH2.A02 + c2606iH2.A01) {
            c2606iH2.A01--;
            c2606iH.A00 = 2;
            c2606iH.A01 = 1;
            int remaining = c2606iH2.A01;
            if (A01[6].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5";
            strArr[3] = "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ";
            if (remaining == 0) {
                list.remove(i2);
                this.A00.AIj(c2606iH2);
                return;
            }
            return;
        }
        if (c2606iH.A02 <= c2606iH2.A02) {
            c2606iH2.A02++;
        } else if (c2606iH.A02 < c2606iH2.A02 + c2606iH2.A01) {
            int remaining2 = (c2606iH2.A02 + c2606iH2.A01) - c2606iH.A02;
            c2606iHADb = this.A00.ADb(2, c2606iH.A02 + 1, remaining2, null);
            c2606iH2.A01 = c2606iH.A02 - c2606iH2.A02;
        }
        if (z2) {
            list.set(i, c2606iH2);
            list.remove(i2);
            this.A00.AIj(c2606iH);
            return;
        }
        if (z) {
            if (c2606iHADb != null) {
                if (c2606iH.A02 > c2606iHADb.A02) {
                    c2606iH.A02 -= c2606iHADb.A01;
                }
                if (c2606iH.A01 > c2606iHADb.A02) {
                    c2606iH.A01 -= c2606iHADb.A01;
                }
            }
            if (c2606iH.A02 > c2606iH2.A02) {
                c2606iH.A02 -= c2606iH2.A01;
            }
            if (c2606iH.A01 > c2606iH2.A02) {
                c2606iH.A01 -= c2606iH2.A01;
            }
        } else {
            if (c2606iHADb != null) {
                if (c2606iH.A02 >= c2606iHADb.A02) {
                    c2606iH.A02 -= c2606iHADb.A01;
                }
                if (c2606iH.A01 >= c2606iHADb.A02) {
                    c2606iH.A01 -= c2606iHADb.A01;
                }
            }
            if (c2606iH.A02 >= c2606iH2.A02) {
                c2606iH.A02 -= c2606iH2.A01;
            }
            if (c2606iH.A01 >= c2606iH2.A02) {
                c2606iH.A01 -= c2606iH2.A01;
            }
        }
        list.set(i, c2606iH2);
        String[] strArr2 = A01;
        if (strArr2[1].charAt(7) == strArr2[5].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr3 = A01;
        strArr3[1] = "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo";
        strArr3[5] = "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M";
        if (c2606iH.A02 != c2606iH.A01) {
            list.set(i2, c2606iH);
        } else {
            list.remove(i2);
        }
        if (c2606iHADb != null) {
            list.add(i, c2606iHADb);
        }
    }

    private final void A04(List<C2606iH> list, int i, C2606iH c2606iH, int i2, C2606iH c2606iH2) {
        C2606iH c2606iHADb = null;
        C2606iH c2606iHADb2 = null;
        if (c2606iH.A01 < c2606iH2.A02) {
            c2606iH2.A02--;
        } else {
            int remaining = c2606iH.A01;
            if (remaining < c2606iH2.A02 + c2606iH2.A01) {
                c2606iH2.A01--;
                c2606iHADb = this.A00.ADb(4, c2606iH.A02, 1, c2606iH2.A03);
            }
        }
        if (c2606iH.A02 <= c2606iH2.A02) {
            c2606iH2.A02++;
        } else if (c2606iH.A02 < c2606iH2.A02 + c2606iH2.A01) {
            int i3 = (c2606iH2.A02 + c2606iH2.A01) - c2606iH.A02;
            c2606iHADb2 = this.A00.ADb(4, c2606iH.A02 + 1, i3, c2606iH2.A03);
            c2606iH2.A01 -= i3;
        }
        list.set(i2, c2606iH);
        if (c2606iH2.A01 > 0) {
            list.set(i, c2606iH2);
        } else {
            list.remove(i);
            this.A00.AIj(c2606iH2);
        }
        if (c2606iHADb != null) {
            list.add(i, c2606iHADb);
        }
        if (c2606iHADb2 != null) {
            list.add(i, c2606iHADb2);
        }
    }
}
