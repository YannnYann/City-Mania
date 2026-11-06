###### Class com.google.protobuf.ListValueKt (com.google.protobuf.ListValueKt)
.class public final Lcom/google/protobuf/ListValueKt;
.super Ljava/lang/Object;
.source "ListValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ListValueKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/ListValueKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/ListValueKt;

    invoke-direct {v0}, Lcom/google/protobuf/ListValueKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/ListValueKt;->INSTANCE:Lcom/google/protobuf/ListValueKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.ListValueKt.Dsl (com.google.protobuf.ListValueKt$Dsl)
.class public final Lcom/google/protobuf/ListValueKt$Dsl;
.super Ljava/lang/Object;
.source "ListValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ListValueKt$Dsl$Companion;,
        Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/ListValueKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/ListValue$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/ListValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/ListValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/ListValueKt$Dsl;->Companion:Lcom/google/protobuf/ListValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ListValue$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/ListValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/ListValueKt$Dsl;-><init>(Lcom/google/protobuf/ListValue$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/ListValue;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/ListValue;

    return-object v0
.end method

.method public final synthetic addAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$Builder;->addAllValues(Ljava/lang/Iterable;)Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

.method public final synthetic addValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/ListValue$Builder;->addValues(Lcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

.method public final synthetic clearValues(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/ListValue$Builder;->clearValues()Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

.method public final synthetic getValues()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 41
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 42
    iget-object v1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/ListValue$Builder;->getValuesList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getValuesList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Value;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ListValueKt$Dsl;->addAllValues(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Value;",
            "Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;",
            ">;",
            "Lcom/google/protobuf/Value;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/ListValueKt$Dsl;->addValues(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Value;)V

    return-void
.end method

.method public final synthetic setValues(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Value;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/google/protobuf/ListValueKt$Dsl;->_builder:Lcom/google/protobuf/ListValue$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/ListValue$Builder;->setValues(ILcom/google/protobuf/Value;)Lcom/google/protobuf/ListValue$Builder;

    return-void
.end method

###### Class com.google.protobuf.ListValueKt.Dsl.Companion (com.google.protobuf.ListValueKt$Dsl$Companion)
.class public final Lcom/google/protobuf/ListValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "ListValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListValueKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/ListValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/ListValue$Builder;)Lcom/google/protobuf/ListValueKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/ListValueKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/ListValueKt$Dsl;-><init>(Lcom/google/protobuf/ListValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.ListValueKt.Dsl.ValuesProxy (com.google.protobuf.ListValueKt$Dsl$ValuesProxy)
.class public final Lcom/google/protobuf/ListValueKt$Dsl$ValuesProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "ListValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ListValueKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValuesProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
