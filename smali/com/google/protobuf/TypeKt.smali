###### Class com.google.protobuf.TypeKt (com.google.protobuf.TypeKt)
.class public final Lcom/google/protobuf/TypeKt;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TypeKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/TypeKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/TypeKt;

    invoke-direct {v0}, Lcom/google/protobuf/TypeKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/TypeKt;->INSTANCE:Lcom/google/protobuf/TypeKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.TypeKt.Dsl (com.google.protobuf.TypeKt$Dsl)
.class public final Lcom/google/protobuf/TypeKt$Dsl;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TypeKt$Dsl$Companion;,
        Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;,
        Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Type$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/TypeKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TypeKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/TypeKt$Dsl;->Companion:Lcom/google/protobuf/TypeKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Type$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Type$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/TypeKt$Dsl;-><init>(Lcom/google/protobuf/Type$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Type;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public final synthetic addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllFields(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOneofs(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addFields(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOneofs(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Type$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearEdition()V
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearEdition()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearFields(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearFields()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearName()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearName()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearOneofs(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOneofs()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->clearOptions()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearSourceContext()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSourceContext()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->clearSyntax()Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final getEdition()Ljava/lang/String;
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getEdition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getEdition()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getFields()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 58
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getFieldsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getFieldsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOneofs()Lcom/google/protobuf/kotlin/DslList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 131
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOneofsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOneofsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 199
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 200
    iget-object v1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Type$Builder;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntaxValue()I
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public final hasSourceContext()Z
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Type$Builder;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Field;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllFields(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
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

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Field;",
            "Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;",
            ">;",
            "Lcom/google/protobuf/Field;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addFields(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Field;)V

    return-void
.end method

.method public final synthetic plusAssignOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOneofs(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/TypeKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final setEdition(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setEdition(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setFields(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Field;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setFields(ILcom/google/protobuf/Field;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setOneofs(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOneofs(ILjava/lang/String;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Type$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

.method public final setSyntaxValue(I)V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/google/protobuf/TypeKt$Dsl;->_builder:Lcom/google/protobuf/Type$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Type$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Type$Builder;

    return-void
.end method

###### Class com.google.protobuf.TypeKt.Dsl.Companion (com.google.protobuf.TypeKt$Dsl$Companion)
.class public final Lcom/google/protobuf/TypeKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/TypeKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Type$Builder;)Lcom/google/protobuf/TypeKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/TypeKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TypeKt$Dsl;-><init>(Lcom/google/protobuf/Type$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.TypeKt.Dsl.FieldsProxy (com.google.protobuf.TypeKt$Dsl$FieldsProxy)
.class public final Lcom/google/protobuf/TypeKt$Dsl$FieldsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.TypeKt.Dsl.OneofsProxy (com.google.protobuf.TypeKt$Dsl$OneofsProxy)
.class public final Lcom/google/protobuf/TypeKt$Dsl$OneofsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.TypeKt.Dsl.OptionsProxy (com.google.protobuf.TypeKt$Dsl$OptionsProxy)
.class public final Lcom/google/protobuf/TypeKt$Dsl$OptionsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "TypeKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TypeKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
