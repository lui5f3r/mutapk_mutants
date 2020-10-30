.class public final enum Lorg/wikipedia/language/LanguageSettingsInvokeSource;
.super Ljava/lang/Enum;
.source "LanguageSettingsInvokeSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/wikipedia/language/LanguageSettingsInvokeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum ANNOUNCEMENT:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum CHINESE_VARIANT_REMOVAL:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum DESCRIPTION_EDITING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum ONBOARDING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum SEARCH:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum SETTINGS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

.field public static final enum SUGGESTED_EDITS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "DESCRIPTION_EDITING"

    const/4 v2, 0x0

    const-string v3, "description_editing"

    invoke-direct {v0, v1, v2, v3}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->DESCRIPTION_EDITING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 5
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "SEARCH"

    const/4 v3, 0x1

    const-string v4, "search"

    invoke-direct {v0, v1, v3, v4}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SEARCH:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 6
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "SETTINGS"

    const/4 v4, 0x2

    const-string v5, "settings"

    invoke-direct {v0, v1, v4, v5}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SETTINGS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 7
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "ONBOARDING"

    const/4 v5, 0x3

    const-string v6, "onboarding"

    invoke-direct {v0, v1, v5, v6}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ONBOARDING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 8
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "CHINESE_VARIANT_REMOVAL"

    const/4 v6, 0x4

    const-string v7, "chinese_variant_removal"

    invoke-direct {v0, v1, v6, v7}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->CHINESE_VARIANT_REMOVAL:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 9
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "ANNOUNCEMENT"

    const/4 v7, 0x5

    const-string v8, "announcement"

    invoke-direct {v0, v1, v7, v8}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ANNOUNCEMENT:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 10
    new-instance v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const-string v1, "SUGGESTED_EDITS"

    const/4 v8, 0x6

    const-string v9, "suggested_edits"

    invoke-direct {v0, v1, v8, v9}, Lorg/wikipedia/language/LanguageSettingsInvokeSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SUGGESTED_EDITS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    .line 3
    sget-object v9, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->DESCRIPTION_EDITING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v9, v1, v2

    sget-object v2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SEARCH:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v2, v1, v3

    sget-object v2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->SETTINGS:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v2, v1, v4

    sget-object v2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ONBOARDING:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v2, v1, v5

    sget-object v2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->CHINESE_VARIANT_REMOVAL:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v2, v1, v6

    sget-object v2, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->ANNOUNCEMENT:Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->$VALUES:[Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/language/LanguageSettingsInvokeSource;
    .locals 1

    .line 3
    const-class v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    return-object p0
.end method

.method public static values()[Lorg/wikipedia/language/LanguageSettingsInvokeSource;
    .locals 1

    .line 3
    sget-object v0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->$VALUES:[Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    invoke-virtual {v0}, [Lorg/wikipedia/language/LanguageSettingsInvokeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wikipedia/language/LanguageSettingsInvokeSource;

    return-object v0
.end method


# virtual methods
.method public text()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/wikipedia/language/LanguageSettingsInvokeSource;->text:Ljava/lang/String;

    return-object v0
.end method
