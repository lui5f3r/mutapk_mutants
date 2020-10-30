.class public Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "ReadingListSyncAdapter.java"


# static fields
.field private static IN_PROGRESS:Z = false

.field private static final SYNC_EXTRAS_FORCE_FULL_SYNC:Ljava/lang/String; = "forceFullSync"

.field private static final SYNC_EXTRAS_REFRESHING:Ljava/lang/String; = "refreshing"

.field private static final SYNC_EXTRAS_RETRYING:Ljava/lang/String; = "retrying"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)V
    .locals 7

    .line 577
    invoke-direct {p0, p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 582
    invoke-static {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 589
    new-instance v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-direct {p0, p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 590
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lorg/wikipedia/readinglist/database/ReadingListPage;->listId(J)V

    .line 591
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->pageExistsInList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 595
    :goto_1
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V

    .line 596
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->summary()Lorg/wikipedia/dataclient/page/PageSummary;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 597
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->summary()Lorg/wikipedia/dataclient/page/PageSummary;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/wikipedia/readinglist/database/ReadingListPage;->description(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->summary()Lorg/wikipedia/dataclient/page/PageSummary;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl(Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 601
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Updating local page "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 602
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    goto :goto_2

    .line 604
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating local page "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 605
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v4}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    :goto_2
    return-void
.end method

.method private deletePageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 611
    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 612
    invoke-static {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 618
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getPageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;)Lorg/wikipedia/readinglist/database/ReadingListPage;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 623
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deleting local page "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 624
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object p2

    .line 625
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 624
    invoke-virtual {p2, p1, v0, v1}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    return-void
.end method

.method private getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/dataclient/WikiSite;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 555
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lorg/wikipedia/csrf/CsrfTokenClient;

    invoke-direct {v0, p1, p1}, Lorg/wikipedia/csrf/CsrfTokenClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/dataclient/WikiSite;)V

    invoke-virtual {v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getTokenBlocking()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 558
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private getLastDateFromHeader(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/ReadingListClient;)Ljava/lang/String;
    .locals 1

    .line 563
    invoke-virtual {p2}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getLastDateHeader()Ljava/lang/String;

    move-result-object p2

    .line 564
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 568
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/wikipedia/util/DateUtil;->getHttpLastModifiedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 569
    invoke-static {p2}, Lorg/wikipedia/util/DateUtil;->iso8601DateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public static inProgress()Z
    .locals 1

    .line 58
    sget-boolean v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    return v0
.end method

.method public static isDisabledByRemoteConfig()Z
    .locals 3

    .line 69
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getRemoteConfig()Lorg/wikipedia/settings/RemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/settings/RemoteConfig;->getConfig()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "disableReadingListSync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static manualSync()V
    .locals 1

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    return-void
.end method

.method private static manualSync(Landroid/os/Bundle;)V
    .locals 2

    .line 114
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "force"

    const/4 v1, 0x1

    .line 120
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "expedited"

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->account()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "org.wikipedianull.sync.readinglists"

    invoke-static {v0, v1, p0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "refreshing"

    .line 115
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 116
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent()V

    :cond_2
    return-void
.end method

.method public static manualSyncWithDeleteList(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/wikipedia/settings/Prefs;->addReadingListsDeletedIds(Ljava/util/Set;)V

    .line 77
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    return-void
.end method

.method public static manualSyncWithDeletePages(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/wikipedia/readinglist/database/ReadingList;",
            "Ljava/util/List<",
            "Lorg/wikipedia/readinglist/database/ReadingListPage;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 86
    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 91
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->addReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 92
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    :cond_3
    return-void
.end method

.method public static manualSyncWithForce()V
    .locals 3

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "forceFullSync"

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    invoke-static {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    return-void
.end method

.method public static manualSyncWithRefresh()V
    .locals 3

    const/4 v0, 0x0

    .line 103
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setSuggestedEditsHighestPriorityEnabled(Z)V

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refreshing"

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    invoke-static {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    return-void
.end method

.method private pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;
    .locals 2

    .line 629
    new-instance v0, Lorg/wikipedia/dataclient/WikiSite;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 630
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)V

    return-object v1
.end method

.method private remoteEntryFromLocalPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;
    .locals 3

    .line 634
    invoke-static {p1}, Lorg/wikipedia/readinglist/database/ReadingListPage;->toPageTitle(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 635
    new-instance v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setSyncEnabledWithSetup()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 63
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteSetupPending(Z)V

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteDeletePending(Z)V

    .line 65
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync()V

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "no-such-project"

    const-string v4, "entry-limit"

    const-string v5, "Creating new remote page "

    const-string v6, "duplicate-page"

    const-string v7, "Finished sync of reading lists."

    const-string v8, "forceFullSync"

    const-string v9, "retrying"

    .line 129
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->isDisabledByRemoteConfig()Z

    move-result v0

    const-string v10, "refreshing"

    if-nez v0, :cond_4e

    .line 130
    invoke-static {}, Lorg/wikipedia/auth/AccountUtil;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 131
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3c

    :cond_0
    const-string v0, "Begin sync of reading lists..."

    .line 141
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListsDeletedIds()Ljava/util/Set;

    move-result-object v12

    .line 145
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListPagesDeletedIds()Ljava/util/Set;

    move-result-object v13

    .line 149
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v14

    .line 150
    new-instance v15, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    invoke-direct {v15, v14}, Lorg/wikipedia/readinglist/sync/ReadingListClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    move-object/from16 p1, v9

    .line 151
    invoke-static {}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->getInstance()Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-result-object v9

    move-object/from16 p3, v3

    .line 153
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListsLastSyncTime()Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 p4, v4

    const/4 v4, 0x1

    .line 159
    :try_start_0
    sput-boolean v4, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 162
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_20

    const/16 v17, 0x0

    if-nez v0, :cond_2

    .line 163
    :try_start_1
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteSetupPending()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v18, v17

    const/4 v0, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object/from16 v22, v7

    :goto_0
    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    :goto_1
    const/16 v20, 0x0

    move-object v9, v8

    move-object/from16 v8, p1

    goto/16 :goto_37

    :cond_2
    :goto_2
    :try_start_2
    const-string v0, "Resetting all lists to un-synced."

    .line 166
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 168
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markEverythingUnsynced()V

    .line 169
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllLists()Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v0

    const/4 v0, 0x1

    .line 172
    :goto_3
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_20

    if-eqz v19, :cond_4

    :try_start_3
    const-string v0, "Tearing down remote lists..."

    .line 174
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->tearDown(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 176
    invoke-static {v5}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteDeletePending(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    invoke-direct {v1, v3, v15}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getLastDateFromHeader(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/ReadingListClient;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsLastSyncTime(Ljava/lang/String;)V

    .line 531
    invoke-static {v12}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 532
    invoke-static {v13}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->cancelNotification(Landroid/content/Context;)V

    if-eqz v16, :cond_3

    .line 536
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent(Z)V

    :cond_3
    const/4 v2, 0x0

    .line 547
    sput-boolean v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 548
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    .line 549
    invoke-static {v7}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void

    .line 178
    :cond_4
    :try_start_4
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteSetupPending()Z

    move-result v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_20

    if-eqz v19, :cond_5

    .line 180
    :try_start_5
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->setup(Ljava/lang/String;)Z

    const/4 v4, 0x0

    .line 181
    invoke-static {v4}, Lorg/wikipedia/settings/Prefs;->setReadingListsRemoteSetupPending(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    :cond_5
    :try_start_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 191
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_20

    if-eqz v20, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_8

    if-nez v18, :cond_7

    .line 197
    :try_start_7
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllLists()Ljava/util/List;

    move-result-object v18

    :cond_7
    move/from16 v20, v0

    goto :goto_5

    :cond_8
    if-nez v18, :cond_9

    .line 201
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllListsWithUnsyncedPages()Ljava/util/List;

    move-result-object v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    move/from16 v20, v0

    .line 203
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "Fetching changes from server, since "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v15, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getChangesSince(Ljava/lang/String;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_20

    if-eqz v4, :cond_a

    .line 206
    :try_start_9
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getLists()Ljava/util/List;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :cond_a
    move-object/from16 v4, v21

    .line 208
    :goto_4
    :try_start_a
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v21
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_20

    if-eqz v21, :cond_b

    .line 209
    :try_start_b
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->getEntries()Ljava/util/List;

    move-result-object v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 214
    :cond_b
    :goto_5
    :try_start_c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_20

    if-eqz v21, :cond_11

    :try_start_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 218
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 219
    invoke-virtual/range {v23 .. v23}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v24

    invoke-virtual/range {v21 .. v21}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId()J

    move-result-wide v26

    cmp-long v28, v24, v26

    if-nez v28, :cond_d

    goto :goto_6

    :cond_e
    move-object/from16 v23, v17

    .line 224
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    .line 225
    invoke-virtual/range {v24 .. v24}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v25

    invoke-virtual/range {v21 .. v21}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId()J

    move-result-wide v27

    cmp-long v29, v25, v27

    if-nez v29, :cond_f

    goto :goto_7

    :cond_10
    move-object/from16 v24, v17

    :goto_7
    if-nez v23, :cond_c

    if-nez v24, :cond_c

    const-string v0, "Remote entry belongs to an unknown local list. Falling back to full sync."

    .line 231
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V

    const/16 v20, 0x1

    :cond_11
    if-eqz v20, :cond_12

    .line 238
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getAllLists()Ljava/util/List;

    move-result-object v18

    const-string v0, "Fetching all lists from server..."

    .line 239
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v15}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getAllLists()Ljava/util/List;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_12
    move-object/from16 v21, v18

    .line 244
    :try_start_e
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_20

    move-object/from16 v22, v7

    :try_start_f
    new-instance v7, Lorg/wikipedia/events/ReadingListsEnabledStatusEvent;

    invoke-direct {v7}, Lorg/wikipedia/events/ReadingListsEnabledStatusEvent;-><init>()V

    invoke-virtual {v0, v7}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    .line 247
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1f

    if-eqz v18, :cond_22

    :try_start_10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v23, v4

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v24, v7, 0x1

    invoke-virtual {v9, v4, v0, v7}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->setNotificationProgress(Landroid/content/Context;II)V

    .line 257
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 258
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 260
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v25

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    cmp-long v4, v25, v27

    if-eqz v4, :cond_13

    move-object/from16 v25, v3

    .line 261
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId(J)V

    :goto_a
    const/4 v2, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v25, v3

    goto :goto_b

    :cond_14
    move-object/from16 v25, v3

    .line 266
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v26

    cmp-long v28, v2, v26

    if-nez v28, :cond_15

    :goto_b
    goto :goto_c

    .line 269
    :cond_15
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 271
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId(J)V

    goto :goto_a

    :cond_16
    move-object/from16 v2, p2

    move-object/from16 v3, v25

    goto :goto_9

    :cond_17
    move-object/from16 v25, v3

    move-object/from16 v7, v17

    :goto_c
    const/4 v2, 0x0

    .line 276
    :goto_d
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v3

    if-nez v3, :cond_18

    .line 277
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected: remote default list corresponds to local non-default list."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 278
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getDefaultList()Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v7

    .line 281
    :cond_18
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v7, :cond_19

    .line 282
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v2

    if-nez v2, :cond_19

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting local list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 284
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v7, v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->deleteList(Lorg/wikipedia/readinglist/database/ReadingList;Z)V

    .line 285
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v2

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v3}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Z)V

    move-object/from16 v3, v21

    .line 286
    invoke-interface {v3, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    move-object/from16 v21, v3

    move-object/from16 v4, v23

    move/from16 v7, v24

    move-object/from16 v3, v25

    const/16 v16, 0x1

    goto/16 :goto_8

    :cond_19
    move-object/from16 v3, v21

    move-object/from16 v2, p2

    move-object/from16 v21, v3

    move-object/from16 v4, v23

    move/from16 v7, v24

    :goto_e
    move-object/from16 v3, v25

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v3, v21

    if-nez v7, :cond_1c

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating local list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 296
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected: local default list no longer matches remote."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 297
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->getDefaultList()Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v2

    goto :goto_f

    .line 299
    :cond_1b
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->createList(Ljava/lang/String;Ljava/lang/String;)Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v2

    :goto_f
    move-object v7, v2

    move-object/from16 v21, v5

    .line 301
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId(J)V

    .line 302
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    move-object/from16 v21, v5

    .line 305
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 306
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->title(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 309
    :cond_1d
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 310
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->description(Ljava/lang/String;)V

    :goto_10
    const/4 v2, 0x1

    :cond_1e
    if-eqz v2, :cond_1f

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating info for local list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v7, v2}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty(Z)V

    .line 317
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateList(Lorg/wikipedia/readinglist/database/ReadingList;Z)V

    const/16 v16, 0x1

    :cond_1f
    if-eqz v20, :cond_21

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching all pages in remote list "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual/range {v18 .. v18}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getListEntries(J)Ljava/util/List;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 326
    invoke-direct {v1, v7, v4}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)V

    goto :goto_11

    :cond_20
    const/16 v16, 0x1

    :cond_21
    move-object/from16 v2, p2

    move-object/from16 v5, v21

    move-object/from16 v4, v23

    move/from16 v7, v24

    move-object/from16 v21, v3

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    goto/16 :goto_0

    :cond_22
    move-object/from16 v25, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v5

    if-nez v20, :cond_27

    .line 333
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 336
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 337
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v18

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId()J

    move-result-wide v23

    cmp-long v7, v18, v23

    if-nez v7, :cond_23

    goto :goto_13

    :cond_24
    move-object/from16 v5, v17

    :goto_13
    if-nez v5, :cond_25

    const-string v2, "Remote entry belongs to an unknown local list."

    .line 343
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/CharSequence;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_12

    .line 347
    :cond_25
    :try_start_12
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 348
    invoke-direct {v1, v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->deletePageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;)V

    goto :goto_14

    .line 350
    :cond_26
    invoke-direct {v1, v5, v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :goto_14
    const/16 v16, 0x1

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v5, p2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    move-object/from16 v3, v25

    const/16 v16, 0x1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v5, p2

    :goto_15
    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    move-object/from16 v3, v25

    goto/16 :goto_1

    :cond_27
    move/from16 v2, v16

    .line 360
    :try_start_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1e

    if-eqz v0, :cond_2a

    :try_start_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Long;

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting remote list id "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 365
    :try_start_15
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object/from16 v23, v8

    :try_start_16
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v15, v0, v7, v8}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->deleteList(Ljava/lang/String;J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_18

    :catchall_4
    move-exception v0

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object/from16 v23, v8

    .line 367
    :goto_17
    :try_start_17
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 368
    invoke-virtual {v15, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isServiceError(Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_29

    invoke-virtual {v15, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isUnavailableError(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_18

    .line 369
    :cond_28
    throw v0

    .line 372
    :cond_29
    :goto_18
    invoke-interface {v12, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object/from16 v8, v23

    goto :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v16, v2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    goto/16 :goto_1d

    :catchall_7
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v16, v2

    goto :goto_15

    :cond_2a
    move-object/from16 v23, v8

    .line 376
    :try_start_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1d

    if-eqz v0, :cond_2d

    :try_start_19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting remote page id "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    const-string v0, ":"

    .line 380
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 383
    :try_start_1a
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    const/4 v7, 0x0

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-object v7, v15

    move-object v15, v7

    :try_start_1b
    invoke-virtual/range {v15 .. v20}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->deletePageFromList(Ljava/lang/String;JJ)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_1b

    :catchall_8
    move-exception v0

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object v7, v15

    .line 385
    :goto_1a
    :try_start_1c
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 386
    invoke-virtual {v7, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isServiceError(Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_2c

    invoke-virtual {v7, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isUnavailableError(Ljava/lang/Throwable;)Z

    move-result v8

    if-eqz v8, :cond_2b

    goto :goto_1b

    .line 387
    :cond_2b
    throw v0

    .line 390
    :cond_2c
    :goto_1b
    invoke-interface {v13, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    move-object v15, v7

    goto :goto_19

    :catchall_a
    move-exception v0

    move-object v7, v15

    :goto_1c
    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v16, v2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    :goto_1d
    move-object/from16 v9, v23

    move-object/from16 v3, v25

    goto/16 :goto_36

    :cond_2d
    move-object v7, v15

    .line 395
    :try_start_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 399
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    if-eqz v8, :cond_32

    :try_start_1e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    add-int/lit8 v16, v5, 0x1

    invoke-virtual {v9, v15, v0, v5}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->setNotificationProgress(Landroid/content/Context;II)V

    .line 402
    new-instance v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    .line 403
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->title()Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v0

    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->description()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v15, v0}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v18

    const-wide/16 v26, 0x0

    cmp-long v0, v18, v26

    if-lez v0, :cond_2f

    .line 407
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating info for remote list "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 410
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    move-object/from16 v18, v9

    move-object v15, v10

    :try_start_1f
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v9

    invoke-virtual {v7, v0, v9, v10, v5}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->updateList(Ljava/lang/String;JLorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)V

    goto :goto_1f

    :cond_2e
    move-object/from16 v18, v9

    move-object v15, v10

    goto :goto_20

    :cond_2f
    move-object/from16 v18, v9

    move-object v15, v10

    .line 413
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v0

    if-nez v0, :cond_30

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating remote list "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 416
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v5}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->createList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)J

    move-result-wide v9

    .line 417
    invoke-virtual {v8, v9, v10}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId(J)V

    :goto_1f
    const/4 v0, 0x1

    goto :goto_21

    :cond_30
    :goto_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_31

    const/4 v5, 0x0

    .line 421
    invoke-virtual {v8, v5}, Lorg/wikipedia/readinglist/database/ReadingList;->dirty(Z)V

    .line 422
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, v8, v5}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updateList(Lorg/wikipedia/readinglist/database/ReadingList;Z)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :cond_31
    move-object v10, v15

    move/from16 v5, v16

    move/from16 v0, v17

    move-object/from16 v9, v18

    goto/16 :goto_1e

    :catchall_b
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v16, v2

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v6, v15

    move-object/from16 v4, v18

    goto/16 :goto_1d

    :catchall_c
    move-exception v0

    goto/16 :goto_1c

    :cond_32
    move-object/from16 v18, v9

    move-object v15, v10

    .line 426
    :try_start_20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1b

    const/4 v4, 0x0

    :goto_22
    :try_start_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1a

    if-eqz v0, :cond_40

    :try_start_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 427
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 428
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->pages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_19

    if-eqz v10, :cond_34

    :try_start_23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 430
    invoke-virtual {v10}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId()J

    move-result-wide v16

    const-wide/16 v19, 0x1

    cmp-long v24, v16, v19

    if-gez v24, :cond_33

    .line 431
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-direct {v1, v10}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->remoteEntryFromLocalPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    goto :goto_23

    :catchall_d
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v16, v2

    move/from16 v20, v4

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    goto/16 :goto_31

    .line 436
    :cond_34
    :try_start_24
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    if-eqz v0, :cond_35

    goto :goto_22

    .line 441
    :cond_35
    :try_start_25
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_36

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    move-object/from16 v10, v21

    :try_start_26
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_27
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual/range {v17 .. v17}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 443
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    :try_start_28
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v12
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    move/from16 v20, v4

    const/4 v4, 0x0

    :try_start_29
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v4, v21

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    invoke-virtual {v7, v3, v12, v13, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPageToList(Ljava/lang/String;JLorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V

    .line 444
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v0, v4}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePage(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    goto :goto_26

    :catchall_e
    move-exception v0

    move/from16 v20, v4

    goto/16 :goto_27

    :catchall_f
    move-exception v0

    goto :goto_24

    :catchall_10
    move-exception v0

    move-object/from16 v16, v3

    :goto_24
    move/from16 v20, v4

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    goto :goto_27

    :cond_36
    move-object/from16 v16, v3

    move/from16 v20, v4

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object/from16 v10, v21

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new remote pages"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 447
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v3

    invoke-virtual {v7, v0, v3, v4, v9}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPagesToList(Ljava/lang/String;JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 448
    :goto_25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 449
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 451
    :cond_37
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePages(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    :goto_26
    move-object/from16 v3, p4

    goto :goto_28

    :catchall_11
    move-exception v0

    goto :goto_27

    :catchall_12
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v20, v4

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object/from16 v10, v21

    .line 460
    :goto_27
    :try_start_2a
    invoke-virtual {v7, v0, v6}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    move-object/from16 v3, v25

    const/16 v20, 0x1

    goto/16 :goto_32

    :cond_38
    move-object/from16 v3, p4

    .line 463
    invoke-virtual {v7, v0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    :goto_28
    move-object/from16 v4, p3

    const/4 v0, 0x0

    goto :goto_29

    :cond_39
    move-object/from16 v4, p3

    .line 465
    invoke-virtual {v7, v0, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3f

    const/4 v0, 0x1

    :goto_29
    if-eqz v0, :cond_3e

    const/4 v12, 0x0

    .line 476
    :goto_2a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_3d

    .line 477
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/wikipedia/readinglist/database/ReadingListPage;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    .line 479
    :try_start_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    move-object/from16 v21, v10

    :try_start_2c
    invoke-virtual {v13}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 480
    invoke-direct {v1, v14, v11}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    move-object/from16 p3, v11

    :try_start_2d
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId()J

    move-result-wide v10

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    move-object/from16 p4, v5

    :try_start_2e
    move-object/from16 v5, v24

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    invoke-virtual {v7, v0, v10, v11, v5}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPageToList(Ljava/lang/String;JLorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    goto :goto_2d

    :catchall_13
    move-exception v0

    goto :goto_2c

    :catchall_14
    move-exception v0

    move-object/from16 p4, v5

    goto :goto_2c

    :catchall_15
    move-exception v0

    move-object/from16 p4, v5

    goto :goto_2b

    :catchall_16
    move-exception v0

    move-object/from16 p4, v5

    move-object/from16 v21, v10

    :goto_2b
    move-object/from16 p3, v11

    .line 482
    :goto_2c
    :try_start_2f
    invoke-virtual {v7, v0, v6}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v20, 0x1

    goto :goto_2e

    .line 485
    :cond_3a
    invoke-virtual {v7, v0, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_2d

    .line 487
    :cond_3b
    invoke-virtual {v7, v0, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-wide/32 v10, 0x7fffffff

    .line 490
    invoke-virtual {v13, v10, v11}, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId(J)V

    .line 492
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to sync malformed page: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v13}, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/wikipedia/readinglist/database/ReadingListPage;->title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    :goto_2d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, p3

    move-object/from16 v5, p4

    move-object/from16 v10, v21

    goto/16 :goto_2a

    .line 495
    :cond_3c
    throw v0

    :cond_3d
    move-object/from16 v21, v10

    move-object/from16 p3, v11

    .line 499
    :goto_2e
    invoke-static {}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->instance()Lorg/wikipedia/readinglist/database/ReadingListDbHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/wikipedia/readinglist/database/ReadingListDbHelper;->updatePages(Ljava/util/List;)V

    goto :goto_2f

    :cond_3e
    move-object/from16 v21, v10

    move-object/from16 p3, v11

    :goto_2f
    move-object/from16 v11, p3

    move-object/from16 p4, v3

    move-object/from16 p3, v4

    move-object/from16 v3, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v19

    move/from16 v4, v20

    goto/16 :goto_22

    :cond_3f
    move-object/from16 p3, v11

    .line 471
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_17

    :catchall_17
    move-exception v0

    goto :goto_30

    :catchall_18
    move-exception v0

    move-object/from16 p3, v11

    goto :goto_30

    :catchall_19
    move-exception v0

    move/from16 v20, v4

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    :goto_30
    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v16, v2

    :goto_31
    move-object v6, v15

    move-object/from16 v4, v18

    move-object/from16 v9, v23

    move-object/from16 v3, v25

    goto/16 :goto_37

    :cond_40
    move/from16 v20, v4

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object/from16 v3, v25

    .line 528
    :goto_32
    invoke-direct {v1, v3, v7}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getLastDateFromHeader(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/ReadingListClient;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsLastSyncTime(Ljava/lang/String;)V

    .line 531
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 532
    invoke-static/range {v19 .. v19}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->cancelNotification(Landroid/content/Context;)V

    move-object/from16 v5, p2

    if-eqz v2, :cond_41

    move-object v6, v15

    .line 536
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent(Z)V

    :cond_41
    if-eqz v20, :cond_49

    move-object/from16 v8, p1

    .line 538
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 540
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 541
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v20, :cond_42

    move-object/from16 v9, v23

    .line 543
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    :cond_42
    invoke-static {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    goto/16 :goto_3a

    :catchall_1a
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move/from16 v20, v4

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v6, v15

    move-object/from16 v4, v18

    move-object/from16 v9, v23

    move-object/from16 v3, v25

    move/from16 v16, v2

    goto/16 :goto_37

    :catchall_1b
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v6, v15

    move-object/from16 v4, v18

    goto :goto_33

    :catchall_1c
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    goto :goto_33

    :catchall_1d
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    :goto_33
    move-object/from16 v9, v23

    move-object/from16 v3, v25

    goto :goto_34

    :catchall_1e
    move-exception v0

    move-object/from16 v5, p2

    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    move-object/from16 v3, v25

    move-object v9, v8

    move-object/from16 v8, p1

    :goto_34
    move/from16 v16, v2

    goto :goto_36

    :catchall_1f
    move-exception v0

    move-object v5, v2

    goto :goto_35

    :catchall_20
    move-exception v0

    move-object v5, v2

    move-object/from16 v22, v7

    :goto_35
    move-object v4, v9

    move-object v6, v10

    move-object/from16 p3, v11

    move-object/from16 v17, v12

    move-object/from16 v19, v13

    move-object v7, v15

    move-object v9, v8

    move-object/from16 v8, p1

    :goto_36
    const/16 v20, 0x0

    :goto_37
    :try_start_30
    const-string v2, "not-set-up"

    .line 504
    invoke-virtual {v7, v0, v2}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x0

    .line 505
    invoke-static {v2}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 506
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 509
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v2

    new-instance v10, Lorg/wikipedia/events/ReadingListsEnableDialogEvent;

    invoke-direct {v10}, Lorg/wikipedia/events/ReadingListsEnableDialogEvent;-><init>()V

    invoke-virtual {v2, v10}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    goto :goto_38

    .line 513
    :cond_43
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getBus()Lorg/wikipedia/concurrency/RxBus;

    move-result-object v2

    new-instance v10, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;

    invoke-direct {v10}, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;-><init>()V

    invoke-virtual {v2, v10}, Lorg/wikipedia/concurrency/RxBus;->post(Ljava/lang/Object;)V

    :cond_44
    :goto_38
    const-string v2, "notloggedin"

    .line 517
    invoke-virtual {v7, v0, v2}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_23

    if-eqz v2, :cond_45

    :try_start_31
    const-string v2, "Server doesn\'t believe we\'re logged in, so logging in..."

    .line 519
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p3

    .line 520
    invoke-direct {v1, v14, v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getCsrfToken(Lorg/wikipedia/dataclient/WikiSite;Ljava/util/List;)Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_21

    const/4 v2, 0x1

    goto :goto_39

    :catchall_21
    move-exception v0

    :cond_45
    const/4 v2, 0x0

    .line 526
    :goto_39
    :try_start_32
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_22

    .line 528
    invoke-direct {v1, v3, v7}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getLastDateFromHeader(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/ReadingListClient;)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setReadingListsLastSyncTime(Ljava/lang/String;)V

    .line 531
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 532
    invoke-static/range {v19 .. v19}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->cancelNotification(Landroid/content/Context;)V

    if-eqz v16, :cond_46

    .line 536
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent(Z)V

    :cond_46
    if-nez v2, :cond_47

    if-eqz v20, :cond_49

    .line 538
    :cond_47
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 540
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 541
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v20, :cond_48

    .line 543
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    :cond_48
    invoke-static {v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    :cond_49
    :goto_3a
    const/4 v2, 0x0

    .line 547
    sput-boolean v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 548
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    .line 549
    invoke-static/range {v22 .. v22}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    return-void

    :catchall_22
    move-exception v0

    goto :goto_3b

    :catchall_23
    move-exception v0

    const/4 v2, 0x0

    .line 528
    :goto_3b
    invoke-direct {v1, v3, v7}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getLastDateFromHeader(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/ReadingListClient;)Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-static {v3}, Lorg/wikipedia/settings/Prefs;->setReadingListsLastSyncTime(Ljava/lang/String;)V

    .line 531
    invoke-static/range {v17 .. v17}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 532
    invoke-static/range {v19 .. v19}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroid/content/AbstractThreadedSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->cancelNotification(Landroid/content/Context;)V

    if-eqz v16, :cond_4a

    .line 536
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent(Z)V

    :cond_4a
    if-nez v2, :cond_4b

    if-eqz v20, :cond_4d

    .line 538
    :cond_4b
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 539
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 540
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    .line 541
    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v20, :cond_4c

    .line 543
    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    :cond_4c
    invoke-static {v2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->manualSync(Landroid/os/Bundle;)V

    :cond_4d
    const/4 v2, 0x0

    .line 547
    sput-boolean v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 548
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->enqueue()V

    .line 549
    invoke-static/range {v22 .. v22}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 550
    throw v0

    :cond_4e
    :goto_3c
    move-object v5, v2

    move-object v6, v10

    const-string v0, "Skipping sync of reading lists."

    .line 133
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 136
    invoke-static {}, Lorg/wikipedia/savedpages/SavedPageSyncService;->sendSyncEvent()V

    :cond_4f
    return-void
.end method
