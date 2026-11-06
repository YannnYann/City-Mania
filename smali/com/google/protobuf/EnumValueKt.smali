###### Class com.google.protobuf.EnumValueKt (com.google.protobuf.EnumValueKt)
.class public final Lcom/google/protobuf/EnumValueKt;
.super Ljava/lang/Object;
.source "EnumValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumValueKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/EnumValueKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/EnumValueKt;

    invoke-direct {v0}, Lcom/google/protobuf/EnumValueKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/EnumValueKt;->INSTANCE:Lcom/google/protobuf/EnumValueKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.EnumValueKt.Dsl (com.google.protobuf.EnumValueKt$Dsl)
.class public final Lcom/google/protobuf/EnumValueKt$Dsl;
.super Ljava/lang/Object;
.source "EnumValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/EnumValueKt$Dsl$Companion;,
        Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/EnumValueKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/EnumValue$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/EnumValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/EnumValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/EnumValueKt$Dsl;->Companion:Lcom/google/protobuf/EnumValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/EnumValue$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/EnumValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/EnumValueKt$Dsl;-><init>(Lcom/google/protobuf/EnumValue$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/EnumValue;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/EnumValue;

    return-object v0
.end method

.method public final synthetic addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/EnumValue$Builder;->addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final synthetic addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/EnumValue$Builder;->addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final clearName()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->clearName()Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final clearNumber()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->clearNumber()Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final synthetic clearOptions(Lcom/google/protobuf/kotlin/DslList;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/EnumValue$Builder;->clearOptions()Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNumber()I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/EnumValue$Builder;->getNumber()I

    move-result v0

    return v0
.end method

.method public final synthetic getOptions()Lcom/google/protobuf/kotlin/DslList;
    .registers 4

    .line 75
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 76
    iget-object v1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v1}, Lcom/google/protobuf/EnumValue$Builder;->getOptionsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "_builder.getOptionsList()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic plusAssignAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;",
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

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumValueKt$Dsl;->addAllOptions(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;",
            ">;",
            "Lcom/google/protobuf/Option;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/EnumValueKt$Dsl;->addOptions(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/Option;)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/EnumValue$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final setNumber(I)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/EnumValue$Builder;->setNumber(I)Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

.method public final synthetic setOptions(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/Option;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/google/protobuf/EnumValueKt$Dsl;->_builder:Lcom/google/protobuf/EnumValue$Builder;

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/EnumValue$Builder;->setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/EnumValue$Builder;

    return-void
.end method

###### Class com.google.protobuf.EnumValueKt.Dsl.Companion (com.google.protobuf.EnumValueKt$Dsl$Companion)
.class public final Lcom/google/protobuf/EnumValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "EnumValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumValueKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/EnumValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/EnumValue$Builder;)Lcom/google/protobuf/EnumValueKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/EnumValueKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/EnumValueKt$Dsl;-><init>(Lcom/google/protobuf/EnumValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

###### Class com.google.protobuf.EnumValueKt.Dsl.OptionsProxy (com.google.protobuf.EnumValueKt$Dsl$OptionsProxy)
.class public final Lcom/google/protobuf/EnumValueKt$Dsl$OptionsProxy;
.super Lcom/google/protobuf/kotlin/DslProxy;
.source "EnumValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/EnumValueKt$Dsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionsProxy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/kotlin/DslProxy;-><init>()V

    return-void
.end method
