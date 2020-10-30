.class public Lorg/wikipedia/language/AppLanguageLookUpTable;
.super Ljava/lang/Object;
.source "AppLanguageLookUpTable.java"


# static fields
.field public static final BELARUSIAN_LEGACY_LANGUAGE_CODE:Ljava/lang/String; = "be-x-old"

.field public static final BELARUSIAN_TARASK_LANGUAGE_CODE:Ljava/lang/String; = "be-tarask"

.field public static final CHINESE_CN_LANGUAGE_CODE:Ljava/lang/String; = "zh-cn"

.field public static final CHINESE_HK_LANGUAGE_CODE:Ljava/lang/String; = "zh-hk"

.field public static final CHINESE_LANGUAGE_CODE:Ljava/lang/String; = "zh"

.field public static final CHINESE_MO_LANGUAGE_CODE:Ljava/lang/String; = "zh-mo"

.field public static final CHINESE_SG_LANGUAGE_CODE:Ljava/lang/String; = "zh-sg"

.field public static final CHINESE_TW_LANGUAGE_CODE:Ljava/lang/String; = "zh-tw"

.field public static final CHINESE_YUE_LANGUAGE_CODE:Ljava/lang/String; = "zh-yue"

.field public static final FALLBACK_LANGUAGE_CODE:Ljava/lang/String; = "en"

.field public static final NORWEGIAN_BOKMAL_LANGUAGE_CODE:Ljava/lang/String; = "nb"

.field public static final NORWEGIAN_LEGACY_LANGUAGE_CODE:Ljava/lang/String; = "no"

.field public static final SIMPLIFIED_CHINESE_LANGUAGE_CODE:Ljava/lang/String; = "zh-hans"

.field public static final TEST_LANGUAGE_CODE:Ljava/lang/String; = "test"

.field public static final TRADITIONAL_CHINESE_LANGUAGE_CODE:Ljava/lang/String; = "zh-hant"


# instance fields
.field private canonicalNamesRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private codesRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private localizedNamesRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->codesRef:Ljava/lang/ref/SoftReference;

    .line 44
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->canonicalNamesRef:Ljava/lang/ref/SoftReference;

    .line 47
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->localizedNamesRef:Ljava/lang/ref/SoftReference;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private defaultIndex(Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)TT;"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->inBounds(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private getCanonicalNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->canonicalNamesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const v0, 0x7f030001

    .line 96
    invoke-direct {p0, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getStringList(I)Ljava/util/List;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->canonicalNamesRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object v0
.end method

.method private getLocalizedNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->localizedNamesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const v0, 0x7f030003

    .line 105
    invoke-direct {p0, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getStringList(I)Ljava/util/List;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->localizedNamesRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object v0
.end method

.method private getStringList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private inBounds(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)Z"
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private indexOfCode(Ljava/lang/String;)I
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 69
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCanonicalNames()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->indexOfCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->defaultIndex(Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "no"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCanonicalNames()Ljava/util/List;

    move-result-object p1

    const-string v0, "nb"

    invoke-direct {p0, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->indexOfCode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->defaultIndex(Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->codesRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const v0, 0x7f030002

    .line 61
    invoke-direct {p0, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getStringList(I)Ljava/util/List;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->codesRef:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object v0
.end method

.method public getLocalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 82
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getLocalizedNames()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->indexOfCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->defaultIndex(Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "no"

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getLocalizedNames()Ljava/util/List;

    move-result-object p1

    const-string v0, "nb"

    invoke-direct {p0, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->indexOfCode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->defaultIndex(Ljava/util/List;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageLookUpTable;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSupportedCode(Ljava/lang/String;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
