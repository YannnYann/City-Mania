###### Class vm2.parser.LuaParserConstants (vm2.parser.LuaParserConstants)
.class public interface abstract Lvm2/parser/LuaParserConstants;
.super Ljava/lang/Object;
.source "LuaParserConstants.java"


# static fields
.field public static final AND:I = 0x1d

.field public static final BREAK:I = 0x1e

.field public static final CHAR:I = 0x43

.field public static final CHARSTRING:I = 0x3e

.field public static final COMMENT:I = 0x11

.field public static final DBCOLON:I = 0x41

.field public static final DECIMAL:I = 0x40

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0x37

.field public static final DO:I = 0x1f

.field public static final ELSE:I = 0x20

.field public static final ELSEIF:I = 0x21

.field public static final END:I = 0x22

.field public static final EOF:I = 0x0

.field public static final EXP:I = 0x38

.field public static final FALSE:I = 0x23

.field public static final FLOAT:I = 0x35

.field public static final FNUM:I = 0x36

.field public static final FOR:I = 0x24

.field public static final FUNCTION:I = 0x25

.field public static final GOTO:I = 0x26

.field public static final HEX:I = 0x39

.field public static final HEXDIGIT:I = 0x3b

.field public static final HEXEXP:I = 0x3c

.field public static final HEXNUM:I = 0x3a

.field public static final IF:I = 0x27

.field public static final IN:I = 0x28

.field public static final IN_COMMENT:I = 0x1

.field public static final IN_LC0:I = 0x2

.field public static final IN_LC1:I = 0x3

.field public static final IN_LC2:I = 0x4

.field public static final IN_LC3:I = 0x5

.field public static final IN_LCN:I = 0x6

.field public static final IN_LS0:I = 0x7

.field public static final IN_LS1:I = 0x8

.field public static final IN_LS2:I = 0x9

.field public static final IN_LS3:I = 0xa

.field public static final IN_LSN:I = 0xb

.field public static final LF:I = 0x44

.field public static final LOCAL:I = 0x29

.field public static final LONGCOMMENT0:I = 0x12

.field public static final LONGCOMMENT1:I = 0x13

.field public static final LONGCOMMENT2:I = 0x14

.field public static final LONGCOMMENT3:I = 0x15

.field public static final LONGCOMMENTN:I = 0x16

.field public static final LONGSTRING0:I = 0x17

.field public static final LONGSTRING1:I = 0x18

.field public static final LONGSTRING2:I = 0x19

.field public static final LONGSTRING3:I = 0x1a

.field public static final LONGSTRINGN:I = 0x1b

.field public static final NAME:I = 0x33

.field public static final NIL:I = 0x2a

.field public static final NOT:I = 0x2b

.field public static final NUMBER:I = 0x34

.field public static final OR:I = 0x2c

.field public static final QUOTED:I = 0x3f

.field public static final REPEAT:I = 0x2e

.field public static final RETURN:I = 0x2d

.field public static final STRING:I = 0x3d

.field public static final THEN:I = 0x2f

.field public static final TRUE:I = 0x30

.field public static final UNICODE:I = 0x42

.field public static final UNTIL:I = 0x31

.field public static final WHILE:I = 0x32

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 96

    .line 142
    const-string v94, "\"==\""

    const-string v95, "\"~=\""

    const-string v1, "<EOF>"

    const-string v2, "\" \""

    const-string v3, "\"\\t\""

    const-string v4, "\"\\n\""

    const-string v5, "\"\\r\""

    const-string v6, "\"\\f\""

    const-string v7, "\"--[[\""

    const-string v8, "\"--[=[\""

    const-string v9, "\"--[==[\""

    const-string v10, "\"--[===[\""

    const-string v11, "<token of kind 10>"

    const-string v12, "\"[[\""

    const-string v13, "\"[=[\""

    const-string v14, "\"[==[\""

    const-string v15, "\"[===[\""

    const-string v16, "<token of kind 15>"

    const-string v17, "\"--\""

    const-string v18, "<COMMENT>"

    const-string v19, "\"]]\""

    const-string v20, "\"]=]\""

    const-string v21, "\"]==]\""

    const-string v22, "\"]===]\""

    const-string v23, "<LONGCOMMENTN>"

    const-string v24, "\"]]\""

    const-string v25, "\"]=]\""

    const-string v26, "\"]==]\""

    const-string v27, "\"]===]\""

    const-string v28, "<LONGSTRINGN>"

    const-string v29, "<token of kind 28>"

    const-string v30, "\"and\""

    const-string v31, "\"break\""

    const-string v32, "\"do\""

    const-string v33, "\"else\""

    const-string v34, "\"elseif\""

    const-string v35, "\"end\""

    const-string v36, "\"false\""

    const-string v37, "\"for\""

    const-string v38, "\"function\""

    const-string v39, "\"goto\""

    const-string v40, "\"if\""

    const-string v41, "\"in\""

    const-string v42, "\"local\""

    const-string v43, "\"nil\""

    const-string v44, "\"not\""

    const-string v45, "\"or\""

    const-string v46, "\"return\""

    const-string v47, "\"repeat\""

    const-string v48, "\"then\""

    const-string v49, "\"true\""

    const-string v50, "\"until\""

    const-string v51, "\"while\""

    const-string v52, "<NAME>"

    const-string v53, "<NUMBER>"

    const-string v54, "<FLOAT>"

    const-string v55, "<FNUM>"

    const-string v56, "<DIGIT>"

    const-string v57, "<EXP>"

    const-string v58, "<HEX>"

    const-string v59, "<HEXNUM>"

    const-string v60, "<HEXDIGIT>"

    const-string v61, "<HEXEXP>"

    const-string v62, "<STRING>"

    const-string v63, "<CHARSTRING>"

    const-string v64, "<QUOTED>"

    const-string v65, "<DECIMAL>"

    const-string v66, "\"::\""

    const-string v67, "<UNICODE>"

    const-string v68, "<CHAR>"

    const-string v69, "<LF>"

    const-string v70, "\"#\""

    const-string v71, "\";\""

    const-string v72, "\"=\""

    const-string v73, "\",\""

    const-string v74, "\".\""

    const-string v75, "\":\""

    const-string v76, "\"(\""

    const-string v77, "\")\""

    const-string v78, "\"[\""

    const-string v79, "\"]\""

    const-string v80, "\"...\""

    const-string v81, "\"{\""

    const-string v82, "\"}\""

    const-string v83, "\"+\""

    const-string v84, "\"-\""

    const-string v85, "\"*\""

    const-string v86, "\"/\""

    const-string v87, "\"^\""

    const-string v88, "\"%\""

    const-string v89, "\"..\""

    const-string v90, "\"<\""

    const-string v91, "\"<=\""

    const-string v92, "\">\""

    const-string v93, "\">=\""

    filled-new-array/range {v1 .. v95}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvm2/parser/LuaParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
