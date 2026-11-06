###### Class vm2.parser.LuaParser (vm2.parser.LuaParser)
.class public Lvm2/parser/LuaParser;
.super Ljava/lang/Object;
.source "LuaParser.java"

# interfaces
.implements Lvm2/parser/LuaParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvm2/parser/LuaParser$LookaheadSuccess;,
        Lvm2/parser/LuaParser$JJCalls;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I

.field private static jj_la1_2:[I


# instance fields
.field private final jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lvm2/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lvm2/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lvm2/parser/LuaParser$LookaheadSuccess;

.field public jj_nt:Lvm2/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lvm2/parser/Token;

.field public token:Lvm2/parser/Token;

.field public token_source:Lvm2/parser/LuaParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    .line 1648
    invoke-static {}, Lvm2/parser/LuaParser;->jj_la1_init_0()V

    .line 1649
    invoke-static {}, Lvm2/parser/LuaParser;->jj_la1_init_1()V

    .line 1650
    invoke-static {}, Lvm2/parser/LuaParser;->jj_la1_init_2()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 1667
    invoke-direct {p0, p1, v0}, Lvm2/parser/LuaParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    .line 1643
    new-array v1, v0, [I

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v1, 0x7

    .line 1661
    new-array v1, v1, [Lvm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    .line 1662
    iput-boolean v1, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    .line 1663
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    .line 1762
    new-instance v2, Lvm2/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lvm2/parser/LuaParser$LookaheadSuccess;-><init>(Lvm2/parser/LuaParser$1;)V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_ls:Lvm2/parser/LuaParser$LookaheadSuccess;

    .line 1811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 1813
    iput v2, p0, Lvm2/parser/LuaParser;->jj_kind:I

    const/16 v3, 0x64

    .line 1814
    new-array v3, v3, [I

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    .line 1671
    :try_start_2b
    new-instance v3, Lvm2/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4, v4}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_33} :catch_61

    .line 1672
    new-instance p1, Lvm2/parser/LuaParserTokenManager;

    iget-object p2, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lvm2/parser/LuaParserTokenManager;-><init>(Lvm2/parser/SimpleCharStream;)V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    .line 1673
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    .line 1674
    iput v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    .line 1675
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move p1, v1

    :goto_48
    if-ge p1, v0, :cond_51

    .line 1676
    iget-object p2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    .line 1677
    :cond_51
    :goto_51
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length p2, p1

    if-ge v1, p2, :cond_60

    new-instance p2, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {p2}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_60
    return-void

    :catch_61
    move-exception p1

    .line 1671
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    .line 1643
    new-array v1, v0, [I

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v1, 0x7

    .line 1661
    new-array v1, v1, [Lvm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    .line 1662
    iput-boolean v1, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    .line 1663
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    .line 1762
    new-instance v2, Lvm2/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lvm2/parser/LuaParser$LookaheadSuccess;-><init>(Lvm2/parser/LuaParser$1;)V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_ls:Lvm2/parser/LuaParser$LookaheadSuccess;

    .line 1811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 1813
    iput v2, p0, Lvm2/parser/LuaParser;->jj_kind:I

    const/16 v3, 0x64

    .line 1814
    new-array v3, v3, [I

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    .line 1697
    new-instance v3, Lvm2/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lvm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    .line 1698
    new-instance p1, Lvm2/parser/LuaParserTokenManager;

    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-direct {p1, v3}, Lvm2/parser/LuaParserTokenManager;-><init>(Lvm2/parser/SimpleCharStream;)V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    .line 1699
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    .line 1700
    iput v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    .line 1701
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move p1, v1

    :goto_48
    if-ge p1, v0, :cond_51

    .line 1702
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    .line 1703
    :cond_51
    :goto_51
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_60

    new-instance v0, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_60
    return-void
.end method

.method public constructor <init>(Lvm2/parser/LuaParserTokenManager;)V
    .registers 6

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    .line 1643
    new-array v1, v0, [I

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v1, 0x7

    .line 1661
    new-array v1, v1, [Lvm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    const/4 v1, 0x0

    .line 1662
    iput-boolean v1, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    .line 1663
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    .line 1762
    new-instance v2, Lvm2/parser/LuaParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lvm2/parser/LuaParser$LookaheadSuccess;-><init>(Lvm2/parser/LuaParser$1;)V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_ls:Lvm2/parser/LuaParser$LookaheadSuccess;

    .line 1811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    const/4 v2, -0x1

    .line 1813
    iput v2, p0, Lvm2/parser/LuaParser;->jj_kind:I

    const/16 v3, 0x64

    .line 1814
    new-array v3, v3, [I

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    .line 1719
    iput-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    .line 1720
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    .line 1721
    iput v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    .line 1722
    iput v1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move p1, v1

    :goto_39
    if-ge p1, v0, :cond_42

    .line 1723
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    .line 1724
    :cond_42
    :goto_42
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge v1, v0, :cond_51

    new-instance v0, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_51
    return-void
.end method

.method private L(Lvm2/ast/SyntaxElement;J)V
    .registers 6

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    .line 55
    iput v0, p1, Lvm2/ast/SyntaxElement;->beginLine:I

    long-to-int p2, p2

    int-to-short p2, p2

    .line 56
    iput-short p2, p1, Lvm2/ast/SyntaxElement;->beginColumn:S

    .line 57
    iget-object p2, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget p3, p2, Lvm2/parser/Token;->endLine:I

    iput p3, p1, Lvm2/ast/SyntaxElement;->endLine:I

    .line 58
    iget p2, p2, Lvm2/parser/Token;->endColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lvm2/ast/SyntaxElement;->endColumn:S

    return-void
.end method

.method private L(Lvm2/ast/SyntaxElement;Lvm2/parser/Token;)V
    .registers 4

    .line 62
    iget v0, p2, Lvm2/parser/Token;->beginLine:I

    iput v0, p1, Lvm2/ast/SyntaxElement;->beginLine:I

    .line 63
    iget p2, p2, Lvm2/parser/Token;->beginColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lvm2/ast/SyntaxElement;->beginColumn:S

    .line 64
    iget-object p2, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget v0, p2, Lvm2/parser/Token;->endLine:I

    iput v0, p1, Lvm2/ast/SyntaxElement;->endLine:I

    .line 65
    iget p2, p2, Lvm2/parser/Token;->endColumn:I

    int-to-short p2, p2

    iput-short p2, p1, Lvm2/ast/SyntaxElement;->endColumn:S

    return-void
.end method

.method private LineInfo()J
    .registers 5

    .line 51
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lvm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lvm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static assertfunccall(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$FuncCall;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lvm2/ast/Exp$PrimaryExp;->isfunccall()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    check-cast p0, Lvm2/ast/Exp$FuncCall;

    return-object p0

    .line 42
    :cond_9
    new-instance p0, Lvm2/parser/ParseException;

    const-string v0, "expected function call"

    invoke-direct {p0, v0}, Lvm2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assertvarexp(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$VarExp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lvm2/ast/Exp$PrimaryExp;->isvarexp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    check-cast p0, Lvm2/ast/Exp$VarExp;

    return-object p0

    .line 36
    :cond_9
    new-instance p0, Lvm2/parser/ParseException;

    const-string v0, "expected variable"

    invoke-direct {p0, v0}, Lvm2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private jj_2_1(I)Z
    .registers 5

    .line 1071
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1072
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_1()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1074
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_2(I)Z
    .registers 4

    .line 1078
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    .line 1079
    :try_start_9
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_2()Z

    move-result v1
    :try_end_d
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_9 .. :try_end_d} :catch_17
    .catchall {:try_start_9 .. :try_end_d} :catchall_12

    xor-int/2addr v1, v0

    .line 1081
    invoke-direct {p0, v0, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v1

    :catchall_12
    move-exception v1

    invoke-direct {p0, v0, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v1

    :catch_17
    invoke-direct {p0, v0, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_3(I)Z
    .registers 5

    .line 1085
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1086
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_3()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1088
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_4(I)Z
    .registers 5

    .line 1092
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1093
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_4()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1095
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_5(I)Z
    .registers 5

    .line 1099
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1100
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_5()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1102
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_6(I)Z
    .registers 5

    .line 1106
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1107
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_6()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1109
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_2_7(I)Z
    .registers 5

    .line 1113
    iput p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 1114
    :try_start_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_7()Z

    move-result v2
    :try_end_e
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_a .. :try_end_e} :catch_18
    .catchall {:try_start_a .. :try_end_e} :catchall_13

    xor-int/2addr v0, v2

    .line 1116
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0

    :catchall_13
    move-exception v0

    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    throw v0

    :catch_18
    invoke-direct {p0, v1, p1}, Lvm2/parser/LuaParser;->jj_save(II)V

    return v0
.end method

.method private jj_3R_10()Z
    .registers 3

    .line 1186
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1187
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_15()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1188
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1189
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_16()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1190
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1191
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_17()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1192
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1193
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_18()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_11()Z
    .registers 3

    .line 1435
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1436
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_19()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1437
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1438
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_20()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1439
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1440
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_21()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1441
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1442
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_22()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1443
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1444
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_23()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1445
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1446
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_24()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1447
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1448
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_25()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1449
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1450
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_26()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1451
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1452
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_27()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1453
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1454
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_28()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1455
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1456
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1457
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1458
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_30()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1459
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1460
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_31()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1461
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1462
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_32()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1463
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1464
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v0, 0x1

    return v0

    :cond_7a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_12()Z
    .registers 3

    .line 1251
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1252
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_34()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1253
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1254
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_35()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_13()Z
    .registers 3

    .line 1505
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    const/16 v1, 0x48

    .line 1506
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1507
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    const/16 v0, 0x46

    .line 1508
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_14()Z
    .registers 3

    .line 1587
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1588
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_36()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1589
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1590
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_7()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1591
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1592
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_15()Z
    .registers 3

    const/16 v0, 0x49

    .line 1179
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x33

    .line 1180
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_16()Z
    .registers 3

    const/16 v0, 0x4d

    .line 1168
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1169
    :cond_a
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_12()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_17()Z
    .registers 3

    const/16 v0, 0x4a

    .line 1162
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x33

    .line 1163
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_18()Z
    .registers 2

    .line 1157
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_19()Z
    .registers 2

    const/16 v0, 0x52

    .line 1429
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_20()Z
    .registers 2

    const/16 v0, 0x53

    .line 1424
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_21()Z
    .registers 2

    const/16 v0, 0x54

    .line 1419
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_22()Z
    .registers 2

    const/16 v0, 0x55

    .line 1384
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_23()Z
    .registers 2

    const/16 v0, 0x56

    .line 1374
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_24()Z
    .registers 2

    const/16 v0, 0x57

    .line 1364
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_25()Z
    .registers 2

    const/16 v0, 0x58

    .line 1354
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_26()Z
    .registers 2

    const/16 v0, 0x59

    .line 1344
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_27()Z
    .registers 2

    const/16 v0, 0x5a

    .line 1334
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_28()Z
    .registers 2

    const/16 v0, 0x5b

    .line 1324
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_29()Z
    .registers 2

    const/16 v0, 0x5c

    .line 1319
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_30()Z
    .registers 2

    const/16 v0, 0x5d

    .line 1307
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_31()Z
    .registers 2

    const/16 v0, 0x5e

    .line 1296
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_32()Z
    .registers 2

    const/16 v0, 0x1d

    .line 1291
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_33()Z
    .registers 2

    const/16 v0, 0x2c

    .line 1265
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_34()Z
    .registers 2

    .line 1245
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_35()Z
    .registers 2

    .line 1174
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_36()Z
    .registers 2

    const/16 v0, 0x4d

    .line 1599
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_37()Z
    .registers 2

    .line 1575
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_12()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_38()Z
    .registers 3

    .line 1140
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1141
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_41()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1142
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1143
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_42()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1144
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1145
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_39()Z
    .registers 3

    .line 1545
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1546
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_44()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1547
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1548
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_45()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1549
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1550
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_46()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1551
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1552
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_47()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1553
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1554
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_48()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1555
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1556
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_49()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1557
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1558
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_50()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1559
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1560
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_51()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1561
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1562
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_52()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    return v0

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_40()Z
    .registers 3

    .line 1233
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1234
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_53()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1235
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1236
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_54()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1237
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1238
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_55()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_41()Z
    .registers 4

    const/16 v0, 0x4b

    .line 1130
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1132
    :cond_a
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1133
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_56()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    :cond_14
    const/16 v0, 0x4c

    .line 1134
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_42()Z
    .registers 2

    .line 1125
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_57()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_43()Z
    .registers 2

    .line 1120
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_44()Z
    .registers 2

    const/16 v0, 0x2a

    .line 1539
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_45()Z
    .registers 2

    const/16 v0, 0x30

    .line 1534
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_46()Z
    .registers 2

    const/16 v0, 0x23

    .line 1529
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_47()Z
    .registers 2

    const/16 v0, 0x34

    .line 1524
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_48()Z
    .registers 2

    .line 1519
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_58()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_49()Z
    .registers 2

    const/16 v0, 0x4f

    .line 1514
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_50()Z
    .registers 2

    .line 1499
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_57()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_51()Z
    .registers 2

    .line 1494
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_59()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_52()Z
    .registers 2

    .line 1489
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_60()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_53()Z
    .registers 2

    const/16 v0, 0x53

    .line 1227
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_54()Z
    .registers 2

    const/16 v0, 0x2b

    .line 1222
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_55()Z
    .registers 2

    const/16 v0, 0x45

    .line 1217
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_56()Z
    .registers 2

    .line 1628
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_61()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_57()Z
    .registers 4

    const/16 v0, 0x50

    .line 1619
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 1621
    :cond_a
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1622
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_62()Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    :cond_14
    const/16 v0, 0x51

    .line 1623
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_58()Z
    .registers 3

    .line 1395
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1396
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_63()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1397
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1398
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_64()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1399
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1400
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_65()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1401
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1402
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_66()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1403
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1404
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_67()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1405
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1406
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_68()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1407
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1408
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_59()Z
    .registers 2

    const/16 v0, 0x25

    .line 1201
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_60()Z
    .registers 2

    .line 1212
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_70()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_61()Z
    .registers 2

    .line 1609
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_12()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_62()Z
    .registers 2

    .line 1614
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_71()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_63()Z
    .registers 2

    const/16 v0, 0x3d

    .line 1389
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_64()Z
    .registers 2

    const/16 v0, 0x3e

    .line 1379
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_65()Z
    .registers 2

    const/16 v0, 0x17

    .line 1369
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_66()Z
    .registers 2

    const/16 v0, 0x18

    .line 1359
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_67()Z
    .registers 2

    const/16 v0, 0x19

    .line 1349
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_68()Z
    .registers 2

    const/16 v0, 0x1a

    .line 1339
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_69()Z
    .registers 2

    const/16 v0, 0x1b

    .line 1329
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_70()Z
    .registers 3

    .line 1276
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1277
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1278
    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1279
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_73()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_71()Z
    .registers 2

    .line 1604
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_14()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_72()Z
    .registers 2

    const/16 v0, 0x33

    .line 1270
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3R_73()Z
    .registers 2

    const/16 v0, 0x4b

    .line 1260
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_1()Z
    .registers 3

    const/16 v0, 0x24

    .line 1312
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x33

    .line 1313
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0x47

    .line 1314
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_2()Z
    .registers 3

    const/16 v0, 0x29

    .line 1285
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x25

    .line 1286
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_3()Z
    .registers 2

    .line 1152
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_10()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_4()Z
    .registers 3

    const/16 v0, 0x48

    .line 1301
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x33

    .line 1302
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_5()Z
    .registers 3

    .line 1206
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_11()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1207
    :cond_8
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_12()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_6()Z
    .registers 3

    .line 1483
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_13()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1484
    :cond_8
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3R_14()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private jj_3_7()Z
    .registers 3

    const/16 v0, 0x33

    .line 1580
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0x47

    .line 1581
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private jj_add_error_token(II)V
    .registers 9

    const/16 v0, 0x64

    if-lt p2, v0, :cond_5

    goto :goto_62

    .line 1819
    :cond_5
    iget v0, p0, Lvm2/parser/LuaParser;->jj_endpos:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_14

    .line 1820
    iget-object p2, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lvm2/parser/LuaParser;->jj_endpos:I

    aput p1, p2, v0

    return-void

    :cond_14
    if-eqz v0, :cond_62

    .line 1822
    new-array v0, v0, [I

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_expentry:[I

    const/4 v0, 0x0

    move v1, v0

    .line 1823
    :goto_1c
    iget v2, p0, Lvm2/parser/LuaParser;->jj_endpos:I

    if-ge v1, v2, :cond_2b

    .line 1824
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_expentry:[I

    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1826
    :cond_2b
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1827
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1828
    array-length v3, v2

    iget-object v4, p0, Lvm2/parser/LuaParser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_31

    move v3, v0

    .line 1829
    :goto_44
    iget-object v4, p0, Lvm2/parser/LuaParser;->jj_expentry:[I

    array-length v5, v4

    if-ge v3, v5, :cond_53

    .line 1830
    aget v5, v2, v3

    aget v4, v4, v3

    if-eq v5, v4, :cond_50

    goto :goto_31

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1834
    :cond_53
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    if-eqz p2, :cond_62

    .line 1838
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_lasttokens:[I

    iput p2, p0, Lvm2/parser/LuaParser;->jj_endpos:I

    add-int/lit8 p2, p2, -0x1

    aput p1, v0, p2

    :cond_62
    :goto_62
    return-void
.end method

.method private jj_consume_token(I)Lvm2/parser/Token;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 1739
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    if-eqz v1, :cond_9

    iput-object v1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    goto :goto_13

    .line 1740
    :cond_9
    iget-object v1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lvm2/parser/LuaParserTokenManager;->getNextToken()Lvm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    :goto_13
    const/4 v1, -0x1

    .line 1741
    iput v1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    .line 1742
    iget-object v1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget v1, v1, Lvm2/parser/Token;->kind:I

    if-ne v1, p1, :cond_4a

    .line 1743
    iget p1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    .line 1744
    iget p1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_47

    const/4 p1, 0x0

    .line 1745
    iput p1, p0, Lvm2/parser/LuaParser;->jj_gc:I

    .line 1746
    :goto_2f
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v1, v0

    if-ge p1, v1, :cond_47

    .line 1747
    aget-object v0, v0, p1

    :goto_36
    if-eqz v0, :cond_44

    .line 1749
    iget v1, v0, Lvm2/parser/LuaParser$JJCalls;->gen:I

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    if-ge v1, v2, :cond_41

    const/4 v1, 0x0

    iput-object v1, v0, Lvm2/parser/LuaParser$JJCalls;->first:Lvm2/parser/Token;

    .line 1750
    :cond_41
    iget-object v0, v0, Lvm2/parser/LuaParser$JJCalls;->next:Lvm2/parser/LuaParser$JJCalls;

    goto :goto_36

    :cond_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 1754
    :cond_47
    iget-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    return-object p1

    .line 1756
    :cond_4a
    iput-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    .line 1757
    iput p1, p0, Lvm2/parser/LuaParser;->jj_kind:I

    .line 1758
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->generateParseException()Lvm2/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_init_0()V
    .registers 1

    const/16 v0, 0x22

    .line 1653
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lvm2/parser/LuaParser;->jj_la1_0:[I

    return-void

    :array_a
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0xf800000
        0x0
        0x20000000
        0x0
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .registers 1

    const/16 v0, 0x22

    .line 1656
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lvm2/parser/LuaParser;->jj_la1_1:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0xc42f0
        0x2000
        0x0
        0x0
        0x440c0
        0x30
        0x80200
        0x2
        0x1
        0x60190c28
        0x0
        0x0
        0x0
        0x0
        0x0
        0x80000
        0x60000000
        0x60190c28
        0x60000000
        0x0
        0x60190428
        0x60000000
        0x60190c28
        0x80000
        0x0
        0x80000
        0x60190c28
        0x0
        0x0
        0x60190c28
        0x0
        0x1000
        0x800
    .end array-data
.end method

.method private static jj_la1_init_2()V
    .registers 1

    const/16 v0, 0x22

    .line 1659
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lvm2/parser/LuaParser;->jj_la1_2:[I

    return-void

    :array_a
    .array-data 4
        0x20
        0x842
        0x0
        0x100
        0x80
        0x42
        0x0
        0x800
        0x0
        0x0
        0x98820
        0x40
        0x180
        0x100
        0x200
        0x400
        0x800
        0x12e00
        0x98820
        0x10800
        0x100
        0x18800
        0x0
        0x98820
        0x8000
        0x100
        0x8000
        0x9a820
        0x140
        0x2000
        0x98820
        0x140
        0x7ffc0000
        0x80020
    .end array-data
.end method

.method private jj_ntk()I
    .registers 3

    .line 1805
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_nt:Lvm2/parser/Token;

    if-nez v1, :cond_15

    .line 1806
    iget-object v1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lvm2/parser/LuaParserTokenManager;->getNextToken()Lvm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iget v0, v1, Lvm2/parser/Token;->kind:I

    iput v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    return v0

    .line 1808
    :cond_15
    iget v0, v1, Lvm2/parser/Token;->kind:I

    iput v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    return v0
.end method

.method private jj_rescan_token()V
    .registers 6

    const/4 v0, 0x1

    .line 1891
    iput-boolean v0, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_42

    .line 1894
    :try_start_8
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    aget-object v2, v2, v1

    .line 1896
    :cond_c
    iget v3, v2, Lvm2/parser/LuaParser$JJCalls;->gen:I

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    if-le v3, v4, :cond_3b

    .line 1897
    iget v3, v2, Lvm2/parser/LuaParser$JJCalls;->arg:I

    iput v3, p0, Lvm2/parser/LuaParser;->jj_la:I

    iget-object v3, v2, Lvm2/parser/LuaParser$JJCalls;->first:Lvm2/parser/Token;

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v3, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    packed-switch v1, :pswitch_data_46

    goto :goto_3b

    .line 1905
    :pswitch_20
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_7()Z

    goto :goto_3b

    .line 1904
    :pswitch_24
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_6()Z

    goto :goto_3b

    .line 1903
    :pswitch_28
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_5()Z

    goto :goto_3b

    .line 1902
    :pswitch_2c
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_4()Z

    goto :goto_3b

    .line 1901
    :pswitch_30
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_3()Z

    goto :goto_3b

    .line 1900
    :pswitch_34
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_2()Z

    goto :goto_3b

    .line 1899
    :pswitch_38
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_3_1()Z

    .line 1908
    :cond_3b
    :goto_3b
    iget-object v2, v2, Lvm2/parser/LuaParser$JJCalls;->next:Lvm2/parser/LuaParser$JJCalls;
    :try_end_3d
    .catch Lvm2/parser/LuaParser$LookaheadSuccess; {:try_start_8 .. :try_end_3d} :catch_3f

    if-nez v2, :cond_c

    :catch_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1912
    :cond_42
    iput-boolean v0, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
    .end packed-switch
.end method

.method private jj_save(II)V
    .registers 5

    .line 1916
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    aget-object p1, v0, p1

    .line 1917
    :goto_4
    iget v0, p1, Lvm2/parser/LuaParser$JJCalls;->gen:I

    iget v1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    if-le v0, v1, :cond_19

    .line 1918
    iget-object v0, p1, Lvm2/parser/LuaParser$JJCalls;->next:Lvm2/parser/LuaParser$JJCalls;

    if-nez v0, :cond_17

    new-instance v0, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    iput-object v0, p1, Lvm2/parser/LuaParser$JJCalls;->next:Lvm2/parser/LuaParser$JJCalls;

    move-object p1, v0

    goto :goto_19

    :cond_17
    move-object p1, v0

    goto :goto_4

    .line 1921
    :cond_19
    :goto_19
    iget v0, p0, Lvm2/parser/LuaParser;->jj_gen:I

    add-int/2addr v0, p2

    iget v1, p0, Lvm2/parser/LuaParser;->jj_la:I

    sub-int/2addr v0, v1

    iput v0, p1, Lvm2/parser/LuaParser$JJCalls;->gen:I

    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iput-object v0, p1, Lvm2/parser/LuaParser$JJCalls;->first:Lvm2/parser/Token;

    iput p2, p1, Lvm2/parser/LuaParser$JJCalls;->arg:I

    return-void
.end method

.method private jj_scan_token(I)Z
    .registers 7

    .line 1764
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_22

    .line 1765
    iget v1, p0, Lvm2/parser/LuaParser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, p0, Lvm2/parser/LuaParser;->jj_la:I

    .line 1766
    iget-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    if-nez v1, :cond_1d

    .line 1767
    iget-object v1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lvm2/parser/LuaParserTokenManager;->getNextToken()Lvm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    goto :goto_26

    .line 1769
    :cond_1d
    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    goto :goto_26

    .line 1772
    :cond_22
    iget-object v0, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iput-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    .line 1774
    :goto_26
    iget-boolean v0, p0, Lvm2/parser/LuaParser;->jj_rescan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 1775
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    move v3, v1

    :goto_2e
    if-eqz v0, :cond_39

    .line 1776
    iget-object v4, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    if-eq v0, v4, :cond_39

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    goto :goto_2e

    :cond_39
    if-eqz v0, :cond_3e

    .line 1777
    invoke-direct {p0, p1, v3}, Lvm2/parser/LuaParser;->jj_add_error_token(II)V

    .line 1779
    :cond_3e
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_scanpos:Lvm2/parser/Token;

    iget v3, v0, Lvm2/parser/Token;->kind:I

    if-eq v3, p1, :cond_45

    return v2

    .line 1780
    :cond_45
    iget p1, p0, Lvm2/parser/LuaParser;->jj_la:I

    if-nez p1, :cond_51

    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_lastpos:Lvm2/parser/Token;

    if-eq v0, p1, :cond_4e

    goto :goto_51

    :cond_4e
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_ls:Lvm2/parser/LuaParser$LookaheadSuccess;

    throw p1

    :cond_51
    :goto_51
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 30
    new-instance p0, Lvm2/parser/LuaParser;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;-><init>(Ljava/io/InputStream;)V

    .line 31
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Chunk()Lvm2/ast/Chunk;

    return-void
.end method


# virtual methods
.method public final Assign(Lvm2/ast/Exp$VarExp;)Lvm2/ast/Stat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v1

    .line 385
    :goto_c
    iget p1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_15

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result p1

    :cond_15
    const/16 v3, 0x48

    if-eq p1, v3, :cond_32

    .line 390
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v4, p1, v3

    const/16 p1, 0x47

    .line 397
    invoke-direct {p0, p1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 398
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object p1

    .line 399
    invoke-static {v0, p1}, Lvm2/ast/Stat;->assignment(Ljava/util/List;Ljava/util/List;)Lvm2/ast/Stat;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object p1

    .line 393
    :cond_32
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 394
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->VarExp()Lvm2/ast/Exp$VarExp;

    move-result-object p1

    .line 395
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public final Binop()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 979
    iget v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v0

    :cond_9
    const/16 v2, 0x1d

    if-eq v0, v2, :cond_93

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_8d

    packed-switch v0, :pswitch_data_9a

    .line 1041
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x20

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v0, v2

    .line 1042
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 1043
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    :pswitch_25
    const/16 v0, 0x5e

    .line 1029
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x3d

    return v0

    :pswitch_2d
    const/16 v0, 0x5d

    .line 1025
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x19

    return v0

    :pswitch_35
    const/16 v0, 0x5c

    .line 1021
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x3e

    return v0

    :pswitch_3d
    const/16 v0, 0x5b

    .line 1017
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x3f

    return v0

    :pswitch_45
    const/16 v0, 0x5a

    .line 1013
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x17

    return v0

    :pswitch_4d
    const/16 v0, 0x59

    .line 1009
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x1a

    return v0

    :pswitch_55
    const/16 v0, 0x58

    .line 1005
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x16

    return v0

    :pswitch_5d
    const/16 v0, 0x57

    .line 1001
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x12

    return v0

    :pswitch_65
    const/16 v0, 0x56

    .line 997
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x13

    return v0

    :pswitch_6d
    const/16 v0, 0x55

    .line 993
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x11

    return v0

    :pswitch_75
    const/16 v0, 0x54

    .line 989
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x10

    return v0

    :pswitch_7d
    const/16 v0, 0x53

    .line 985
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0xf

    return v0

    :pswitch_85
    const/16 v0, 0x52

    .line 981
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0xe

    return v0

    .line 1037
    :cond_8d
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x3b

    return v0

    .line 1033
    :cond_93
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x3c

    return v0

    nop

    :pswitch_data_9a
    .packed-switch 0x52
        :pswitch_85
        :pswitch_7d
        :pswitch_75
        :pswitch_6d
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_25
    .end packed-switch
.end method

.method public final Block()Lvm2/ast/Block;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 89
    new-instance v0, Lvm2/ast/Block;

    invoke-direct {v0}, Lvm2/ast/Block;-><init>()V

    .line 91
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v1

    .line 94
    :goto_9
    iget v3, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v3

    :cond_12
    const/16 v5, 0x1e

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x1f

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x29

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x41

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x46

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x4b

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x32

    if-eq v3, v5, :cond_5f

    const/16 v5, 0x33

    if-eq v3, v5, :cond_5f

    packed-switch v3, :pswitch_data_68

    .line 111
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v5, 0x1

    iget v6, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v6, v3, v5

    .line 117
    iget v3, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v3, v4, :cond_48

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v3

    :cond_48
    const/16 v4, 0x2d

    if-eq v3, v4, :cond_54

    .line 123
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_5b

    .line 119
    :cond_54
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ReturnStat()Lvm2/ast/Stat;

    move-result-object v3

    .line 120
    invoke-virtual {v0, v3}, Lvm2/ast/Block;->add(Lvm2/ast/Stat;)V

    .line 126
    :goto_5b
    invoke-direct {p0, v0, v1, v2}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v0

    .line 114
    :cond_5f
    :pswitch_5f
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Stat()Lvm2/ast/Stat;

    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Lvm2/ast/Block;->add(Lvm2/ast/Stat;)V

    goto :goto_9

    nop

    :pswitch_data_68
    .packed-switch 0x24
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method

.method public final Chunk()Lvm2/ast/Chunk;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 73
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/4 v3, 0x0

    const/16 v4, 0x45

    if-eq v2, v4, :cond_19

    .line 79
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v4, v2, v3

    goto :goto_22

    .line 75
    :cond_19
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 76
    iget-object v2, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lvm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    .line 82
    :goto_22
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v2

    .line 83
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 84
    new-instance v3, Lvm2/ast/Chunk;

    invoke-direct {v3, v2}, Lvm2/ast/Chunk;-><init>(Lvm2/ast/Block;)V

    invoke-direct {p0, v3, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final Exp()Lvm2/ast/Exp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 731
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 732
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x23

    if-eq v2, v4, :cond_66

    const/16 v4, 0x25

    if-eq v2, v4, :cond_66

    const/16 v4, 0x30

    if-eq v2, v4, :cond_66

    const/16 v4, 0x45

    if-eq v2, v4, :cond_59

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_66

    const/16 v4, 0x53

    if-eq v2, v4, :cond_59

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_66

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_59

    const/16 v4, 0x33

    if-eq v2, v4, :cond_66

    const/16 v4, 0x34

    if-eq v2, v4, :cond_66

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_66

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_66

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_66

    const/16 v4, 0x50

    if-eq v2, v4, :cond_66

    packed-switch v2, :pswitch_data_82

    .line 759
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x17

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 760
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 761
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 754
    :cond_59
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Unop()I

    move-result v2

    .line 755
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v3

    .line 756
    invoke-static {v2, v3}, Lvm2/ast/Exp;->unaryexp(ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object v2

    goto :goto_6a

    .line 749
    :cond_66
    :pswitch_66
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->SimpleExp()Lvm2/ast/Exp;

    move-result-object v2

    :goto_6a
    const/4 v3, 0x2

    .line 765
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_2_5(I)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 770
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Binop()I

    move-result v3

    .line 771
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v4

    .line 772
    invoke-static {v2, v3, v4}, Lvm2/ast/Exp;->binaryexp(Lvm2/ast/Exp;ILvm2/ast/Exp;)Lvm2/ast/Exp;

    move-result-object v2

    goto :goto_6a

    .line 774
    :cond_7e
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_82
    .packed-switch 0x17
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
    .end packed-switch
.end method

.method public final ExpList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvm2/ast/Exp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v1

    .line 612
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :goto_c
    iget v1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v1

    :cond_15
    const/16 v2, 0x48

    if-eq v1, v2, :cond_22

    .line 620
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x14

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v1, v2

    return-object v0

    .line 623
    :cond_22
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 624
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v1

    .line 625
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public final ExprStat()Lvm2/ast/Stat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 362
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->PrimaryExp()Lvm2/ast/Exp$PrimaryExp;

    move-result-object v2

    .line 363
    iget v3, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_11

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v3

    :cond_11
    const/16 v4, 0x47

    if-eq v3, v4, :cond_23

    const/16 v4, 0x48

    if-eq v3, v4, :cond_23

    .line 369
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v3, 0x0

    goto :goto_2b

    .line 366
    :cond_23
    invoke-static {v2}, Lvm2/parser/LuaParser;->assertvarexp(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$VarExp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lvm2/parser/LuaParser;->Assign(Lvm2/ast/Exp$VarExp;)Lvm2/ast/Stat;

    move-result-object v3

    :goto_2b
    if-nez v3, :cond_35

    .line 372
    invoke-static {v2}, Lvm2/parser/LuaParser;->assertfunccall(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$FuncCall;

    move-result-object v2

    invoke-static {v2}, Lvm2/ast/Stat;->functioncall(Lvm2/ast/Exp$FuncCall;)Lvm2/ast/Stat;

    move-result-object v3

    :cond_35
    invoke-direct {p0, v3, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final Field()Lvm2/ast/TableField;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 912
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 913
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x47

    const/16 v5, 0x4d

    if-eq v2, v5, :cond_97

    .line 923
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v5, 0x1d

    iget v6, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v6, v2, v5

    const/4 v2, 0x2

    .line 924
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_2_7(I)Z

    move-result v2

    const/16 v5, 0x33

    if-eqz v2, :cond_39

    .line 925
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 926
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 927
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v3

    .line 928
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lvm2/ast/TableField;->namedField(Ljava/lang/String;Lvm2/ast/Exp;)Lvm2/ast/TableField;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 930
    :cond_39
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v2, v3, :cond_41

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_41
    const/16 v4, 0x23

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x25

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x30

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x45

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x53

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_8b

    if-eq v2, v5, :cond_8b

    const/16 v4, 0x34

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_8b

    const/16 v4, 0x50

    if-eq v2, v4, :cond_8b

    packed-switch v2, :pswitch_data_b2

    .line 954
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x1e

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 955
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 956
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 950
    :cond_8b
    :pswitch_8b
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v2

    .line 951
    invoke-static {v2}, Lvm2/ast/TableField;->listField(Lvm2/ast/Exp;)Lvm2/ast/TableField;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 915
    :cond_97
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 916
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4e

    .line 917
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 918
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 919
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v3

    .line 920
    invoke-static {v2, v3}, Lvm2/ast/TableField;->keyedField(Lvm2/ast/Exp;Lvm2/ast/Exp;)Lvm2/ast/TableField;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_b2
    .packed-switch 0x17
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch
.end method

.method public final FieldList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvm2/ast/TableField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 882
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Field()Lvm2/ast/TableField;

    move-result-object v1

    .line 883
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    const/4 v1, 0x2

    .line 886
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_2_6(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 891
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FieldSep()V

    .line 892
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Field()Lvm2/ast/TableField;

    move-result-object v1

    .line 893
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 895
    :cond_1e
    iget v1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v1

    :cond_27
    const/16 v2, 0x46

    if-eq v1, v2, :cond_38

    const/16 v2, 0x48

    if-eq v1, v2, :cond_38

    .line 901
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x1c

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v1, v2

    return-object v0

    .line 898
    :cond_38
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FieldSep()V

    return-object v0
.end method

.method public final FieldSep()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 964
    iget v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v0

    :cond_9
    const/16 v2, 0x46

    if-eq v0, v2, :cond_26

    const/16 v2, 0x48

    if-ne v0, v2, :cond_15

    .line 966
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    return-void

    .line 972
    :cond_15
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x1f

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v0, v2

    .line 973
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 974
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 969
    :cond_26
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    return-void
.end method

.method public final FuncArgs()Lvm2/ast/FuncArgs;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 533
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 534
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_96

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_96

    const/16 v6, 0x50

    const/16 v7, 0x4b

    if-eq v2, v7, :cond_3d

    if-eq v2, v6, :cond_31

    packed-switch v2, :pswitch_data_a2

    .line 581
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x13

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 582
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 583
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 567
    :cond_31
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->TableConstructor()Lvm2/ast/TableConstructor;

    move-result-object v2

    .line 568
    invoke-static {v2}, Lvm2/ast/FuncArgs;->tableconstructor(Lvm2/ast/TableConstructor;)Lvm2/ast/FuncArgs;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 536
    :cond_3d
    invoke-direct {p0, v7}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 537
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v2, v3, :cond_48

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_48
    const/16 v3, 0x23

    if-eq v2, v3, :cond_85

    const/16 v3, 0x25

    if-eq v2, v3, :cond_85

    const/16 v3, 0x30

    if-eq v2, v3, :cond_85

    const/16 v3, 0x45

    if-eq v2, v3, :cond_85

    if-eq v2, v7, :cond_85

    const/16 v3, 0x53

    if-eq v2, v3, :cond_85

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_85

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_85

    const/16 v3, 0x33

    if-eq v2, v3, :cond_85

    const/16 v3, 0x34

    if-eq v2, v3, :cond_85

    if-eq v2, v4, :cond_85

    if-eq v2, v5, :cond_85

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_85

    if-eq v2, v6, :cond_85

    packed-switch v2, :pswitch_data_b0

    .line 560
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v3, 0x12

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_89

    .line 557
    :cond_85
    :pswitch_85
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v2

    :goto_89
    const/16 v3, 0x4c

    .line 563
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 564
    invoke-static {v2}, Lvm2/ast/FuncArgs;->explist(Ljava/util/List;)Lvm2/ast/FuncArgs;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 577
    :cond_96
    :pswitch_96
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Str()Lvm2/LuaString;

    move-result-object v2

    .line 578
    invoke-static {v2}, Lvm2/ast/FuncArgs;->string(Lvm2/LuaString;)Lvm2/ast/FuncArgs;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_a2
    .packed-switch 0x17
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
        :pswitch_96
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x17
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_85
    .end packed-switch
.end method

.method public final FuncBody()Lvm2/ast/FuncBody;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 791
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    const/16 v2, 0x4b

    .line 792
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 793
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_12
    const/16 v3, 0x33

    if-eq v2, v3, :cond_24

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_24

    .line 799
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v3, 0x18

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v4, v2, v3

    const/4 v2, 0x0

    goto :goto_28

    .line 796
    :cond_24
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ParList()Lvm2/ast/ParList;

    move-result-object v2

    :goto_28
    const/16 v3, 0x4c

    .line 802
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 803
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v3

    const/16 v4, 0x22

    .line 804
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 805
    new-instance v4, Lvm2/ast/FuncBody;

    invoke-direct {v4, v2, v3}, Lvm2/ast/FuncBody;-><init>(Lvm2/ast/ParList;Lvm2/ast/Block;)V

    invoke-direct {p0, v4, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v4
.end method

.method public final FuncName()Lvm2/ast/FuncName;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    const/16 v0, 0x33

    .line 413
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v1

    .line 414
    new-instance v2, Lvm2/ast/FuncName;

    iget-object v3, v1, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v3}, Lvm2/ast/FuncName;-><init>(Ljava/lang/String;)V

    .line 417
    :goto_d
    iget v3, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v3

    :cond_16
    const/16 v5, 0x49

    if-eq v3, v5, :cond_46

    .line 422
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v5, 0xe

    iget v6, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v6, v3, v5

    .line 429
    iget v3, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v3, v4, :cond_2a

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v3

    :cond_2a
    const/16 v4, 0x4a

    if-eq v3, v4, :cond_37

    .line 436
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v3, 0xf

    iget v4, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v4, v0, v3

    goto :goto_42

    .line 431
    :cond_37
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 432
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v1

    .line 433
    iget-object v0, v1, Lvm2/parser/Token;->image:Ljava/lang/String;

    iput-object v0, v2, Lvm2/ast/FuncName;->method:Ljava/lang/String;

    .line 439
    :goto_42
    invoke-direct {p0, v2, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;Lvm2/parser/Token;)V

    return-object v2

    .line 425
    :cond_46
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 426
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v1

    .line 427
    iget-object v3, v1, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lvm2/ast/FuncName;->adddot(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public final FunctionCall()Lvm2/ast/FuncBody;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    const/16 v2, 0x25

    .line 781
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 782
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncBody()Lvm2/ast/FuncBody;

    move-result-object v2

    .line 783
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final IfThenElse()Lvm2/ast/Stat;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    const/16 v0, 0x27

    .line 269
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 270
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v0

    const/16 v1, 0x2f

    .line 271
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 272
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 275
    :goto_15
    iget v6, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1e

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v6

    :cond_1e
    const/16 v8, 0x21

    if-eq v6, v8, :cond_50

    .line 280
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v6, 0x8

    iget v8, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v8, v1, v6

    .line 292
    iget v1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v1, v7, :cond_32

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v1

    :cond_32
    const/16 v6, 0x20

    if-eq v1, v6, :cond_3f

    .line 298
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v6, 0x9

    iget v7, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v7, v1, v6

    goto :goto_46

    .line 294
    :cond_3f
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 295
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v3

    :goto_46
    const/16 v1, 0x22

    .line 301
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 302
    invoke-static {v0, v2, v4, v5, v3}, Lvm2/ast/Stat;->ifthenelse(Lvm2/ast/Exp;Lvm2/ast/Block;Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)Lvm2/ast/Stat;

    move-result-object v0

    return-object v0

    .line 283
    :cond_50
    invoke-direct {p0, v8}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 284
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v6

    .line 285
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 286
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v7

    if-nez v4, :cond_65

    .line 287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_65
    if-nez v5, :cond_6c

    .line 288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    :cond_6c
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15
.end method

.method public final Label()Lvm2/ast/Stat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    const/16 v0, 0x41

    .line 351
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v1, 0x33

    .line 352
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v1

    .line 353
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 354
    iget-object v0, v1, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Stat;->labelstat(Ljava/lang/String;)Lvm2/ast/Stat;

    move-result-object v0

    return-object v0
.end method

.method public final NameList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lvm2/ast/Name;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x33

    .line 591
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 592
    new-instance v3, Lvm2/ast/Name;

    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v2}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    const/4 v2, 0x2

    .line 595
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_2_4(I)Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0x48

    .line 600
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 601
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 602
    new-instance v3, Lvm2/ast/Name;

    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v3, v2}, Lvm2/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    return-object v0
.end method

.method public final ParList()Lvm2/ast/ParList;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 814
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x33

    const/4 v5, 0x1

    const/16 v6, 0x4f

    if-eq v2, v4, :cond_34

    if-ne v2, v6, :cond_23

    .line 830
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 831
    new-instance v2, Lvm2/ast/ParList;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v5}, Lvm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 834
    :cond_23
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x1a

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 835
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 836
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 816
    :cond_34
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    .line 817
    iget v4, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v4, v3, :cond_40

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v4

    :cond_40
    const/16 v3, 0x48

    if-eq v4, v3, :cond_4e

    .line 824
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v4, 0x19

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    const/4 v5, 0x0

    goto :goto_54

    .line 819
    :cond_4e
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 820
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 827
    :goto_54
    new-instance v3, Lvm2/ast/ParList;

    invoke-direct {v3, v2, v5}, Lvm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, v3, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v3
.end method

.method public final PostfixOp(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$PrimaryExp;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 490
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_74

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_74

    const/16 v4, 0x4d

    if-eq v2, v4, :cond_60

    const/16 v4, 0x50

    if-eq v2, v4, :cond_74

    packed-switch v2, :pswitch_data_80

    const/16 v4, 0x33

    packed-switch v2, :pswitch_data_8e

    .line 521
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v0, 0x11

    iget v1, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v1, p1, v0

    .line 522
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 523
    new-instance p1, Lvm2/parser/ParseException;

    invoke-direct {p1}, Lvm2/parser/ParseException;-><init>()V

    throw p1

    :pswitch_36
    const/16 v2, 0x4a

    .line 503
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 504
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 505
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncArgs()Lvm2/ast/FuncArgs;

    move-result-object v3

    .line 506
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lvm2/ast/Exp;->methodop(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lvm2/ast/FuncArgs;)Lvm2/ast/Exp$MethodCall;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object p1

    :pswitch_4d
    const/16 v2, 0x49

    .line 492
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 493
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 494
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v2}, Lvm2/ast/Exp;->fieldop(Lvm2/ast/Exp$PrimaryExp;Ljava/lang/String;)Lvm2/ast/Exp$FieldExp;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object p1

    .line 497
    :cond_60
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 498
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4e

    .line 499
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 500
    invoke-static {p1, v2}, Lvm2/ast/Exp;->indexop(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/Exp;)Lvm2/ast/Exp$IndexExp;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object p1

    .line 517
    :cond_74
    :pswitch_74
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncArgs()Lvm2/ast/FuncArgs;

    move-result-object v2

    .line 518
    invoke-static {p1, v2}, Lvm2/ast/Exp;->functionop(Lvm2/ast/Exp$PrimaryExp;Lvm2/ast/FuncArgs;)Lvm2/ast/Exp$FuncCall;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object p1

    :pswitch_data_80
    .packed-switch 0x17
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x49
        :pswitch_4d
        :pswitch_36
        :pswitch_74
    .end packed-switch
.end method

.method public final PrefixExp()Lvm2/ast/Exp$PrimaryExp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 448
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x33

    if-eq v2, v4, :cond_3a

    const/16 v4, 0x4b

    if-ne v2, v4, :cond_29

    .line 454
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 455
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v2

    const/16 v3, 0x4c

    .line 456
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 457
    invoke-static {v2}, Lvm2/ast/Exp;->parensprefix(Lvm2/ast/Exp;)Lvm2/ast/Exp$ParensExp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 460
    :cond_29
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x10

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 461
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 462
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 450
    :cond_3a
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 451
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lvm2/ast/Exp;->nameprefix(Ljava/lang/String;)Lvm2/ast/Exp$NameExp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final PrimaryExp()Lvm2/ast/Exp$PrimaryExp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 470
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->PrefixExp()Lvm2/ast/Exp$PrimaryExp;

    move-result-object v2

    :goto_8
    const/4 v3, 0x2

    .line 473
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_2_3(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 478
    invoke-virtual {p0, v2}, Lvm2/parser/LuaParser;->PostfixOp(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$PrimaryExp;

    move-result-object v2

    goto :goto_8

    .line 480
    :cond_14
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 1682
    invoke-virtual {p0, p1, v0}, Lvm2/parser/LuaParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .line 1686
    :try_start_0
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_36

    .line 1687
    iget-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    iget-object p2, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lvm2/parser/LuaParserTokenManager;->ReInit(Lvm2/parser/SimpleCharStream;)V

    .line 1688
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    const/4 p1, -0x1

    .line 1689
    iput p1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 p2, 0x0

    .line 1690
    iput p2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move v0, p2

    :goto_1b
    const/16 v1, 0x22

    if-ge v0, v1, :cond_26

    .line 1691
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1692
    :cond_26
    :goto_26
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v0, p1

    if-ge p2, v0, :cond_35

    new-instance v0, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v0}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    :cond_35
    return-void

    :catch_36
    move-exception p1

    .line 1686
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 5

    .line 1708
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lvm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 1709
    iget-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lvm2/parser/LuaParserTokenManager;->ReInit(Lvm2/parser/SimpleCharStream;)V

    .line 1710
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    const/4 p1, -0x1

    .line 1711
    iput p1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 1712
    iput v0, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move v1, v0

    :goto_1b
    const/16 v2, 0x22

    if-ge v1, v2, :cond_26

    .line 1713
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1714
    :cond_26
    :goto_26
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_35

    new-instance v1, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v1}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_35
    return-void
.end method

.method public ReInit(Lvm2/parser/LuaParserTokenManager;)V
    .registers 5

    .line 1729
    iput-object p1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    .line 1730
    new-instance p1, Lvm2/parser/Token;

    invoke-direct {p1}, Lvm2/parser/Token;-><init>()V

    iput-object p1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    const/4 p1, -0x1

    .line 1731
    iput p1, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 1732
    iput v0, p0, Lvm2/parser/LuaParser;->jj_gen:I

    move v1, v0

    :goto_10
    const/16 v2, 0x22

    if-ge v1, v2, :cond_1b

    .line 1733
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1734
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lvm2/parser/LuaParser;->jj_2_rtns:[Lvm2/parser/LuaParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_2a

    new-instance v1, Lvm2/parser/LuaParser$JJCalls;

    invoke-direct {v1}, Lvm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    return-void
.end method

.method public final ReturnStat()Lvm2/ast/Stat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    const/16 v2, 0x2d

    .line 310
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 311
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_12
    const/16 v4, 0x23

    if-eq v2, v4, :cond_57

    const/16 v4, 0x25

    if-eq v2, v4, :cond_57

    const/16 v4, 0x30

    if-eq v2, v4, :cond_57

    const/16 v4, 0x45

    if-eq v2, v4, :cond_57

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_57

    const/16 v4, 0x53

    if-eq v2, v4, :cond_57

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_57

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_57

    const/16 v4, 0x33

    if-eq v2, v4, :cond_57

    const/16 v4, 0x34

    if-eq v2, v4, :cond_57

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_57

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_57

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_57

    const/16 v4, 0x50

    if-eq v2, v4, :cond_57

    packed-switch v2, :pswitch_data_7c

    .line 334
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v2, v4

    const/4 v2, 0x0

    goto :goto_5b

    .line 331
    :cond_57
    :pswitch_57
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v2

    .line 337
    :goto_5b
    iget v4, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v4, v3, :cond_63

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v4

    :cond_63
    const/16 v3, 0x46

    if-eq v4, v3, :cond_70

    .line 342
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_73

    .line 339
    :cond_70
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 345
    :goto_73
    invoke-static {v2}, Lvm2/ast/Stat;->returnstat(Ljava/util/List;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    nop

    :pswitch_data_7c
    .packed-switch 0x17
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.method public final SimpleExp()Lvm2/ast/Exp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 637
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 638
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x23

    if-eq v2, v4, :cond_a9

    const/16 v4, 0x25

    if-eq v2, v4, :cond_9d

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_90

    const/16 v4, 0x30

    if-eq v2, v4, :cond_83

    const/16 v4, 0x4b

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x33

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x34

    if-eq v2, v4, :cond_70

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_64

    const/16 v4, 0x3e

    if-eq v2, v4, :cond_64

    const/16 v4, 0x4f

    if-eq v2, v4, :cond_59

    const/16 v4, 0x50

    if-eq v2, v4, :cond_4d

    packed-switch v2, :pswitch_data_b6

    .line 683
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v1, 0x15

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 684
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 685
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 670
    :cond_4d
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->TableConstructor()Lvm2/ast/TableConstructor;

    move-result-object v2

    .line 671
    invoke-static {v2}, Lvm2/ast/Exp;->tableconstructor(Lvm2/ast/TableConstructor;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 666
    :cond_59
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 667
    invoke-static {}, Lvm2/ast/Exp;->varargs()Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 662
    :cond_64
    :pswitch_64
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Str()Lvm2/LuaString;

    move-result-object v2

    .line 663
    invoke-static {v2}, Lvm2/ast/Exp;->constant(Lvm2/LuaValue;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 652
    :cond_70
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 653
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lvm2/ast/Exp;->numberconstant(Ljava/lang/String;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 679
    :cond_7e
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->PrimaryExp()Lvm2/ast/Exp$PrimaryExp;

    move-result-object v0

    return-object v0

    .line 644
    :cond_83
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 645
    sget-object v2, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    invoke-static {v2}, Lvm2/ast/Exp;->constant(Lvm2/LuaValue;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 640
    :cond_90
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 641
    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-static {v2}, Lvm2/ast/Exp;->constant(Lvm2/LuaValue;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 674
    :cond_9d
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FunctionCall()Lvm2/ast/FuncBody;

    move-result-object v2

    .line 675
    invoke-static {v2}, Lvm2/ast/Exp;->anonymousfunction(Lvm2/ast/FuncBody;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 648
    :cond_a9
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 649
    sget-object v2, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    invoke-static {v2}, Lvm2/ast/Exp;->constant(Lvm2/LuaValue;)Lvm2/ast/Exp;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    :pswitch_data_b6
    .packed-switch 0x17
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public final Stat()Lvm2/ast/Stat;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v0

    .line 140
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_d
    const/16 v4, 0x1e

    if-eq v2, v4, :cond_1ab

    const/16 v4, 0x22

    const/16 v5, 0x1f

    if-eq v2, v5, :cond_199

    const/16 v6, 0x26

    const/16 v7, 0x33

    if-eq v2, v6, :cond_188

    const/16 v6, 0x27

    if-eq v2, v6, :cond_180

    const/16 v6, 0x2e

    if-eq v2, v6, :cond_168

    const/16 v6, 0x32

    if-eq v2, v6, :cond_14f

    const/16 v6, 0x41

    if-eq v2, v6, :cond_147

    const/16 v6, 0x46

    const/4 v8, 0x0

    if-eq v2, v6, :cond_143

    .line 184
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v6, 0x5

    iget v9, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v9, v2, v6

    const/4 v2, 0x3

    .line 185
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_2_1(I)Z

    move-result v6

    const/16 v9, 0x47

    const/16 v10, 0x24

    if-eqz v6, :cond_87

    .line 186
    invoke-direct {p0, v10}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 187
    invoke-direct {p0, v7}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v6

    .line 188
    invoke-direct {p0, v9}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 189
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v7

    const/16 v9, 0x48

    .line 190
    invoke-direct {p0, v9}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 191
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v10

    .line 192
    iget v11, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v11, v3, :cond_63

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v11

    :cond_63
    if-eq v11, v9, :cond_6c

    .line 198
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    iget v9, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v9, v3, v2

    goto :goto_73

    .line 194
    :cond_6c
    invoke-direct {p0, v9}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 195
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v8

    .line 201
    :goto_73
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 202
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v2

    .line 203
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 204
    iget-object v3, v6, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v3, v7, v10, v8, v2}, Lvm2/ast/Stat;->fornumeric(Ljava/lang/String;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Exp;Lvm2/ast/Block;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 206
    :cond_87
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v2, v3, :cond_8f

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_8f
    if-eq v2, v10, :cond_121

    const/16 v4, 0x25

    if-eq v2, v4, :cond_10e

    .line 224
    iget-object v2, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v5, 0x6

    iget v6, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v6, v2, v5

    const/4 v2, 0x2

    .line 225
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_2_2(I)Z

    move-result v2

    const/16 v5, 0x29

    if-eqz v2, :cond_bd

    .line 226
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 227
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 228
    invoke-direct {p0, v7}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 229
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncBody()Lvm2/ast/FuncBody;

    move-result-object v3

    .line 230
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2, v3}, Lvm2/ast/Stat;->localfunctiondef(Ljava/lang/String;Lvm2/ast/FuncBody;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 232
    :cond_bd
    iget v2, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v2, v3, :cond_c5

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v2

    :cond_c5
    if-eq v2, v5, :cond_e6

    if-eq v2, v7, :cond_de

    const/16 v4, 0x4b

    if-ne v2, v4, :cond_ce

    goto :goto_de

    .line 253
    :cond_ce
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v1, 0x7

    iget v2, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v2, v0, v1

    .line 254
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 255
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 249
    :cond_de
    :goto_de
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExprStat()Lvm2/ast/Stat;

    move-result-object v2

    .line 250
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 234
    :cond_e6
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 235
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    .line 236
    iget v4, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    if-ne v4, v3, :cond_f5

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v4

    :cond_f5
    if-eq v4, v9, :cond_ff

    .line 242
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_106

    .line 238
    :cond_ff
    invoke-direct {p0, v9}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 239
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v8

    .line 245
    :goto_106
    invoke-static {v2, v8}, Lvm2/ast/Stat;->localassignment(Ljava/util/List;Ljava/util/List;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 218
    :cond_10e
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 219
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncName()Lvm2/ast/FuncName;

    move-result-object v2

    .line 220
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FuncBody()Lvm2/ast/FuncBody;

    move-result-object v3

    .line 221
    invoke-static {v2, v3}, Lvm2/ast/Stat;->functiondef(Lvm2/ast/FuncName;Lvm2/ast/FuncBody;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 208
    :cond_121
    invoke-direct {p0, v10}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 209
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x28

    .line 210
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 211
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v3

    .line 212
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 213
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v5

    .line 214
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 215
    invoke-static {v2, v3, v5}, Lvm2/ast/Stat;->forgeneric(Ljava/util/List;Ljava/util/List;Lvm2/ast/Block;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 142
    :cond_143
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    return-object v8

    .line 146
    :cond_147
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Label()Lvm2/ast/Stat;

    move-result-object v2

    .line 147
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 165
    :cond_14f
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 166
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v2

    .line 167
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 168
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v3

    .line 169
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 170
    invoke-static {v2, v3}, Lvm2/ast/Stat;->whiledo(Lvm2/ast/Exp;Lvm2/ast/Block;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 173
    :cond_168
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 174
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v2

    const/16 v3, 0x31

    .line 175
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 176
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Exp()Lvm2/ast/Exp;

    move-result-object v3

    .line 177
    invoke-static {v2, v3}, Lvm2/ast/Stat;->repeatuntil(Lvm2/ast/Block;Lvm2/ast/Exp;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 180
    :cond_180
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->IfThenElse()Lvm2/ast/Stat;

    move-result-object v2

    .line 181
    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 154
    :cond_188
    invoke-direct {p0, v6}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 155
    invoke-direct {p0, v7}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    move-result-object v2

    .line 156
    iget-object v2, v2, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lvm2/ast/Stat;->gotostat(Ljava/lang/String;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 159
    :cond_199
    invoke-direct {p0, v5}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 160
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->Block()Lvm2/ast/Block;

    move-result-object v2

    .line 161
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 162
    invoke-static {v2}, Lvm2/ast/Stat;->block(Lvm2/ast/Block;)Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2

    .line 150
    :cond_1ab
    invoke-direct {p0, v4}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 151
    invoke-static {}, Lvm2/ast/Stat;->breakstat()Lvm2/ast/Stat;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final Str()Lvm2/LuaString;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 691
    iget v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v0

    :cond_9
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_77

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_6b

    packed-switch v0, :pswitch_data_84

    .line 721
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x16

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v0, v2

    .line 722
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 723
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    :pswitch_25
    const/16 v0, 0x1b

    .line 717
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 718
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->longString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_33
    const/16 v0, 0x1a

    .line 713
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 714
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->longString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_41
    const/16 v0, 0x19

    .line 709
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 710
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->longString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_4f
    const/16 v0, 0x18

    .line 705
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 706
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->longString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :pswitch_5d
    const/16 v0, 0x17

    .line 701
    invoke-direct {p0, v0}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 702
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->longString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    .line 697
    :cond_6b
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 698
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->charString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    .line 693
    :cond_77
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 694
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v0, v0, Lvm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lvm2/ast/Str;->quoteString(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x17
        :pswitch_5d
        :pswitch_4f
        :pswitch_41
        :pswitch_33
        :pswitch_25
    .end packed-switch
.end method

.method public final TableConstructor()Lvm2/ast/TableConstructor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 842
    new-instance v0, Lvm2/ast/TableConstructor;

    invoke-direct {v0}, Lvm2/ast/TableConstructor;-><init>()V

    .line 844
    invoke-direct {p0}, Lvm2/parser/LuaParser;->LineInfo()J

    move-result-wide v1

    const/16 v3, 0x50

    .line 845
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 846
    iget v4, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v4

    :cond_17
    const/16 v5, 0x23

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x25

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x30

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x45

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x4b

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x53

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x33

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x34

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_5d

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_5d

    if-eq v4, v3, :cond_5d

    packed-switch v4, :pswitch_data_6c

    .line 871
    iget-object v3, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v4, 0x1b

    iget v5, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_63

    .line 867
    :cond_5d
    :pswitch_5d
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->FieldList()Ljava/util/List;

    move-result-object v3

    .line 868
    iput-object v3, v0, Lvm2/ast/TableConstructor;->fields:Ljava/util/List;

    :goto_63
    const/16 v3, 0x51

    .line 874
    invoke-direct {p0, v3}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 875
    invoke-direct {p0, v0, v1, v2}, Lvm2/parser/LuaParser;->L(Lvm2/ast/SyntaxElement;J)V

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x17
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
    .end packed-switch
.end method

.method public final Unop()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 1049
    iget v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_ntk()I

    move-result v0

    :cond_9
    const/16 v2, 0x2b

    if-eq v0, v2, :cond_32

    const/16 v2, 0x45

    if-eq v0, v2, :cond_2c

    const/16 v2, 0x53

    if-ne v0, v2, :cond_1b

    .line 1051
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x14

    return v0

    .line 1063
    :cond_1b
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    const/16 v2, 0x21

    iget v3, p0, Lvm2/parser/LuaParser;->jj_gen:I

    aput v3, v0, v2

    .line 1064
    invoke-direct {p0, v1}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    .line 1065
    new-instance v0, Lvm2/parser/ParseException;

    invoke-direct {v0}, Lvm2/parser/ParseException;-><init>()V

    throw v0

    .line 1059
    :cond_2c
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0xd

    return v0

    .line 1055
    :cond_32
    invoke-direct {p0, v2}, Lvm2/parser/LuaParser;->jj_consume_token(I)Lvm2/parser/Token;

    const/16 v0, 0x15

    return v0
.end method

.method public final VarExp()Lvm2/ast/Exp$VarExp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lvm2/parser/ParseException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lvm2/parser/LuaParser;->PrimaryExp()Lvm2/ast/Exp$PrimaryExp;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lvm2/parser/LuaParser;->assertvarexp(Lvm2/ast/Exp$PrimaryExp;)Lvm2/ast/Exp$VarExp;

    move-result-object v0

    return-object v0
.end method

.method public final disable_tracing()V
    .registers 1

    .line 0
    return-void
.end method

.method public final enable_tracing()V
    .registers 1

    .line 0
    return-void
.end method

.method public generateParseException()Lvm2/parser/ParseException;
    .registers 9

    .line 1844
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/16 v0, 0x5f

    .line 1845
    new-array v1, v0, [Z

    .line 1846
    iget v2, p0, Lvm2/parser/LuaParser;->jj_kind:I

    const/4 v3, 0x1

    if-ltz v2, :cond_13

    .line 1847
    aput-boolean v3, v1, v2

    const/4 v2, -0x1

    .line 1848
    iput v2, p0, Lvm2/parser/LuaParser;->jj_kind:I

    :cond_13
    const/4 v2, 0x0

    move v4, v2

    :goto_15
    const/16 v5, 0x22

    if-ge v4, v5, :cond_4d

    .line 1851
    iget-object v5, p0, Lvm2/parser/LuaParser;->jj_la1:[I

    aget v5, v5, v4

    iget v6, p0, Lvm2/parser/LuaParser;->jj_gen:I

    if-ne v5, v6, :cond_4a

    move v5, v2

    :goto_22
    const/16 v6, 0x20

    if-ge v5, v6, :cond_4a

    .line 1853
    sget-object v6, Lvm2/parser/LuaParser;->jj_la1_0:[I

    aget v6, v6, v4

    shl-int v7, v3, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_31

    .line 1854
    aput-boolean v3, v1, v5

    .line 1856
    :cond_31
    sget-object v6, Lvm2/parser/LuaParser;->jj_la1_1:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3c

    add-int/lit8 v6, v5, 0x20

    .line 1857
    aput-boolean v3, v1, v6

    .line 1859
    :cond_3c
    sget-object v6, Lvm2/parser/LuaParser;->jj_la1_2:[I

    aget v6, v6, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_47

    add-int/lit8 v6, v5, 0x40

    .line 1860
    aput-boolean v3, v1, v6

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_4d
    move v4, v2

    :goto_4e
    if-ge v4, v0, :cond_62

    .line 1866
    aget-boolean v5, v1, v4

    if-eqz v5, :cond_5f

    .line 1867
    new-array v5, v3, [I

    iput-object v5, p0, Lvm2/parser/LuaParser;->jj_expentry:[I

    .line 1868
    aput v4, v5, v2

    .line 1869
    iget-object v6, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1872
    :cond_62
    iput v2, p0, Lvm2/parser/LuaParser;->jj_endpos:I

    .line 1873
    invoke-direct {p0}, Lvm2/parser/LuaParser;->jj_rescan_token()V

    .line 1874
    invoke-direct {p0, v2, v2}, Lvm2/parser/LuaParser;->jj_add_error_token(II)V

    .line 1875
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 1876
    :goto_72
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_87

    .line 1877
    iget-object v1, p0, Lvm2/parser/LuaParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 1879
    :cond_87
    new-instance v1, Lvm2/parser/ParseException;

    iget-object v2, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    sget-object v3, Lvm2/parser/LuaParserConstants;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lvm2/parser/ParseException;-><init>(Lvm2/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public getCharStream()Lvm2/parser/SimpleCharStream;
    .registers 2

    .line 47
    iget-object v0, p0, Lvm2/parser/LuaParser;->jj_input_stream:Lvm2/parser/SimpleCharStream;

    return-object v0
.end method

.method public final getNextToken()Lvm2/parser/Token;
    .registers 3

    .line 1787
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    iget-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    if-eqz v1, :cond_9

    iput-object v1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    goto :goto_13

    .line 1788
    :cond_9
    iget-object v1, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lvm2/parser/LuaParserTokenManager;->getNextToken()Lvm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    iput-object v1, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    :goto_13
    const/4 v0, -0x1

    .line 1789
    iput v0, p0, Lvm2/parser/LuaParser;->jj_ntk:I

    .line 1790
    iget v0, p0, Lvm2/parser/LuaParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvm2/parser/LuaParser;->jj_gen:I

    .line 1791
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lvm2/parser/Token;
    .registers 5

    .line 1796
    iget-object v0, p0, Lvm2/parser/LuaParser;->token:Lvm2/parser/Token;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_17

    .line 1798
    iget-object v2, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    if-eqz v2, :cond_b

    :goto_9
    move-object v0, v2

    goto :goto_14

    .line 1799
    :cond_b
    iget-object v2, p0, Lvm2/parser/LuaParser;->token_source:Lvm2/parser/LuaParserTokenManager;

    invoke-virtual {v2}, Lvm2/parser/LuaParserTokenManager;->getNextToken()Lvm2/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lvm2/parser/Token;->next:Lvm2/parser/Token;

    goto :goto_9

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return-object v0
.end method

###### Class vm2.parser.LuaParser.AnonymousClass1 (vm2.parser.LuaParser$1)
.class synthetic Lvm2/parser/LuaParser$1;
.super Ljava/lang/Object;
.source "LuaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/parser/LuaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class vm2.parser.LuaParser.JJCalls (vm2.parser.LuaParser$JJCalls)
.class final Lvm2/parser/LuaParser$JJCalls;
.super Ljava/lang/Object;
.source "LuaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/parser/LuaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JJCalls"
.end annotation


# instance fields
.field arg:I

.field first:Lvm2/parser/Token;

.field gen:I

.field next:Lvm2/parser/LuaParser$JJCalls;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class vm2.parser.LuaParser.LookaheadSuccess (vm2.parser.LuaParser$LookaheadSuccess)
.class final Lvm2/parser/LuaParser$LookaheadSuccess;
.super Ljava/lang/Error;
.source "LuaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvm2/parser/LuaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LookaheadSuccess"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1761
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lvm2/parser/LuaParser$1;)V
    .registers 2

    .line 1761
    invoke-direct {p0}, Lvm2/parser/LuaParser$LookaheadSuccess;-><init>()V

    return-void
.end method
