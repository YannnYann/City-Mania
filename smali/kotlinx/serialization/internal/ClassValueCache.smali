###### Class kotlinx.serialization.internal.ClassValueCache (kotlinx.serialization.internal.ClassValueCache)
.class public final Lkotlinx/serialization/internal/ClassValueCache;
.super Ljava/lang/Object;
.source "Caching.kt"

# interfaces
.implements Lkotlinx/serialization/internal/SerializerCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/SerializerCache<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

.field public final compute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/KClass<",
            "*>;+",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lkotlin/jvm/functions/Function1;

    .line 43
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ClassValueCache;->initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    return-void
.end method

.method public static final synthetic access$getCompute$p(Lkotlinx/serialization/internal/ClassValueCache;)Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 41
    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache;->compute:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public get(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lkotlinx/serialization/internal/ClassValueCache;->classValue:Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlinx/serialization/internal/ClassValueCache$$ExternalSyntheticApiModelOutline0;->m(Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/internal/CacheEntry;

    iget-object p1, p1, Lkotlinx/serialization/internal/CacheEntry;->serializer:Lkotlinx/serialization/KSerializer;

    return-object p1
.end method

.method public final initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
    .registers 2

    .line 45
    new-instance v0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;-><init>(Lkotlinx/serialization/internal/ClassValueCache;)V

    return-object v0
.end method

###### Class kotlinx.serialization.internal.ClassValueCache.AnonymousClass1 (kotlinx.serialization.internal.ClassValueCache$initClassValue$1)
.class public final Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
.super Ljava/lang/ClassValue;
.source "Caching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->initClassValue()Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ClassValue<",
        "Lkotlinx/serialization/internal/CacheEntry<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lkotlinx/serialization/internal/ClassValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/internal/ClassValueCache<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    .line 45
    invoke-direct {p0}, Ljava/lang/ClassValue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/CacheEntry;

    move-result-object p1

    return-object p1
.end method

.method public computeValue(Ljava/lang/Class;)Lkotlinx/serialization/internal/CacheEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlinx/serialization/internal/CacheEntry<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lkotlinx/serialization/internal/CacheEntry;

    iget-object v1, p0, Lkotlinx/serialization/internal/ClassValueCache$initClassValue$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-static {v1}, Lkotlinx/serialization/internal/ClassValueCache;->access$getCompute$p(Lkotlinx/serialization/internal/ClassValueCache;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/CacheEntry;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
