.class public Lorg/wikipedia/language/AppLanguageState;
.super Ljava/lang/Object;
.source "AppLanguageState.java"


# instance fields
.field private final appLanguageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

.field private final mruLanguageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/wikipedia/language/AppLanguageLookUpTable;

    invoke-direct {v0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getMruLanguageCodeCsv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->csvToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAppLanguageCodeCsv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/StringUtil;->csvToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    .line 39
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageState;->initAppLanguageCodes()V

    return-void
.end method

.method private initAppLanguageCodes()V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getRemainingAvailableLanguageCodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/language/AppLanguageState;->setAppLanguageCodes(Ljava/util/List;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getSystemLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/language/AppLanguageState;->addAppLanguageCode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addAppLanguageCode(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->listToCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAppLanguageCodeCsv(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    return-void
.end method

.method public addMruLanguageCode(Ljava/lang/String;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->listToCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setMruLanguageCodeCsv(Ljava/lang/String;)V

    return-void
.end method

.method public getAppLanguageCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppLanguageCode()Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppLanguageCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lorg/wikipedia/language/AppLanguageState;->initAppLanguageCodes()V

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    return-object v0
.end method

.method public getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppLanguageLocalizedNames()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ", "

    .line 148
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppMruLanguageCodes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    invoke-virtual {v1}, Lorg/wikipedia/language/AppLanguageLookUpTable;->getCodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    iget-object v1, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "test"

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getMruLanguageCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->mruLanguageCodes:Ljava/util/List;

    return-object v0
.end method

.method public getRemainingAvailableLanguageCodes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static {}, Lorg/wikipedia/language/LanguageUtil;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    iget-object v3, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    .line 96
    invoke-virtual {v3, v2}, Lorg/wikipedia/language/AppLanguageLookUpTable;->isSupportedCode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSystemLanguageCode()Ljava/lang/String;
    .locals 2

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/language/LanguageUtil;->localeToWikiLanguageCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageLookUpTable:Lorg/wikipedia/language/AppLanguageLookUpTable;

    invoke-virtual {v1, v0}, Lorg/wikipedia/language/AppLanguageLookUpTable;->isSupportedCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    return-object v0
.end method

.method public removeAppLanguageCodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 72
    iget-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->listToCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAppLanguageCodeCsv(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppLanguageCodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/language/AppLanguageState;->appLanguageCodes:Ljava/util/List;

    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->listToCsv(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/settings/Prefs;->setAppLanguageCodeCsv(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    return-void
.end method
