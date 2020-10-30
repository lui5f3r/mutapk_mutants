.class final enum Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;
.super Ljava/lang/Enum;
.source "DescriptionEditTutorialPage.java"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;",
        ">;",
        "Lorg/wikipedia/model/EnumCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

.field private static MAP:Lorg/wikipedia/model/EnumCodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/EnumCodeMap<",
            "Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PAGE_ONE:Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

.field public static final enum PAGE_TWO:Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;


# instance fields
.field private final layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    const-string v1, "PAGE_ONE"

    const/4 v2, 0x0

    const v3, 0x7f0c0072

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->PAGE_ONE:Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    .line 12
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    const-string v1, "PAGE_TWO"

    const/4 v3, 0x1

    const v4, 0x7f0c0073

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->PAGE_TWO:Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    .line 10
    sget-object v4, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->PAGE_ONE:Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->$VALUES:[Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    .line 14
    new-instance v0, Lorg/wikipedia/model/EnumCodeMap;

    const-class v1, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    invoke-direct {v0, v1}, Lorg/wikipedia/model/EnumCodeMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->layout:I

    return-void
.end method

.method public static of(I)Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;
    .locals 1

    .line 24
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0, p0}, Lorg/wikipedia/model/EnumCodeMap;->get(I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    return-object p0
.end method

.method public static size()I
    .locals 1

    .line 28
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0}, Lorg/wikipedia/model/EnumCodeMap;->size()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;
    .locals 1

    .line 10
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;
    .locals 1

    .line 10
    sget-object v0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->$VALUES:[Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    invoke-virtual {v0}, [Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method getLayout()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/wikipedia/descriptions/DescriptionEditTutorialPage;->layout:I

    return v0
.end method
