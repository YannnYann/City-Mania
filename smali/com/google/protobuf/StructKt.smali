###### Class com.google.protobuf.StructKt (com.google.protobuf.StructKt)
.class public final Lcom/google/protobuf/StructKt;
.super Ljava/lang/Object;
.source "StructKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/StructKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/StructKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/StructKt;

    invoke-direct {v0}, Lcom/google/protobuf/StructKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/StructKt;->INSTANCE:Lcom/google/protobuf/StructKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.StructKt.Dsl (com.google.protobuf.StructKt$Dsl)
.class public final Lcom/google/protobuf/StructKt$Dsl;
.super Ljava/lang/Object;
.source "StructKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StructKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/StructKt$Dsl$Companion;,
        Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/StructKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Struct$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/StructKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/StructKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/StructKt$Dsl;->Companion:Lcom/google/protobuf/StructKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Struct$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Struct$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/StructKt$Dsl;-><init>(Lcom/google/protobuf/Struct$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Struct;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Struct;

    return-object v0
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/DslMap;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->clearFields()Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public final synthetic getFieldsMap()Lcom/google/protobuf/kotlin/DslMap;
    .registers 4

    .line 42
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 43
    iget-object v1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Struct$Builder;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_builder.getFieldsMap()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic putAllFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public final putFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/google/protobuf/Value;)Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public final synthetic removeFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/google/protobuf/StructKt$Dsl;->_builder:Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Struct$Builder;->removeFields(Ljava/lang/String;)Lcom/google/protobuf/Struct$Builder;

    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/StructKt$Dsl;->putFields(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Lcom/google/protobuf/Value;)V

    return-void
.end method

###### Class com.google.protobuf.StructKt.Dsl.Companion (com.google.protobuf.StructKt$Dsl$Companion)
.class public final Lcom/google/protobuf/StructKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "StructKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StructKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/StructKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Struct$Builder;)Lcom/google/protobuf/StructKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/StructKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/StructKt$Dsl;-><init>(Lcom/google/protobuf/Struct$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.StructKt.Dsl.FieldsProxy (com.google.protobuf.StructKt$Dsl$FieldsProxy)
.class public final Lcom/google/protobuf/StructKt$Dsl$FieldsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "StructKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StructKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
