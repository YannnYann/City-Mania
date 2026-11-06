###### Class com.google.protobuf.FieldMaskKt (com.google.protobuf.FieldMaskKt)
.class public final Lcom/google/protobuf/FieldMaskKt;
.super Ljava/lang/Object;
.source "FieldMaskKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldMaskKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/FieldMaskKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/FieldMaskKt;

    invoke-direct {v0}, Lcom/google/protobuf/FieldMaskKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/FieldMaskKt;->INSTANCE:Lcom/google/protobuf/FieldMaskKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.FieldMaskKt.Dsl (com.google.protobuf.FieldMaskKt$Dsl)
.class public final Lcom/google/protobuf/FieldMaskKt$Dsl;
.super Ljava/lang/Object;
.source "FieldMaskKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldMaskKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;,
        Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/FieldMask$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/FieldMaskKt$Dsl;->Companion:Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/FieldMask$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/FieldMask$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/FieldMaskKt$Dsl;-><init>(Lcom/google/protobuf/FieldMask$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/FieldMask;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/FieldMask;

    return-object v0
.end method

.method public final synthetic addAllPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->addAllPaths(Ljava/lang/Iterable;)Lcom/google/protobuf/FieldMask$Builder;

    return-void
.end method

.method public final synthetic addPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldMask$Builder;->addPaths(Ljava/lang/String;)Lcom/google/protobuf/FieldMask$Builder;

    return-void
.end method

.method public final synthetic clearPaths(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/FieldMask$Builder;->clearPaths()Lcom/google/protobuf/FieldMask$Builder;

    return-void
.end method

.method public final getPaths()Lcom/google/protobuf/kotlin/DslList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 43
    iget-object v1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/FieldMask$Builder;->getPathsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getPathsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMaskKt$Dsl;->addAllPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/FieldMaskKt$Dsl;->addPaths(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic setPaths(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/google/protobuf/FieldMaskKt$Dsl;->_builder:Lcom/google/protobuf/FieldMask$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/FieldMask$Builder;->setPaths(ILjava/lang/String;)Lcom/google/protobuf/FieldMask$Builder;

    return-void
.end method

###### Class com.google.protobuf.FieldMaskKt.Dsl.Companion (com.google.protobuf.FieldMaskKt$Dsl$Companion)
.class public final Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "FieldMaskKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldMaskKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/google/protobuf/FieldMaskKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/FieldMask$Builder;)Lcom/google/protobuf/FieldMaskKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/FieldMaskKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/FieldMaskKt$Dsl;-><init>(Lcom/google/protobuf/FieldMask$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.FieldMaskKt.Dsl.PathsProxy (com.google.protobuf.FieldMaskKt$Dsl$PathsProxy)
.class public final Lcom/google/protobuf/FieldMaskKt$Dsl$PathsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "FieldMaskKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/FieldMaskKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PathsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
