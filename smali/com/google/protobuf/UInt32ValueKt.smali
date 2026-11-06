###### Class com.google.protobuf.UInt32ValueKt (com.google.protobuf.UInt32ValueKt)
.class public final Lcom/google/protobuf/UInt32ValueKt;
.super Ljava/lang/Object;
.source "UInt32ValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UInt32ValueKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/UInt32ValueKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/UInt32ValueKt;

    invoke-direct {v0}, Lcom/google/protobuf/UInt32ValueKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/UInt32ValueKt;->INSTANCE:Lcom/google/protobuf/UInt32ValueKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.UInt32ValueKt.Dsl (com.google.protobuf.UInt32ValueKt$Dsl)
.class public final Lcom/google/protobuf/UInt32ValueKt$Dsl;
.super Ljava/lang/Object;
.source "UInt32ValueKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UInt32ValueKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/UInt32Value$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->Companion:Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/UInt32Value$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->_builder:Lcom/google/protobuf/UInt32Value$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/UInt32Value$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/UInt32ValueKt$Dsl;-><init>(Lcom/google/protobuf/UInt32Value$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/UInt32Value;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->_builder:Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/UInt32Value;

    return-object v0
.end method

.method public final clearValue()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->_builder:Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value$Builder;->clearValue()Lcom/google/protobuf/UInt32Value$Builder;

    return-void
.end method

.method public final getValue()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->_builder:Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt32Value$Builder;->getValue()I

    move-result v0

    return v0
.end method

.method public final setValue(I)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/UInt32ValueKt$Dsl;->_builder:Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$Builder;->setValue(I)Lcom/google/protobuf/UInt32Value$Builder;

    return-void
.end method

###### Class com.google.protobuf.UInt32ValueKt.Dsl.Companion (com.google.protobuf.UInt32ValueKt$Dsl$Companion)
.class public final Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "UInt32ValueKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UInt32ValueKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/UInt32ValueKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/UInt32Value$Builder;)Lcom/google/protobuf/UInt32ValueKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/UInt32ValueKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/UInt32ValueKt$Dsl;-><init>(Lcom/google/protobuf/UInt32Value$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
