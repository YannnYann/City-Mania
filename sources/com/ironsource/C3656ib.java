package com.ironsource;

import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: com.ironsource.ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3656ib {
    private final String a;
    private final int b;

    public C3656ib(String str, int i) {
        this.a = str;
        this.b = i;
    }

    private final String b() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Intrinsics.checkNotNull(stackTrace);
        String strA = a(stackTrace, 4);
        String strB = b(stackTrace, 4);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s %s", Arrays.copyOf(new Object[]{strA, strB}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final int a() {
        return this.b;
    }

    public final String c() {
        String str = this.a;
        if (str == null || str.length() == 0) {
            return b();
        }
        return b() + " - " + this.a;
    }

    private final String a(StackTraceElement[] stackTraceElementArr, int i) {
        List listEmptyList;
        List listEmptyList2;
        if (stackTraceElementArr.length <= i) {
            return "";
        }
        String className = stackTraceElementArr[i].getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        List<String> listSplit = new Regex("\\.").split(className, 0);
        if (listSplit.isEmpty()) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        } else {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().length() != 0) {
                    listEmptyList = CollectionsKt___CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        String str = ((String[]) listEmptyList.toArray(new String[0]))[r4.length - 1];
        if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "$", false, 2, (Object) null)) {
            return str;
        }
        List<String> listSplit2 = new Regex("\\$").split(str, 0);
        if (listSplit2.isEmpty()) {
            listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
        } else {
            ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
            while (listIterator2.hasPrevious()) {
                if (listIterator2.previous().length() != 0) {
                    listEmptyList2 = CollectionsKt___CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                    break;
                }
            }
            listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
        }
        return ((String[]) listEmptyList2.toArray(new String[0]))[0];
    }

    private final String b(StackTraceElement[] stackTraceElementArr, int i) {
        List listEmptyList;
        int i2;
        List listEmptyList2;
        List listEmptyList3;
        if (stackTraceElementArr.length > i) {
            String className = stackTraceElementArr[i].getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            List<String> listSplit = new Regex("\\.").split(className, 0);
            if (!listSplit.isEmpty()) {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listEmptyList = CollectionsKt___CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                        break;
                    }
                }
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
            String str = strArr[strArr.length - 1];
            if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "$", false, 2, (Object) null)) {
                String methodName = stackTraceElementArr[i].getMethodName();
                Intrinsics.checkNotNullExpressionValue(methodName, "getMethodName(...)");
                if (StringsKt__StringsKt.contains$default((CharSequence) methodName, (CharSequence) "$", false, 2, (Object) null) && stackTraceElementArr.length > (i2 = i + 1)) {
                    String className2 = stackTraceElementArr[i2].getClassName();
                    Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
                    List<String> listSplit2 = new Regex("\\$").split(className2, 0);
                    if (!listSplit2.isEmpty()) {
                        ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                        while (listIterator2.hasPrevious()) {
                            if (listIterator2.previous().length() != 0) {
                                listEmptyList2 = CollectionsKt___CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                                break;
                            }
                        }
                        listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                    } else {
                        listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                    }
                    String[] strArr2 = (String[]) listEmptyList2.toArray(new String[0]);
                    if (strArr2.length > 1) {
                        return strArr2[1] + "." + stackTraceElementArr[i2].getMethodName();
                    }
                    String methodName2 = stackTraceElementArr[i2].getMethodName();
                    Intrinsics.checkNotNull(methodName2);
                    return methodName2;
                }
                String methodName3 = stackTraceElementArr[i].getMethodName();
                Intrinsics.checkNotNullExpressionValue(methodName3, "getMethodName(...)");
                return methodName3;
            }
            List<String> listSplit3 = new Regex("\\$").split(str, 0);
            if (!listSplit3.isEmpty()) {
                ListIterator<String> listIterator3 = listSplit3.listIterator(listSplit3.size());
                while (listIterator3.hasPrevious()) {
                    if (listIterator3.previous().length() != 0) {
                        listEmptyList3 = CollectionsKt___CollectionsKt.take(listSplit3, listIterator3.nextIndex() + 1);
                        break;
                    }
                }
                listEmptyList3 = CollectionsKt__CollectionsKt.emptyList();
            } else {
                listEmptyList3 = CollectionsKt__CollectionsKt.emptyList();
            }
            return ((String[]) listEmptyList3.toArray(new String[0]))[1] + "." + stackTraceElementArr[i].getMethodName();
        }
        return "";
    }
}
