package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0951 extends AbstractC0925 {
    static {
        StringFog.decrypt("1Is7\n", "uu5MAX5exXU=\n");
        StringFog.decrypt("xzl3jg==\n", "pFEW/KBAn2A=\n");
        StringFog.decrypt("f/9LLbbNpZp7\n", "Ho05TM+Z3Oo=\n");
        StringFog.decrypt("+UfexCajodjlaNHVLbiN\n", "liW0oUXX6bk=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m1568(C0048 c0048, ArrayList arrayList) {
        String str;
        int i = 0;
        Class cls = (Class) AbstractC0925.m1545(arrayList, 0, Class.class);
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 1) {
            arrayList2 = (List) AbstractC0925.m1545(arrayList, 1, List.class);
        }
        Constructor<?> constructor = null;
        List list = arrayList.size() > 2 ? (List) AbstractC0925.m1545(arrayList, 2, List.class) : null;
        try {
            if (list != null) {
                Class<?>[] clsArr = new Class[list.size()];
                list.toArray(clsArr);
                String str2 = AbstractC0991.f3784;
                return cls.getConstructor(clsArr).newInstance(arrayList2.toArray());
            }
            String str3 = AbstractC0991.f3784;
            Constructor<?>[] constructors = cls.getConstructors();
            int length = constructors.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                Constructor<?> constructor2 = constructors[i];
                if (constructor2.getParameterTypes().length == arrayList2.size() && AbstractC0991.m1587(constructor2.getParameterTypes(), arrayList2)) {
                    constructor = constructor2;
                    break;
                }
                i++;
            }
            return constructor.newInstance(arrayList2.toArray());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(StringFog.decrypt("JWxGuEkxJVkFf0C+VXZmRQVpFA==\n", "YB401zsRRis=\n"));
            sb.append(cls.getName());
            sb.append(StringFog.decrypt("JffiRrcvKRli86s=\n", "BYCLMt8PSGs=\n"));
            sb.append(arrayList2);
            if (list != null) {
                str = StringFog.decrypt("yZssxt9z7uCaiSfR3w==\n", "6fpCov8QgoE=\n") + list;
            } else {
                str = "";
            }
            sb.append(str);
            throw new C0480(c0048, c0048.f653, sb.toString(), e);
        }
    }
}
