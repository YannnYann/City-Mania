###### Class kotlinx.serialization.internal.HashSetClassDesc (kotlinx.serialization.internal.HashSetClassDesc)
.class public final Lkotlinx/serialization/internal/HashSetClassDesc;
.super Lkotlinx/serialization/internal/ListLikeDescriptor;
.source "CollectionDescriptors.kt"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "elementDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/ListLikeDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public getSerialName()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "kotlin.collections.HashSet"

    return-object v0
.end method
