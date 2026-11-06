package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: Caching.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ClassValueParametrizedCache<T> implements ParametrizedSerializerCache<T> {
    public final AnonymousClass1 classValue;
    public final Function2<KClass<Object>, List<? extends KType>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ClassValueParametrizedCache(Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.classValue = initClassValue();
    }

    public final AnonymousClass1 initClassValue() {
        return new ClassValue<ParametrizedCacheEntry<T>>() { // from class: kotlinx.serialization.internal.ClassValueParametrizedCache.initClassValue.1
            @Override // java.lang.ClassValue
            public /* bridge */ /* synthetic */ Object computeValue(Class cls) {
                return computeValue((Class<?>) cls);
            }

            @Override // java.lang.ClassValue
            public ParametrizedCacheEntry<T> computeValue(Class<?> type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return new ParametrizedCacheEntry<>();
            }
        };
    }

    @Override // kotlinx.serialization.internal.ParametrizedSerializerCache
    /* JADX INFO: renamed from: get-gIAlu-s, reason: not valid java name */
    public Object mo2983getgIAlus(KClass<Object> key, List<? extends KType> types) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        ConcurrentHashMap concurrentHashMap = ((ParametrizedCacheEntry) get(JvmClassMappingKt.getJavaClass(key))).serializers;
        Object obj = concurrentHashMap.get(types);
        if (obj == null) {
            try {
                Result.Companion companion = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(this.compute.invoke(key, types));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Result resultM2759boximpl = Result.m2759boximpl(objM2760constructorimpl);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(types, resultM2759boximpl);
            obj = objPutIfAbsent == null ? resultM2759boximpl : objPutIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(obj, "serializers.getOrPut(typ… { producer() }\n        }");
        return ((Result) obj).m2768unboximpl();
    }
}
