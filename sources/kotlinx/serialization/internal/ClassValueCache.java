package kotlinx.serialization.internal;

import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: Caching.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ClassValueCache<T> implements SerializerCache<T> {
    public final AnonymousClass1 classValue;
    public final Function1<KClass<?>, KSerializer<T>> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ClassValueCache(Function1<? super KClass<?>, ? extends KSerializer<T>> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
        this.classValue = initClassValue();
    }

    public final AnonymousClass1 initClassValue() {
        return new ClassValue<CacheEntry<T>>(this) { // from class: kotlinx.serialization.internal.ClassValueCache.initClassValue.1
            public final /* synthetic */ ClassValueCache<T> this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.ClassValue
            public /* bridge */ /* synthetic */ Object computeValue(Class cls) {
                return computeValue((Class<?>) cls);
            }

            @Override // java.lang.ClassValue
            public CacheEntry<T> computeValue(Class<?> type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return new CacheEntry<>((KSerializer) this.this$0.compute.invoke(JvmClassMappingKt.getKotlinClass(type)));
            }
        };
    }

    @Override // kotlinx.serialization.internal.SerializerCache
    public KSerializer<T> get(KClass<Object> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((CacheEntry) get(JvmClassMappingKt.getJavaClass(key))).serializer;
    }
}
