.class final enum Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;
.super Ljava/lang/Enum;
.source "InitialOnboardingFragment.java"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/onboarding/InitialOnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OnboardingPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;",
        ">;",
        "Lorg/wikipedia/model/EnumCode;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

.field private static MAP:Lorg/wikipedia/model/EnumCodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/wikipedia/model/EnumCodeMap<",
            "Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PAGE_EXPLORE:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

.field public static final enum PAGE_READING_LISTS:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

.field public static final enum PAGE_USAGE_DATA:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

.field public static final enum PAGE_WELCOME:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;


# instance fields
.field private final layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 148
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    const-string v1, "PAGE_WELCOME"

    const/4 v2, 0x0

    const v3, 0x7f0c0077

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_WELCOME:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    .line 149
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    const-string v1, "PAGE_EXPLORE"

    const/4 v3, 0x1

    const v4, 0x7f0c0074

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_EXPLORE:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    .line 150
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    const-string v1, "PAGE_READING_LISTS"

    const/4 v4, 0x2

    const v5, 0x7f0c0076

    invoke-direct {v0, v1, v4, v5}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_READING_LISTS:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    .line 151
    new-instance v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    const-string v1, "PAGE_USAGE_DATA"

    const/4 v5, 0x3

    const v6, 0x7f0c0075

    invoke-direct {v0, v1, v5, v6}, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_USAGE_DATA:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    .line 147
    sget-object v6, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_WELCOME:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    aput-object v6, v1, v2

    sget-object v2, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_EXPLORE:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->PAGE_READING_LISTS:Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->$VALUES:[Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    .line 153
    new-instance v0, Lorg/wikipedia/model/EnumCodeMap;

    const-class v1, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    invoke-direct {v0, v1}, Lorg/wikipedia/model/EnumCodeMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->layout:I

    return-void
.end method

.method public static of(I)Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;
    .locals 1

    .line 165
    sget-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0, p0}, Lorg/wikipedia/model/EnumCodeMap;->get(I)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    return-object p0
.end method

.method public static size()I
    .locals 1

    .line 169
    sget-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->MAP:Lorg/wikipedia/model/EnumCodeMap;

    invoke-virtual {v0}, Lorg/wikipedia/model/EnumCodeMap;->size()I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;
    .locals 1

    .line 147
    const-class v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;
    .locals 1

    .line 147
    sget-object v0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->$VALUES:[Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    invoke-virtual {v0}, [Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 174
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method getLayout()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/wikipedia/onboarding/InitialOnboardingFragment$OnboardingPage;->layout:I

    return v0
.end method
