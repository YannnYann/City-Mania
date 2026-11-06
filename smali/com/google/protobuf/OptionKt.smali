###### Class com.google.protobuf.OptionKt (com.google.protobuf.OptionKt)
.class public final Lcom/google/protobuf/OptionKt;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/OptionKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/OptionKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/OptionKt;

    invoke-direct {v0}, Lcom/google/protobuf/OptionKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/OptionKt;->INSTANCE:Lcom/google/protobuf/OptionKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.OptionKt.Dsl (com.google.protobuf.OptionKt$Dsl)
.class public final Lcom/google/protobuf/OptionKt$Dsl;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/OptionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/OptionKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/OptionKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Option$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/OptionKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/OptionKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/OptionKt$Dsl;->Companion:Lcom/google/protobuf/OptionKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Option$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Option$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/OptionKt$Dsl;-><init>(Lcom/google/protobuf/Option$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Option;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public final clearName()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$Builder;->clearName()Lcom/google/protobuf/Option$Builder;

    return-void
.end method

.method public final clearValue()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$Builder;->clearValue()Lcom/google/protobuf/Option$Builder;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getValue()Lcom/google/protobuf/Any;
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$Builder;->getValue()Lcom/google/protobuf/Any;

    move-result-object v0

    const-string v1, "_builder.getValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasValue()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Option$Builder;->hasValue()Z

    move-result v0

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Option$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/Option$Builder;

    return-void
.end method

.method public final setValue(Lcom/google/protobuf/Any;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/google/protobuf/OptionKt$Dsl;->_builder:Lcom/google/protobuf/Option$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Option$Builder;->setValue(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Option$Builder;

    return-void
.end method

###### Class com.google.protobuf.OptionKt.Dsl.Companion (com.google.protobuf.OptionKt$Dsl$Companion)
.class public final Lcom/google/protobuf/OptionKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "OptionKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/OptionKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/OptionKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/OptionKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/OptionKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/OptionKt$Dsl;-><init>(Lcom/google/protobuf/Option$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
