.class public final Lorg/wikipedia/settings/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addReadingListPagesDeletedIds(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 596
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListPagesDeletedIds()Ljava/util/Set;

    move-result-object v0

    .line 597
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 598
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    return-void
.end method

.method public static addReadingListsDeletedIds(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListsDeletedIds()Ljava/util/Set;

    move-result-object v0

    .line 572
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 573
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    return-void
.end method

.method public static announcementsVersionCode()I
    .locals 2

    const v0, 0x7f10023e

    const/4 v1, 0x0

    .line 232
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static askedForPermissionOnce(Ljava/lang/String;)Z
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100277

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static clearTabs()V
    .locals 1

    const v0, 0x7f1002af

    .line 165
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    return-void
.end method

.method public static crashedBeforeActivityCreated(Z)V
    .locals 1

    const v0, 0x7f100244

    .line 107
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static crashedBeforeActivityCreated()Z
    .locals 2

    const v0, 0x7f100244

    const/4 v1, 0x1

    .line 103
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static getAnnouncementShownDialogs()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 753
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasAnnouncementShownDialogs()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 757
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const v2, 0x7f10023d

    const/4 v3, 0x0

    .line 758
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {v1, v2}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getAnnouncementsCountryOverride()Ljava/lang/String;
    .locals 2

    const v0, 0x7f10023b

    const/4 v1, 0x0

    .line 224
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppChannel()Ljava/lang/String;
    .locals 2

    const v0, 0x7f10023f

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppChannelKey()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f10023f

    .line 61
    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInstallId()Ljava/lang/String;
    .locals 2

    const v0, 0x7f10027a

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppLanguageCodeCsv()Ljava/lang/String;
    .locals 2

    const v0, 0x7f10025c

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCookies()Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;
    .locals 3

    const v0, 0x7f100243

    .line 95
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 98
    :cond_0
    const-class v1, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    .line 99
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;

    return-object v0
.end method

.method public static getCurrentThemeId()I
    .locals 2

    .line 75
    invoke-static {}, Lorg/wikipedia/theme/Theme;->getFallback()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result v0

    const v1, 0x7f100242

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getEditingTextSizeExtra()I
    .locals 2

    const v0, 0x7f10024d

    const/4 v1, 0x0

    .line 622
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getExploreFeedVisitCount()I
    .locals 2

    const v0, 0x7f10024f

    const/4 v1, 0x0

    .line 925
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getFeedCardsEnabled()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const v0, 0x7f100250

    .line 485
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/Prefs$1;

    invoke-direct {v1}, Lorg/wikipedia/settings/Prefs$1;-><init>()V

    const/4 v2, 0x0

    .line 490
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFeedCardsLangDisabled()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const v0, 0x7f100251

    .line 527
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 531
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/Prefs$4;

    invoke-direct {v1}, Lorg/wikipedia/settings/Prefs$4;-><init>()V

    const/4 v2, 0x0

    .line 532
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFeedCardsLangSupported()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const v0, 0x7f100252

    .line 513
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 517
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/Prefs$3;

    invoke-direct {v1}, Lorg/wikipedia/settings/Prefs$3;-><init>()V

    const/4 v2, 0x0

    .line 518
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFeedCardsOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, 0x7f100253

    .line 499
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/Prefs$2;

    invoke-direct {v1}, Lorg/wikipedia/settings/Prefs$2;-><init>()V

    const/4 v2, 0x0

    .line 504
    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v1, v0}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getHiddenCards()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 170
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasHiddenCards()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const v2, 0x7f100255

    const/4 v3, 0x0

    .line 175
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v1, v2}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getInstallReferrerAttempts()I
    .locals 2

    const v0, 0x7f10025a

    const/4 v1, 0x0

    .line 821
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getLastDescriptionEditTime()J
    .locals 3

    const v0, 0x7f10025e

    const-wide/16 v1, 0x0

    .line 357
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRunTime(Ljava/lang/String;)J
    .locals 2

    .line 269
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->getLastRunTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLastRunTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const p0, 0x7f10025f

    .line 305
    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getKey(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastSuggestedEditsRewardInterstitialEditQualityShown()J
    .locals 3

    const v0, 0x7f1002a9

    const-wide/16 v1, 0x0

    .line 873
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastSuggestedEditsRewardInterstitialPageviewsShown()J
    .locals 3

    const v0, 0x7f1002aa

    const-wide/16 v1, 0x0

    .line 881
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocallyKnownNotifications()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f100260

    .line 647
    invoke-static {v1}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 651
    :cond_0
    new-instance v2, Lorg/wikipedia/settings/Prefs$7;

    invoke-direct {v2}, Lorg/wikipedia/settings/Prefs$7;-><init>()V

    const/4 v3, 0x0

    .line 652
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v2, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 654
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static getMediaWikiBaseUriSupportsLangCode()Z
    .locals 2

    const v0, 0x7f100266

    const/4 v1, 0x1

    .line 265
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static getMediaWikiBaseUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x7f100265

    const-string v1, ""

    .line 261
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMruLanguageCodeCsv()Ljava/lang/String;
    .locals 2

    const v0, 0x7f10025d

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverflowReadingListsOptionClickCount()I
    .locals 2

    const v0, 0x7f100275

    const/4 v1, 0x0

    .line 680
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getOverrideSuggestedEditCount()I
    .locals 2

    const v0, 0x7f10029e

    const/4 v1, 0x0

    .line 813
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getOverrideSuggestedRevertCount()I
    .locals 2

    const v0, 0x7f10029f

    const/4 v1, 0x0

    .line 817
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getPreviousThemeId()I
    .locals 2

    .line 83
    invoke-static {}, Lorg/wikipedia/theme/Theme;->getFallback()Lorg/wikipedia/theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getMarshallingId()I

    move-result v0

    const v1, 0x7f100279

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getReadingListPageSortMode(I)I
    .locals 1

    const v0, 0x7f10027c

    .line 333
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getReadingListPagesDeletedIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x7f100281

    .line 582
    invoke-static {v1}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 586
    :cond_0
    new-instance v1, Lorg/wikipedia/settings/Prefs$6;

    invoke-direct {v1}, Lorg/wikipedia/settings/Prefs$6;-><init>()V

    const v2, 0x7f10027d

    const/4 v3, 0x0

    .line 587
    invoke-static {v2, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {v1, v2}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static getReadingListSortMode(I)I
    .locals 1

    const v0, 0x7f10027e

    .line 317
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getReadingListsDeletedIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const v1, 0x7f100281

    .line 557
    invoke-static {v1}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 561
    :cond_0
    new-instance v2, Lorg/wikipedia/settings/Prefs$5;

    invoke-direct {v2}, Lorg/wikipedia/settings/Prefs$5;-><init>()V

    const/4 v3, 0x0

    .line 562
    invoke-static {v1, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v2, v1}, Lorg/wikipedia/json/GsonUnmarshaller;->unmarshal(Lcom/google/gson/reflect/TypeToken;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 564
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static getReadingListsLastSyncTime()Ljava/lang/String;
    .locals 2

    const v0, 0x7f100283

    const-string v1, ""

    .line 548
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadingListsPageSaveCount()I
    .locals 2

    const v0, 0x7f10028b

    const/4 v1, 0x0

    .line 325
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getRemoteConfigJson()Ljava/lang/String;
    .locals 2

    const v0, 0x7f100286

    const-string v1, "{}"

    .line 142
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteNotificationsSeenTime()Ljava/lang/String;
    .locals 2

    const v0, 0x7f100288

    const-string v1, ""

    .line 664
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRestbaseUriFormat()Ljava/lang/String;
    .locals 2

    const v0, 0x7f100289

    const/4 v1, 0x0

    .line 255
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1$s://%2$s/api/rest_v1/"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getRetrofitLogLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 5

    const v0, 0x7f10028a

    const/4 v1, 0x0

    .line 236
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isDevRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, -0x1

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "HEADERS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "BASIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "BODY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 249
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0

    .line 246
    :cond_3
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0

    .line 244
    :cond_4
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0

    .line 242
    :cond_5
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1f31a2 -> :sswitch_3
        0x24a738 -> :sswitch_2
        0x3c0dc0e -> :sswitch_1
        0x5a32fb66 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSelectedLanguagePositionInSearch()I
    .locals 2

    const v0, 0x7f10028c

    const/4 v1, 0x0

    .line 929
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSessionData()Lorg/wikipedia/analytics/SessionData;
    .locals 2

    .line 193
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasSessionData()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10028d

    const/4 v1, 0x0

    .line 194
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/json/SessionUnmarshaller;->unmarshal(Ljava/lang/String;)Lorg/wikipedia/analytics/SessionData;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/wikipedia/analytics/SessionData;

    invoke-direct {v0}, Lorg/wikipedia/analytics/SessionData;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static getSessionTimeout()I
    .locals 2

    const v0, 0x7f10028e

    const/16 v1, 0x1e

    .line 204
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsCountForSurvey()I
    .locals 2

    const v0, 0x7f10029b

    const/4 v1, 0x0

    .line 712
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsPauseDate()Ljava/util/Date;
    .locals 3

    .line 785
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const v1, 0x7f1002a0

    .line 787
    :try_start_0
    invoke-static {v1}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 788
    invoke-static {v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->dbDateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getSuggestedEditsPauseReverts()I
    .locals 2

    const v0, 0x7f1002a1

    const/4 v1, 0x0

    .line 801
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsRewardInterstitialContributionOnCount()I
    .locals 2

    const v0, 0x7f1002a4

    const/16 v1, 0x32

    .line 893
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsRewardInterstitialContributionOnInitialCount()I
    .locals 2

    const v0, 0x7f1002a5

    const/4 v1, 0x5

    .line 889
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsRewardInterstitialEditQualityOnDay()I
    .locals 2

    const v0, 0x7f1002a6

    const/16 v1, 0xe

    .line 901
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsRewardInterstitialEditStreakOnCount()I
    .locals 2

    const v0, 0x7f1002a7

    const/4 v1, 0x5

    .line 897
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getSuggestedEditsRewardInterstitialPageviewsOnDay()I
    .locals 2

    const v0, 0x7f1002ab

    const/16 v1, 0x1e

    .line 905
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->hasTabs()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1002af

    const/4 v1, 0x0

    .line 156
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/json/TabUnmarshaller;->unmarshal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getTemporaryWikitext()Ljava/lang/String;
    .locals 2

    const v0, 0x7f1002b0

    const-string v1, ""

    .line 857
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextSizeMultiplier()I
    .locals 2

    const v0, 0x7f1002b1

    const/4 v1, 0x0

    .line 208
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static getTotalAnonDescriptionsEdited()I
    .locals 2

    const v0, 0x7f1002b2

    const/4 v1, 0x0

    .line 361
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    move-result v0

    return v0
.end method

.method public static hasAnnouncementShownDialogs()Z
    .locals 1

    const v0, 0x7f10023d

    .line 769
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static hasHiddenCards()Z
    .locals 1

    const v0, 0x7f100255

    .line 184
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static hasSessionData()Z
    .locals 1

    const v0, 0x7f10028d

    .line 199
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static hasTabs()Z
    .locals 1

    const v0, 0x7f1002af

    .line 161
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(I)Z

    move-result v0

    return v0
.end method

.method public static hasVisitedArticlePage()Z
    .locals 2

    const v0, 0x7f1002b3

    const/4 v1, 0x0

    .line 744
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static ignoreDateForAnnouncements()Z
    .locals 2

    const v0, 0x7f10023c

    const/4 v1, 0x0

    .line 228
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static incrementExploreFeedVisitCount()V
    .locals 2

    .line 921
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getExploreFeedVisitCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f10024f

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static incrementTotalAnonDescriptionsEdited()V
    .locals 2

    .line 365
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTotalAnonDescriptionsEdited()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7f1002b2

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static isCollapseTablesEnabled()Z
    .locals 2

    const v0, 0x7f100241

    const/4 v1, 0x1

    .line 313
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isCrashReportAutoUploadEnabled()Z
    .locals 2

    const v0, 0x7f100240

    const/4 v1, 0x1

    .line 111
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isDescriptionEditTutorialEnabled()Z
    .locals 2

    const v0, 0x7f100249

    const/4 v1, 0x1

    .line 345
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isDownloadOnlyOverWiFiEnabled()Z
    .locals 2

    const v0, 0x7f10024b

    const/4 v1, 0x0

    .line 297
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isDownloadingReadingListArticlesEnabled()Z
    .locals 2

    const v0, 0x7f10024c

    const/4 v1, 0x1

    .line 301
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isEventLoggingEnabled()Z
    .locals 2

    const v0, 0x7f10024e

    const/4 v1, 0x1

    .line 216
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isImageDownloadEnabled()Z
    .locals 2

    const v0, 0x7f100293

    const/4 v1, 0x1

    .line 293
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isInitialOnboardingEnabled()Z
    .locals 2

    const v0, 0x7f100259

    const/4 v1, 0x1

    .line 409
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isLinkPreviewEnabled()Z
    .locals 2

    const v0, 0x7f100294

    const/4 v1, 0x1

    .line 309
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isMemoryLeakTestEnabled()Z
    .locals 2

    const v0, 0x7f100267

    const/4 v1, 0x0

    .line 341
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isMultilingualSearchTutorialEnabled()Z
    .locals 2

    const v0, 0x7f10026a

    const/4 v1, 0x1

    .line 630
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListLoginReminderEnabled()Z
    .locals 2

    const v0, 0x7f10027b

    const/4 v1, 0x1

    .line 385
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListSyncEnabled()Z
    .locals 2

    const v0, 0x7f1002ae

    const/4 v1, 0x0

    .line 369
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListSyncReminderEnabled()Z
    .locals 2

    const v0, 0x7f10027f

    const/4 v1, 0x1

    .line 377
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListTutorialEnabled()Z
    .locals 2

    const v0, 0x7f100280

    const/4 v1, 0x1

    .line 285
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListsFirstTimeSync()Z
    .locals 2

    const v0, 0x7f100282

    const/4 v1, 0x1

    .line 614
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListsRemoteDeletePending()Z
    .locals 2

    const v0, 0x7f100284

    const/4 v1, 0x0

    .line 393
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isReadingListsRemoteSetupPending()Z
    .locals 2

    const v0, 0x7f100285

    const/4 v1, 0x0

    .line 401
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isShowDeveloperSettingsEnabled()Z
    .locals 2

    .line 115
    invoke-static {}, Lorg/wikipedia/util/ReleaseUtil;->isDevRelease()Z

    move-result v0

    const v1, 0x7f100291

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isSuggestedEditsHighestPriorityEnabled()Z
    .locals 2

    const v0, 0x7f10029c

    const/4 v1, 0x0

    .line 913
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isSuggestedEditsReactivationPassStageOne()Z
    .locals 2

    const v0, 0x7f1002a2

    const/4 v1, 0x1

    .line 845
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isSuggestedEditsReactivationTestEnabled()Z
    .locals 2

    const v0, 0x7f1002a3

    const/4 v1, 0x0

    .line 861
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isSuggestedEditsRewardInterstitialEnabled()Z
    .locals 2

    const v0, 0x7f1002a8

    const/4 v1, 0x0

    .line 865
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static isSuggestedEditsRewardInterstitialQAOverride()Z
    .locals 2

    const v0, 0x7f1002ac

    const/4 v1, 0x0

    .line 909
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationLoginFailEnabled()Z
    .locals 2

    const v0, 0x7f10026b

    const/4 v1, 0x1

    .line 469
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationMentionEnabled()Z
    .locals 2

    const v0, 0x7f10026c

    const/4 v1, 0x1

    .line 473
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationMilestoneEnabled()Z
    .locals 2

    const v0, 0x7f10026d

    const/4 v1, 0x1

    .line 453
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationPollEnabled()Z
    .locals 2

    const v0, 0x7f10026e

    const/4 v1, 0x1

    .line 433
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationPollReminderEnabled()Z
    .locals 2

    const v0, 0x7f10026f

    const/4 v1, 0x1

    .line 441
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationRevertEnabled()Z
    .locals 2

    const v0, 0x7f100270

    const/4 v1, 0x1

    .line 461
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationThanksEnabled()Z
    .locals 2

    const v0, 0x7f100273

    const/4 v1, 0x1

    .line 457
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationUserTalkEnabled()Z
    .locals 2

    const v0, 0x7f100274

    const/4 v1, 0x1

    .line 465
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static notificationWelcomeEnabled()Z
    .locals 2

    const v0, 0x7f100272

    const/4 v1, 0x1

    .line 449
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static pageLastShown()J
    .locals 3

    const v0, 0x7f100276

    const-wide/16 v1, 0x0

    .line 277
    invoke-static {v0, v1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pageLastShown(J)V
    .locals 1

    const v0, 0x7f100276

    .line 281
    invoke-static {v0, p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(IJ)V

    return-void
.end method

.method public static preferOfflineContent()Z
    .locals 2

    const v0, 0x7f100278

    const/4 v1, 0x0

    .line 481
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static resetAnnouncementShownDialogs()V
    .locals 1

    const v0, 0x7f10023d

    .line 773
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    return-void
.end method

.method public static resetFeedCustomizations()V
    .locals 1

    const v0, 0x7f100255

    .line 541
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    const v0, 0x7f100250

    .line 542
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    const v0, 0x7f100253

    .line 543
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    const v0, 0x7f100251

    .line 544
    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->remove(I)V

    return-void
.end method

.method public static setAnnouncementShownDialogs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 763
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementShownDialogs()Ljava/util/Set;

    move-result-object v0

    .line 764
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 765
    invoke-static {v0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f10023d

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f10023f

    .line 56
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setAppInstallId(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f10027a

    .line 71
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setAppLanguageCodeCsv(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f10025c

    .line 137
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setAskedForPermissionOnce(Ljava/lang/String;)V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100277

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCookies(Lorg/wikipedia/dataclient/SharedPreferenceCookieManager;)V
    .locals 1

    .line 91
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100243

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setCurrentThemeId(I)V
    .locals 1

    const v0, 0x7f100242

    .line 79
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setDescriptionEditTutorialEnabled(Z)V
    .locals 1

    const v0, 0x7f100249

    .line 349
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setDimDarkModeImages(Z)V
    .locals 1

    const v0, 0x7f10024a

    .line 429
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setEditingTextSizeExtra(I)V
    .locals 1

    const v0, 0x7f10024d

    .line 626
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setEventLoggingEnabled(Z)V
    .locals 1

    const v0, 0x7f10024e

    .line 220
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setFeedCardsEnabled(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 495
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100250

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setFeedCardsLangDisabled(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 537
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100251

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setFeedCardsLangSupported(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 523
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100252

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setFeedCardsOrder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 509
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100253

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setHasVisitedArticlePage(Z)V
    .locals 1

    const v0, 0x7f1002b3

    .line 748
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setHiddenCards(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100255

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setInitialOnboardingEnabled(Z)V
    .locals 1

    const v0, 0x7f100259

    .line 413
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setInstallReferrerAttempts(I)V
    .locals 1

    const v0, 0x7f10025a

    .line 825
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setLastDescriptionEditTime(J)V
    .locals 1

    const v0, 0x7f10025e

    .line 353
    invoke-static {v0, p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(IJ)V

    return-void
.end method

.method public static setLastRunTime(Ljava/lang/String;J)V
    .locals 0

    .line 273
    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->getLastRunTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setLastSuggestedEditsRewardInterstitialEditQualityShown(J)V
    .locals 1

    const v0, 0x7f1002a9

    .line 877
    invoke-static {v0, p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(IJ)V

    return-void
.end method

.method public static setLastSuggestedEditsRewardInterstitialPageviewsShown(J)V
    .locals 1

    const v0, 0x7f1002aa

    .line 885
    invoke-static {v0, p0, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(IJ)V

    return-void
.end method

.method public static setLocallyKnownNotifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 660
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100260

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setLoggedOutInBackground(Z)V
    .locals 1

    const v0, 0x7f100261

    .line 700
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setMatchSystemTheme(Z)V
    .locals 1

    const v0, 0x7f100264

    .line 781
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setMruLanguageCodeCsv(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f10025d

    .line 128
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setMultilingualSearchTutorialEnabled(Z)V
    .locals 1

    const v0, 0x7f10026a

    .line 634
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setNotificationPollEnabled(Z)V
    .locals 1

    const v0, 0x7f10026e

    .line 437
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setNotificationPollReminderEnabled(Z)V
    .locals 1

    const v0, 0x7f10026f

    .line 445
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setOverflowReadingListsOptionClickCount(I)V
    .locals 1

    const v0, 0x7f100275

    .line 684
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setPreviousThemeId(I)V
    .locals 1

    const v0, 0x7f100279

    .line 87
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setReadingListLoginReminderEnabled(Z)V
    .locals 1

    const v0, 0x7f10027b

    .line 389
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListPageSortMode(I)V
    .locals 1

    const v0, 0x7f10027c

    .line 337
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setReadingListPagesDeletedIds(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 602
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f10027d

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setReadingListSortMode(I)V
    .locals 1

    const v0, 0x7f10027e

    .line 321
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setReadingListSyncEnabled(Z)V
    .locals 1

    const v0, 0x7f1002ae

    .line 373
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListSyncReminderEnabled(Z)V
    .locals 1

    const v0, 0x7f10027f

    .line 381
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListTutorialEnabled(Z)V
    .locals 1

    const v0, 0x7f100280

    .line 289
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListsDeletedIds(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 577
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f100281

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setReadingListsFirstTimeSync(Z)V
    .locals 1

    const v0, 0x7f100282

    .line 618
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListsLastSyncTime(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f100283

    .line 552
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setReadingListsPageSaveCount(I)V
    .locals 1

    const v0, 0x7f10028b

    .line 329
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setReadingListsRemoteDeletePending(Z)V
    .locals 1

    const v0, 0x7f100284

    .line 397
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setReadingListsRemoteSetupPending(Z)V
    .locals 1

    const v0, 0x7f100285

    .line 405
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setRemoteConfigJson(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f100286

    .line 146
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setRemoteNotificationsSeenTime(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f100288

    .line 668
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setSelectedLanguagePositionInSearch(I)V
    .locals 1

    const v0, 0x7f10028c

    .line 933
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setSessionData(Lorg/wikipedia/analytics/SessionData;)V
    .locals 1

    .line 188
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f10028d

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setShouldShowImageZoomTooltip(Z)V
    .locals 1

    const v0, 0x7f100258

    .line 841
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setShouldShowSuggestedEditsSurvey(Z)V
    .locals 1

    const v0, 0x7f100299

    .line 732
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setShouldShowSuggestedEditsTooltip(Z)V
    .locals 1

    const v0, 0x7f10029a

    .line 740
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setShowDeveloperSettingsEnabled(Z)V
    .locals 1

    const v0, 0x7f100291

    .line 119
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setShowImageTagsOnboarding(Z)V
    .locals 1

    const v0, 0x7f100257

    .line 833
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setShowSearchTabTooltip(Z)V
    .locals 1

    const v0, 0x7f100297

    .line 949
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setSuggestedEditsCountForSurvey(I)V
    .locals 1

    const v0, 0x7f10029b

    .line 716
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setSuggestedEditsHighestPriorityEnabled(Z)V
    .locals 1

    const v0, 0x7f10029c

    .line 917
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setSuggestedEditsPauseDate(Ljava/util/Date;)V
    .locals 1

    .line 797
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->dbDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f1002a0

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setSuggestedEditsPauseReverts(I)V
    .locals 1

    const v0, 0x7f1002a1

    .line 805
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static setSuggestedEditsReactivationPassStageOne(Z)V
    .locals 1

    const v0, 0x7f1002a2

    .line 849
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setSuggestedEditsRewardInterstitialEnabled(Z)V
    .locals 1

    const v0, 0x7f1002a8

    .line 869
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setSuggestedEditsSurveyClicked(Z)V
    .locals 1

    const v0, 0x7f1002ad

    .line 724
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static setTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/tabs/Tab;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lorg/wikipedia/json/GsonMarshaller;->marshal(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f1002af

    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static setTextSizeMultiplier(I)V
    .locals 1

    const v0, 0x7f1002b1

    .line 212
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(II)V

    return-void
.end method

.method public static shouldDimDarkModeImages()Z
    .locals 2

    const v0, 0x7f10024a

    const/4 v1, 0x1

    .line 425
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldMatchSystemTheme()Z
    .locals 2

    const v0, 0x7f100264

    const/4 v1, 0x1

    .line 777
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldOverrideSuggestedEditCounts()Z
    .locals 2

    const v0, 0x7f10029d

    const/4 v1, 0x0

    .line 809
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowBookmarkToolTip(Z)V
    .locals 1

    const v0, 0x7f10028f

    .line 676
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowBookmarkToolTip()Z
    .locals 2

    const v0, 0x7f10028f

    const/4 v1, 0x1

    .line 672
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowDescriptionEditSuccessPrompt(Z)V
    .locals 1

    const v0, 0x7f100290

    .line 708
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowDescriptionEditSuccessPrompt()Z
    .locals 2

    const v0, 0x7f100290

    const/4 v1, 0x1

    .line 704
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowHistoryOfflineArticlesToast(Z)V
    .locals 1

    const v0, 0x7f100256

    .line 692
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowHistoryOfflineArticlesToast()Z
    .locals 2

    const v0, 0x7f100256

    const/4 v1, 0x1

    .line 688
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowImageTagsOnboarding()Z
    .locals 2

    const v0, 0x7f100257

    const/4 v1, 0x1

    .line 829
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowImageZoomTooltip()Z
    .locals 2

    const v0, 0x7f100258

    const/4 v1, 0x1

    .line 837
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowOneTimeSequentialUserStatsTooltip(Z)V
    .locals 1

    const v0, 0x7f100298

    .line 941
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowOneTimeSequentialUserStatsTooltip()Z
    .locals 2

    const v0, 0x7f100298

    const/4 v1, 0x1

    .line 937
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowReadingListSyncEnablePrompt(Z)V
    .locals 1

    const v0, 0x7f100295

    .line 610
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowReadingListSyncEnablePrompt()Z
    .locals 2

    const v0, 0x7f100295

    const/4 v1, 0x1

    .line 606
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowRemoveChineseVariantPrompt(Z)V
    .locals 1

    const v0, 0x7f100296

    .line 638
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public static shouldShowRemoveChineseVariantPrompt()Z
    .locals 2

    const v0, 0x7f100296

    const/4 v1, 0x1

    .line 642
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowSearchTabTooltip()Z
    .locals 2

    const v0, 0x7f100297

    const/4 v1, 0x1

    .line 945
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowSuggestedEditsSurvey()Z
    .locals 2

    const v0, 0x7f100299

    const/4 v1, 0x0

    .line 728
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static shouldShowSuggestedEditsTooltip()Z
    .locals 2

    const v0, 0x7f10029a

    const/4 v1, 0x1

    .line 736
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static showAllNotifications()Z
    .locals 2

    const v0, 0x7f100271

    const/4 v1, 0x0

    .line 477
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static storeTemporaryWikitext(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f1002b0

    .line 853
    invoke-static {v0, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    return-void
.end method

.method public static wasLoggedOutInBackground()Z
    .locals 2

    const v0, 0x7f100261

    const/4 v1, 0x0

    .line 696
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public static wasSuggestedEditsSurveyClicked()Z
    .locals 2

    const v0, 0x7f1002ad

    const/4 v1, 0x0

    .line 720
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method
