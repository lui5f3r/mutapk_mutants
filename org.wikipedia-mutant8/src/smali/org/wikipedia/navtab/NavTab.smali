.class public abstract enum Lorg/wikipedia/navtab/NavTab;
.super Ljava/lang/Enum;
.source "NavTab.kt"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/navtab/NavTab$EXPLORE;,
        Lorg/wikipedia/navtab/NavTab$READING_LISTS;,
        Lorg/wikipedia/navtab/NavTab$SEARCH;,
        Lorg/wikipedia/navtab/NavTab$EDITS;,
        Lorg/wikipedia/navtab/NavTab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/navtab/NavTab;",
        ">;",
        "Lorg/wikipedia/model/EnumCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/navtab/NavTab;

.field public static final Companion:Lorg/wikipedia/navtab/NavTab$Companion;

.field public static final enum EDITS:Lorg/wikipedia/navtab/NavTab;

.field public static final enum EXPLORE:Lorg/wikipedia/navtab/NavTab;

.field private static final MAP:Lorg/wikipedia/model/EnumCodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/EnumCodeMap<",
            "Lorg/wikipedia/navtab/NavTab;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum READING_LISTS:Lorg/wikipedia/navtab/NavTab;

.field public static final enum SEARCH:Lorg/wikipedia/navtab/NavTab;


# instance fields
.field private final icon:I

.field private final id:I

.field private final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/wikipedia/navtab/NavTab;

    new-instance v1, Lorg/wikipedia/navtab/NavTab$EXPLORE;

    const-string v2, "EXPLORE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/navtab/NavTab$EXPLORE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/wikipedia/navtab/NavTab;->EXPLORE:Lorg/wikipedia/navtab/NavTab;

    aput-object v1, v0, v3

    new-instance v1, Lorg/wikipedia/navtab/NavTab$READING_LISTS;

    const-string v2, "READING_LISTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/navtab/NavTab$READING_LISTS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/wikipedia/navtab/NavTab;->READING_LISTS:Lorg/wikipedia/navtab/NavTab;

    aput-object v1, v0, v3

    new-instance v1, Lorg/wikipedia/navtab/NavTab$SEARCH;

    const-string v2, "SEARCH"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/navtab/NavTab$SEARCH;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/wikipedia/navtab/NavTab;->SEARCH:Lorg/wikipedia/navtab/NavTab;

    aput-object v1, v0, v3

    new-instance v1, Lorg/wikipedia/navtab/NavTab$EDITS;

    const-string v2, "EDITS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lorg/wikipedia/navtab/NavTab$EDITS;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    aput-object v1, v0, v3

    sput-object v0, Lorg/wikipedia/navtab/NavTab;->$VALUES:[Lorg/wikipedia/navtab/NavTab;

    new-instance v0, Lorg/wikipedia/navtab/NavTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/wikipedia/navtab/NavTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    .line 60
    new-instance v0, Lorg/wikipedia/model/EnumCodeMap;

    const-class v1, Lorg/wikipedia/navtab/NavTab;

    invoke-direct {v0, v1}, Lorg/wikipedia/model/EnumCodeMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/wikipedia/navtab/NavTab;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/wikipedia/navtab/NavTab;->text:I

    iput p4, p0, Lorg/wikipedia/navtab/NavTab;->id:I

    iput p5, p0, Lorg/wikipedia/navtab/NavTab;->icon:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p5}, Lorg/wikipedia/navtab/NavTab;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static final synthetic access$getMAP$cp()Lorg/wikipedia/model/EnumCodeMap;
    .locals 1

    .line 14
    sget-object v0, Lorg/wikipedia/navtab/NavTab;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    return-object v0
.end method

.method public static final of(I)Lorg/wikipedia/navtab/NavTab;
    .locals 1

    sget-object v0, Lorg/wikipedia/navtab/NavTab;->Companion:Lorg/wikipedia/navtab/NavTab$Companion;

    invoke-virtual {v0, p0}, Lorg/wikipedia/navtab/NavTab$Companion;->of(I)Lorg/wikipedia/navtab/NavTab;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/navtab/NavTab;
    .locals 1

    const-class v0, Lorg/wikipedia/navtab/NavTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/navtab/NavTab;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/navtab/NavTab;
    .locals 1

    sget-object v0, Lorg/wikipedia/navtab/NavTab;->$VALUES:[Lorg/wikipedia/navtab/NavTab;

    invoke-virtual {v0}, [Lorg/wikipedia/navtab/NavTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/navtab/NavTab;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final icon()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/wikipedia/navtab/NavTab;->icon:I

    return v0
.end method

.method public final id()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/wikipedia/navtab/NavTab;->id:I

    return v0
.end method

.method public abstract newInstance()Landroidx/fragment/app/Fragment;
.end method

.method public final text()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/wikipedia/navtab/NavTab;->text:I

    return v0
.end method
