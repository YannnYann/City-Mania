###### Class com.google.protobuf.BytesValueKt (com.google.protobuf.BytesValueKt)
.class public final Lcom/google/protobuf/BytesValueKt;
.super Ljava/lang/Object;
.source "BytesValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BytesValueKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/BytesValueKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/BytesValueKt;

    invoke-direct {v0}, Lcom/google/protobuf/BytesValueKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/BytesValueKt;->INSTANCE:Lcom/google/protobuf/BytesValueKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.BytesValueKt.Dsl (com.google.protobuf.BytesValueKt$Dsl)
.class public final Lcom/google/protobuf/BytesValueKt$Dsl;
.super Ljava/lang/Object;
.source "BytesValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BytesValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BytesValueKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/BytesValueKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/BytesValue$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/BytesValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/BytesValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/BytesValueKt$Dsl;->Companion:Lcom/google/protobuf/BytesValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/BytesValue$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/BytesValueKt$Dsl;->_builder:Lcom/google/protobuf/BytesValue$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/BytesValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/BytesValueKt$Dsl;-><init>(Lcom/google/protobuf/BytesValue$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/BytesValue;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/BytesValueKt$Dsl;->_builder:Lcom/google/protobuf/BytesValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public final clearValue()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/BytesValueKt$Dsl;->_builder:Lcom/google/protobuf/BytesValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue$Builder;->clearValue()Lcom/google/protobuf/BytesValue$Builder;

    return-void
.end method

.method public final getValue()Lcom/google/protobuf/ByteString;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/BytesValueKt$Dsl;->_builder:Lcom/google/protobuf/BytesValue$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue$Builder;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "_builder.getValue()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/BytesValueKt$Dsl;->_builder:Lcom/google/protobuf/BytesValue$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/BytesValue$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/BytesValue$Builder;

    return-void
.end method

###### Class com.google.protobuf.BytesValueKt.Dsl.Companion (com.google.protobuf.BytesValueKt$Dsl$Companion)
.class public final Lcom/google/protobuf/BytesValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "BytesValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/BytesValueKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/BytesValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/BytesValue$Builder;)Lcom/google/protobuf/BytesValueKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/BytesValueKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/BytesValueKt$Dsl;-><init>(Lcom/google/protobuf/BytesValue$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
