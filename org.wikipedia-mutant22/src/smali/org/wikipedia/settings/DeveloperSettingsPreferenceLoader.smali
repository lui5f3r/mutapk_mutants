.class Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;
.super Lorg/wikipedia/settings/BasePreferenceLoader;
.source "DeveloperSettingsPreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$TestException;
    }
.end annotation


# static fields
.field private static final TEXT_OF_READING_LIST:Ljava/lang/String; = "Reading list"

.field private static final TEXT_OF_TEST_READING_LIST:Ljava/lang/String; = "Test reading list"


# instance fields
.field private final context:Landroid/content/Context;

.field private final setMediaWikiBaseUriChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private final setMediaWikiMultiLangSupportChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    .line 40
    new-instance v0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$1;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$1;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    iput-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->setMediaWikiBaseUriChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 58
    new-instance v0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$2;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$2;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    iput-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->setMediaWikiMultiLangSupportChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 78
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->resetMediaWikiSettings()V

    return-void
.end method

.method private createTestReadingList(Ljava/lang/String;II)V
    .locals 11

    .line 246
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllListsWithoutContents()Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_2

    .line 248
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 249
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_4

    add-int/2addr v0, v2

    .line 258
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->createList(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v4

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, p3, :cond_3

    .line 261
    new-instance v8, Lorg/wikipedia/page/PageTitle;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v10

    invoke-virtual {v10}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 262
    new-instance v9, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-direct {v9, v8}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 264
    :cond_3
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private deleteTestReadingList(Ljava/lang/String;I)V
    .locals 3

    .line 269
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllLists()Ljava/util/List;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 271
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p2, :cond_0

    .line 272
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->deleteList(Lorg/wikipedia/readinglist/database/ReadingList;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$loadPreferences$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 90
    new-instance p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$TestException;

    const-string v0, "User tested crash functionality."

    invoke-direct {p0, v0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader$TestException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$loadPreferences$18(Landroidx/preference/Preference;)Z
    .locals 0

    .line 220
    sget-object p0, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->INSTANCE:Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;

    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkPageSeenDatabaseTable;->resetAllUnseen()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$loadPreferences$19(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 226
    invoke-static {}, Lorg/wikipedia/LeakCanaryStubKt;->setupLeakCanary()V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$loadPreferences$5(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 139
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    .line 141
    new-instance v2, Lorg/wikipedia/page/PageTitle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "foo"

    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 142
    new-instance v3, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-direct {v3, v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_1
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p0

    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getDefaultList()Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    return v0
.end method

.method private resetMediaWikiSettings()V
    .locals 1

    .line 240
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->resetWikiSite()V

    return-void
.end method

.method private setUpMediaWikiSettings()V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->setMediaWikiBaseUriChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f100266

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 236
    iget-object v1, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->setMediaWikiMultiLangSupportChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$loadPreferences$1$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "Test reading list"

    .line 100
    invoke-direct {p0, p2, v0, p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->createTestReadingList(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$loadPreferences$13$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 7

    .line 171
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v1

    .line 172
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p1

    const/4 v6, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    .line 171
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;ZJ)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 173
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 174
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$kB9vh9zIdaZ6HAbU5-1eD-wSUVk;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$kB9vh9zIdaZ6HAbU5-1eD-wSUVk;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$5fqI7QEzt50KnZUaUJCEVwfdk3o;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$5fqI7QEzt50KnZUaUJCEVwfdk3o;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 175
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return v6
.end method

.method public synthetic lambda$loadPreferences$14$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 0

    .line 194
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->resetAnnouncementShownDialogs()V

    .line 195
    invoke-virtual {p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->loadPreferences()V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$15$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 201
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->stopPollTask(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->startPollTask(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$16$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100406

    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$17$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 1

    .line 214
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f100407

    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$2$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xa

    const-string v0, "Reading list"

    .line 112
    invoke-direct {p0, v0, p1, p2}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->createTestReadingList(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$3$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "Reading list"

    .line 123
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->deleteTestReadingList(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$4$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "Test reading list"

    .line 132
    invoke-direct {p0, p2, p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->deleteTestReadingList(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$loadPreferences$9$DeveloperSettingsPreferenceLoader(Landroidx/preference/Preference;)Z
    .locals 3

    .line 150
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 151
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 152
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$EwQDgsoLj0Vu4oEKYGFeegMlV9s;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$EwQDgsoLj0Vu4oEKYGFeegMlV9s;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$y0zW-FShlmLcXpG4CXLLQ7BMma8;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$y0zW-FShlmLcXpG4CXLLQ7BMma8;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 153
    invoke-virtual {p1, v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$null$10$DeveloperSettingsPreferenceLoader(Lkotlin/Pair;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/wikipedia/dataclient/WikiSite;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 180
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {p3, v0, p1}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$11$DeveloperSettingsPreferenceLoader(Lkotlin/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$RhsLi5HRZkMlcSSPdlTqX94c3-c;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$RhsLi5HRZkMlcSSPdlTqX94c3-c;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;Lkotlin/Pair;)V

    const-string p1, "Go"

    .line 178
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100057

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$null$12$DeveloperSettingsPreferenceLoader(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1001fc

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$null$6$DeveloperSettingsPreferenceLoader(Lorg/wikipedia/dataclient/page/PageSummary;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 157
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getPageTitle(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;I)V

    invoke-static {p3, v0, p1}, Lorg/wikipedia/page/PageActivity;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$7$DeveloperSettingsPreferenceLoader(Lorg/wikipedia/dataclient/page/PageSummary;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 153
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/page/PageSummary;->getExtract()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$uEV2Th1qgDkyQRhLddQV8ARGrCU;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$uEV2Th1qgDkyQRhLddQV8ARGrCU;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;Lorg/wikipedia/dataclient/page/PageSummary;)V

    const-string p1, "Go"

    .line 156
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f100057

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$null$8$DeveloperSettingsPreferenceLoader(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 162
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f1001fc

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public loadPreferences()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/high16 v0, 0x7f130000

    .line 85
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    .line 86
    invoke-direct {p0}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->setUpMediaWikiSettings()V

    .line 88
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f1002e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rMG1qjia6serZ-yqxYGuwvEY-M;

    .line 89
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f100238

    .line 93
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$n_Lh9avqD4SU3dihbiCsxmzGd1k;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$n_Lh9avqD4SU3dihbiCsxmzGd1k;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 94
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f10023a

    .line 105
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rTUmxCe_hLHJk60Slfou20XdVw;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$3rTUmxCe_hLHJk60Slfou20XdVw;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 106
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f100247

    .line 117
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$YNbPNY8Pl85zFuYNoC7GmOLJkNk;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$YNbPNY8Pl85zFuYNoC7GmOLJkNk;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 118
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f100248

    .line 126
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$py3KR1ARJRJT6KdKMk7F1PMcCuQ;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$py3KR1ARJRJT6KdKMk7F1PMcCuQ;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 127
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f100239

    .line 136
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$QCBjw1rohPQa-cV1EZxEGtgn0c4;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$QCBjw1rohPQa-cV1EZxEGtgn0c4;

    .line 137
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$FSbLS3fvz0VPgpsp8XIO2LtNvJ0;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$FSbLS3fvz0VPgpsp8XIO2LtNvJ0;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 149
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$4iHfzs0emqsyBOMl6sTsfgPC5JA;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$4iHfzs0emqsyBOMl6sTsfgPC5JA;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 170
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f1002e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getAnnouncementShownDialogs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1002e4

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$4pz_rgcMYnFmD3luVKH5VlD88Ew;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$4pz_rgcMYnFmD3luVKH5VlD88Ew;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 193
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f1002a3

    .line 199
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$qNPrNSfmfKbHNLZX5Dx_Bb_150k;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$qNPrNSfmfKbHNLZX5Dx_Bb_150k;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 200
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f1002f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$x1paZi_R44xV3KYCneCpojT9ESM;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$x1paZi_R44xV3KYCneCpojT9ESM;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 207
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 212
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f1002f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$H-zEVfQg-Fer7lezaGAKjQb1gAo;

    invoke-direct {v1, p0}, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$H-zEVfQg-Fer7lezaGAKjQb1gAo;-><init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V

    .line 213
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 218
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f10022c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$47Leo3Y6xTH5usk6SDXEAxeLiXs;

    .line 219
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 224
    iget-object v0, p0, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->context:Landroid/content/Context;

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$bnubGS-mnOkdX9SDqratpmWcETU;->INSTANCE:Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$bnubGS-mnOkdX9SDqratpmWcETU;

    .line 225
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
