.class public abstract enum Lorg/wikipedia/page/action/PageActionTab;
.super Ljava/lang/Enum;
.source "PageActionTab.java"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/action/PageActionTab$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/page/action/PageActionTab;",
        ">;",
        "Lorg/wikipedia/model/EnumCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/page/action/PageActionTab;

.field public static final enum ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

.field public static final enum CHOOSE_LANGUAGE:Lorg/wikipedia/page/action/PageActionTab;

.field public static final enum FONT_AND_THEME:Lorg/wikipedia/page/action/PageActionTab;

.field private static final MAP:Lorg/wikipedia/model/EnumCodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/EnumCodeMap<",
            "Lorg/wikipedia/page/action/PageActionTab;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SEARCH:Lorg/wikipedia/page/action/PageActionTab;

.field public static final enum VIEW_TOC:Lorg/wikipedia/page/action/PageActionTab;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 9
    new-instance v0, Lorg/wikipedia/page/action/PageActionTab$1;

    const-string v1, "ADD_TO_READING_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/wikipedia/page/action/PageActionTab$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

    .line 15
    new-instance v0, Lorg/wikipedia/page/action/PageActionTab$2;

    const-string v1, "CHOOSE_LANGUAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/wikipedia/page/action/PageActionTab$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->CHOOSE_LANGUAGE:Lorg/wikipedia/page/action/PageActionTab;

    .line 21
    new-instance v0, Lorg/wikipedia/page/action/PageActionTab$3;

    const-string v1, "SEARCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/wikipedia/page/action/PageActionTab$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->SEARCH:Lorg/wikipedia/page/action/PageActionTab;

    .line 27
    new-instance v0, Lorg/wikipedia/page/action/PageActionTab$4;

    const-string v1, "FONT_AND_THEME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/wikipedia/page/action/PageActionTab$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->FONT_AND_THEME:Lorg/wikipedia/page/action/PageActionTab;

    .line 33
    new-instance v0, Lorg/wikipedia/page/action/PageActionTab$5;

    const-string v1, "VIEW_TOC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/wikipedia/page/action/PageActionTab$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->VIEW_TOC:Lorg/wikipedia/page/action/PageActionTab;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/wikipedia/page/action/PageActionTab;

    .line 8
    sget-object v7, Lorg/wikipedia/page/action/PageActionTab;->ADD_TO_READING_LIST:Lorg/wikipedia/page/action/PageActionTab;

    aput-object v7, v1, v2

    sget-object v2, Lorg/wikipedia/page/action/PageActionTab;->CHOOSE_LANGUAGE:Lorg/wikipedia/page/action/PageActionTab;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/page/action/PageActionTab;->SEARCH:Lorg/wikipedia/page/action/PageActionTab;

    aput-object v2, v1, v4

    sget-object v2, Lorg/wikipedia/page/action/PageActionTab;->FONT_AND_THEME:Lorg/wikipedia/page/action/PageActionTab;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/wikipedia/page/action/PageActionTab;->$VALUES:[Lorg/wikipedia/page/action/PageActionTab;

    .line 40
    new-instance v0, Lorg/wikipedia/model/EnumCodeMap;

    const-class v1, Lorg/wikipedia/page/action/PageActionTab;

    invoke-direct {v0, v1}, Lorg/wikipedia/model/EnumCodeMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/wikipedia/page/action/PageActionTab;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/wikipedia/page/action/PageActionTab$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/page/action/PageActionTab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Lorg/wikipedia/page/action/PageActionTab;
    .locals 1

    .line 44
    sget-object v0, Lorg/wikipedia/page/action/PageActionTab;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0, p0}, Lorg/wikipedia/model/EnumCodeMap;->get(I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/page/action/PageActionTab;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/page/action/PageActionTab;
    .locals 1

    .line 8
    const-class v0, Lorg/wikipedia/page/action/PageActionTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/page/action/PageActionTab;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/page/action/PageActionTab;
    .locals 1

    .line 8
    sget-object v0, Lorg/wikipedia/page/action/PageActionTab;->$VALUES:[Lorg/wikipedia/page/action/PageActionTab;

    invoke-virtual {v0}, [Lorg/wikipedia/page/action/PageActionTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/page/action/PageActionTab;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public abstract select(Lorg/wikipedia/page/action/PageActionTab$Callback;)V
.end method
