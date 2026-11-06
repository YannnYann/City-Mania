package ads_mobile_sdk;

import ads_mobile_sdk.f;
import ads_mobile_sdk.f.a;
import ads_mobile_sdk.tw1;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class f<MessageType extends f<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements tw1 {
    protected transient int a = 0;

    public abstract int a(la3 la3Var);

    public xv3 b() {
        return new xv3(this);
    }

    public byte[] c() {
        try {
            int serializedSize = getSerializedSize();
            if (serializedSize == 0) {
                return yh1.a;
            }
            byte[] bArr = new byte[serializedSize];
            oy oyVarB = oy.b(bArr);
            a(oyVarB);
            oyVarB.a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(a("byte array"), e);
        }
    }

    @Override // ads_mobile_sdk.tw1
    public void writeTo(OutputStream outputStream) throws IOException {
        oy oyVarA = oy.a(outputStream, oy.e(getSerializedSize()));
        a(oyVarA);
        oyVarA.b();
    }

    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        a.a(iterable, list);
    }

    private String a(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public static abstract class a<MessageType extends f<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> implements tw1.a {
        private static <T> void b(Iterable<T> iterable, List<? super T> list) {
            if (iterable instanceof Collection) {
                int size = ((Collection) iterable).size();
                if (list instanceof ArrayList) {
                    ((ArrayList) list).ensureCapacity(list.size() + size);
                } else if (list instanceof bw2) {
                    ((bw2) list).e(list.size() + size);
                }
            }
            int size2 = list.size();
            if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
                List list2 = (List) iterable;
                int size3 = list2.size();
                for (int i = 0; i < size3; i++) {
                    a03 a03Var = (Object) list2.get(i);
                    if (a03Var == null) {
                        a(list, size2);
                    }
                    list.add(a03Var);
                }
                return;
            }
            for (Object obj : iterable) {
                if (obj == null) {
                    a(list, size2);
                }
                list.add(obj);
            }
        }

        public static <T> void a(Iterable<T> iterable, List<? super T> list) {
            yh1.a(iterable);
            if (iterable instanceof mu2) {
                list.addAll((Collection) iterable);
            } else {
                b(iterable, list);
            }
        }

        private static void a(List<?> list, int i) {
            String str = "Element at index " + (list.size() - i) + " is null.";
            for (int size = list.size() - 1; size >= i; size--) {
                list.remove(size);
            }
            throw new NullPointerException(str);
        }

        public static xv3 a(tw1 tw1Var) {
            return new xv3(tw1Var);
        }
    }
}
