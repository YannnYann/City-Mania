###### Class com.google.protobuf.ValueKt (com.google.protobuf.ValueKt)
.class public final Lcom/google/protobuf/ValueKt;
.super Ljava/lang/Object;
.source "ValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ValueKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/ValueKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/ValueKt;

    invoke-direct {v0}, Lcom/google/protobuf/ValueKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/ValueKt;->INSTANCE:Lcom/google/protobuf/ValueKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.ValueKt.Dsl (com.google.protobuf.ValueKt$Dsl)
.class public final Lcom/google/protobuf/ValueKt$Dsl;
.super Ljava/lang/Object;
.source "ValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ValueKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/ValueKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/Value$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/ValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/ValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/ValueKt$Dsl;->Companion:Lcom/google/protobuf/ValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/Value$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/Value$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/ValueKt$Dsl;-><init>(Lcom/google/protobuf/Value$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/Value;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/Value;

    return-object v0
.end method

.method public final clearBoolValue()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearBoolValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearKind()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearKind()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearListValue()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearListValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearNullValue()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearNullValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearNumberValue()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearNumberValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearStringValue()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearStringValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final clearStructValue()V
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->clearStructValue()Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final getBoolValue()Z
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getBoolValue()Z

    move-result v0

    return v0
.end method

.method public final getKindCase()Lcom/google/protobuf/Value$KindCase;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getKindCase()Lcom/google/protobuf/Value$KindCase;

    move-result-object v0

    const-string v1, "_builder.getKindCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getListValue()Lcom/google/protobuf/ListValue;
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getListValue()Lcom/google/protobuf/ListValue;

    move-result-object v0

    const-string v1, "_builder.getListValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNullValue()Lcom/google/protobuf/NullValue;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNullValue()Lcom/google/protobuf/NullValue;

    move-result-object v0

    const-string v1, "_builder.getNullValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNullValueValue()I
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNullValueValue()I

    move-result v0

    return v0
.end method

.method public final getNumberValue()D
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getNumberValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getStringValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStructValue()Lcom/google/protobuf/Struct;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->getStructValue()Lcom/google/protobuf/Struct;

    move-result-object v0

    const-string v1, "_builder.getStructValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasBoolValue()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasBoolValue()Z

    move-result v0

    return v0
.end method

.method public final hasListValue()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasListValue()Z

    move-result v0

    return v0
.end method

.method public final hasNullValue()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasNullValue()Z

    move-result v0

    return v0
.end method

.method public final hasNumberValue()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasNumberValue()Z

    move-result v0

    return v0
.end method

.method public final hasStringValue()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public final hasStructValue()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Value$Builder;->hasStructValue()Z

    move-result v0

    return v0
.end method

.method public final setBoolValue(Z)V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setBoolValue(Z)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setListValue(Lcom/google/protobuf/ListValue;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setListValue(Lcom/google/protobuf/ListValue;)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setNullValue(Lcom/google/protobuf/NullValue;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setNullValueValue(I)V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setNullValueValue(I)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setNumberValue(D)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/Value$Builder;->setNumberValue(D)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setStringValue(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

.method public final setStructValue(Lcom/google/protobuf/Struct;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/protobuf/ValueKt$Dsl;->_builder:Lcom/google/protobuf/Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Value$Builder;->setStructValue(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Value$Builder;

    return-void
.end method

###### Class com.google.protobuf.ValueKt.Dsl.Companion (com.google.protobuf.ValueKt$Dsl$Companion)
.class public final Lcom/google/protobuf/ValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "ValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ValueKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/ValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/Value$Builder;)Lcom/google/protobuf/ValueKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/ValueKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/ValueKt$Dsl;-><init>(Lcom/google/protobuf/Value$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
