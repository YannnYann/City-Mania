###### Class com.google.protobuf.EnumKt (com.google.protobuf.EnumKt)
.class public final Lcom/google/protobuf/EnumKt;
.super Ljava/lang/Object;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/EnumKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/EnumKt;

    invoke-direct {v0}, Lcom/google/protobuf/EnumKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/EnumKt;->INSTANCE:Lcom/google/protobuf/EnumKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.EnumKt.Dsl (com.google.protobuf.EnumKt$Dsl)
.class public final Lcom/google/protobuf/EnumKt$Dsl;
.super Ljava/lang/Object;
.source "EnumKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumKt$Dsl$Companion;,
        Lcom/google/protobuf/EnumKt$Dsl$EnumvalueProxy;,
        Lcom/google/protobuf/EnumKt$Dsl$OptionsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/EnumKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Enum$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/EnumKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/EnumKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/EnumKt$Dsl;->Companion:Lcom/google/protobuf/EnumKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Enum$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Enum$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/EnumKt$Dsl;-><init>(Lcom/google/protobuf/Enum$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Enum;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Enum;

    return-object v0
.end method

.method public final synthetic addAllEnumvalue(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$Builder;->addAllEnumvalue(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic addEnumvalue(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/EnumValue;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$Builder;->addEnumvalue(Lcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Enum$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final clearEdition()V
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->clearEdition()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic clearEnumvalue(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$Builder;->clearEnumvalue()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final clearName()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->clearName()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$Builder;->clearOptions()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final clearSourceContext()V
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->clearSourceContext()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final clearSyntax()V
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->clearSyntax()Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final getEdition()Ljava/lang/String;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->getEdition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getEdition()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getEnumvalue()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 58
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 59
    iget-object v1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Enum$Builder;->getEnumvalueList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getEnumvalueList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 129
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 130
    iget-object v1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/Enum$Builder;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getSourceContext()Lcom/google/protobuf/SourceContext;
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    const-string v1, "_builder.getSourceContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntax()Lcom/google/protobuf/Syntax;
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    const-string v1, "_builder.getSyntax()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSyntaxValue()I
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public final hasSourceContext()Z
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Enum$Builder;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllEnumvalue(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/EnumValue;",
            "Lcom/google/protobuf/EnumKt$Dsl$EnumvalueProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/protobuf/EnumValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumKt$Dsl;->addAllEnumvalue(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumKt$Dsl$OptionsProxy;",
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

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignEnumvalue(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/EnumValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/EnumValue;",
            "Lcom/google/protobuf/EnumKt$Dsl$EnumvalueProxy;",
            ">;",
            "Lcom/google/protobuf/EnumValue;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumKt$Dsl;->addEnumvalue(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/EnumValue;)V

    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final setEdition(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$Builder;->setEdition(Ljava/lang/String;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic setEnumvalue(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/EnumValue;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Enum$Builder;->setEnumvalue(ILcom/google/protobuf/EnumValue;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/Enum$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final setSourceContext(Lcom/google/protobuf/SourceContext;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$Builder;->setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final setSyntax(Lcom/google/protobuf/Syntax;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$Builder;->setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

.method public final setSyntaxValue(I)V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/google/protobuf/EnumKt$Dsl;->_builder:Lcom/google/protobuf/Enum$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Enum$Builder;->setSyntaxValue(I)Lcom/google/protobuf/Enum$Builder;

    return-void
.end method

###### Class com.google.protobuf.EnumKt.Dsl.Companion (com.google.protobuf.EnumKt$Dsl$Companion)
.class public final Lcom/google/protobuf/EnumKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/EnumKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Enum$Builder;)Lcom/google/protobuf/EnumKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/EnumKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/EnumKt$Dsl;-><init>(Lcom/google/protobuf/Enum$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.EnumKt.Dsl.EnumvalueProxy (com.google.protobuf.EnumKt$Dsl$EnumvalueProxy)
.class public final Lcom/google/protobuf/EnumKt$Dsl$EnumvalueProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumvalueProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.EnumKt.Dsl.OptionsProxy (com.google.protobuf.EnumKt$Dsl$OptionsProxy)
.class public final Lcom/google/protobuf/EnumKt$Dsl$OptionsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "EnumKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
