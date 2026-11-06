package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᑋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0479 extends AbstractC0256 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0479(String str, String str2, C0915 c0915) {
        super(str, str2);
        C0915 c09152 = c0915;
        if (c09152 != null) {
            C0048 c0048 = c09152.f3492;
            String str3 = c0048 != null ? c0048.f654.f2897.f2710 : null;
            String str4 = c0048 != null ? c0048.f647.f3544.f2381 : null;
            ArrayList arrayList = new ArrayList();
            while (c09152 != null && c09152.f3493 != null) {
                arrayList.add(c09152);
                c09152 = c09152.f3494;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C0946 c0946 = ((C0915) it.next()).f3493;
                C0663 c0663 = c0946.f3584;
                String str5 = c0663.f2709 + StringFog.decrypt("iQ==\n", "p93gkhORYeM=\n") + c0663.f2710;
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("/noxPtvM8Z4=\n", "nxRVTLSllbM=\n"));
                sb.append(c0663.f2709);
                sb.append(StringFog.decrypt("Mw==\n", "HgsAX+fwR2I=\n"));
                sb.append(c0663.f2710);
                this.f1575.add(new C0241(str5, c0946.f3585, AbstractC0829.m1456("5jPzEA==\n", "yECBfCO+vVY=\n", sb), (r5.m1538() + r5.f3493.m1556()) - 1, (str3 == null || str4 == null || !str4.equals(c0663.f2709) || str3.equals(c0663.f2710)) ? null : str3));
            }
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            this.f1575.add(new C0241(str, str2, AbstractC0829.m1456("+880rZmoSQK53nWphKJE\n", "1qxbw/fNKnY=\n", sb2), 0, null));
        }
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        ArrayList<StackTraceElement> arrayList2 = new ArrayList();
        String name = C0946.class.getName();
        for (int length = stackTrace.length - 1; length >= 0; length--) {
            StackTraceElement stackTraceElement = stackTrace[length];
            if (stackTraceElement.getClassName().equals(name)) {
                break;
            }
            arrayList2.add(0, stackTraceElement);
        }
        for (StackTraceElement stackTraceElement2 : arrayList2) {
            this.f1575.add(new C0241(stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), stackTraceElement2.getFileName(), stackTraceElement2.getLineNumber(), null));
        }
    }
}
