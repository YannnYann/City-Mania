###### Class com.google.protobuf.SourceContextKt (com.google.protobuf.SourceContextKt)
.class public final Lcom/google/protobuf/SourceContextKt;
.super Ljava/lang/Object;
.source "SourceContextKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/SourceContextKt$Dsl;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/SourceContextKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/protobuf/SourceContextKt;

    invoke-direct {v0}, Lcom/google/protobuf/SourceContextKt;-><init>()V

    sput-object v0, Lcom/google/protobuf/SourceContextKt;->INSTANCE:Lcom/google/protobuf/SourceContextKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.protobuf.SourceContextKt.Dsl (com.google.protobuf.SourceContextKt$Dsl)
.class public final Lcom/google/protobuf/SourceContextKt$Dsl;
.super Ljava/lang/Object;
.source "SourceContextKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SourceContextKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/SourceContextKt$Dsl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/protobuf/SourceContextKt$Dsl$Companion;


# instance fields
.field private final _builder:Lcom/google/protobuf/SourceContext$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/protobuf/SourceContextKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/SourceContextKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/protobuf/SourceContextKt$Dsl;->Companion:Lcom/google/protobuf/SourceContextKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/SourceContext$Builder;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/protobuf/SourceContextKt$Dsl;->_builder:Lcom/google/protobuf/SourceContext$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/SourceContext$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/google/protobuf/SourceContextKt$Dsl;-><init>(Lcom/google/protobuf/SourceContext$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lcom/google/protobuf/SourceContext;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/protobuf/SourceContextKt$Dsl;->_builder:Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/protobuf/SourceContext;

    return-object v0
.end method

.method public final clearFileName()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/google/protobuf/SourceContextKt$Dsl;->_builder:Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext$Builder;->clearFileName()Lcom/google/protobuf/SourceContext$Builder;

    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/google/protobuf/SourceContextKt$Dsl;->_builder:Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/SourceContext$Builder;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_builder.getFileName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setFileName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/google/protobuf/SourceContextKt$Dsl;->_builder:Lcom/google/protobuf/SourceContext$Builder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SourceContext$Builder;->setFileName(Ljava/lang/String;)Lcom/google/protobuf/SourceContext$Builder;

    return-void
.end method

###### Class com.google.protobuf.SourceContextKt.Dsl.Companion (com.google.protobuf.SourceContextKt$Dsl$Companion)
.class public final Lcom/google/protobuf/SourceContextKt$Dsl$Companion;
.super Ljava/lang/Object;
.source "SourceContextKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SourceContextKt$Dsl;
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
    invoke-direct {p0}, Lcom/google/protobuf/SourceContextKt$Dsl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic _create(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/SourceContextKt$Dsl;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/google/protobuf/SourceContextKt$Dsl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/SourceContextKt$Dsl;-><init>(Lcom/google/protobuf/SourceContext$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
