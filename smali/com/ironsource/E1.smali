###### Class com.ironsource.E1 (com.ironsource.E1)
.class public final Lcom/ironsource/E1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnrTraceParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnrTraceParser.kt\ncom/ironsource/services/anr/AnrTraceParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,79:1\n1#2:80\n37#3:81\n36#3,3:82\n37#3:85\n36#3,3:86\n37#3:89\n36#3,3:90\n*S KotlinDebug\n*F\n+ 1 AnrTraceParser.kt\ncom/ironsource/services/anr/AnrTraceParser\n*L\n41#1:81\n41#1:82,3\n42#1:85\n42#1:86,3\n49#1:89\n49#1:90,3\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/E1;

.field private static final b:Ljava/lang/String; = "\"main\""

.field private static final c:Ljava/lang/String; = "at "

.field private static final d:Ljava/lang/String; = "|"

.field private static final e:Ljava/lang/String; = "- "

.field private static final f:Ljava/lang/String; = "\""

.field private static final g:Ljava/lang/String; = "Native method"

.field private static final h:I = 0x100

.field private static final i:I = 0x4e20

.field private static final j:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/E1;

    invoke-direct {v0}, Lcom/ironsource/E1;-><init>()V

    sput-object v0, Lcom/ironsource/E1;->a:Lcom/ironsource/E1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 11
    const-string v0, "Native method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    const/16 v2, 0x3a

    const/4 v3, 0x2

    .line 12
    invoke-static {p1, v2, v0, v3, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1, v2, v1, v3, v1}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    return-object p1
.end method

.method private final b(Ljava/lang/String;)I
    .registers 6

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 148
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-static {p1, v0, v3, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method private final b(Ljava/io/BufferedReader;)[Ljava/lang/StackTraceElement;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_9
    const/4 v2, 0x0

    if-eqz v1, :cond_64

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x100

    if-ge v3, v4, :cond_64

    .line 5
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2b

    .line 50
    new-array p1, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    return-object p1

    .line 51
    :cond_2b
    const-string v3, "\""

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 97
    new-array p1, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    return-object p1

    .line 98
    :cond_3e
    const-string v3, "|"

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 99
    const-string v3, "- "

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 100
    const-string v3, "at "

    invoke-static {v1, v3, v2, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-direct {p0, v1}, Lcom/ironsource/E1;->c(Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_5f
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 147
    :cond_64
    new-array p1, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    return-object p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .registers 13

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/16 v1, 0x29

    .line 2
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le p1, v3, :cond_66

    if-ge v1, p1, :cond_18

    goto :goto_66

    .line 5
    :cond_18
    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v6, 0x2e

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_66

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_3e

    goto :goto_66

    :cond_3e
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    .line 10
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1}, Lcom/ironsource/E1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ironsource/E1;->b(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v2, v3, v1, p1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_66
    :goto_66
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/io/BufferedReader;)[Ljava/lang/StackTraceElement;
    .registers 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-eqz v0, :cond_30

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x4e20

    if-ge v2, v4, :cond_30

    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trimStart(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string v5, "\"main\""

    invoke-static {v0, v5, v1, v2, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6
    invoke-direct {p0, p1}, Lcom/ironsource/E1;->b(Ljava/io/BufferedReader;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move v2, v3

    goto :goto_b

    .line 10
    :cond_30
    new-array p1, v1, [Ljava/lang/StackTraceElement;

    return-object p1
.end method

.method public final a(Ljava/io/InputStream;)[Ljava/lang/StackTraceElement;
    .registers 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_13
    sget-object v0, Lcom/ironsource/E1;->a:Lcom/ironsource/E1;

    invoke-virtual {v0, p1}, Lcom/ironsource/E1;->a(Ljava/io/BufferedReader;)[Ljava/lang/StackTraceElement;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1e
    move-exception v0

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
