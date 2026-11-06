###### Class info.flowersoft.theotown.util.LuaKeyImplementation (info.flowersoft.theotown.util.LuaKeyImplementation)
.class public final Linfo/flowersoft/theotown/util/LuaKeyImplementation;
.super Ljava/lang/Object;
.source "PluginFileDecoder.kt"

# interfaces
.implements Linfo/flowersoft/theotown/util/PluginFileDecoder$KeyImplementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;


# instance fields
.field public final func:Lvm2/LuaFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->Companion:Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;

    return-void
.end method

.method public constructor <init>(Lvm2/LuaFunction;)V
    .registers 3

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->func:Lvm2/LuaFunction;

    return-void
.end method

.method public static final synthetic access$toByteArray(Linfo/flowersoft/theotown/util/LuaKeyImplementation;Lvm2/LuaString;)[B
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->toByteArray(Lvm2/LuaString;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFunc()Lvm2/LuaFunction;
    .registers 2

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->func:Lvm2/LuaFunction;

    return-object v0
.end method

.method public getKey([B)[B
    .registers 4

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->func:Lvm2/LuaFunction;

    .line 124
    invoke-static {p1}, Lvm2/LuaString;->valueOf([B)Lvm2/LuaString;

    move-result-object p1

    .line 125
    new-instance v1, Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;-><init>(Linfo/flowersoft/theotown/util/LuaKeyImplementation;)V

    .line 123
    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    const-string v0, "strvalue(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->toByteArray(Lvm2/LuaString;)[B

    move-result-object p1

    return-object p1
.end method

.method public final toByteArray(Lvm2/LuaString;)[B
    .registers 4

    .line 118
    iget-object v0, p1, Lvm2/LuaString;->m_bytes:[B

    const-string v1, "m_bytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Lvm2/LuaString;->m_offset:I

    iget p1, p1, Lvm2/LuaString;->m_length:I

    invoke-static {v0, v1, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.util.LuaKeyImplementation.Companion (info.flowersoft.theotown.util.LuaKeyImplementation$Companion)
.class public final Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;
.super Ljava/lang/Object;
.source "PluginFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/LuaKeyImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/util/LuaKeyImplementation$Companion;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.util.LuaKeyImplementation.AnonymousClass1 (info.flowersoft.theotown.util.LuaKeyImplementation$getKey$1)
.class public final Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;
.super Lvm2/lib/OneArgFunction;
.source "PluginFileDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/LuaKeyImplementation;->getKey([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginFileDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginFileDecoder.kt\ninfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1\n+ 2 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,133:1\n38#2,12:134\n*S KotlinDebug\n*F\n+ 1 PluginFileDecoder.kt\ninfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1\n*L\n128#1:134,12\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/LuaKeyImplementation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/LuaKeyImplementation;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;->this$0:Linfo/flowersoft/theotown/util/LuaKeyImplementation;

    .line 125
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaString;
    .registers 5

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;->this$0:Linfo/flowersoft/theotown/util/LuaKeyImplementation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lvm2/LuaValue;->strvalue()Lvm2/LuaString;

    move-result-object p1

    const-string v1, "strvalue(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/LuaKeyImplementation;->access$toByteArray(Linfo/flowersoft/theotown/util/LuaKeyImplementation;Lvm2/LuaString;)[B

    move-result-object p1

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    .line 44
    :try_start_14
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v0, "digest(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-array p1, v1, [B

    .line 128
    :goto_2d
    invoke-static {p1}, Lvm2/LuaString;->valueOf([B)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/LuaKeyImplementation$getKey$1;->call(Lvm2/LuaValue;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method
